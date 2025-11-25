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

module Aws::GuardDuty
  # An API client for GuardDuty.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GuardDuty::Client.new(
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

    @identifier = :guardduty

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
    add_plugin(Aws::GuardDuty::Plugins::Endpoints)

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
    #   @option options [Aws::GuardDuty::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::GuardDuty::EndpointParameters`.
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

    # Accepts the invitation to be a member account and get monitored by a
    # GuardDuty administrator account that sent the invitation.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    # @option params [required, String] :administrator_id
    #   The account ID of the GuardDuty administrator account whose invitation
    #   you're accepting.
    #
    # @option params [required, String] :invitation_id
    #   The value that is used to validate the administrator account to the
    #   member account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_administrator_invitation({
    #     detector_id: "DetectorId", # required
    #     administrator_id: "String", # required
    #     invitation_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AcceptAdministratorInvitation AWS API Documentation
    #
    # @overload accept_administrator_invitation(params = {})
    # @param [Hash] params ({})
    def accept_administrator_invitation(params = {}, options = {})
      req = build_request(:accept_administrator_invitation, params)
      req.send_request(options)
    end

    # Accepts the invitation to be monitored by a GuardDuty administrator
    # account.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :master_id
    #   The account ID of the GuardDuty administrator account whose invitation
    #   you're accepting.
    #
    # @option params [required, String] :invitation_id
    #   The value that is used to validate the administrator account to the
    #   member account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_invitation({
    #     detector_id: "DetectorId", # required
    #     master_id: "String", # required
    #     invitation_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/AcceptInvitation AWS API Documentation
    #
    # @overload accept_invitation(params = {})
    # @param [Hash] params ({})
    def accept_invitation(params = {}, options = {})
      req = build_request(:accept_invitation, params)
      req.send_request(options)
    end

    # Archives GuardDuty findings that are specified by the list of finding
    # IDs.
    #
    # <note markdown="1"> Only the administrator account can archive findings. Member accounts
    # don't have permission to archive findings from their accounts.
    #
    #  </note>
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to archive.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, Array<String>] :finding_ids
    #   The IDs of the findings that you want to archive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.archive_findings({
    #     detector_id: "DetectorId", # required
    #     finding_ids: ["FindingId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ArchiveFindings AWS API Documentation
    #
    # @overload archive_findings(params = {})
    # @param [Hash] params ({})
    def archive_findings(params = {}, options = {})
      req = build_request(:archive_findings, params)
      req.send_request(options)
    end

    # Creates a single GuardDuty detector. A detector is a resource that
    # represents the GuardDuty service. To start using GuardDuty, you must
    # create a detector in each Region where you enable the service. You can
    # have only one detector per account per Region. All data sources are
    # enabled in a new detector by default.
    #
    # * When you don't specify any `features`, with an exception to
    #   `RUNTIME_MONITORING`, all the optional features are enabled by
    #   default.
    #
    # * When you specify some of the `features`, any feature that is not
    #   specified in the API call gets enabled by default, with an exception
    #   to `RUNTIME_MONITORING`.
    #
    # Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING`) and
    # Runtime Monitoring (`RUNTIME_MONITORING`) will cause an error. You can
    # add only one of these two features because Runtime Monitoring already
    # includes the threat detection for Amazon EKS resources. For more
    # information, see [Runtime Monitoring][1].
    #
    # There might be regional differences because some data sources might
    # not be available in all the Amazon Web Services Regions where
    # GuardDuty is presently supported. For more information, see [Regions
    # and endpoints][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html
    # [2]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, Boolean] :enable
    #   A Boolean value that specifies whether the detector is to be enabled.
    #
    # @option params [String] :client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :finding_publishing_frequency
    #   A value that specifies how frequently updated findings are exported.
    #
    # @option params [Types::DataSourceConfigurations] :data_sources
    #   Describes which data sources will be enabled for the detector.
    #
    #   There might be regional differences because some data sources might
    #   not be available in all the Amazon Web Services Regions where
    #   GuardDuty is presently supported. For more information, see [Regions
    #   and endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be added to a new detector resource.
    #
    # @option params [Array<Types::DetectorFeatureConfiguration>] :features
    #   A list of features that will be configured for the detector.
    #
    # @return [Types::CreateDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDetectorResponse#detector_id #detector_id} => String
    #   * {Types::CreateDetectorResponse#unprocessed_data_sources #unprocessed_data_sources} => Types::UnprocessedDataSourcesResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_detector({
    #     enable: false, # required
    #     client_token: "ClientToken",
    #     finding_publishing_frequency: "FIFTEEN_MINUTES", # accepts FIFTEEN_MINUTES, ONE_HOUR, SIX_HOURS
    #     data_sources: {
    #       s3_logs: {
    #         enable: false, # required
    #       },
    #       kubernetes: {
    #         audit_logs: { # required
    #           enable: false, # required
    #         },
    #       },
    #       malware_protection: {
    #         scan_ec2_instance_with_findings: {
    #           ebs_volumes: false,
    #         },
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     features: [
    #       {
    #         name: "S3_DATA_EVENTS", # accepts S3_DATA_EVENTS, EKS_AUDIT_LOGS, EBS_MALWARE_PROTECTION, RDS_LOGIN_EVENTS, EKS_RUNTIME_MONITORING, LAMBDA_NETWORK_LOGS, RUNTIME_MONITORING
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #         additional_configuration: [
    #           {
    #             name: "EKS_ADDON_MANAGEMENT", # accepts EKS_ADDON_MANAGEMENT, ECS_FARGATE_AGENT_MANAGEMENT, EC2_AGENT_MANAGEMENT
    #             status: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_id #=> String
    #   resp.unprocessed_data_sources.malware_protection.scan_ec2_instance_with_findings.ebs_volumes.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.unprocessed_data_sources.malware_protection.scan_ec2_instance_with_findings.ebs_volumes.reason #=> String
    #   resp.unprocessed_data_sources.malware_protection.service_role #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateDetector AWS API Documentation
    #
    # @overload create_detector(params = {})
    # @param [Hash] params ({})
    def create_detector(params = {}, options = {})
      req = build_request(:create_detector, params)
      req.send_request(options)
    end

    # Creates a filter using the specified finding criteria. The maximum
    # number of saved filters per Amazon Web Services account per Region is
    # 100. For more information, see [Quotas for GuardDuty][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_limits.html
    #
    # @option params [required, String] :detector_id
    #   The detector ID associated with the GuardDuty account for which you
    #   want to create a filter.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :name
    #   The name of the filter. Valid characters include period (.),
    #   underscore (\_), dash (-), and alphanumeric characters. A whitespace
    #   is considered to be an invalid character.
    #
    # @option params [String] :description
    #   The description of the filter. Valid characters include alphanumeric
    #   characters, and special characters such as hyphen, period, colon,
    #   underscore, parentheses (`{ }`, `[ ]`, and `( )`), forward slash,
    #   horizontal tab, vertical tab, newline, form feed, return, and
    #   whitespace.
    #
    # @option params [String] :action
    #   Specifies the action that is to be applied to the findings that match
    #   the filter.
    #
    # @option params [Integer] :rank
    #   Specifies the position of the filter in the list of current filters.
    #   Also specifies the order in which this filter is applied to the
    #   findings.
    #
    # @option params [required, Types::FindingCriteria] :finding_criteria
    #   Represents the criteria to be used in the filter for querying
    #   findings.
    #
    #   You can only use the following attributes to query findings:
    #
    #   * accountId
    #
    #   * id
    #
    #   * region
    #
    #   * severity
    #
    #     To filter on the basis of severity, the API and CLI use the
    #     following input list for the [FindingCriteria][1] condition:
    #
    #     * **Low**: `["1", "2", "3"]`
    #
    #     * **Medium**: `["4", "5", "6"]`
    #
    #     * **High**: `["7", "8"]`
    #
    #     * **Critical**: `["9", "10"]`
    #     For more information, see [Findings severity levels][2] in the
    #     *Amazon GuardDuty User Guide*.
    #
    #   * type
    #
    #   * updatedAt
    #
    #     Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or
    #     YYYY-MM-DDTHH:MM:SSZ depending on whether the value contains
    #     milliseconds.
    #
    #   * resource.accessKeyDetails.accessKeyId
    #
    #   * resource.accessKeyDetails.principalId
    #
    #   * resource.accessKeyDetails.userName
    #
    #   * resource.accessKeyDetails.userType
    #
    #   * resource.instanceDetails.iamInstanceProfile.id
    #
    #   * resource.instanceDetails.imageId
    #
    #   * resource.instanceDetails.instanceId
    #
    #   * resource.instanceDetails.tags.key
    #
    #   * resource.instanceDetails.tags.value
    #
    #   * resource.instanceDetails.networkInterfaces.ipv6Addresses
    #
    #   * resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress
    #
    #   * resource.instanceDetails.networkInterfaces.publicDnsName
    #
    #   * resource.instanceDetails.networkInterfaces.publicIp
    #
    #   * resource.instanceDetails.networkInterfaces.securityGroups.groupId
    #
    #   * resource.instanceDetails.networkInterfaces.securityGroups.groupName
    #
    #   * resource.instanceDetails.networkInterfaces.subnetId
    #
    #   * resource.instanceDetails.networkInterfaces.vpcId
    #
    #   * resource.instanceDetails.outpostArn
    #
    #   * resource.resourceType
    #
    #   * resource.s3BucketDetails.publicAccess.effectivePermissions
    #
    #   * resource.s3BucketDetails.name
    #
    #   * resource.s3BucketDetails.tags.key
    #
    #   * resource.s3BucketDetails.tags.value
    #
    #   * resource.s3BucketDetails.type
    #
    #   * service.action.actionType
    #
    #   * service.action.awsApiCallAction.api
    #
    #   * service.action.awsApiCallAction.callerType
    #
    #   * service.action.awsApiCallAction.errorCode
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.city.cityName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.country.countryName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.ipAddressV6
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asn
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.awsApiCallAction.serviceName
    #
    #   * service.action.dnsRequestAction.domain
    #
    #   * service.action.dnsRequestAction.domainWithSuffix
    #
    #   * service.action.dnsRequestAction.vpcOwnerAccountId
    #
    #   * service.action.networkConnectionAction.blocked
    #
    #   * service.action.networkConnectionAction.connectionDirection
    #
    #   * service.action.networkConnectionAction.localPortDetails.port
    #
    #   * service.action.networkConnectionAction.protocol
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.city.cityName
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.country.countryName
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.ipAddressV6
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asn
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.networkConnectionAction.remotePortDetails.port
    #
    #   * service.action.awsApiCallAction.remoteAccountDetails.affiliated
    #
    #   * service.action.kubernetesApiCallAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.kubernetesApiCallAction.remoteIpDetails.ipAddressV6
    #
    #   * service.action.kubernetesApiCallAction.namespace
    #
    #   * service.action.kubernetesApiCallAction.remoteIpDetails.organization.asn
    #
    #   * service.action.kubernetesApiCallAction.requestUri
    #
    #   * service.action.kubernetesApiCallAction.statusCode
    #
    #   * service.action.networkConnectionAction.localIpDetails.ipAddressV4
    #
    #   * service.action.networkConnectionAction.localIpDetails.ipAddressV6
    #
    #   * service.action.networkConnectionAction.protocol
    #
    #   * service.action.awsApiCallAction.serviceName
    #
    #   * service.action.awsApiCallAction.remoteAccountDetails.accountId
    #
    #   * service.additionalInfo.threatListName
    #
    #   * service.resourceRole
    #
    #   * resource.eksClusterDetails.name
    #
    #   * resource.kubernetesDetails.kubernetesWorkloadDetails.name
    #
    #   * resource.kubernetesDetails.kubernetesWorkloadDetails.namespace
    #
    #   * resource.kubernetesDetails.kubernetesUserDetails.username
    #
    #   * resource.kubernetesDetails.kubernetesWorkloadDetails.containers.image
    #
    #   * resource.kubernetesDetails.kubernetesWorkloadDetails.containers.imagePrefix
    #
    #   * service.ebsVolumeScanDetails.scanId
    #
    #   * service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.name
    #
    #   * service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.severity
    #
    #   * service.ebsVolumeScanDetails.scanDetections.threatDetectedByName.threatNames.filePaths.hash
    #
    #   * resource.ecsClusterDetails.name
    #
    #   * resource.ecsClusterDetails.taskDetails.containers.image
    #
    #   * resource.ecsClusterDetails.taskDetails.definitionArn
    #
    #   * resource.containerDetails.image
    #
    #   * resource.rdsDbInstanceDetails.dbInstanceIdentifier
    #
    #   * resource.rdsDbInstanceDetails.dbClusterIdentifier
    #
    #   * resource.rdsDbInstanceDetails.engine
    #
    #   * resource.rdsDbUserDetails.user
    #
    #   * resource.rdsDbInstanceDetails.tags.key
    #
    #   * resource.rdsDbInstanceDetails.tags.value
    #
    #   * service.runtimeDetails.process.executableSha256
    #
    #   * service.runtimeDetails.process.name
    #
    #   * service.runtimeDetails.process.executablePath
    #
    #   * resource.lambdaDetails.functionName
    #
    #   * resource.lambdaDetails.functionArn
    #
    #   * resource.lambdaDetails.tags.key
    #
    #   * resource.lambdaDetails.tags.value
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_FindingCriteria.html
    #   [2]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_findings-severity.html
    #
    # @option params [String] :client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be added to a new filter resource.
    #
    # @return [Types::CreateFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFilterResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_filter({
    #     detector_id: "DetectorId", # required
    #     name: "FilterName", # required
    #     description: "FilterDescription",
    #     action: "NOOP", # accepts NOOP, ARCHIVE
    #     rank: 1,
    #     finding_criteria: { # required
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #         },
    #       },
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateFilter AWS API Documentation
    #
    # @overload create_filter(params = {})
    # @param [Hash] params ({})
    def create_filter(params = {}, options = {})
      req = build_request(:create_filter, params)
      req.send_request(options)
    end

    # Creates a new IPSet, which is called a trusted IP list in the console
    # user interface. An IPSet is a list of IP addresses that are trusted
    # for secure communication with Amazon Web Services infrastructure and
    # applications. GuardDuty doesn't generate findings for IP addresses
    # that are included in IPSets. Only users from the administrator account
    # can use this operation.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to create an IPSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :name
    #   The user-friendly name to identify the IPSet.
    #
    #   Allowed characters are alphanumeric, whitespace, dash (-), and
    #   underscores (\_).
    #
    # @option params [required, String] :format
    #   The format of the file that contains the IPSet.
    #
    # @option params [required, String] :location
    #   The URI of the file that contains the IPSet.
    #
    # @option params [required, Boolean] :activate
    #   A Boolean value that indicates whether GuardDuty is to start using the
    #   uploaded IPSet.
    #
    # @option params [String] :client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be added to a new IP set resource.
    #
    # @option params [String] :expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #
    # @return [Types::CreateIPSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIPSetResponse#ip_set_id #ip_set_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ip_set({
    #     detector_id: "DetectorId", # required
    #     name: "Name", # required
    #     format: "TXT", # required, accepts TXT, STIX, OTX_CSV, ALIEN_VAULT, PROOF_POINT, FIRE_EYE
    #     location: "Location", # required
    #     activate: false, # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     expected_bucket_owner: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_set_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateIPSet AWS API Documentation
    #
    # @overload create_ip_set(params = {})
    # @param [Hash] params ({})
    def create_ip_set(params = {}, options = {})
      req = build_request(:create_ip_set, params)
      req.send_request(options)
    end

    # Creates a new Malware Protection plan for the protected resource.
    #
    # When you create a Malware Protection plan, the Amazon Web Services
    # service terms for GuardDuty Malware Protection apply. For more
    # information, see [Amazon Web Services service terms for GuardDuty
    # Malware Protection][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/service-terms/#87._Amazon_GuardDuty
    #
    # @option params [String] :client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :role
    #   Amazon Resource Name (ARN) of the IAM role that has the permissions to
    #   scan and add tags to the associated protected resource.
    #
    # @option params [required, Types::CreateProtectedResource] :protected_resource
    #   Information about the protected resource that is associated with the
    #   created Malware Protection plan. Presently, `S3Bucket` is the only
    #   supported protected resource.
    #
    # @option params [Types::MalwareProtectionPlanActions] :actions
    #   Information about whether the tags will be added to the S3 object
    #   after scanning.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags added to the Malware Protection plan resource.
    #
    # @return [Types::CreateMalwareProtectionPlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMalwareProtectionPlanResponse#malware_protection_plan_id #malware_protection_plan_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_malware_protection_plan({
    #     client_token: "ClientToken",
    #     role: "String", # required
    #     protected_resource: { # required
    #       s3_bucket: {
    #         bucket_name: "String",
    #         object_prefixes: ["String"],
    #       },
    #     },
    #     actions: {
    #       tagging: {
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.malware_protection_plan_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateMalwareProtectionPlan AWS API Documentation
    #
    # @overload create_malware_protection_plan(params = {})
    # @param [Hash] params ({})
    def create_malware_protection_plan(params = {}, options = {})
      req = build_request(:create_malware_protection_plan, params)
      req.send_request(options)
    end

    # Creates member accounts of the current Amazon Web Services account by
    # specifying a list of Amazon Web Services account IDs. This step is a
    # prerequisite for managing the associated member accounts either by
    # invitation or through an organization.
    #
    # As a delegated administrator, using `CreateMembers` will enable
    # GuardDuty in the added member accounts, with the exception of the
    # organization delegated administrator account. A delegated
    # administrator must enable GuardDuty prior to being added as a member.
    #
    # When you use CreateMembers as an Organizations delegated
    # administrator, GuardDuty applies your organization's auto-enable
    # settings to the member accounts in this request, irrespective of the
    # accounts being new or existing members. For more information about the
    # existing auto-enable settings for your organization, see
    # [DescribeOrganizationConfiguration][1].
    #
    # If you disassociate a member account that was added by invitation, the
    # member account details obtained from this API, including the
    # associated email addresses, will be retained. This is done so that the
    # delegated administrator can invoke the [InviteMembers][2] API without
    # the need to invoke the CreateMembers API again. To remove the details
    # associated with a member account, the delegated administrator must
    # invoke the [DeleteMembers][3] API.
    #
    # When the member accounts added through Organizations are later
    # disassociated, you (administrator) can't invite them by calling the
    # InviteMembers API. You can create an association with these member
    # accounts again only by calling the CreateMembers API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DescribeOrganizationConfiguration.html
    # [2]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html
    # [3]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to associate member accounts.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, Array<Types::AccountDetail>] :account_details
    #   A list of account ID and email address pairs of the accounts that you
    #   want to associate with the GuardDuty administrator account.
    #
    # @return [Types::CreateMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_members({
    #     detector_id: "DetectorId", # required
    #     account_details: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         email: "Email", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateMembers AWS API Documentation
    #
    # @overload create_members(params = {})
    # @param [Hash] params ({})
    def create_members(params = {}, options = {})
      req = build_request(:create_members, params)
      req.send_request(options)
    end

    # Creates a publishing destination where you can export your GuardDuty
    # findings. Before you start exporting the findings, the destination
    # resource must exist.
    #
    # @option params [required, String] :detector_id
    #   The ID of the GuardDuty detector associated with the publishing
    #   destination.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :destination_type
    #   The type of resource for the publishing destination. Currently only
    #   Amazon S3 buckets are supported.
    #
    # @option params [required, Types::DestinationProperties] :destination_properties
    #   The properties of the publishing destination, including the ARNs for
    #   the destination and the KMS key used for encryption.
    #
    # @option params [String] :client_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be added to a new publishing destination resource.
    #
    # @return [Types::CreatePublishingDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePublishingDestinationResponse#destination_id #destination_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_publishing_destination({
    #     detector_id: "DetectorId", # required
    #     destination_type: "S3", # required, accepts S3
    #     destination_properties: { # required
    #       destination_arn: "String",
    #       kms_key_arn: "String",
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.destination_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreatePublishingDestination AWS API Documentation
    #
    # @overload create_publishing_destination(params = {})
    # @param [Hash] params ({})
    def create_publishing_destination(params = {}, options = {})
      req = build_request(:create_publishing_destination, params)
      req.send_request(options)
    end

    # Generates sample findings of types specified by the list of finding
    # types. If 'NULL' is specified for `findingTypes`, the API generates
    # sample findings of all supported finding types.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector for which you need to create sample findings.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Array<String>] :finding_types
    #   The types of sample findings to generate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sample_findings({
    #     detector_id: "DetectorId", # required
    #     finding_types: ["FindingType"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateSampleFindings AWS API Documentation
    #
    # @overload create_sample_findings(params = {})
    # @param [Hash] params ({})
    def create_sample_findings(params = {}, options = {})
      req = build_request(:create_sample_findings, params)
      req.send_request(options)
    end

    # Creates a new threat entity set. In a threat entity set, you can
    # provide known malicious IP addresses and domains for your Amazon Web
    # Services environment. GuardDuty generates findings based on the
    # entries in the threat entity sets. Only users of the administrator
    # account can manage entity sets, which automatically apply to member
    # accounts.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to create a threat entity set.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :name
    #   A user-friendly name to identify the threat entity set.
    #
    #   The name of your list can include lowercase letters, uppercase
    #   letters, numbers, dash (-), and underscore (\_).
    #
    # @option params [required, String] :format
    #   The format of the file that contains the threat entity set.
    #
    # @option params [required, String] :location
    #   The URI of the file that contains the threat entity set. The format of
    #   the `Location` URL must be a valid Amazon S3 URL format. Invalid URL
    #   formats will result in an error, regardless of whether you activate
    #   the entity set or not. For more information about format of the
    #   location URLs, see [Format of location URL under Step 2: Adding
    #   trusted or threat intelligence data][1] in the *Amazon GuardDuty User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-lists-create-activate.html
    #
    # @option params [String] :expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #
    # @option params [required, Boolean] :activate
    #   A boolean value that indicates whether GuardDuty should start using
    #   the uploaded threat entity set to generate findings.
    #
    # @option params [String] :client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be added to a new threat entity set resource.
    #
    # @return [Types::CreateThreatEntitySetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThreatEntitySetResponse#threat_entity_set_id #threat_entity_set_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_threat_entity_set({
    #     detector_id: "DetectorId", # required
    #     name: "Name", # required
    #     format: "TXT", # required, accepts TXT, STIX, OTX_CSV, ALIEN_VAULT, PROOF_POINT, FIRE_EYE
    #     location: "Location", # required
    #     expected_bucket_owner: "ExpectedBucketOwner",
    #     activate: false, # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_entity_set_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateThreatEntitySet AWS API Documentation
    #
    # @overload create_threat_entity_set(params = {})
    # @param [Hash] params ({})
    def create_threat_entity_set(params = {}, options = {})
      req = build_request(:create_threat_entity_set, params)
      req.send_request(options)
    end

    # Creates a new ThreatIntelSet. ThreatIntelSets consist of known
    # malicious IP addresses. GuardDuty generates findings based on
    # ThreatIntelSets. Only users of the administrator account can use this
    # operation.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to create a `threatIntelSet`.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :name
    #   A user-friendly ThreatIntelSet name displayed in all findings that are
    #   generated by activity that involves IP addresses included in this
    #   ThreatIntelSet.
    #
    # @option params [required, String] :format
    #   The format of the file that contains the ThreatIntelSet.
    #
    # @option params [required, String] :location
    #   The URI of the file that contains the ThreatIntelSet.
    #
    # @option params [required, Boolean] :activate
    #   A Boolean value that indicates whether GuardDuty is to start using the
    #   uploaded ThreatIntelSet.
    #
    # @option params [String] :client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be added to a new threat list resource.
    #
    # @option params [String] :expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #
    # @return [Types::CreateThreatIntelSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThreatIntelSetResponse#threat_intel_set_id #threat_intel_set_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_threat_intel_set({
    #     detector_id: "DetectorId", # required
    #     name: "Name", # required
    #     format: "TXT", # required, accepts TXT, STIX, OTX_CSV, ALIEN_VAULT, PROOF_POINT, FIRE_EYE
    #     location: "Location", # required
    #     activate: false, # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     expected_bucket_owner: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_intel_set_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateThreatIntelSet AWS API Documentation
    #
    # @overload create_threat_intel_set(params = {})
    # @param [Hash] params ({})
    def create_threat_intel_set(params = {}, options = {})
      req = build_request(:create_threat_intel_set, params)
      req.send_request(options)
    end

    # Creates a new trusted entity set. In the trusted entity set, you can
    # provide IP addresses and domains that you believe are secure for
    # communication in your Amazon Web Services environment. GuardDuty will
    # not generate findings for the entries that are specified in a trusted
    # entity set. At any given time, you can have only one trusted entity
    # set.
    #
    # Only users of the administrator account can manage the entity sets,
    # which automatically apply to member accounts.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account for which you
    #   want to create a trusted entity set.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :name
    #   A user-friendly name to identify the trusted entity set.
    #
    #   The name of your list can include lowercase letters, uppercase
    #   letters, numbers, dash (-), and underscore (\_).
    #
    # @option params [required, String] :format
    #   The format of the file that contains the trusted entity set.
    #
    # @option params [required, String] :location
    #   The URI of the file that contains the threat entity set. The format of
    #   the `Location` URL must be a valid Amazon S3 URL format. Invalid URL
    #   formats will result in an error, regardless of whether you activate
    #   the entity set or not. For more information about format of the
    #   location URLs, see [Format of location URL under Step 2: Adding
    #   trusted or threat intelligence data][1] in the *Amazon GuardDuty User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-lists-create-activate.html
    #
    # @option params [String] :expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #
    # @option params [required, Boolean] :activate
    #   A boolean value that indicates whether GuardDuty is to start using the
    #   uploaded trusted entity set.
    #
    # @option params [String] :client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to be added to a new trusted entity set resource.
    #
    # @return [Types::CreateTrustedEntitySetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrustedEntitySetResponse#trusted_entity_set_id #trusted_entity_set_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trusted_entity_set({
    #     detector_id: "DetectorId", # required
    #     name: "Name", # required
    #     format: "TXT", # required, accepts TXT, STIX, OTX_CSV, ALIEN_VAULT, PROOF_POINT, FIRE_EYE
    #     location: "Location", # required
    #     expected_bucket_owner: "ExpectedBucketOwner",
    #     activate: false, # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.trusted_entity_set_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/CreateTrustedEntitySet AWS API Documentation
    #
    # @overload create_trusted_entity_set(params = {})
    # @param [Hash] params ({})
    def create_trusted_entity_set(params = {}, options = {})
      req = build_request(:create_trusted_entity_set, params)
      req.send_request(options)
    end

    # Declines invitations sent to the current member account by Amazon Web
    # Services accounts specified by their account IDs.
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the Amazon Web Services accounts that sent
    #   invitations to the current member account that you want to decline
    #   invitations from.
    #
    # @return [Types::DeclineInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeclineInvitationsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decline_invitations({
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeclineInvitations AWS API Documentation
    #
    # @overload decline_invitations(params = {})
    # @param [Hash] params ({})
    def decline_invitations(params = {}, options = {})
      req = build_request(:decline_invitations, params)
      req.send_request(options)
    end

    # Deletes an Amazon GuardDuty detector that is specified by the detector
    # ID.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that you want to delete.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_detector({
    #     detector_id: "DetectorId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteDetector AWS API Documentation
    #
    # @overload delete_detector(params = {})
    # @param [Hash] params ({})
    def delete_detector(params = {}, options = {})
      req = build_request(:delete_detector, params)
      req.send_request(options)
    end

    # Deletes the filter specified by the filter name.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that is associated with the filter.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :filter_name
    #   The name of the filter that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_filter({
    #     detector_id: "DetectorId", # required
    #     filter_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteFilter AWS API Documentation
    #
    # @overload delete_filter(params = {})
    # @param [Hash] params ({})
    def delete_filter(params = {}, options = {})
      req = build_request(:delete_filter, params)
      req.send_request(options)
    end

    # Deletes the IPSet specified by the `ipSetId`. IPSets are called
    # trusted IP lists in the console user interface.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector associated with the IPSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :ip_set_id
    #   The unique ID of the IPSet to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ip_set({
    #     detector_id: "DetectorId", # required
    #     ip_set_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteIPSet AWS API Documentation
    #
    # @overload delete_ip_set(params = {})
    # @param [Hash] params ({})
    def delete_ip_set(params = {}, options = {})
      req = build_request(:delete_ip_set, params)
      req.send_request(options)
    end

    # Deletes invitations sent to the current member account by Amazon Web
    # Services accounts specified by their account IDs.
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the Amazon Web Services accounts that sent
    #   invitations to the current member account that you want to delete
    #   invitations from.
    #
    # @return [Types::DeleteInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInvitationsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_invitations({
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteInvitations AWS API Documentation
    #
    # @overload delete_invitations(params = {})
    # @param [Hash] params ({})
    def delete_invitations(params = {}, options = {})
      req = build_request(:delete_invitations, params)
      req.send_request(options)
    end

    # Deletes the Malware Protection plan ID associated with the Malware
    # Protection plan resource. Use this API only when you no longer want to
    # protect the resource associated with this Malware Protection plan ID.
    #
    # @option params [required, String] :malware_protection_plan_id
    #   A unique identifier associated with Malware Protection plan resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_malware_protection_plan({
    #     malware_protection_plan_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteMalwareProtectionPlan AWS API Documentation
    #
    # @overload delete_malware_protection_plan(params = {})
    # @param [Hash] params ({})
    def delete_malware_protection_plan(params = {}, options = {})
      req = build_request(:delete_malware_protection_plan, params)
      req.send_request(options)
    end

    # Deletes GuardDuty member accounts (to the current GuardDuty
    # administrator account) specified by the account IDs.
    #
    # With `autoEnableOrganizationMembers` configuration for your
    # organization set to `ALL`, you'll receive an error if you attempt to
    # disable GuardDuty for a member account in your organization.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account whose members
    #   you want to delete.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to delete.
    #
    # @return [Types::DeleteMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_members({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteMembers AWS API Documentation
    #
    # @overload delete_members(params = {})
    # @param [Hash] params ({})
    def delete_members(params = {}, options = {})
      req = build_request(:delete_members, params)
      req.send_request(options)
    end

    # Deletes the publishing definition with the specified `destinationId`.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector associated with the publishing
    #   destination to delete.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :destination_id
    #   The ID of the publishing destination to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_publishing_destination({
    #     detector_id: "DetectorId", # required
    #     destination_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeletePublishingDestination AWS API Documentation
    #
    # @overload delete_publishing_destination(params = {})
    # @param [Hash] params ({})
    def delete_publishing_destination(params = {}, options = {})
      req = build_request(:delete_publishing_destination, params)
      req.send_request(options)
    end

    # Deletes the threat entity set that is associated with the specified
    # `threatEntitySetId`.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector associated with the threat entity set
    #   resource.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :threat_entity_set_id
    #   The unique ID that helps GuardDuty identify which threat entity set
    #   needs to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_threat_entity_set({
    #     detector_id: "DetectorId", # required
    #     threat_entity_set_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteThreatEntitySet AWS API Documentation
    #
    # @overload delete_threat_entity_set(params = {})
    # @param [Hash] params ({})
    def delete_threat_entity_set(params = {}, options = {})
      req = build_request(:delete_threat_entity_set, params)
      req.send_request(options)
    end

    # Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that is associated with the
    #   threatIntelSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :threat_intel_set_id
    #   The unique ID of the threatIntelSet that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_threat_intel_set({
    #     detector_id: "DetectorId", # required
    #     threat_intel_set_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteThreatIntelSet AWS API Documentation
    #
    # @overload delete_threat_intel_set(params = {})
    # @param [Hash] params ({})
    def delete_threat_intel_set(params = {}, options = {})
      req = build_request(:delete_threat_intel_set, params)
      req.send_request(options)
    end

    # Deletes the trusted entity set that is associated with the specified
    # `trustedEntitySetId`.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector associated with the trusted entity set
    #   resource.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :trusted_entity_set_id
    #   The unique ID that helps GuardDuty identify which trusted entity set
    #   needs to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trusted_entity_set({
    #     detector_id: "DetectorId", # required
    #     trusted_entity_set_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DeleteTrustedEntitySet AWS API Documentation
    #
    # @overload delete_trusted_entity_set(params = {})
    # @param [Hash] params ({})
    def delete_trusted_entity_set(params = {}, options = {})
      req = build_request(:delete_trusted_entity_set, params)
      req.send_request(options)
    end

    # Returns a list of malware scans. Each member account can view the
    # malware scans for their own accounts. An administrator can view the
    # malware scans for all the member accounts.
    #
    # There might be regional differences because some data sources might
    # not be available in all the Amazon Web Services Regions where
    # GuardDuty is presently supported. For more information, see [Regions
    # and endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that the request is associated with.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #
    # @option params [Types::FilterCriteria] :filter_criteria
    #   Represents the criteria to be used in the filter for describing scan
    #   entries.
    #
    # @option params [Types::SortCriteria] :sort_criteria
    #   Represents the criteria used for sorting scan entries. The [
    #   `attributeName` ][1] is required and it must be `scanStartTime`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_SortCriteria.html#guardduty-Type-SortCriteria-attributeName
    #
    # @return [Types::DescribeMalwareScansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMalwareScansResponse#scans #scans} => Array&lt;Types::Scan&gt;
    #   * {Types::DescribeMalwareScansResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_malware_scans({
    #     detector_id: "DetectorId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     filter_criteria: {
    #       filter_criterion: [
    #         {
    #           criterion_key: "EC2_INSTANCE_ARN", # accepts EC2_INSTANCE_ARN, SCAN_ID, ACCOUNT_ID, GUARDDUTY_FINDING_ID, SCAN_START_TIME, SCAN_STATUS, SCAN_TYPE
    #           filter_condition: {
    #             equals_value: "NonEmptyString",
    #             greater_than: 1,
    #             less_than: 1,
    #           },
    #         },
    #       ],
    #     },
    #     sort_criteria: {
    #       attribute_name: "String",
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scans #=> Array
    #   resp.scans[0].detector_id #=> String
    #   resp.scans[0].admin_detector_id #=> String
    #   resp.scans[0].scan_id #=> String
    #   resp.scans[0].scan_status #=> String, one of "RUNNING", "COMPLETED", "FAILED", "SKIPPED"
    #   resp.scans[0].failure_reason #=> String
    #   resp.scans[0].scan_start_time #=> Time
    #   resp.scans[0].scan_end_time #=> Time
    #   resp.scans[0].trigger_details.guard_duty_finding_id #=> String
    #   resp.scans[0].trigger_details.description #=> String
    #   resp.scans[0].trigger_details.trigger_type #=> String, one of "BACKUP", "GUARDDUTY"
    #   resp.scans[0].resource_details.instance_arn #=> String
    #   resp.scans[0].scan_result_details.scan_result #=> String, one of "CLEAN", "INFECTED"
    #   resp.scans[0].account_id #=> String
    #   resp.scans[0].total_bytes #=> Integer
    #   resp.scans[0].file_count #=> Integer
    #   resp.scans[0].attached_volumes #=> Array
    #   resp.scans[0].attached_volumes[0].volume_arn #=> String
    #   resp.scans[0].attached_volumes[0].volume_type #=> String
    #   resp.scans[0].attached_volumes[0].device_name #=> String
    #   resp.scans[0].attached_volumes[0].volume_size_in_gb #=> Integer
    #   resp.scans[0].attached_volumes[0].encryption_type #=> String
    #   resp.scans[0].attached_volumes[0].snapshot_arn #=> String
    #   resp.scans[0].attached_volumes[0].kms_key_arn #=> String
    #   resp.scans[0].scan_type #=> String, one of "GUARDDUTY_INITIATED", "ON_DEMAND"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribeMalwareScans AWS API Documentation
    #
    # @overload describe_malware_scans(params = {})
    # @param [Hash] params ({})
    def describe_malware_scans(params = {}, options = {})
      req = build_request(:describe_malware_scans, params)
      req.send_request(options)
    end

    # Returns information about the account selected as the delegated
    # administrator for GuardDuty.
    #
    # There might be regional differences because some data sources might
    # not be available in all the Amazon Web Services Regions where
    # GuardDuty is presently supported. For more information, see [Regions
    # and endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, String] :detector_id
    #   The detector ID of the delegated administrator for which you need to
    #   retrieve the information.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill `nextToken` in the request with
    #   the value of `NextToken` from the previous response to continue
    #   listing data.
    #
    # @return [Types::DescribeOrganizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationConfigurationResponse#auto_enable #auto_enable} => Boolean
    #   * {Types::DescribeOrganizationConfigurationResponse#member_account_limit_reached #member_account_limit_reached} => Boolean
    #   * {Types::DescribeOrganizationConfigurationResponse#data_sources #data_sources} => Types::OrganizationDataSourceConfigurationsResult
    #   * {Types::DescribeOrganizationConfigurationResponse#features #features} => Array&lt;Types::OrganizationFeatureConfigurationResult&gt;
    #   * {Types::DescribeOrganizationConfigurationResponse#next_token #next_token} => String
    #   * {Types::DescribeOrganizationConfigurationResponse#auto_enable_organization_members #auto_enable_organization_members} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_configuration({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_enable #=> Boolean
    #   resp.member_account_limit_reached #=> Boolean
    #   resp.data_sources.s3_logs.auto_enable #=> Boolean
    #   resp.data_sources.kubernetes.audit_logs.auto_enable #=> Boolean
    #   resp.data_sources.malware_protection.scan_ec2_instance_with_findings.ebs_volumes.auto_enable #=> Boolean
    #   resp.features #=> Array
    #   resp.features[0].name #=> String, one of "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "EKS_RUNTIME_MONITORING", "LAMBDA_NETWORK_LOGS", "RUNTIME_MONITORING"
    #   resp.features[0].auto_enable #=> String, one of "NEW", "NONE", "ALL"
    #   resp.features[0].additional_configuration #=> Array
    #   resp.features[0].additional_configuration[0].name #=> String, one of "EKS_ADDON_MANAGEMENT", "ECS_FARGATE_AGENT_MANAGEMENT", "EC2_AGENT_MANAGEMENT"
    #   resp.features[0].additional_configuration[0].auto_enable #=> String, one of "NEW", "NONE", "ALL"
    #   resp.next_token #=> String
    #   resp.auto_enable_organization_members #=> String, one of "NEW", "ALL", "NONE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribeOrganizationConfiguration AWS API Documentation
    #
    # @overload describe_organization_configuration(params = {})
    # @param [Hash] params ({})
    def describe_organization_configuration(params = {}, options = {})
      req = build_request(:describe_organization_configuration, params)
      req.send_request(options)
    end

    # Returns information about the publishing destination specified by the
    # provided `destinationId`.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector associated with the publishing
    #   destination to retrieve.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :destination_id
    #   The ID of the publishing destination to retrieve.
    #
    # @return [Types::DescribePublishingDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePublishingDestinationResponse#destination_id #destination_id} => String
    #   * {Types::DescribePublishingDestinationResponse#destination_type #destination_type} => String
    #   * {Types::DescribePublishingDestinationResponse#status #status} => String
    #   * {Types::DescribePublishingDestinationResponse#publishing_failure_start_timestamp #publishing_failure_start_timestamp} => Integer
    #   * {Types::DescribePublishingDestinationResponse#destination_properties #destination_properties} => Types::DestinationProperties
    #   * {Types::DescribePublishingDestinationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_publishing_destination({
    #     detector_id: "DetectorId", # required
    #     destination_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.destination_id #=> String
    #   resp.destination_type #=> String, one of "S3"
    #   resp.status #=> String, one of "PENDING_VERIFICATION", "PUBLISHING", "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY", "STOPPED"
    #   resp.publishing_failure_start_timestamp #=> Integer
    #   resp.destination_properties.destination_arn #=> String
    #   resp.destination_properties.kms_key_arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DescribePublishingDestination AWS API Documentation
    #
    # @overload describe_publishing_destination(params = {})
    # @param [Hash] params ({})
    def describe_publishing_destination(params = {}, options = {})
      req = build_request(:describe_publishing_destination, params)
      req.send_request(options)
    end

    # Removes the existing GuardDuty delegated administrator of the
    # organization. Only the organization's management account can run this
    # API operation.
    #
    # @option params [required, String] :admin_account_id
    #   The Amazon Web Services Account ID for the organizations account to be
    #   disabled as a GuardDuty delegated administrator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_organization_admin_account({
    #     admin_account_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisableOrganizationAdminAccount AWS API Documentation
    #
    # @overload disable_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def disable_organization_admin_account(params = {}, options = {})
      req = build_request(:disable_organization_admin_account, params)
      req.send_request(options)
    end

    # Disassociates the current GuardDuty member account from its
    # administrator account.
    #
    # When you disassociate an invited member from a GuardDuty delegated
    # administrator, the member account details obtained from the
    # [CreateMembers][1] API, including the associated email addresses, are
    # retained. This is done so that the delegated administrator can invoke
    # the [InviteMembers][2] API without the need to invoke the
    # CreateMembers API again. To remove the details associated with a
    # member account, the delegated administrator must invoke the
    # [DeleteMembers][3] API.
    #
    # With `autoEnableOrganizationMembers` configuration for your
    # organization set to `ALL`, you'll receive an error if you attempt to
    # disable GuardDuty in a member account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html
    # [2]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html
    # [3]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_from_administrator_account({
    #     detector_id: "DetectorId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateFromAdministratorAccount AWS API Documentation
    #
    # @overload disassociate_from_administrator_account(params = {})
    # @param [Hash] params ({})
    def disassociate_from_administrator_account(params = {}, options = {})
      req = build_request(:disassociate_from_administrator_account, params)
      req.send_request(options)
    end

    # Disassociates the current GuardDuty member account from its
    # administrator account.
    #
    # When you disassociate an invited member from a GuardDuty delegated
    # administrator, the member account details obtained from the
    # [CreateMembers][1] API, including the associated email addresses, are
    # retained. This is done so that the delegated administrator can invoke
    # the [InviteMembers][2] API without the need to invoke the
    # CreateMembers API again. To remove the details associated with a
    # member account, the delegated administrator must invoke the
    # [DeleteMembers][3] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html
    # [2]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html
    # [3]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_from_master_account({
    #     detector_id: "DetectorId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateFromMasterAccount AWS API Documentation
    #
    # @overload disassociate_from_master_account(params = {})
    # @param [Hash] params ({})
    def disassociate_from_master_account(params = {}, options = {})
      req = build_request(:disassociate_from_master_account, params)
      req.send_request(options)
    end

    # Disassociates GuardDuty member accounts (from the current
    # administrator account) specified by the account IDs.
    #
    # When you disassociate an invited member from a GuardDuty delegated
    # administrator, the member account details obtained from the
    # [CreateMembers][1] API, including the associated email addresses, are
    # retained. This is done so that the delegated administrator can invoke
    # the [InviteMembers][2] API without the need to invoke the
    # CreateMembers API again. To remove the details associated with a
    # member account, the delegated administrator must invoke the
    # [DeleteMembers][3] API.
    #
    # With `autoEnableOrganizationMembers` configuration for your
    # organization set to `ALL`, you'll receive an error if you attempt to
    # disassociate a member account before removing them from your
    # organization.
    #
    # If you disassociate a member account that was added by invitation, the
    # member account details obtained from this API, including the
    # associated email addresses, will be retained. This is done so that the
    # delegated administrator can invoke the [InviteMembers][2] API without
    # the need to invoke the CreateMembers API again. To remove the details
    # associated with a member account, the delegated administrator must
    # invoke the [DeleteMembers][3] API.
    #
    # When the member accounts added through Organizations are later
    # disassociated, you (administrator) can't invite them by calling the
    # InviteMembers API. You can create an association with these member
    # accounts again only by calling the CreateMembers API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html
    # [2]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html
    # [3]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account whose members
    #   you want to disassociate from the administrator account.
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to disassociate from the administrator account.
    #
    # @return [Types::DisassociateMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_members({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/DisassociateMembers AWS API Documentation
    #
    # @overload disassociate_members(params = {})
    # @param [Hash] params ({})
    def disassociate_members(params = {}, options = {})
      req = build_request(:disassociate_members, params)
      req.send_request(options)
    end

    # Designates an Amazon Web Services account within the organization as
    # your GuardDuty delegated administrator. Only the organization's
    # management account can run this API operation.
    #
    # @option params [required, String] :admin_account_id
    #   The Amazon Web Services account ID for the organization account to be
    #   enabled as a GuardDuty delegated administrator.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_organization_admin_account({
    #     admin_account_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/EnableOrganizationAdminAccount AWS API Documentation
    #
    # @overload enable_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def enable_organization_admin_account(params = {}, options = {})
      req = build_request(:enable_organization_admin_account, params)
      req.send_request(options)
    end

    # Provides the details of the GuardDuty administrator account associated
    # with the current GuardDuty member account.
    #
    # Based on the type of account that runs this API, the following list
    # shows how the API behavior varies:
    #
    # * When the GuardDuty administrator account runs this API, it will
    #   return success (`HTTP 200`) but no content.
    #
    # * When a member account runs this API, it will return the details of
    #   the GuardDuty administrator account that is associated with this
    #   calling member account.
    #
    # * When an individual account (not associated with an organization)
    #   runs this API, it will return success (`HTTP 200`) but no content.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    # @return [Types::GetAdministratorAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAdministratorAccountResponse#administrator #administrator} => Types::Administrator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_administrator_account({
    #     detector_id: "DetectorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.administrator.account_id #=> String
    #   resp.administrator.invitation_id #=> String
    #   resp.administrator.relationship_status #=> String
    #   resp.administrator.invited_at #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetAdministratorAccount AWS API Documentation
    #
    # @overload get_administrator_account(params = {})
    # @param [Hash] params ({})
    def get_administrator_account(params = {}, options = {})
      req = build_request(:get_administrator_account, params)
      req.send_request(options)
    end

    # Retrieves aggregated statistics for your account. If you are a
    # GuardDuty administrator, you can retrieve the statistics for all the
    # resources associated with the active member accounts in your
    # organization who have enabled Runtime Monitoring and have the
    # GuardDuty security agent running on their resources.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the GuardDuty detector.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Types::CoverageFilterCriteria] :filter_criteria
    #   Represents the criteria used to filter the coverage statistics.
    #
    # @option params [required, Array<String>] :statistics_type
    #   Represents the statistics type used to aggregate the coverage details.
    #
    # @return [Types::GetCoverageStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCoverageStatisticsResponse#coverage_statistics #coverage_statistics} => Types::CoverageStatistics
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_coverage_statistics({
    #     detector_id: "DetectorId", # required
    #     filter_criteria: {
    #       filter_criterion: [
    #         {
    #           criterion_key: "ACCOUNT_ID", # accepts ACCOUNT_ID, CLUSTER_NAME, RESOURCE_TYPE, COVERAGE_STATUS, ADDON_VERSION, MANAGEMENT_TYPE, EKS_CLUSTER_NAME, ECS_CLUSTER_NAME, AGENT_VERSION, INSTANCE_ID, CLUSTER_ARN
    #           filter_condition: {
    #             equals: ["String"],
    #             not_equals: ["String"],
    #           },
    #         },
    #       ],
    #     },
    #     statistics_type: ["COUNT_BY_RESOURCE_TYPE"], # required, accepts COUNT_BY_RESOURCE_TYPE, COUNT_BY_COVERAGE_STATUS
    #   })
    #
    # @example Response structure
    #
    #   resp.coverage_statistics.count_by_resource_type #=> Hash
    #   resp.coverage_statistics.count_by_resource_type["ResourceType"] #=> Integer
    #   resp.coverage_statistics.count_by_coverage_status #=> Hash
    #   resp.coverage_statistics.count_by_coverage_status["CoverageStatus"] #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetCoverageStatistics AWS API Documentation
    #
    # @overload get_coverage_statistics(params = {})
    # @param [Hash] params ({})
    def get_coverage_statistics(params = {}, options = {})
      req = build_request(:get_coverage_statistics, params)
      req.send_request(options)
    end

    # Retrieves a GuardDuty detector specified by the detectorId.
    #
    # There might be regional differences because some data sources might
    # not be available in all the Amazon Web Services Regions where
    # GuardDuty is presently supported. For more information, see [Regions
    # and endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that you want to get.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @return [Types::GetDetectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDetectorResponse#created_at #created_at} => String
    #   * {Types::GetDetectorResponse#finding_publishing_frequency #finding_publishing_frequency} => String
    #   * {Types::GetDetectorResponse#service_role #service_role} => String
    #   * {Types::GetDetectorResponse#status #status} => String
    #   * {Types::GetDetectorResponse#updated_at #updated_at} => String
    #   * {Types::GetDetectorResponse#data_sources #data_sources} => Types::DataSourceConfigurationsResult
    #   * {Types::GetDetectorResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetDetectorResponse#features #features} => Array&lt;Types::DetectorFeatureConfigurationResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_detector({
    #     detector_id: "DetectorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> String
    #   resp.finding_publishing_frequency #=> String, one of "FIFTEEN_MINUTES", "ONE_HOUR", "SIX_HOURS"
    #   resp.service_role #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.updated_at #=> String
    #   resp.data_sources.cloud_trail.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_sources.dns_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_sources.flow_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_sources.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_sources.kubernetes.audit_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_sources.malware_protection.scan_ec2_instance_with_findings.ebs_volumes.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.data_sources.malware_protection.scan_ec2_instance_with_findings.ebs_volumes.reason #=> String
    #   resp.data_sources.malware_protection.service_role #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.features #=> Array
    #   resp.features[0].name #=> String, one of "FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "EKS_RUNTIME_MONITORING", "LAMBDA_NETWORK_LOGS", "RUNTIME_MONITORING"
    #   resp.features[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.features[0].updated_at #=> Time
    #   resp.features[0].additional_configuration #=> Array
    #   resp.features[0].additional_configuration[0].name #=> String, one of "EKS_ADDON_MANAGEMENT", "ECS_FARGATE_AGENT_MANAGEMENT", "EC2_AGENT_MANAGEMENT"
    #   resp.features[0].additional_configuration[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.features[0].additional_configuration[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetDetector AWS API Documentation
    #
    # @overload get_detector(params = {})
    # @param [Hash] params ({})
    def get_detector(params = {}, options = {})
      req = build_request(:get_detector, params)
      req.send_request(options)
    end

    # Returns the details of the filter specified by the filter name.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that is associated with this filter.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :filter_name
    #   The name of the filter you want to get.
    #
    # @return [Types::GetFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFilterResponse#name #name} => String
    #   * {Types::GetFilterResponse#description #description} => String
    #   * {Types::GetFilterResponse#action #action} => String
    #   * {Types::GetFilterResponse#rank #rank} => Integer
    #   * {Types::GetFilterResponse#finding_criteria #finding_criteria} => Types::FindingCriteria
    #   * {Types::GetFilterResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_filter({
    #     detector_id: "DetectorId", # required
    #     filter_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.action #=> String, one of "NOOP", "ARCHIVE"
    #   resp.rank #=> Integer
    #   resp.finding_criteria.criterion #=> Hash
    #   resp.finding_criteria.criterion["String"].eq #=> Array
    #   resp.finding_criteria.criterion["String"].eq[0] #=> String
    #   resp.finding_criteria.criterion["String"].neq #=> Array
    #   resp.finding_criteria.criterion["String"].neq[0] #=> String
    #   resp.finding_criteria.criterion["String"].gt #=> Integer
    #   resp.finding_criteria.criterion["String"].gte #=> Integer
    #   resp.finding_criteria.criterion["String"].lt #=> Integer
    #   resp.finding_criteria.criterion["String"].lte #=> Integer
    #   resp.finding_criteria.criterion["String"].equals #=> Array
    #   resp.finding_criteria.criterion["String"].equals[0] #=> String
    #   resp.finding_criteria.criterion["String"].not_equals #=> Array
    #   resp.finding_criteria.criterion["String"].not_equals[0] #=> String
    #   resp.finding_criteria.criterion["String"].greater_than #=> Integer
    #   resp.finding_criteria.criterion["String"].greater_than_or_equal #=> Integer
    #   resp.finding_criteria.criterion["String"].less_than #=> Integer
    #   resp.finding_criteria.criterion["String"].less_than_or_equal #=> Integer
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFilter AWS API Documentation
    #
    # @overload get_filter(params = {})
    # @param [Hash] params ({})
    def get_filter(params = {}, options = {})
      req = build_request(:get_filter, params)
      req.send_request(options)
    end

    # Describes Amazon GuardDuty findings specified by finding IDs.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to retrieve.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, Array<String>] :finding_ids
    #   The IDs of the findings that you want to retrieve.
    #
    # @option params [Types::SortCriteria] :sort_criteria
    #   Represents the criteria used for sorting findings.
    #
    # @return [Types::GetFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsResponse#findings #findings} => Array&lt;Types::Finding&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings({
    #     detector_id: "DetectorId", # required
    #     finding_ids: ["FindingId"], # required
    #     sort_criteria: {
    #       attribute_name: "String",
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.findings[0].account_id #=> String
    #   resp.findings[0].arn #=> String
    #   resp.findings[0].confidence #=> Float
    #   resp.findings[0].created_at #=> String
    #   resp.findings[0].description #=> String
    #   resp.findings[0].id #=> String
    #   resp.findings[0].partition #=> String
    #   resp.findings[0].region #=> String
    #   resp.findings[0].resource.access_key_details.access_key_id #=> String
    #   resp.findings[0].resource.access_key_details.principal_id #=> String
    #   resp.findings[0].resource.access_key_details.user_name #=> String
    #   resp.findings[0].resource.access_key_details.user_type #=> String
    #   resp.findings[0].resource.s3_bucket_details #=> Array
    #   resp.findings[0].resource.s3_bucket_details[0].arn #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].name #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].type #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].created_at #=> Time
    #   resp.findings[0].resource.s3_bucket_details[0].owner.id #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].tags #=> Array
    #   resp.findings[0].resource.s3_bucket_details[0].tags[0].key #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].tags[0].value #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].default_server_side_encryption.encryption_type #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].default_server_side_encryption.kms_master_key_arn #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_read_access #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.access_control_list.allows_public_write_access #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_read_access #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.bucket_policy.allows_public_write_access #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.ignore_public_acls #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.restrict_public_buckets #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.block_public_acls #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.bucket_level_permissions.block_public_access.block_public_policy #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.account_level_permissions.block_public_access.ignore_public_acls #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.account_level_permissions.block_public_access.restrict_public_buckets #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.account_level_permissions.block_public_access.block_public_acls #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.permission_configuration.account_level_permissions.block_public_access.block_public_policy #=> Boolean
    #   resp.findings[0].resource.s3_bucket_details[0].public_access.effective_permission #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].s3_object_details #=> Array
    #   resp.findings[0].resource.s3_bucket_details[0].s3_object_details[0].object_arn #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].s3_object_details[0].key #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].s3_object_details[0].etag #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].s3_object_details[0].hash #=> String
    #   resp.findings[0].resource.s3_bucket_details[0].s3_object_details[0].version_id #=> String
    #   resp.findings[0].resource.instance_details.availability_zone #=> String
    #   resp.findings[0].resource.instance_details.iam_instance_profile.arn #=> String
    #   resp.findings[0].resource.instance_details.iam_instance_profile.id #=> String
    #   resp.findings[0].resource.instance_details.image_description #=> String
    #   resp.findings[0].resource.instance_details.image_id #=> String
    #   resp.findings[0].resource.instance_details.instance_id #=> String
    #   resp.findings[0].resource.instance_details.instance_state #=> String
    #   resp.findings[0].resource.instance_details.instance_type #=> String
    #   resp.findings[0].resource.instance_details.outpost_arn #=> String
    #   resp.findings[0].resource.instance_details.launch_time #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces #=> Array
    #   resp.findings[0].resource.instance_details.network_interfaces[0].ipv_6_addresses #=> Array
    #   resp.findings[0].resource.instance_details.network_interfaces[0].ipv_6_addresses[0] #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].network_interface_id #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].private_dns_name #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].private_ip_address #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].private_ip_addresses #=> Array
    #   resp.findings[0].resource.instance_details.network_interfaces[0].private_ip_addresses[0].private_dns_name #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].private_ip_addresses[0].private_ip_address #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].public_dns_name #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].public_ip #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].security_groups #=> Array
    #   resp.findings[0].resource.instance_details.network_interfaces[0].security_groups[0].group_id #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].security_groups[0].group_name #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].subnet_id #=> String
    #   resp.findings[0].resource.instance_details.network_interfaces[0].vpc_id #=> String
    #   resp.findings[0].resource.instance_details.platform #=> String
    #   resp.findings[0].resource.instance_details.product_codes #=> Array
    #   resp.findings[0].resource.instance_details.product_codes[0].code #=> String
    #   resp.findings[0].resource.instance_details.product_codes[0].product_type #=> String
    #   resp.findings[0].resource.instance_details.tags #=> Array
    #   resp.findings[0].resource.instance_details.tags[0].key #=> String
    #   resp.findings[0].resource.instance_details.tags[0].value #=> String
    #   resp.findings[0].resource.eks_cluster_details.name #=> String
    #   resp.findings[0].resource.eks_cluster_details.arn #=> String
    #   resp.findings[0].resource.eks_cluster_details.vpc_id #=> String
    #   resp.findings[0].resource.eks_cluster_details.status #=> String
    #   resp.findings[0].resource.eks_cluster_details.tags #=> Array
    #   resp.findings[0].resource.eks_cluster_details.tags[0].key #=> String
    #   resp.findings[0].resource.eks_cluster_details.tags[0].value #=> String
    #   resp.findings[0].resource.eks_cluster_details.created_at #=> Time
    #   resp.findings[0].resource.kubernetes_details.kubernetes_user_details.username #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_user_details.uid #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_user_details.groups #=> Array
    #   resp.findings[0].resource.kubernetes_details.kubernetes_user_details.groups[0] #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_user_details.session_name #=> Array
    #   resp.findings[0].resource.kubernetes_details.kubernetes_user_details.session_name[0] #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_user_details.impersonated_user.username #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_user_details.impersonated_user.groups #=> Array
    #   resp.findings[0].resource.kubernetes_details.kubernetes_user_details.impersonated_user.groups[0] #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.name #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.type #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.uid #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.namespace #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.host_network #=> Boolean
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers #=> Array
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].container_runtime #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].id #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].name #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].image #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].image_prefix #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].volume_mounts #=> Array
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].volume_mounts[0].name #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].volume_mounts[0].mount_path #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].security_context.privileged #=> Boolean
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.containers[0].security_context.allow_privilege_escalation #=> Boolean
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.volumes #=> Array
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.volumes[0].name #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.volumes[0].host_path.path #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.service_account_name #=> String
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.host_ipc #=> Boolean
    #   resp.findings[0].resource.kubernetes_details.kubernetes_workload_details.host_pid #=> Boolean
    #   resp.findings[0].resource.resource_type #=> String
    #   resp.findings[0].resource.ebs_volume_details.scanned_volume_details #=> Array
    #   resp.findings[0].resource.ebs_volume_details.scanned_volume_details[0].volume_arn #=> String
    #   resp.findings[0].resource.ebs_volume_details.scanned_volume_details[0].volume_type #=> String
    #   resp.findings[0].resource.ebs_volume_details.scanned_volume_details[0].device_name #=> String
    #   resp.findings[0].resource.ebs_volume_details.scanned_volume_details[0].volume_size_in_gb #=> Integer
    #   resp.findings[0].resource.ebs_volume_details.scanned_volume_details[0].encryption_type #=> String
    #   resp.findings[0].resource.ebs_volume_details.scanned_volume_details[0].snapshot_arn #=> String
    #   resp.findings[0].resource.ebs_volume_details.scanned_volume_details[0].kms_key_arn #=> String
    #   resp.findings[0].resource.ebs_volume_details.skipped_volume_details #=> Array
    #   resp.findings[0].resource.ebs_volume_details.skipped_volume_details[0].volume_arn #=> String
    #   resp.findings[0].resource.ebs_volume_details.skipped_volume_details[0].volume_type #=> String
    #   resp.findings[0].resource.ebs_volume_details.skipped_volume_details[0].device_name #=> String
    #   resp.findings[0].resource.ebs_volume_details.skipped_volume_details[0].volume_size_in_gb #=> Integer
    #   resp.findings[0].resource.ebs_volume_details.skipped_volume_details[0].encryption_type #=> String
    #   resp.findings[0].resource.ebs_volume_details.skipped_volume_details[0].snapshot_arn #=> String
    #   resp.findings[0].resource.ebs_volume_details.skipped_volume_details[0].kms_key_arn #=> String
    #   resp.findings[0].resource.ecs_cluster_details.name #=> String
    #   resp.findings[0].resource.ecs_cluster_details.arn #=> String
    #   resp.findings[0].resource.ecs_cluster_details.status #=> String
    #   resp.findings[0].resource.ecs_cluster_details.active_services_count #=> Integer
    #   resp.findings[0].resource.ecs_cluster_details.registered_container_instances_count #=> Integer
    #   resp.findings[0].resource.ecs_cluster_details.running_tasks_count #=> Integer
    #   resp.findings[0].resource.ecs_cluster_details.tags #=> Array
    #   resp.findings[0].resource.ecs_cluster_details.tags[0].key #=> String
    #   resp.findings[0].resource.ecs_cluster_details.tags[0].value #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.arn #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.definition_arn #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.version #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.task_created_at #=> Time
    #   resp.findings[0].resource.ecs_cluster_details.task_details.started_at #=> Time
    #   resp.findings[0].resource.ecs_cluster_details.task_details.started_by #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.tags #=> Array
    #   resp.findings[0].resource.ecs_cluster_details.task_details.tags[0].key #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.tags[0].value #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.volumes #=> Array
    #   resp.findings[0].resource.ecs_cluster_details.task_details.volumes[0].name #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.volumes[0].host_path.path #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.containers #=> Array
    #   resp.findings[0].resource.ecs_cluster_details.task_details.containers[0].container_runtime #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.containers[0].id #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.containers[0].name #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.containers[0].image #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.containers[0].image_prefix #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.containers[0].volume_mounts #=> Array
    #   resp.findings[0].resource.ecs_cluster_details.task_details.containers[0].volume_mounts[0].name #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.containers[0].volume_mounts[0].mount_path #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.containers[0].security_context.privileged #=> Boolean
    #   resp.findings[0].resource.ecs_cluster_details.task_details.containers[0].security_context.allow_privilege_escalation #=> Boolean
    #   resp.findings[0].resource.ecs_cluster_details.task_details.group #=> String
    #   resp.findings[0].resource.ecs_cluster_details.task_details.launch_type #=> String
    #   resp.findings[0].resource.container_details.container_runtime #=> String
    #   resp.findings[0].resource.container_details.id #=> String
    #   resp.findings[0].resource.container_details.name #=> String
    #   resp.findings[0].resource.container_details.image #=> String
    #   resp.findings[0].resource.container_details.image_prefix #=> String
    #   resp.findings[0].resource.container_details.volume_mounts #=> Array
    #   resp.findings[0].resource.container_details.volume_mounts[0].name #=> String
    #   resp.findings[0].resource.container_details.volume_mounts[0].mount_path #=> String
    #   resp.findings[0].resource.container_details.security_context.privileged #=> Boolean
    #   resp.findings[0].resource.container_details.security_context.allow_privilege_escalation #=> Boolean
    #   resp.findings[0].resource.rds_db_instance_details.db_instance_identifier #=> String
    #   resp.findings[0].resource.rds_db_instance_details.engine #=> String
    #   resp.findings[0].resource.rds_db_instance_details.engine_version #=> String
    #   resp.findings[0].resource.rds_db_instance_details.db_cluster_identifier #=> String
    #   resp.findings[0].resource.rds_db_instance_details.db_instance_arn #=> String
    #   resp.findings[0].resource.rds_db_instance_details.tags #=> Array
    #   resp.findings[0].resource.rds_db_instance_details.tags[0].key #=> String
    #   resp.findings[0].resource.rds_db_instance_details.tags[0].value #=> String
    #   resp.findings[0].resource.rds_limitless_db_details.db_shard_group_identifier #=> String
    #   resp.findings[0].resource.rds_limitless_db_details.db_shard_group_resource_id #=> String
    #   resp.findings[0].resource.rds_limitless_db_details.db_shard_group_arn #=> String
    #   resp.findings[0].resource.rds_limitless_db_details.engine #=> String
    #   resp.findings[0].resource.rds_limitless_db_details.engine_version #=> String
    #   resp.findings[0].resource.rds_limitless_db_details.db_cluster_identifier #=> String
    #   resp.findings[0].resource.rds_limitless_db_details.tags #=> Array
    #   resp.findings[0].resource.rds_limitless_db_details.tags[0].key #=> String
    #   resp.findings[0].resource.rds_limitless_db_details.tags[0].value #=> String
    #   resp.findings[0].resource.rds_db_user_details.user #=> String
    #   resp.findings[0].resource.rds_db_user_details.application #=> String
    #   resp.findings[0].resource.rds_db_user_details.database #=> String
    #   resp.findings[0].resource.rds_db_user_details.ssl #=> String
    #   resp.findings[0].resource.rds_db_user_details.auth_method #=> String
    #   resp.findings[0].resource.lambda_details.function_arn #=> String
    #   resp.findings[0].resource.lambda_details.function_name #=> String
    #   resp.findings[0].resource.lambda_details.description #=> String
    #   resp.findings[0].resource.lambda_details.last_modified_at #=> Time
    #   resp.findings[0].resource.lambda_details.revision_id #=> String
    #   resp.findings[0].resource.lambda_details.function_version #=> String
    #   resp.findings[0].resource.lambda_details.role #=> String
    #   resp.findings[0].resource.lambda_details.vpc_config.subnet_ids #=> Array
    #   resp.findings[0].resource.lambda_details.vpc_config.subnet_ids[0] #=> String
    #   resp.findings[0].resource.lambda_details.vpc_config.vpc_id #=> String
    #   resp.findings[0].resource.lambda_details.vpc_config.security_groups #=> Array
    #   resp.findings[0].resource.lambda_details.vpc_config.security_groups[0].group_id #=> String
    #   resp.findings[0].resource.lambda_details.vpc_config.security_groups[0].group_name #=> String
    #   resp.findings[0].resource.lambda_details.tags #=> Array
    #   resp.findings[0].resource.lambda_details.tags[0].key #=> String
    #   resp.findings[0].resource.lambda_details.tags[0].value #=> String
    #   resp.findings[0].resource.ebs_snapshot_details.snapshot_arn #=> String
    #   resp.findings[0].resource.ec2_image_details.image_arn #=> String
    #   resp.findings[0].resource.recovery_point_details.recovery_point_arn #=> String
    #   resp.findings[0].resource.recovery_point_details.backup_vault_name #=> String
    #   resp.findings[0].schema_version #=> String
    #   resp.findings[0].service.action.action_type #=> String
    #   resp.findings[0].service.action.aws_api_call_action.api #=> String
    #   resp.findings[0].service.action.aws_api_call_action.caller_type #=> String
    #   resp.findings[0].service.action.aws_api_call_action.domain_details.domain #=> String
    #   resp.findings[0].service.action.aws_api_call_action.error_code #=> String
    #   resp.findings[0].service.action.aws_api_call_action.user_agent #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.city.city_name #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.country.country_code #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.country.country_name #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.geo_location.lat #=> Float
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.geo_location.lon #=> Float
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.ip_address_v4 #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.ip_address_v6 #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.organization.asn #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.organization.asn_org #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.organization.isp #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_ip_details.organization.org #=> String
    #   resp.findings[0].service.action.aws_api_call_action.service_name #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_account_details.account_id #=> String
    #   resp.findings[0].service.action.aws_api_call_action.remote_account_details.affiliated #=> Boolean
    #   resp.findings[0].service.action.aws_api_call_action.affected_resources #=> Hash
    #   resp.findings[0].service.action.aws_api_call_action.affected_resources["String"] #=> String
    #   resp.findings[0].service.action.dns_request_action.domain #=> String
    #   resp.findings[0].service.action.dns_request_action.protocol #=> String
    #   resp.findings[0].service.action.dns_request_action.blocked #=> Boolean
    #   resp.findings[0].service.action.dns_request_action.domain_with_suffix #=> String
    #   resp.findings[0].service.action.dns_request_action.vpc_owner_account_id #=> String
    #   resp.findings[0].service.action.network_connection_action.blocked #=> Boolean
    #   resp.findings[0].service.action.network_connection_action.connection_direction #=> String
    #   resp.findings[0].service.action.network_connection_action.local_port_details.port #=> Integer
    #   resp.findings[0].service.action.network_connection_action.local_port_details.port_name #=> String
    #   resp.findings[0].service.action.network_connection_action.protocol #=> String
    #   resp.findings[0].service.action.network_connection_action.local_ip_details.ip_address_v4 #=> String
    #   resp.findings[0].service.action.network_connection_action.local_ip_details.ip_address_v6 #=> String
    #   resp.findings[0].service.action.network_connection_action.local_network_interface #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.city.city_name #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.country.country_code #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.country.country_name #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.geo_location.lat #=> Float
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.geo_location.lon #=> Float
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.ip_address_v4 #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.ip_address_v6 #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.organization.asn #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.organization.asn_org #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.organization.isp #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_ip_details.organization.org #=> String
    #   resp.findings[0].service.action.network_connection_action.remote_port_details.port #=> Integer
    #   resp.findings[0].service.action.network_connection_action.remote_port_details.port_name #=> String
    #   resp.findings[0].service.action.port_probe_action.blocked #=> Boolean
    #   resp.findings[0].service.action.port_probe_action.port_probe_details #=> Array
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].local_port_details.port #=> Integer
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].local_port_details.port_name #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].local_ip_details.ip_address_v4 #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].local_ip_details.ip_address_v6 #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.city.city_name #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.country.country_code #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.country.country_name #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.geo_location.lat #=> Float
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.geo_location.lon #=> Float
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.ip_address_v4 #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.ip_address_v6 #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.organization.asn #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.organization.asn_org #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.organization.isp #=> String
    #   resp.findings[0].service.action.port_probe_action.port_probe_details[0].remote_ip_details.organization.org #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.request_uri #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.verb #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.source_ips #=> Array
    #   resp.findings[0].service.action.kubernetes_api_call_action.source_ips[0] #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.user_agent #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.remote_ip_details.city.city_name #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.remote_ip_details.country.country_code #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.remote_ip_details.country.country_name #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.remote_ip_details.geo_location.lat #=> Float
    #   resp.findings[0].service.action.kubernetes_api_call_action.remote_ip_details.geo_location.lon #=> Float
    #   resp.findings[0].service.action.kubernetes_api_call_action.remote_ip_details.ip_address_v4 #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.remote_ip_details.ip_address_v6 #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.remote_ip_details.organization.asn #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.remote_ip_details.organization.asn_org #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.remote_ip_details.organization.isp #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.remote_ip_details.organization.org #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.status_code #=> Integer
    #   resp.findings[0].service.action.kubernetes_api_call_action.parameters #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.resource #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.subresource #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.namespace #=> String
    #   resp.findings[0].service.action.kubernetes_api_call_action.resource_name #=> String
    #   resp.findings[0].service.action.rds_login_attempt_action.remote_ip_details.city.city_name #=> String
    #   resp.findings[0].service.action.rds_login_attempt_action.remote_ip_details.country.country_code #=> String
    #   resp.findings[0].service.action.rds_login_attempt_action.remote_ip_details.country.country_name #=> String
    #   resp.findings[0].service.action.rds_login_attempt_action.remote_ip_details.geo_location.lat #=> Float
    #   resp.findings[0].service.action.rds_login_attempt_action.remote_ip_details.geo_location.lon #=> Float
    #   resp.findings[0].service.action.rds_login_attempt_action.remote_ip_details.ip_address_v4 #=> String
    #   resp.findings[0].service.action.rds_login_attempt_action.remote_ip_details.ip_address_v6 #=> String
    #   resp.findings[0].service.action.rds_login_attempt_action.remote_ip_details.organization.asn #=> String
    #   resp.findings[0].service.action.rds_login_attempt_action.remote_ip_details.organization.asn_org #=> String
    #   resp.findings[0].service.action.rds_login_attempt_action.remote_ip_details.organization.isp #=> String
    #   resp.findings[0].service.action.rds_login_attempt_action.remote_ip_details.organization.org #=> String
    #   resp.findings[0].service.action.rds_login_attempt_action.login_attributes #=> Array
    #   resp.findings[0].service.action.rds_login_attempt_action.login_attributes[0].user #=> String
    #   resp.findings[0].service.action.rds_login_attempt_action.login_attributes[0].application #=> String
    #   resp.findings[0].service.action.rds_login_attempt_action.login_attributes[0].failed_login_attempts #=> Integer
    #   resp.findings[0].service.action.rds_login_attempt_action.login_attributes[0].successful_login_attempts #=> Integer
    #   resp.findings[0].service.action.kubernetes_permission_checked_details.verb #=> String
    #   resp.findings[0].service.action.kubernetes_permission_checked_details.resource #=> String
    #   resp.findings[0].service.action.kubernetes_permission_checked_details.namespace #=> String
    #   resp.findings[0].service.action.kubernetes_permission_checked_details.allowed #=> Boolean
    #   resp.findings[0].service.action.kubernetes_role_binding_details.kind #=> String
    #   resp.findings[0].service.action.kubernetes_role_binding_details.name #=> String
    #   resp.findings[0].service.action.kubernetes_role_binding_details.uid #=> String
    #   resp.findings[0].service.action.kubernetes_role_binding_details.role_ref_name #=> String
    #   resp.findings[0].service.action.kubernetes_role_binding_details.role_ref_kind #=> String
    #   resp.findings[0].service.action.kubernetes_role_details.kind #=> String
    #   resp.findings[0].service.action.kubernetes_role_details.name #=> String
    #   resp.findings[0].service.action.kubernetes_role_details.uid #=> String
    #   resp.findings[0].service.evidence.threat_intelligence_details #=> Array
    #   resp.findings[0].service.evidence.threat_intelligence_details[0].threat_list_name #=> String
    #   resp.findings[0].service.evidence.threat_intelligence_details[0].threat_names #=> Array
    #   resp.findings[0].service.evidence.threat_intelligence_details[0].threat_names[0] #=> String
    #   resp.findings[0].service.evidence.threat_intelligence_details[0].threat_file_sha_256 #=> String
    #   resp.findings[0].service.archived #=> Boolean
    #   resp.findings[0].service.count #=> Integer
    #   resp.findings[0].service.detector_id #=> String
    #   resp.findings[0].service.event_first_seen #=> String
    #   resp.findings[0].service.event_last_seen #=> String
    #   resp.findings[0].service.resource_role #=> String
    #   resp.findings[0].service.service_name #=> String
    #   resp.findings[0].service.user_feedback #=> String
    #   resp.findings[0].service.additional_info.value #=> String
    #   resp.findings[0].service.additional_info.type #=> String
    #   resp.findings[0].service.feature_name #=> String
    #   resp.findings[0].service.ebs_volume_scan_details.scan_id #=> String
    #   resp.findings[0].service.ebs_volume_scan_details.scan_started_at #=> Time
    #   resp.findings[0].service.ebs_volume_scan_details.scan_completed_at #=> Time
    #   resp.findings[0].service.ebs_volume_scan_details.trigger_finding_id #=> String
    #   resp.findings[0].service.ebs_volume_scan_details.sources #=> Array
    #   resp.findings[0].service.ebs_volume_scan_details.sources[0] #=> String
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.scanned_item_count.total_gb #=> Integer
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.scanned_item_count.files #=> Integer
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.scanned_item_count.volumes #=> Integer
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threats_detected_item_count.files #=> Integer
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.highest_severity_threat_details.severity #=> String
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.highest_severity_threat_details.threat_name #=> String
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.highest_severity_threat_details.count #=> Integer
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threat_detected_by_name.item_count #=> Integer
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threat_detected_by_name.unique_threat_name_count #=> Integer
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threat_detected_by_name.shortened #=> Boolean
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threat_detected_by_name.threat_names #=> Array
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threat_detected_by_name.threat_names[0].name #=> String
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threat_detected_by_name.threat_names[0].severity #=> String
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threat_detected_by_name.threat_names[0].item_count #=> Integer
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threat_detected_by_name.threat_names[0].file_paths #=> Array
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threat_detected_by_name.threat_names[0].file_paths[0].file_path #=> String
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threat_detected_by_name.threat_names[0].file_paths[0].volume_arn #=> String
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threat_detected_by_name.threat_names[0].file_paths[0].hash #=> String
    #   resp.findings[0].service.ebs_volume_scan_details.scan_detections.threat_detected_by_name.threat_names[0].file_paths[0].file_name #=> String
    #   resp.findings[0].service.ebs_volume_scan_details.scan_type #=> String, one of "GUARDDUTY_INITIATED", "ON_DEMAND"
    #   resp.findings[0].service.runtime_details.process.name #=> String
    #   resp.findings[0].service.runtime_details.process.executable_path #=> String
    #   resp.findings[0].service.runtime_details.process.executable_sha_256 #=> String
    #   resp.findings[0].service.runtime_details.process.namespace_pid #=> Integer
    #   resp.findings[0].service.runtime_details.process.pwd #=> String
    #   resp.findings[0].service.runtime_details.process.pid #=> Integer
    #   resp.findings[0].service.runtime_details.process.start_time #=> Time
    #   resp.findings[0].service.runtime_details.process.uuid #=> String
    #   resp.findings[0].service.runtime_details.process.parent_uuid #=> String
    #   resp.findings[0].service.runtime_details.process.user #=> String
    #   resp.findings[0].service.runtime_details.process.user_id #=> Integer
    #   resp.findings[0].service.runtime_details.process.euid #=> Integer
    #   resp.findings[0].service.runtime_details.process.lineage #=> Array
    #   resp.findings[0].service.runtime_details.process.lineage[0].start_time #=> Time
    #   resp.findings[0].service.runtime_details.process.lineage[0].namespace_pid #=> Integer
    #   resp.findings[0].service.runtime_details.process.lineage[0].user_id #=> Integer
    #   resp.findings[0].service.runtime_details.process.lineage[0].name #=> String
    #   resp.findings[0].service.runtime_details.process.lineage[0].pid #=> Integer
    #   resp.findings[0].service.runtime_details.process.lineage[0].uuid #=> String
    #   resp.findings[0].service.runtime_details.process.lineage[0].executable_path #=> String
    #   resp.findings[0].service.runtime_details.process.lineage[0].euid #=> Integer
    #   resp.findings[0].service.runtime_details.process.lineage[0].parent_uuid #=> String
    #   resp.findings[0].service.runtime_details.context.modifying_process.name #=> String
    #   resp.findings[0].service.runtime_details.context.modifying_process.executable_path #=> String
    #   resp.findings[0].service.runtime_details.context.modifying_process.executable_sha_256 #=> String
    #   resp.findings[0].service.runtime_details.context.modifying_process.namespace_pid #=> Integer
    #   resp.findings[0].service.runtime_details.context.modifying_process.pwd #=> String
    #   resp.findings[0].service.runtime_details.context.modifying_process.pid #=> Integer
    #   resp.findings[0].service.runtime_details.context.modifying_process.start_time #=> Time
    #   resp.findings[0].service.runtime_details.context.modifying_process.uuid #=> String
    #   resp.findings[0].service.runtime_details.context.modifying_process.parent_uuid #=> String
    #   resp.findings[0].service.runtime_details.context.modifying_process.user #=> String
    #   resp.findings[0].service.runtime_details.context.modifying_process.user_id #=> Integer
    #   resp.findings[0].service.runtime_details.context.modifying_process.euid #=> Integer
    #   resp.findings[0].service.runtime_details.context.modifying_process.lineage #=> Array
    #   resp.findings[0].service.runtime_details.context.modifying_process.lineage[0].start_time #=> Time
    #   resp.findings[0].service.runtime_details.context.modifying_process.lineage[0].namespace_pid #=> Integer
    #   resp.findings[0].service.runtime_details.context.modifying_process.lineage[0].user_id #=> Integer
    #   resp.findings[0].service.runtime_details.context.modifying_process.lineage[0].name #=> String
    #   resp.findings[0].service.runtime_details.context.modifying_process.lineage[0].pid #=> Integer
    #   resp.findings[0].service.runtime_details.context.modifying_process.lineage[0].uuid #=> String
    #   resp.findings[0].service.runtime_details.context.modifying_process.lineage[0].executable_path #=> String
    #   resp.findings[0].service.runtime_details.context.modifying_process.lineage[0].euid #=> Integer
    #   resp.findings[0].service.runtime_details.context.modifying_process.lineage[0].parent_uuid #=> String
    #   resp.findings[0].service.runtime_details.context.modified_at #=> Time
    #   resp.findings[0].service.runtime_details.context.script_path #=> String
    #   resp.findings[0].service.runtime_details.context.library_path #=> String
    #   resp.findings[0].service.runtime_details.context.ld_preload_value #=> String
    #   resp.findings[0].service.runtime_details.context.socket_path #=> String
    #   resp.findings[0].service.runtime_details.context.runc_binary_path #=> String
    #   resp.findings[0].service.runtime_details.context.release_agent_path #=> String
    #   resp.findings[0].service.runtime_details.context.mount_source #=> String
    #   resp.findings[0].service.runtime_details.context.mount_target #=> String
    #   resp.findings[0].service.runtime_details.context.file_system_type #=> String
    #   resp.findings[0].service.runtime_details.context.flags #=> Array
    #   resp.findings[0].service.runtime_details.context.flags[0] #=> String
    #   resp.findings[0].service.runtime_details.context.module_name #=> String
    #   resp.findings[0].service.runtime_details.context.module_file_path #=> String
    #   resp.findings[0].service.runtime_details.context.module_sha_256 #=> String
    #   resp.findings[0].service.runtime_details.context.shell_history_file_path #=> String
    #   resp.findings[0].service.runtime_details.context.target_process.name #=> String
    #   resp.findings[0].service.runtime_details.context.target_process.executable_path #=> String
    #   resp.findings[0].service.runtime_details.context.target_process.executable_sha_256 #=> String
    #   resp.findings[0].service.runtime_details.context.target_process.namespace_pid #=> Integer
    #   resp.findings[0].service.runtime_details.context.target_process.pwd #=> String
    #   resp.findings[0].service.runtime_details.context.target_process.pid #=> Integer
    #   resp.findings[0].service.runtime_details.context.target_process.start_time #=> Time
    #   resp.findings[0].service.runtime_details.context.target_process.uuid #=> String
    #   resp.findings[0].service.runtime_details.context.target_process.parent_uuid #=> String
    #   resp.findings[0].service.runtime_details.context.target_process.user #=> String
    #   resp.findings[0].service.runtime_details.context.target_process.user_id #=> Integer
    #   resp.findings[0].service.runtime_details.context.target_process.euid #=> Integer
    #   resp.findings[0].service.runtime_details.context.target_process.lineage #=> Array
    #   resp.findings[0].service.runtime_details.context.target_process.lineage[0].start_time #=> Time
    #   resp.findings[0].service.runtime_details.context.target_process.lineage[0].namespace_pid #=> Integer
    #   resp.findings[0].service.runtime_details.context.target_process.lineage[0].user_id #=> Integer
    #   resp.findings[0].service.runtime_details.context.target_process.lineage[0].name #=> String
    #   resp.findings[0].service.runtime_details.context.target_process.lineage[0].pid #=> Integer
    #   resp.findings[0].service.runtime_details.context.target_process.lineage[0].uuid #=> String
    #   resp.findings[0].service.runtime_details.context.target_process.lineage[0].executable_path #=> String
    #   resp.findings[0].service.runtime_details.context.target_process.lineage[0].euid #=> Integer
    #   resp.findings[0].service.runtime_details.context.target_process.lineage[0].parent_uuid #=> String
    #   resp.findings[0].service.runtime_details.context.address_family #=> String
    #   resp.findings[0].service.runtime_details.context.iana_protocol_number #=> Integer
    #   resp.findings[0].service.runtime_details.context.memory_regions #=> Array
    #   resp.findings[0].service.runtime_details.context.memory_regions[0] #=> String
    #   resp.findings[0].service.runtime_details.context.tool_name #=> String
    #   resp.findings[0].service.runtime_details.context.tool_category #=> String
    #   resp.findings[0].service.runtime_details.context.service_name #=> String
    #   resp.findings[0].service.runtime_details.context.command_line_example #=> String
    #   resp.findings[0].service.runtime_details.context.threat_file_path #=> String
    #   resp.findings[0].service.detection.anomaly.profiles #=> Hash
    #   resp.findings[0].service.detection.anomaly.profiles["String"] #=> Hash
    #   resp.findings[0].service.detection.anomaly.profiles["String"]["String"] #=> Array
    #   resp.findings[0].service.detection.anomaly.profiles["String"]["String"][0].profile_type #=> String, one of "FREQUENCY"
    #   resp.findings[0].service.detection.anomaly.profiles["String"]["String"][0].profile_subtype #=> String, one of "FREQUENT", "INFREQUENT", "UNSEEN", "RARE"
    #   resp.findings[0].service.detection.anomaly.profiles["String"]["String"][0].observations.text #=> Array
    #   resp.findings[0].service.detection.anomaly.profiles["String"]["String"][0].observations.text[0] #=> String
    #   resp.findings[0].service.detection.anomaly.unusual.behavior #=> Hash
    #   resp.findings[0].service.detection.anomaly.unusual.behavior["String"] #=> Hash
    #   resp.findings[0].service.detection.anomaly.unusual.behavior["String"]["String"].profile_type #=> String, one of "FREQUENCY"
    #   resp.findings[0].service.detection.anomaly.unusual.behavior["String"]["String"].profile_subtype #=> String, one of "FREQUENT", "INFREQUENT", "UNSEEN", "RARE"
    #   resp.findings[0].service.detection.anomaly.unusual.behavior["String"]["String"].observations.text #=> Array
    #   resp.findings[0].service.detection.anomaly.unusual.behavior["String"]["String"].observations.text[0] #=> String
    #   resp.findings[0].service.detection.sequence.uid #=> String
    #   resp.findings[0].service.detection.sequence.description #=> String
    #   resp.findings[0].service.detection.sequence.actors #=> Array
    #   resp.findings[0].service.detection.sequence.actors[0].id #=> String
    #   resp.findings[0].service.detection.sequence.actors[0].user.name #=> String
    #   resp.findings[0].service.detection.sequence.actors[0].user.uid #=> String
    #   resp.findings[0].service.detection.sequence.actors[0].user.type #=> String
    #   resp.findings[0].service.detection.sequence.actors[0].user.credential_uid #=> String
    #   resp.findings[0].service.detection.sequence.actors[0].user.account.uid #=> String
    #   resp.findings[0].service.detection.sequence.actors[0].user.account.name #=> String
    #   resp.findings[0].service.detection.sequence.actors[0].session.uid #=> String
    #   resp.findings[0].service.detection.sequence.actors[0].session.mfa_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.findings[0].service.detection.sequence.actors[0].session.created_time #=> Time
    #   resp.findings[0].service.detection.sequence.actors[0].session.issuer #=> String
    #   resp.findings[0].service.detection.sequence.actors[0].process.name #=> String
    #   resp.findings[0].service.detection.sequence.actors[0].process.path #=> String
    #   resp.findings[0].service.detection.sequence.actors[0].process.sha_256 #=> String
    #   resp.findings[0].service.detection.sequence.resources #=> Array
    #   resp.findings[0].service.detection.sequence.resources[0].uid #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].name #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].account_id #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].resource_type #=> String, one of "EC2_INSTANCE", "EC2_NETWORK_INTERFACE", "S3_BUCKET", "S3_OBJECT", "ACCESS_KEY", "EKS_CLUSTER", "KUBERNETES_WORKLOAD", "CONTAINER"
    #   resp.findings[0].service.detection.sequence.resources[0].region #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].service #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].cloud_partition #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].tags #=> Array
    #   resp.findings[0].service.detection.sequence.resources[0].tags[0].key #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].tags[0].value #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.owner_id #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.created_at #=> Time
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.encryption_type #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.encryption_key_arn #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.effective_permission #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.public_read_access #=> String, one of "BLOCKED", "ALLOWED"
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.public_write_access #=> String, one of "BLOCKED", "ALLOWED"
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.account_public_access.public_acl_access #=> String, one of "BLOCKED", "ALLOWED"
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.account_public_access.public_policy_access #=> String, one of "BLOCKED", "ALLOWED"
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.account_public_access.public_acl_ignore_behavior #=> String, one of "IGNORED", "NOT_IGNORED"
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.account_public_access.public_bucket_restrict_behavior #=> String, one of "RESTRICTED", "NOT_RESTRICTED"
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.bucket_public_access.public_acl_access #=> String, one of "BLOCKED", "ALLOWED"
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.bucket_public_access.public_policy_access #=> String, one of "BLOCKED", "ALLOWED"
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.bucket_public_access.public_acl_ignore_behavior #=> String, one of "IGNORED", "NOT_IGNORED"
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.bucket_public_access.public_bucket_restrict_behavior #=> String, one of "RESTRICTED", "NOT_RESTRICTED"
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.s3_object_uids #=> Array
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_bucket.s3_object_uids[0] #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.availability_zone #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.image_description #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.instance_state #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.iam_instance_profile.arn #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.iam_instance_profile.id #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.instance_type #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.outpost_arn #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.platform #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.product_codes #=> Array
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.product_codes[0].code #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.product_codes[0].product_type #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.ec2_network_interface_uids #=> Array
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_instance.ec2_network_interface_uids[0] #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.access_key.principal_id #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.access_key.user_name #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.access_key.user_type #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_network_interface.ipv_6_addresses #=> Array
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_network_interface.ipv_6_addresses[0] #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_network_interface.private_ip_addresses #=> Array
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_network_interface.private_ip_addresses[0].private_dns_name #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_network_interface.private_ip_addresses[0].private_ip_address #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_network_interface.public_ip #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_network_interface.security_groups #=> Array
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_network_interface.security_groups[0].group_id #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_network_interface.security_groups[0].group_name #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_network_interface.sub_net_id #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.ec2_network_interface.vpc_id #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_object.etag #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_object.key #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.s3_object.version_id #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.eks_cluster.arn #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.eks_cluster.created_at #=> Time
    #   resp.findings[0].service.detection.sequence.resources[0].data.eks_cluster.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "FAILED", "UPDATING", "PENDING"
    #   resp.findings[0].service.detection.sequence.resources[0].data.eks_cluster.vpc_id #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.eks_cluster.ec2_instance_uids #=> Array
    #   resp.findings[0].service.detection.sequence.resources[0].data.eks_cluster.ec2_instance_uids[0] #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.kubernetes_workload.container_uids #=> Array
    #   resp.findings[0].service.detection.sequence.resources[0].data.kubernetes_workload.container_uids[0] #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.kubernetes_workload.namespace #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.kubernetes_workload.kubernetes_resources_types #=> String, one of "PODS", "JOBS", "CRONJOBS", "DEPLOYMENTS", "DAEMONSETS", "STATEFULSETS", "REPLICASETS", "REPLICATIONCONTROLLERS"
    #   resp.findings[0].service.detection.sequence.resources[0].data.container.image #=> String
    #   resp.findings[0].service.detection.sequence.resources[0].data.container.image_uid #=> String
    #   resp.findings[0].service.detection.sequence.endpoints #=> Array
    #   resp.findings[0].service.detection.sequence.endpoints[0].id #=> String
    #   resp.findings[0].service.detection.sequence.endpoints[0].ip #=> String
    #   resp.findings[0].service.detection.sequence.endpoints[0].domain #=> String
    #   resp.findings[0].service.detection.sequence.endpoints[0].port #=> Integer
    #   resp.findings[0].service.detection.sequence.endpoints[0].location.city #=> String
    #   resp.findings[0].service.detection.sequence.endpoints[0].location.country #=> String
    #   resp.findings[0].service.detection.sequence.endpoints[0].location.latitude #=> Float
    #   resp.findings[0].service.detection.sequence.endpoints[0].location.longitude #=> Float
    #   resp.findings[0].service.detection.sequence.endpoints[0].autonomous_system.name #=> String
    #   resp.findings[0].service.detection.sequence.endpoints[0].autonomous_system.number #=> Integer
    #   resp.findings[0].service.detection.sequence.endpoints[0].connection.direction #=> String, one of "INBOUND", "OUTBOUND"
    #   resp.findings[0].service.detection.sequence.signals #=> Array
    #   resp.findings[0].service.detection.sequence.signals[0].uid #=> String
    #   resp.findings[0].service.detection.sequence.signals[0].type #=> String, one of "FINDING", "CLOUD_TRAIL", "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "FLOW_LOGS", "DNS_LOGS", "RUNTIME_MONITORING"
    #   resp.findings[0].service.detection.sequence.signals[0].description #=> String
    #   resp.findings[0].service.detection.sequence.signals[0].name #=> String
    #   resp.findings[0].service.detection.sequence.signals[0].created_at #=> Time
    #   resp.findings[0].service.detection.sequence.signals[0].updated_at #=> Time
    #   resp.findings[0].service.detection.sequence.signals[0].first_seen_at #=> Time
    #   resp.findings[0].service.detection.sequence.signals[0].last_seen_at #=> Time
    #   resp.findings[0].service.detection.sequence.signals[0].severity #=> Float
    #   resp.findings[0].service.detection.sequence.signals[0].count #=> Integer
    #   resp.findings[0].service.detection.sequence.signals[0].resource_uids #=> Array
    #   resp.findings[0].service.detection.sequence.signals[0].resource_uids[0] #=> String
    #   resp.findings[0].service.detection.sequence.signals[0].actor_ids #=> Array
    #   resp.findings[0].service.detection.sequence.signals[0].actor_ids[0] #=> String
    #   resp.findings[0].service.detection.sequence.signals[0].endpoint_ids #=> Array
    #   resp.findings[0].service.detection.sequence.signals[0].endpoint_ids[0] #=> String
    #   resp.findings[0].service.detection.sequence.signals[0].signal_indicators #=> Array
    #   resp.findings[0].service.detection.sequence.signals[0].signal_indicators[0].key #=> String, one of "SUSPICIOUS_USER_AGENT", "SUSPICIOUS_NETWORK", "MALICIOUS_IP", "TOR_IP", "ATTACK_TACTIC", "HIGH_RISK_API", "ATTACK_TECHNIQUE", "UNUSUAL_API_FOR_ACCOUNT", "UNUSUAL_ASN_FOR_ACCOUNT", "UNUSUAL_ASN_FOR_USER", "SUSPICIOUS_PROCESS", "MALICIOUS_DOMAIN", "MALICIOUS_PROCESS", "CRYPTOMINING_IP", "CRYPTOMINING_DOMAIN", "CRYPTOMINING_PROCESS"
    #   resp.findings[0].service.detection.sequence.signals[0].signal_indicators[0].values #=> Array
    #   resp.findings[0].service.detection.sequence.signals[0].signal_indicators[0].values[0] #=> String
    #   resp.findings[0].service.detection.sequence.signals[0].signal_indicators[0].title #=> String
    #   resp.findings[0].service.detection.sequence.sequence_indicators #=> Array
    #   resp.findings[0].service.detection.sequence.sequence_indicators[0].key #=> String, one of "SUSPICIOUS_USER_AGENT", "SUSPICIOUS_NETWORK", "MALICIOUS_IP", "TOR_IP", "ATTACK_TACTIC", "HIGH_RISK_API", "ATTACK_TECHNIQUE", "UNUSUAL_API_FOR_ACCOUNT", "UNUSUAL_ASN_FOR_ACCOUNT", "UNUSUAL_ASN_FOR_USER", "SUSPICIOUS_PROCESS", "MALICIOUS_DOMAIN", "MALICIOUS_PROCESS", "CRYPTOMINING_IP", "CRYPTOMINING_DOMAIN", "CRYPTOMINING_PROCESS"
    #   resp.findings[0].service.detection.sequence.sequence_indicators[0].values #=> Array
    #   resp.findings[0].service.detection.sequence.sequence_indicators[0].values[0] #=> String
    #   resp.findings[0].service.detection.sequence.sequence_indicators[0].title #=> String
    #   resp.findings[0].service.detection.sequence.additional_sequence_types #=> Array
    #   resp.findings[0].service.detection.sequence.additional_sequence_types[0] #=> String
    #   resp.findings[0].service.malware_scan_details.threats #=> Array
    #   resp.findings[0].service.malware_scan_details.threats[0].name #=> String
    #   resp.findings[0].service.malware_scan_details.threats[0].source #=> String
    #   resp.findings[0].service.malware_scan_details.threats[0].item_paths #=> Array
    #   resp.findings[0].service.malware_scan_details.threats[0].item_paths[0].nested_item_path #=> String
    #   resp.findings[0].service.malware_scan_details.threats[0].item_paths[0].hash #=> String
    #   resp.findings[0].service.malware_scan_details.threats[0].count #=> Integer
    #   resp.findings[0].service.malware_scan_details.threats[0].hash #=> String
    #   resp.findings[0].service.malware_scan_details.threats[0].item_details #=> Array
    #   resp.findings[0].service.malware_scan_details.threats[0].item_details[0].resource_arn #=> String
    #   resp.findings[0].service.malware_scan_details.threats[0].item_details[0].item_path #=> String
    #   resp.findings[0].service.malware_scan_details.threats[0].item_details[0].hash #=> String
    #   resp.findings[0].service.malware_scan_details.threats[0].item_details[0].additional_info.version_id #=> String
    #   resp.findings[0].service.malware_scan_details.threats[0].item_details[0].additional_info.device_name #=> String
    #   resp.findings[0].service.malware_scan_details.scan_id #=> String
    #   resp.findings[0].service.malware_scan_details.scan_type #=> String, one of "BACKUP_INITIATED", "ON_DEMAND", "GUARDDUTY_INITIATED"
    #   resp.findings[0].service.malware_scan_details.scan_category #=> String, one of "FULL_SCAN", "INCREMENTAL_SCAN"
    #   resp.findings[0].service.malware_scan_details.scan_configuration.trigger_type #=> String, one of "BACKUP", "GUARDDUTY"
    #   resp.findings[0].service.malware_scan_details.scan_configuration.incremental_scan_details.baseline_resource_arn #=> String
    #   resp.findings[0].service.malware_scan_details.unique_threat_count #=> Integer
    #   resp.findings[0].severity #=> Float
    #   resp.findings[0].title #=> String
    #   resp.findings[0].type #=> String
    #   resp.findings[0].updated_at #=> String
    #   resp.findings[0].associated_attack_sequence_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindings AWS API Documentation
    #
    # @overload get_findings(params = {})
    # @param [Hash] params ({})
    def get_findings(params = {}, options = {})
      req = build_request(:get_findings, params)
      req.send_request(options)
    end

    # Lists GuardDuty findings statistics for the specified detector ID.
    #
    # You must provide either `findingStatisticTypes` or `groupBy`
    # parameter, and not both. You can use the `maxResults` and `orderBy`
    # parameters only when using `groupBy`.
    #
    # There might be regional differences because some flags might not be
    # available in all the Regions where GuardDuty is currently supported.
    # For more information, see [Regions and endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector whose findings statistics you want to retrieve.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Array<String>] :finding_statistic_types
    #   The types of finding statistics to retrieve.
    #
    # @option params [Types::FindingCriteria] :finding_criteria
    #   Represents the criteria that is used for querying findings.
    #
    # @option params [String] :group_by
    #   Displays the findings statistics grouped by one of the listed valid
    #   values.
    #
    # @option params [String] :order_by
    #   Displays the sorted findings in the requested order. The default value
    #   of `orderBy` is `DESC`.
    #
    #   You can use this parameter only with the `groupBy` parameter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned in the response. The
    #   default value is 25.
    #
    #   You can use this parameter only with the `groupBy` parameter.
    #
    # @return [Types::GetFindingsStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsStatisticsResponse#finding_statistics #finding_statistics} => Types::FindingStatistics
    #   * {Types::GetFindingsStatisticsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings_statistics({
    #     detector_id: "DetectorId", # required
    #     finding_statistic_types: ["COUNT_BY_SEVERITY"], # accepts COUNT_BY_SEVERITY
    #     finding_criteria: {
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #         },
    #       },
    #     },
    #     group_by: "ACCOUNT", # accepts ACCOUNT, DATE, FINDING_TYPE, RESOURCE, SEVERITY
    #     order_by: "ASC", # accepts ASC, DESC
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_statistics.count_by_severity #=> Hash
    #   resp.finding_statistics.count_by_severity["String"] #=> Integer
    #   resp.finding_statistics.grouped_by_account #=> Array
    #   resp.finding_statistics.grouped_by_account[0].account_id #=> String
    #   resp.finding_statistics.grouped_by_account[0].last_generated_at #=> Time
    #   resp.finding_statistics.grouped_by_account[0].total_findings #=> Integer
    #   resp.finding_statistics.grouped_by_date #=> Array
    #   resp.finding_statistics.grouped_by_date[0].date #=> Time
    #   resp.finding_statistics.grouped_by_date[0].last_generated_at #=> Time
    #   resp.finding_statistics.grouped_by_date[0].severity #=> Float
    #   resp.finding_statistics.grouped_by_date[0].total_findings #=> Integer
    #   resp.finding_statistics.grouped_by_finding_type #=> Array
    #   resp.finding_statistics.grouped_by_finding_type[0].finding_type #=> String
    #   resp.finding_statistics.grouped_by_finding_type[0].last_generated_at #=> Time
    #   resp.finding_statistics.grouped_by_finding_type[0].total_findings #=> Integer
    #   resp.finding_statistics.grouped_by_resource #=> Array
    #   resp.finding_statistics.grouped_by_resource[0].account_id #=> String
    #   resp.finding_statistics.grouped_by_resource[0].last_generated_at #=> Time
    #   resp.finding_statistics.grouped_by_resource[0].resource_id #=> String
    #   resp.finding_statistics.grouped_by_resource[0].resource_type #=> String
    #   resp.finding_statistics.grouped_by_resource[0].total_findings #=> Integer
    #   resp.finding_statistics.grouped_by_severity #=> Array
    #   resp.finding_statistics.grouped_by_severity[0].last_generated_at #=> Time
    #   resp.finding_statistics.grouped_by_severity[0].severity #=> Float
    #   resp.finding_statistics.grouped_by_severity[0].total_findings #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetFindingsStatistics AWS API Documentation
    #
    # @overload get_findings_statistics(params = {})
    # @param [Hash] params ({})
    def get_findings_statistics(params = {}, options = {})
      req = build_request(:get_findings_statistics, params)
      req.send_request(options)
    end

    # Retrieves the IPSet specified by the `ipSetId`.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that is associated with the IPSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :ip_set_id
    #   The unique ID of the IPSet to retrieve.
    #
    # @return [Types::GetIPSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIPSetResponse#name #name} => String
    #   * {Types::GetIPSetResponse#format #format} => String
    #   * {Types::GetIPSetResponse#location #location} => String
    #   * {Types::GetIPSetResponse#status #status} => String
    #   * {Types::GetIPSetResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetIPSetResponse#expected_bucket_owner #expected_bucket_owner} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ip_set({
    #     detector_id: "DetectorId", # required
    #     ip_set_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.format #=> String, one of "TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"
    #   resp.location #=> String
    #   resp.status #=> String, one of "INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.expected_bucket_owner #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetIPSet AWS API Documentation
    #
    # @overload get_ip_set(params = {})
    # @param [Hash] params ({})
    def get_ip_set(params = {}, options = {})
      req = build_request(:get_ip_set, params)
      req.send_request(options)
    end

    # Returns the count of all GuardDuty membership invitations that were
    # sent to the current member account except the currently accepted
    # invitation.
    #
    # @return [Types::GetInvitationsCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInvitationsCountResponse#invitations_count #invitations_count} => Integer
    #
    # @example Response structure
    #
    #   resp.invitations_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetInvitationsCount AWS API Documentation
    #
    # @overload get_invitations_count(params = {})
    # @param [Hash] params ({})
    def get_invitations_count(params = {}, options = {})
      req = build_request(:get_invitations_count, params)
      req.send_request(options)
    end

    # Retrieves the Malware Protection plan details associated with a
    # Malware Protection plan ID.
    #
    # @option params [required, String] :malware_protection_plan_id
    #   A unique identifier associated with Malware Protection plan resource.
    #
    # @return [Types::GetMalwareProtectionPlanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMalwareProtectionPlanResponse#arn #arn} => String
    #   * {Types::GetMalwareProtectionPlanResponse#role #role} => String
    #   * {Types::GetMalwareProtectionPlanResponse#protected_resource #protected_resource} => Types::CreateProtectedResource
    #   * {Types::GetMalwareProtectionPlanResponse#actions #actions} => Types::MalwareProtectionPlanActions
    #   * {Types::GetMalwareProtectionPlanResponse#created_at #created_at} => Time
    #   * {Types::GetMalwareProtectionPlanResponse#status #status} => String
    #   * {Types::GetMalwareProtectionPlanResponse#status_reasons #status_reasons} => Array&lt;Types::MalwareProtectionPlanStatusReason&gt;
    #   * {Types::GetMalwareProtectionPlanResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_malware_protection_plan({
    #     malware_protection_plan_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.role #=> String
    #   resp.protected_resource.s3_bucket.bucket_name #=> String
    #   resp.protected_resource.s3_bucket.object_prefixes #=> Array
    #   resp.protected_resource.s3_bucket.object_prefixes[0] #=> String
    #   resp.actions.tagging.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.created_at #=> Time
    #   resp.status #=> String, one of "ACTIVE", "WARNING", "ERROR"
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0].code #=> String
    #   resp.status_reasons[0].message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMalwareProtectionPlan AWS API Documentation
    #
    # @overload get_malware_protection_plan(params = {})
    # @param [Hash] params ({})
    def get_malware_protection_plan(params = {}, options = {})
      req = build_request(:get_malware_protection_plan, params)
      req.send_request(options)
    end

    # Retrieves the detailed information for a specific malware scan. Each
    # member account can view the malware scan details for their own
    # account. An administrator can view malware scan details for all
    # accounts in the organization.
    #
    # There might be regional differences because some data sources might
    # not be available in all the Amazon Web Services Regions where
    # GuardDuty is presently supported. For more information, see [Regions
    # and endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, String] :scan_id
    #   A unique identifier that gets generated when you invoke the API
    #   without any error. Each malware scan has a corresponding scan ID.
    #   Using this scan ID, you can monitor the status of your malware scan.
    #
    # @return [Types::GetMalwareScanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMalwareScanResponse#scan_id #scan_id} => String
    #   * {Types::GetMalwareScanResponse#detector_id #detector_id} => String
    #   * {Types::GetMalwareScanResponse#admin_detector_id #admin_detector_id} => String
    #   * {Types::GetMalwareScanResponse#resource_arn #resource_arn} => String
    #   * {Types::GetMalwareScanResponse#resource_type #resource_type} => String
    #   * {Types::GetMalwareScanResponse#scanned_resources_count #scanned_resources_count} => Integer
    #   * {Types::GetMalwareScanResponse#skipped_resources_count #skipped_resources_count} => Integer
    #   * {Types::GetMalwareScanResponse#failed_resources_count #failed_resources_count} => Integer
    #   * {Types::GetMalwareScanResponse#scanned_resources #scanned_resources} => Array&lt;Types::ScannedResource&gt;
    #   * {Types::GetMalwareScanResponse#scan_configuration #scan_configuration} => Types::ScanConfiguration
    #   * {Types::GetMalwareScanResponse#scan_category #scan_category} => String
    #   * {Types::GetMalwareScanResponse#scan_status #scan_status} => String
    #   * {Types::GetMalwareScanResponse#scan_status_reason #scan_status_reason} => String
    #   * {Types::GetMalwareScanResponse#scan_type #scan_type} => String
    #   * {Types::GetMalwareScanResponse#scan_started_at #scan_started_at} => Time
    #   * {Types::GetMalwareScanResponse#scan_completed_at #scan_completed_at} => Time
    #   * {Types::GetMalwareScanResponse#scan_result_details #scan_result_details} => Types::GetMalwareScanResultDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_malware_scan({
    #     scan_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_id #=> String
    #   resp.detector_id #=> String
    #   resp.admin_detector_id #=> String
    #   resp.resource_arn #=> String
    #   resp.resource_type #=> String, one of "EBS_RECOVERY_POINT", "EBS_SNAPSHOT", "EBS_VOLUME", "EC2_AMI", "EC2_INSTANCE", "EC2_RECOVERY_POINT", "S3_RECOVERY_POINT", "S3_BUCKET"
    #   resp.scanned_resources_count #=> Integer
    #   resp.skipped_resources_count #=> Integer
    #   resp.failed_resources_count #=> Integer
    #   resp.scanned_resources #=> Array
    #   resp.scanned_resources[0].scanned_resource_arn #=> String
    #   resp.scanned_resources[0].scanned_resource_type #=> String, one of "EBS_RECOVERY_POINT", "EBS_SNAPSHOT", "EBS_VOLUME", "EC2_AMI", "EC2_INSTANCE", "EC2_RECOVERY_POINT", "S3_RECOVERY_POINT", "S3_BUCKET"
    #   resp.scanned_resources[0].scanned_resource_status #=> String, one of "RUNNING", "COMPLETED", "COMPLETED_WITH_ISSUES", "FAILED", "SKIPPED"
    #   resp.scanned_resources[0].scan_status_reason #=> String, one of "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "SNAPSHOT_SIZE_LIMIT_EXCEEDED", "RESOURCE_UNAVAILABLE", "INCONSISTENT_SOURCE", "INCREMENTAL_NO_DIFFERENCE", "NO_EBS_VOLUMES_FOUND", "UNSUPPORTED_PRODUCT_CODE_TYPE", "AMI_SNAPSHOT_LIMIT_EXCEEDED", "UNRELATED_RESOURCES", "BASE_RESOURCE_NOT_SCANNED", "BASE_CREATED_AFTER_TARGET", "UNSUPPORTED_FOR_INCREMENTAL", "UNSUPPORTED_AMI", "UNSUPPORTED_SNAPSHOT", "UNSUPPORTED_COMPOSITE_RECOVERY_POINT"
    #   resp.scanned_resources[0].resource_details.ebs_volume.volume_arn #=> String
    #   resp.scanned_resources[0].resource_details.ebs_volume.volume_type #=> String
    #   resp.scanned_resources[0].resource_details.ebs_volume.device_name #=> String
    #   resp.scanned_resources[0].resource_details.ebs_volume.volume_size_in_gb #=> Integer
    #   resp.scanned_resources[0].resource_details.ebs_volume.encryption_type #=> String
    #   resp.scanned_resources[0].resource_details.ebs_volume.snapshot_arn #=> String
    #   resp.scanned_resources[0].resource_details.ebs_volume.kms_key_arn #=> String
    #   resp.scanned_resources[0].resource_details.ebs_snapshot.device_name #=> String
    #   resp.scan_configuration.role #=> String
    #   resp.scan_configuration.trigger_details.guard_duty_finding_id #=> String
    #   resp.scan_configuration.trigger_details.description #=> String
    #   resp.scan_configuration.trigger_details.trigger_type #=> String, one of "BACKUP", "GUARDDUTY"
    #   resp.scan_configuration.incremental_scan_details.baseline_resource_arn #=> String
    #   resp.scan_configuration.recovery_point.backup_vault_name #=> String
    #   resp.scan_category #=> String, one of "FULL_SCAN", "INCREMENTAL_SCAN"
    #   resp.scan_status #=> String, one of "RUNNING", "COMPLETED", "COMPLETED_WITH_ISSUES", "FAILED", "SKIPPED"
    #   resp.scan_status_reason #=> String, one of "ACCESS_DENIED", "RESOURCE_NOT_FOUND", "SNAPSHOT_SIZE_LIMIT_EXCEEDED", "RESOURCE_UNAVAILABLE", "INCONSISTENT_SOURCE", "INCREMENTAL_NO_DIFFERENCE", "NO_EBS_VOLUMES_FOUND", "UNSUPPORTED_PRODUCT_CODE_TYPE", "AMI_SNAPSHOT_LIMIT_EXCEEDED", "UNRELATED_RESOURCES", "BASE_RESOURCE_NOT_SCANNED", "BASE_CREATED_AFTER_TARGET", "UNSUPPORTED_FOR_INCREMENTAL", "UNSUPPORTED_AMI", "UNSUPPORTED_SNAPSHOT", "UNSUPPORTED_COMPOSITE_RECOVERY_POINT"
    #   resp.scan_type #=> String, one of "BACKUP_INITIATED", "ON_DEMAND", "GUARDDUTY_INITIATED"
    #   resp.scan_started_at #=> Time
    #   resp.scan_completed_at #=> Time
    #   resp.scan_result_details.scan_result_status #=> String, one of "NO_THREATS_FOUND", "THREATS_FOUND"
    #   resp.scan_result_details.skipped_file_count #=> Integer
    #   resp.scan_result_details.failed_file_count #=> Integer
    #   resp.scan_result_details.threat_found_file_count #=> Integer
    #   resp.scan_result_details.total_file_count #=> Integer
    #   resp.scan_result_details.total_bytes #=> Integer
    #   resp.scan_result_details.unique_threat_count #=> Integer
    #   resp.scan_result_details.threats #=> Array
    #   resp.scan_result_details.threats[0].name #=> String
    #   resp.scan_result_details.threats[0].source #=> String, one of "AMAZON", "BITDEFENDER"
    #   resp.scan_result_details.threats[0].count #=> Integer
    #   resp.scan_result_details.threats[0].hash #=> String
    #   resp.scan_result_details.threats[0].item_details #=> Array
    #   resp.scan_result_details.threats[0].item_details[0].resource_arn #=> String
    #   resp.scan_result_details.threats[0].item_details[0].item_path #=> String
    #   resp.scan_result_details.threats[0].item_details[0].hash #=> String
    #   resp.scan_result_details.threats[0].item_details[0].additional_info.version_id #=> String
    #   resp.scan_result_details.threats[0].item_details[0].additional_info.device_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMalwareScan AWS API Documentation
    #
    # @overload get_malware_scan(params = {})
    # @param [Hash] params ({})
    def get_malware_scan(params = {}, options = {})
      req = build_request(:get_malware_scan, params)
      req.send_request(options)
    end

    # Returns the details of the malware scan settings.
    #
    # There might be regional differences because some data sources might
    # not be available in all the Amazon Web Services Regions where
    # GuardDuty is presently supported. For more information, see [Regions
    # and endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that is associated with this scan.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @return [Types::GetMalwareScanSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMalwareScanSettingsResponse#scan_resource_criteria #scan_resource_criteria} => Types::ScanResourceCriteria
    #   * {Types::GetMalwareScanSettingsResponse#ebs_snapshot_preservation #ebs_snapshot_preservation} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_malware_scan_settings({
    #     detector_id: "DetectorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_resource_criteria.include #=> Hash
    #   resp.scan_resource_criteria.include["ScanCriterionKey"].map_equals #=> Array
    #   resp.scan_resource_criteria.include["ScanCriterionKey"].map_equals[0].key #=> String
    #   resp.scan_resource_criteria.include["ScanCriterionKey"].map_equals[0].value #=> String
    #   resp.scan_resource_criteria.exclude #=> Hash
    #   resp.scan_resource_criteria.exclude["ScanCriterionKey"].map_equals #=> Array
    #   resp.scan_resource_criteria.exclude["ScanCriterionKey"].map_equals[0].key #=> String
    #   resp.scan_resource_criteria.exclude["ScanCriterionKey"].map_equals[0].value #=> String
    #   resp.ebs_snapshot_preservation #=> String, one of "NO_RETENTION", "RETENTION_WITH_FINDING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMalwareScanSettings AWS API Documentation
    #
    # @overload get_malware_scan_settings(params = {})
    # @param [Hash] params ({})
    def get_malware_scan_settings(params = {}, options = {})
      req = build_request(:get_malware_scan_settings, params)
      req.send_request(options)
    end

    # Provides the details for the GuardDuty administrator account
    # associated with the current GuardDuty member account.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @return [Types::GetMasterAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMasterAccountResponse#master #master} => Types::Master
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_master_account({
    #     detector_id: "DetectorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.master.account_id #=> String
    #   resp.master.invitation_id #=> String
    #   resp.master.relationship_status #=> String
    #   resp.master.invited_at #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMasterAccount AWS API Documentation
    #
    # @overload get_master_account(params = {})
    # @param [Hash] params ({})
    def get_master_account(params = {}, options = {})
      req = build_request(:get_master_account, params)
      req.send_request(options)
    end

    # Describes which data sources are enabled for the member account's
    # detector.
    #
    # There might be regional differences because some data sources might
    # not be available in all the Amazon Web Services Regions where
    # GuardDuty is presently supported. For more information, see [Regions
    # and endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, String] :detector_id
    #   The detector ID for the administrator account.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of member account IDs.
    #
    # @return [Types::GetMemberDetectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMemberDetectorsResponse#member_data_source_configurations #member_data_source_configurations} => Array&lt;Types::MemberDataSourceConfiguration&gt;
    #   * {Types::GetMemberDetectorsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_member_detectors({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member_data_source_configurations #=> Array
    #   resp.member_data_source_configurations[0].account_id #=> String
    #   resp.member_data_source_configurations[0].data_sources.cloud_trail.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.member_data_source_configurations[0].data_sources.dns_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.member_data_source_configurations[0].data_sources.flow_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.member_data_source_configurations[0].data_sources.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.member_data_source_configurations[0].data_sources.kubernetes.audit_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.member_data_source_configurations[0].data_sources.malware_protection.scan_ec2_instance_with_findings.ebs_volumes.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.member_data_source_configurations[0].data_sources.malware_protection.scan_ec2_instance_with_findings.ebs_volumes.reason #=> String
    #   resp.member_data_source_configurations[0].data_sources.malware_protection.service_role #=> String
    #   resp.member_data_source_configurations[0].features #=> Array
    #   resp.member_data_source_configurations[0].features[0].name #=> String, one of "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "EKS_RUNTIME_MONITORING", "LAMBDA_NETWORK_LOGS", "RUNTIME_MONITORING"
    #   resp.member_data_source_configurations[0].features[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.member_data_source_configurations[0].features[0].updated_at #=> Time
    #   resp.member_data_source_configurations[0].features[0].additional_configuration #=> Array
    #   resp.member_data_source_configurations[0].features[0].additional_configuration[0].name #=> String, one of "EKS_ADDON_MANAGEMENT", "ECS_FARGATE_AGENT_MANAGEMENT", "EC2_AGENT_MANAGEMENT"
    #   resp.member_data_source_configurations[0].features[0].additional_configuration[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.member_data_source_configurations[0].features[0].additional_configuration[0].updated_at #=> Time
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMemberDetectors AWS API Documentation
    #
    # @overload get_member_detectors(params = {})
    # @param [Hash] params ({})
    def get_member_detectors(params = {}, options = {})
      req = build_request(:get_member_detectors, params)
      req.send_request(options)
    end

    # Retrieves GuardDuty member accounts (of the current GuardDuty
    # administrator account) specified by the account IDs.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account whose members
    #   you want to retrieve.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the GuardDuty member accounts that you want
    #   to describe.
    #
    # @return [Types::GetMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMembersResponse#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::GetMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_members({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].account_id #=> String
    #   resp.members[0].detector_id #=> String
    #   resp.members[0].master_id #=> String
    #   resp.members[0].email #=> String
    #   resp.members[0].relationship_status #=> String
    #   resp.members[0].invited_at #=> String
    #   resp.members[0].updated_at #=> String
    #   resp.members[0].administrator_id #=> String
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetMembers AWS API Documentation
    #
    # @overload get_members(params = {})
    # @param [Hash] params ({})
    def get_members(params = {}, options = {})
      req = build_request(:get_members, params)
      req.send_request(options)
    end

    # Retrieves how many active member accounts have each feature enabled
    # within GuardDuty. Only a delegated GuardDuty administrator of an
    # organization can run this API.
    #
    # When you create a new organization, it might take up to 24 hours to
    # generate the statistics for the entire organization.
    #
    # @return [Types::GetOrganizationStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOrganizationStatisticsResponse#organization_details #organization_details} => Types::OrganizationDetails
    #
    # @example Response structure
    #
    #   resp.organization_details.updated_at #=> Time
    #   resp.organization_details.organization_statistics.total_accounts_count #=> Integer
    #   resp.organization_details.organization_statistics.member_accounts_count #=> Integer
    #   resp.organization_details.organization_statistics.active_accounts_count #=> Integer
    #   resp.organization_details.organization_statistics.enabled_accounts_count #=> Integer
    #   resp.organization_details.organization_statistics.count_by_feature #=> Array
    #   resp.organization_details.organization_statistics.count_by_feature[0].name #=> String, one of "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "EKS_RUNTIME_MONITORING", "LAMBDA_NETWORK_LOGS", "RUNTIME_MONITORING"
    #   resp.organization_details.organization_statistics.count_by_feature[0].enabled_accounts_count #=> Integer
    #   resp.organization_details.organization_statistics.count_by_feature[0].additional_configuration #=> Array
    #   resp.organization_details.organization_statistics.count_by_feature[0].additional_configuration[0].name #=> String, one of "EKS_ADDON_MANAGEMENT", "ECS_FARGATE_AGENT_MANAGEMENT", "EC2_AGENT_MANAGEMENT"
    #   resp.organization_details.organization_statistics.count_by_feature[0].additional_configuration[0].enabled_accounts_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetOrganizationStatistics AWS API Documentation
    #
    # @overload get_organization_statistics(params = {})
    # @param [Hash] params ({})
    def get_organization_statistics(params = {}, options = {})
      req = build_request(:get_organization_statistics, params)
      req.send_request(options)
    end

    # Provides the number of days left for each data source used in the free
    # trial period.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty member account.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Array<String>] :account_ids
    #   A list of account identifiers of the GuardDuty member account.
    #
    # @return [Types::GetRemainingFreeTrialDaysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRemainingFreeTrialDaysResponse#accounts #accounts} => Array&lt;Types::AccountFreeTrialInfo&gt;
    #   * {Types::GetRemainingFreeTrialDaysResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_remaining_free_trial_days({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].data_sources.cloud_trail.free_trial_days_remaining #=> Integer
    #   resp.accounts[0].data_sources.dns_logs.free_trial_days_remaining #=> Integer
    #   resp.accounts[0].data_sources.flow_logs.free_trial_days_remaining #=> Integer
    #   resp.accounts[0].data_sources.s3_logs.free_trial_days_remaining #=> Integer
    #   resp.accounts[0].data_sources.kubernetes.audit_logs.free_trial_days_remaining #=> Integer
    #   resp.accounts[0].data_sources.malware_protection.scan_ec2_instance_with_findings.free_trial_days_remaining #=> Integer
    #   resp.accounts[0].features #=> Array
    #   resp.accounts[0].features[0].name #=> String, one of "FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "EKS_RUNTIME_MONITORING", "LAMBDA_NETWORK_LOGS", "FARGATE_RUNTIME_MONITORING", "EC2_RUNTIME_MONITORING"
    #   resp.accounts[0].features[0].free_trial_days_remaining #=> Integer
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetRemainingFreeTrialDays AWS API Documentation
    #
    # @overload get_remaining_free_trial_days(params = {})
    # @param [Hash] params ({})
    def get_remaining_free_trial_days(params = {}, options = {})
      req = build_request(:get_remaining_free_trial_days, params)
      req.send_request(options)
    end

    # Retrieves the threat entity set associated with the specified
    # `threatEntitySetId`.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector associated with the threat entity set
    #   resource.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :threat_entity_set_id
    #   The unique ID that helps GuardDuty identify the threat entity set.
    #
    # @return [Types::GetThreatEntitySetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetThreatEntitySetResponse#name #name} => String
    #   * {Types::GetThreatEntitySetResponse#format #format} => String
    #   * {Types::GetThreatEntitySetResponse#location #location} => String
    #   * {Types::GetThreatEntitySetResponse#expected_bucket_owner #expected_bucket_owner} => String
    #   * {Types::GetThreatEntitySetResponse#status #status} => String
    #   * {Types::GetThreatEntitySetResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetThreatEntitySetResponse#created_at #created_at} => Time
    #   * {Types::GetThreatEntitySetResponse#updated_at #updated_at} => Time
    #   * {Types::GetThreatEntitySetResponse#error_details #error_details} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_threat_entity_set({
    #     detector_id: "DetectorId", # required
    #     threat_entity_set_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.format #=> String, one of "TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"
    #   resp.location #=> String
    #   resp.expected_bucket_owner #=> String
    #   resp.status #=> String, one of "INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetThreatEntitySet AWS API Documentation
    #
    # @overload get_threat_entity_set(params = {})
    # @param [Hash] params ({})
    def get_threat_entity_set(params = {}, options = {})
      req = build_request(:get_threat_entity_set, params)
      req.send_request(options)
    end

    # Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet
    # ID.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that is associated with the
    #   threatIntelSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :threat_intel_set_id
    #   The unique ID of the threatIntelSet that you want to get.
    #
    # @return [Types::GetThreatIntelSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetThreatIntelSetResponse#name #name} => String
    #   * {Types::GetThreatIntelSetResponse#format #format} => String
    #   * {Types::GetThreatIntelSetResponse#location #location} => String
    #   * {Types::GetThreatIntelSetResponse#status #status} => String
    #   * {Types::GetThreatIntelSetResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetThreatIntelSetResponse#expected_bucket_owner #expected_bucket_owner} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_threat_intel_set({
    #     detector_id: "DetectorId", # required
    #     threat_intel_set_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.format #=> String, one of "TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"
    #   resp.location #=> String
    #   resp.status #=> String, one of "INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.expected_bucket_owner #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetThreatIntelSet AWS API Documentation
    #
    # @overload get_threat_intel_set(params = {})
    # @param [Hash] params ({})
    def get_threat_intel_set(params = {}, options = {})
      req = build_request(:get_threat_intel_set, params)
      req.send_request(options)
    end

    # Retrieves the trusted entity set associated with the specified
    # `trustedEntitySetId`.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the GuardDuty detector associated with this trusted
    #   entity set.
    #
    # @option params [required, String] :trusted_entity_set_id
    #   The unique ID that helps GuardDuty identify the trusted entity set.
    #
    # @return [Types::GetTrustedEntitySetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrustedEntitySetResponse#name #name} => String
    #   * {Types::GetTrustedEntitySetResponse#format #format} => String
    #   * {Types::GetTrustedEntitySetResponse#location #location} => String
    #   * {Types::GetTrustedEntitySetResponse#expected_bucket_owner #expected_bucket_owner} => String
    #   * {Types::GetTrustedEntitySetResponse#status #status} => String
    #   * {Types::GetTrustedEntitySetResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetTrustedEntitySetResponse#created_at #created_at} => Time
    #   * {Types::GetTrustedEntitySetResponse#updated_at #updated_at} => Time
    #   * {Types::GetTrustedEntitySetResponse#error_details #error_details} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trusted_entity_set({
    #     detector_id: "DetectorId", # required
    #     trusted_entity_set_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.format #=> String, one of "TXT", "STIX", "OTX_CSV", "ALIEN_VAULT", "PROOF_POINT", "FIRE_EYE"
    #   resp.location #=> String
    #   resp.expected_bucket_owner #=> String
    #   resp.status #=> String, one of "INACTIVE", "ACTIVATING", "ACTIVE", "DEACTIVATING", "ERROR", "DELETE_PENDING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.error_details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetTrustedEntitySet AWS API Documentation
    #
    # @overload get_trusted_entity_set(params = {})
    # @param [Hash] params ({})
    def get_trusted_entity_set(params = {}, options = {})
      req = build_request(:get_trusted_entity_set, params)
      req.send_request(options)
    end

    # Lists Amazon GuardDuty usage statistics over the last 30 days for the
    # specified detector ID. For newly enabled detectors or data sources,
    # the cost returned will include only the usage so far under 30 days.
    # This may differ from the cost metrics in the console, which project
    # usage over 30 days to provide a monthly cost estimate. For more
    # information, see [Understanding How Usage Costs are Calculated][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/monitoring_costs.html#usage-calculations
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   usage statistics you want to retrieve.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :usage_statistic_type
    #   The type of usage statistics to retrieve.
    #
    # @option params [required, Types::UsageCriteria] :usage_criteria
    #   Represents the criteria used for querying usage.
    #
    # @option params [String] :unit
    #   The currency unit you would like to view your usage statistics in.
    #   Current valid values are USD.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the NextToken
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #
    # @return [Types::GetUsageStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUsageStatisticsResponse#usage_statistics #usage_statistics} => Types::UsageStatistics
    #   * {Types::GetUsageStatisticsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_statistics({
    #     detector_id: "DetectorId", # required
    #     usage_statistic_type: "SUM_BY_ACCOUNT", # required, accepts SUM_BY_ACCOUNT, SUM_BY_DATA_SOURCE, SUM_BY_RESOURCE, TOP_RESOURCES, SUM_BY_FEATURES, TOP_ACCOUNTS_BY_FEATURE
    #     usage_criteria: { # required
    #       account_ids: ["AccountId"],
    #       data_sources: ["FLOW_LOGS"], # accepts FLOW_LOGS, CLOUD_TRAIL, DNS_LOGS, S3_LOGS, KUBERNETES_AUDIT_LOGS, EC2_MALWARE_SCAN
    #       resources: ["String"],
    #       features: ["FLOW_LOGS"], # accepts FLOW_LOGS, CLOUD_TRAIL, DNS_LOGS, S3_DATA_EVENTS, EKS_AUDIT_LOGS, EBS_MALWARE_PROTECTION, RDS_LOGIN_EVENTS, LAMBDA_NETWORK_LOGS, EKS_RUNTIME_MONITORING, FARGATE_RUNTIME_MONITORING, EC2_RUNTIME_MONITORING, RDS_DBI_PROTECTION_PROVISIONED, RDS_DBI_PROTECTION_SERVERLESS
    #     },
    #     unit: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.usage_statistics.sum_by_account #=> Array
    #   resp.usage_statistics.sum_by_account[0].account_id #=> String
    #   resp.usage_statistics.sum_by_account[0].total.amount #=> String
    #   resp.usage_statistics.sum_by_account[0].total.unit #=> String
    #   resp.usage_statistics.top_accounts_by_feature #=> Array
    #   resp.usage_statistics.top_accounts_by_feature[0].feature #=> String, one of "FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "FARGATE_RUNTIME_MONITORING", "EC2_RUNTIME_MONITORING", "RDS_DBI_PROTECTION_PROVISIONED", "RDS_DBI_PROTECTION_SERVERLESS"
    #   resp.usage_statistics.top_accounts_by_feature[0].accounts #=> Array
    #   resp.usage_statistics.top_accounts_by_feature[0].accounts[0].account_id #=> String
    #   resp.usage_statistics.top_accounts_by_feature[0].accounts[0].total.amount #=> String
    #   resp.usage_statistics.top_accounts_by_feature[0].accounts[0].total.unit #=> String
    #   resp.usage_statistics.sum_by_data_source #=> Array
    #   resp.usage_statistics.sum_by_data_source[0].data_source #=> String, one of "FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_LOGS", "KUBERNETES_AUDIT_LOGS", "EC2_MALWARE_SCAN"
    #   resp.usage_statistics.sum_by_data_source[0].total.amount #=> String
    #   resp.usage_statistics.sum_by_data_source[0].total.unit #=> String
    #   resp.usage_statistics.sum_by_resource #=> Array
    #   resp.usage_statistics.sum_by_resource[0].resource #=> String
    #   resp.usage_statistics.sum_by_resource[0].total.amount #=> String
    #   resp.usage_statistics.sum_by_resource[0].total.unit #=> String
    #   resp.usage_statistics.top_resources #=> Array
    #   resp.usage_statistics.top_resources[0].resource #=> String
    #   resp.usage_statistics.top_resources[0].total.amount #=> String
    #   resp.usage_statistics.top_resources[0].total.unit #=> String
    #   resp.usage_statistics.sum_by_feature #=> Array
    #   resp.usage_statistics.sum_by_feature[0].feature #=> String, one of "FLOW_LOGS", "CLOUD_TRAIL", "DNS_LOGS", "S3_DATA_EVENTS", "EKS_AUDIT_LOGS", "EBS_MALWARE_PROTECTION", "RDS_LOGIN_EVENTS", "LAMBDA_NETWORK_LOGS", "EKS_RUNTIME_MONITORING", "FARGATE_RUNTIME_MONITORING", "EC2_RUNTIME_MONITORING", "RDS_DBI_PROTECTION_PROVISIONED", "RDS_DBI_PROTECTION_SERVERLESS"
    #   resp.usage_statistics.sum_by_feature[0].total.amount #=> String
    #   resp.usage_statistics.sum_by_feature[0].total.unit #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/GetUsageStatistics AWS API Documentation
    #
    # @overload get_usage_statistics(params = {})
    # @param [Hash] params ({})
    def get_usage_statistics(params = {}, options = {})
      req = build_request(:get_usage_statistics, params)
      req.send_request(options)
    end

    # Invites Amazon Web Services accounts to become members of an
    # organization administered by the Amazon Web Services account that
    # invokes this API. If you are using Amazon Web Services Organizations
    # to manage your GuardDuty environment, this step is not needed. For
    # more information, see [Managing accounts with organizations][1].
    #
    # To invite Amazon Web Services accounts, the first step is to ensure
    # that GuardDuty has been enabled in the potential member accounts. You
    # can now invoke this API to add accounts by invitation. The invited
    # accounts can either accept or decline the invitation from their
    # GuardDuty accounts. Each invited Amazon Web Services account can
    # choose to accept the invitation from only one Amazon Web Services
    # account. For more information, see [Managing GuardDuty accounts by
    # invitation][2].
    #
    # After the invite has been accepted and you choose to disassociate a
    # member account (by using [DisassociateMembers][3]) from your account,
    # the details of the member account obtained by invoking
    # [CreateMembers][4], including the associated email addresses, will be
    # retained. This is done so that you can invoke InviteMembers without
    # the need to invoke [CreateMembers][4] again. To remove the details
    # associated with a member account, you must also invoke
    # [DeleteMembers][5].
    #
    # If you disassociate a member account that was added by invitation, the
    # member account details obtained from this API, including the
    # associated email addresses, will be retained. This is done so that the
    # delegated administrator can invoke the [InviteMembers][6] API without
    # the need to invoke the CreateMembers API again. To remove the details
    # associated with a member account, the delegated administrator must
    # invoke the [DeleteMembers][5] API.
    #
    # When the member accounts added through Organizations are later
    # disassociated, you (administrator) can't invite them by calling the
    # InviteMembers API. You can create an association with these member
    # accounts again only by calling the CreateMembers API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_organizations.html
    # [2]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_invitations.html
    # [3]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DisassociateMembers.html
    # [4]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html
    # [5]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html
    # [6]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty account with which you
    #   want to invite members.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the accounts that you want to invite to
    #   GuardDuty as members.
    #
    # @option params [Boolean] :disable_email_notification
    #   A Boolean value that specifies whether you want to disable email
    #   notification to the accounts that you are inviting to GuardDuty as
    #   members.
    #
    # @option params [String] :message
    #   The invitation message that you want to send to the accounts that
    #   you're inviting to GuardDuty as members.
    #
    # @return [Types::InviteMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InviteMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_members({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #     disable_email_notification: false,
    #     message: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/InviteMembers AWS API Documentation
    #
    # @overload invite_members(params = {})
    # @param [Hash] params ({})
    def invite_members(params = {}, options = {})
      req = build_request(:invite_members, params)
      req.send_request(options)
    end

    # Lists coverage details for your GuardDuty account. If you're a
    # GuardDuty administrator, you can retrieve all resources associated
    # with the active member accounts in your organization.
    #
    # Make sure the accounts have Runtime Monitoring enabled and GuardDuty
    # agent running on their resources.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector whose coverage details you want to
    #   retrieve.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the NextToken
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [Types::CoverageFilterCriteria] :filter_criteria
    #   Represents the criteria used to filter the coverage details.
    #
    # @option params [Types::CoverageSortCriteria] :sort_criteria
    #   Represents the criteria used to sort the coverage details.
    #
    # @return [Types::ListCoverageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCoverageResponse#resources #resources} => Array&lt;Types::CoverageResource&gt;
    #   * {Types::ListCoverageResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_coverage({
    #     detector_id: "DetectorId", # required
    #     next_token: "String",
    #     max_results: 1,
    #     filter_criteria: {
    #       filter_criterion: [
    #         {
    #           criterion_key: "ACCOUNT_ID", # accepts ACCOUNT_ID, CLUSTER_NAME, RESOURCE_TYPE, COVERAGE_STATUS, ADDON_VERSION, MANAGEMENT_TYPE, EKS_CLUSTER_NAME, ECS_CLUSTER_NAME, AGENT_VERSION, INSTANCE_ID, CLUSTER_ARN
    #           filter_condition: {
    #             equals: ["String"],
    #             not_equals: ["String"],
    #           },
    #         },
    #       ],
    #     },
    #     sort_criteria: {
    #       attribute_name: "ACCOUNT_ID", # accepts ACCOUNT_ID, CLUSTER_NAME, COVERAGE_STATUS, ISSUE, ADDON_VERSION, UPDATED_AT, EKS_CLUSTER_NAME, ECS_CLUSTER_NAME, INSTANCE_ID
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0].resource_id #=> String
    #   resp.resources[0].detector_id #=> String
    #   resp.resources[0].account_id #=> String
    #   resp.resources[0].resource_details.eks_cluster_details.cluster_name #=> String
    #   resp.resources[0].resource_details.eks_cluster_details.covered_nodes #=> Integer
    #   resp.resources[0].resource_details.eks_cluster_details.compatible_nodes #=> Integer
    #   resp.resources[0].resource_details.eks_cluster_details.addon_details.addon_version #=> String
    #   resp.resources[0].resource_details.eks_cluster_details.addon_details.addon_status #=> String
    #   resp.resources[0].resource_details.eks_cluster_details.management_type #=> String, one of "AUTO_MANAGED", "MANUAL", "DISABLED"
    #   resp.resources[0].resource_details.resource_type #=> String, one of "EKS", "ECS", "EC2"
    #   resp.resources[0].resource_details.ecs_cluster_details.cluster_name #=> String
    #   resp.resources[0].resource_details.ecs_cluster_details.fargate_details.issues #=> Array
    #   resp.resources[0].resource_details.ecs_cluster_details.fargate_details.issues[0] #=> String
    #   resp.resources[0].resource_details.ecs_cluster_details.fargate_details.management_type #=> String, one of "AUTO_MANAGED", "MANUAL", "DISABLED"
    #   resp.resources[0].resource_details.ecs_cluster_details.container_instance_details.covered_container_instances #=> Integer
    #   resp.resources[0].resource_details.ecs_cluster_details.container_instance_details.compatible_container_instances #=> Integer
    #   resp.resources[0].resource_details.ec2_instance_details.instance_id #=> String
    #   resp.resources[0].resource_details.ec2_instance_details.instance_type #=> String
    #   resp.resources[0].resource_details.ec2_instance_details.cluster_arn #=> String
    #   resp.resources[0].resource_details.ec2_instance_details.agent_details.version #=> String
    #   resp.resources[0].resource_details.ec2_instance_details.management_type #=> String, one of "AUTO_MANAGED", "MANUAL", "DISABLED"
    #   resp.resources[0].coverage_status #=> String, one of "HEALTHY", "UNHEALTHY"
    #   resp.resources[0].issue #=> String
    #   resp.resources[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListCoverage AWS API Documentation
    #
    # @overload list_coverage(params = {})
    # @param [Hash] params ({})
    def list_coverage(params = {}, options = {})
      req = build_request(:list_coverage, params)
      req.send_request(options)
    end

    # Lists detectorIds of all the existing Amazon GuardDuty detector
    # resources.
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @return [Types::ListDetectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDetectorsResponse#detector_ids #detector_ids} => Array&lt;String&gt;
    #   * {Types::ListDetectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detectors({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_ids #=> Array
    #   resp.detector_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListDetectors AWS API Documentation
    #
    # @overload list_detectors(params = {})
    # @param [Hash] params ({})
    def list_detectors(params = {}, options = {})
      req = build_request(:list_detectors, params)
      req.send_request(options)
    end

    # Returns a paginated list of the current filters.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that is associated with the filter.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @return [Types::ListFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFiltersResponse#filter_names #filter_names} => Array&lt;String&gt;
    #   * {Types::ListFiltersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_filters({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.filter_names #=> Array
    #   resp.filter_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListFilters AWS API Documentation
    #
    # @overload list_filters(params = {})
    # @param [Hash] params ({})
    def list_filters(params = {}, options = {})
      req = build_request(:list_filters, params)
      req.send_request(options)
    end

    # Lists GuardDuty findings for the specified detector ID.
    #
    # There might be regional differences because some flags might not be
    # available in all the Regions where GuardDuty is currently supported.
    # For more information, see [Regions and endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector that specifies the GuardDuty service whose
    #   findings you want to list.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Types::FindingCriteria] :finding_criteria
    #   Represents the criteria used for querying findings. Valid values
    #   include:
    #
    #   * JSON field name
    #
    #   * accountId
    #
    #   * region
    #
    #   * confidence
    #
    #   * id
    #
    #   * resource.accessKeyDetails.accessKeyId
    #
    #   * resource.accessKeyDetails.principalId
    #
    #   * resource.accessKeyDetails.userName
    #
    #   * resource.accessKeyDetails.userType
    #
    #   * resource.instanceDetails.iamInstanceProfile.id
    #
    #   * resource.instanceDetails.imageId
    #
    #   * resource.instanceDetails.instanceId
    #
    #   * resource.instanceDetails.networkInterfaces.ipv6Addresses
    #
    #   * resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress
    #
    #   * resource.instanceDetails.networkInterfaces.publicDnsName
    #
    #   * resource.instanceDetails.networkInterfaces.publicIp
    #
    #   * resource.instanceDetails.networkInterfaces.securityGroups.groupId
    #
    #   * resource.instanceDetails.networkInterfaces.securityGroups.groupName
    #
    #   * resource.instanceDetails.networkInterfaces.subnetId
    #
    #   * resource.instanceDetails.networkInterfaces.vpcId
    #
    #   * resource.instanceDetails.tags.key
    #
    #   * resource.instanceDetails.tags.value
    #
    #   * resource.resourceType
    #
    #   * service.action.actionType
    #
    #   * service.action.awsApiCallAction.api
    #
    #   * service.action.awsApiCallAction.callerType
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.city.cityName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.country.countryName
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asn
    #
    #   * service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.awsApiCallAction.serviceName
    #
    #   * service.action.dnsRequestAction.domain
    #
    #   * service.action.dnsRequestAction.domainWithSuffix
    #
    #   * service.action.networkConnectionAction.blocked
    #
    #   * service.action.networkConnectionAction.connectionDirection
    #
    #   * service.action.networkConnectionAction.localPortDetails.port
    #
    #   * service.action.networkConnectionAction.protocol
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.country.countryName
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.ipAddressV4
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asn
    #
    #   * service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg
    #
    #   * service.action.networkConnectionAction.remotePortDetails.port
    #
    #   * service.additionalInfo.threatListName
    #
    #   * service.archived
    #
    #     When this attribute is set to 'true', only archived findings are
    #     listed. When it's set to 'false', only unarchived findings are
    #     listed. When this attribute is not set, all existing findings are
    #     listed.
    #
    #   * service.ebsVolumeScanDetails.scanId
    #
    #   * service.resourceRole
    #
    #   * severity
    #
    #   * type
    #
    #   * updatedAt
    #
    #     Type: Timestamp in Unix Epoch millisecond format: 1486685375000
    #
    # @option params [Types::SortCriteria] :sort_criteria
    #   Represents the criteria used for sorting findings.
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items you
    #   want in the response. The default value is 50. The maximum value is
    #   50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @return [Types::ListFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingsResponse#finding_ids #finding_ids} => Array&lt;String&gt;
    #   * {Types::ListFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings({
    #     detector_id: "DetectorId", # required
    #     finding_criteria: {
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #         },
    #       },
    #     },
    #     sort_criteria: {
    #       attribute_name: "String",
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_ids #=> Array
    #   resp.finding_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListFindings AWS API Documentation
    #
    # @overload list_findings(params = {})
    # @param [Hash] params ({})
    def list_findings(params = {}, options = {})
      req = build_request(:list_findings, params)
      req.send_request(options)
    end

    # Lists the IPSets of the GuardDuty service specified by the detector
    # ID. If you use this operation from a member account, the IPSets
    # returned are the IPSets from the associated administrator account.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that is associated with IPSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items you
    #   want in the response. The default value is 50. The maximum value is
    #   50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @return [Types::ListIPSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIPSetsResponse#ip_set_ids #ip_set_ids} => Array&lt;String&gt;
    #   * {Types::ListIPSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ip_sets({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_set_ids #=> Array
    #   resp.ip_set_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListIPSets AWS API Documentation
    #
    # @overload list_ip_sets(params = {})
    # @param [Hash] params ({})
    def list_ip_sets(params = {}, options = {})
      req = build_request(:list_ip_sets, params)
      req.send_request(options)
    end

    # Lists all GuardDuty membership invitations that were sent to the
    # current Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @return [Types::ListInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvitationsResponse#invitations #invitations} => Array&lt;Types::Invitation&gt;
    #   * {Types::ListInvitationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invitations({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.invitations #=> Array
    #   resp.invitations[0].account_id #=> String
    #   resp.invitations[0].invitation_id #=> String
    #   resp.invitations[0].relationship_status #=> String
    #   resp.invitations[0].invited_at #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListInvitations AWS API Documentation
    #
    # @overload list_invitations(params = {})
    # @param [Hash] params ({})
    def list_invitations(params = {}, options = {})
      req = build_request(:list_invitations, params)
      req.send_request(options)
    end

    # Lists the Malware Protection plan IDs associated with the protected
    # resources in your Amazon Web Services account.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of `NextToken` from the previous response to continue listing
    #   data. The default page size is 100 plans.
    #
    # @return [Types::ListMalwareProtectionPlansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMalwareProtectionPlansResponse#malware_protection_plans #malware_protection_plans} => Array&lt;Types::MalwareProtectionPlanSummary&gt;
    #   * {Types::ListMalwareProtectionPlansResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_malware_protection_plans({
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.malware_protection_plans #=> Array
    #   resp.malware_protection_plans[0].malware_protection_plan_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListMalwareProtectionPlans AWS API Documentation
    #
    # @overload list_malware_protection_plans(params = {})
    # @param [Hash] params ({})
    def list_malware_protection_plans(params = {}, options = {})
      req = build_request(:list_malware_protection_plans, params)
      req.send_request(options)
    end

    # Returns a list of malware scans. Each member account can view the
    # malware scans for their own accounts. An administrator can view the
    # malware scans for all of its members' accounts.
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   results.
    #
    # @option params [Types::ListMalwareScansFilterCriteria] :filter_criteria
    #   Represents the criteria used to filter the malware scan entries.
    #
    # @option params [Types::SortCriteria] :sort_criteria
    #   Represents the criteria used for sorting malware scan entries.
    #
    # @return [Types::ListMalwareScansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMalwareScansResponse#scans #scans} => Array&lt;Types::MalwareScan&gt;
    #   * {Types::ListMalwareScansResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_malware_scans({
    #     max_results: 1,
    #     next_token: "String",
    #     filter_criteria: {
    #       list_malware_scans_filter_criterion: [
    #         {
    #           list_malware_scans_criterion_key: "RESOURCE_ARN", # accepts RESOURCE_ARN, SCAN_ID, ACCOUNT_ID, GUARDDUTY_FINDING_ID, RESOURCE_TYPE, SCAN_START_TIME, SCAN_STATUS, SCAN_TYPE
    #           filter_condition: {
    #             equals_value: "NonEmptyString",
    #             greater_than: 1,
    #             less_than: 1,
    #           },
    #         },
    #       ],
    #     },
    #     sort_criteria: {
    #       attribute_name: "String",
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scans #=> Array
    #   resp.scans[0].resource_arn #=> String
    #   resp.scans[0].resource_type #=> String, one of "EBS_RECOVERY_POINT", "EBS_SNAPSHOT", "EBS_VOLUME", "EC2_AMI", "EC2_INSTANCE", "EC2_RECOVERY_POINT", "S3_RECOVERY_POINT", "S3_BUCKET"
    #   resp.scans[0].scan_id #=> String
    #   resp.scans[0].scan_status #=> String, one of "RUNNING", "COMPLETED", "COMPLETED_WITH_ISSUES", "FAILED", "SKIPPED"
    #   resp.scans[0].scan_result_status #=> String, one of "NO_THREATS_FOUND", "THREATS_FOUND"
    #   resp.scans[0].scan_type #=> String, one of "BACKUP_INITIATED", "ON_DEMAND", "GUARDDUTY_INITIATED"
    #   resp.scans[0].scan_started_at #=> Time
    #   resp.scans[0].scan_completed_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListMalwareScans AWS API Documentation
    #
    # @overload list_malware_scans(params = {})
    # @param [Hash] params ({})
    def list_malware_scans(params = {}, options = {})
      req = build_request(:list_malware_scans, params)
      req.send_request(options)
    end

    # Lists details about all member accounts for the current GuardDuty
    # administrator account.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that is associated with the member.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items you
    #   want in the response. The default value is 50. The maximum value is
    #   50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @option params [String] :only_associated
    #   Specifies whether to only return associated members or to return all
    #   members (including members who haven't been invited yet or have been
    #   disassociated). Member accounts must have been previously associated
    #   with the GuardDuty administrator account using [ `Create Members`
    #   ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html
    #
    # @return [Types::ListMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembersResponse#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::ListMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #     only_associated: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].account_id #=> String
    #   resp.members[0].detector_id #=> String
    #   resp.members[0].master_id #=> String
    #   resp.members[0].email #=> String
    #   resp.members[0].relationship_status #=> String
    #   resp.members[0].invited_at #=> String
    #   resp.members[0].updated_at #=> String
    #   resp.members[0].administrator_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListMembers AWS API Documentation
    #
    # @overload list_members(params = {})
    # @param [Hash] params ({})
    def list_members(params = {}, options = {})
      req = build_request(:list_members, params)
      req.send_request(options)
    end

    # Lists the accounts designated as GuardDuty delegated administrators.
    # Only the organization's management account can run this API
    # operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #
    # @return [Types::ListOrganizationAdminAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationAdminAccountsResponse#admin_accounts #admin_accounts} => Array&lt;Types::AdminAccount&gt;
    #   * {Types::ListOrganizationAdminAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_admin_accounts({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.admin_accounts #=> Array
    #   resp.admin_accounts[0].admin_account_id #=> String
    #   resp.admin_accounts[0].admin_status #=> String, one of "ENABLED", "DISABLE_IN_PROGRESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListOrganizationAdminAccounts AWS API Documentation
    #
    # @overload list_organization_admin_accounts(params = {})
    # @param [Hash] params ({})
    def list_organization_admin_accounts(params = {}, options = {})
      req = build_request(:list_organization_admin_accounts, params)
      req.send_request(options)
    end

    # Returns a list of publishing destinations associated with the
    # specified `detectorId`.
    #
    # @option params [required, String] :detector_id
    #   The detector ID for which you want to retrieve the publishing
    #   destination.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #
    # @return [Types::ListPublishingDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPublishingDestinationsResponse#destinations #destinations} => Array&lt;Types::Destination&gt;
    #   * {Types::ListPublishingDestinationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_publishing_destinations({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.destinations #=> Array
    #   resp.destinations[0].destination_id #=> String
    #   resp.destinations[0].destination_type #=> String, one of "S3"
    #   resp.destinations[0].status #=> String, one of "PENDING_VERIFICATION", "PUBLISHING", "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY", "STOPPED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListPublishingDestinations AWS API Documentation
    #
    # @overload list_publishing_destinations(params = {})
    # @param [Hash] params ({})
    def list_publishing_destinations(params = {}, options = {})
      req = build_request(:list_publishing_destinations, params)
      req.send_request(options)
    end

    # Lists tags for a resource. Tagging is currently supported for
    # detectors, finding filters, IP sets, threat intel sets, and publishing
    # destination, with a limit of 50 tags per resource. When invoked, this
    # operation returns all assigned tags for a given resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the given GuardDuty resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "GuardDutyArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the threat entity sets associated with the specified GuardDuty
    # detector ID. If you use this operation from a member account, the
    # threat entity sets that are returned as a response, belong to the
    # administrator account.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the GuardDuty detector that is associated with this
    #   threat entity set.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items you
    #   want in the response. The default value is 50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @return [Types::ListThreatEntitySetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThreatEntitySetsResponse#threat_entity_set_ids #threat_entity_set_ids} => Array&lt;String&gt;
    #   * {Types::ListThreatEntitySetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_threat_entity_sets({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_entity_set_ids #=> Array
    #   resp.threat_entity_set_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListThreatEntitySets AWS API Documentation
    #
    # @overload list_threat_entity_sets(params = {})
    # @param [Hash] params ({})
    def list_threat_entity_sets(params = {}, options = {})
      req = build_request(:list_threat_entity_sets, params)
      req.send_request(options)
    end

    # Lists the ThreatIntelSets of the GuardDuty service specified by the
    # detector ID. If you use this operation from a member account, the
    # ThreatIntelSets associated with the administrator account are
    # returned.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that is associated with the
    #   threatIntelSet.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items
    #   that you want in the response. The default value is 50. The maximum
    #   value is 50.
    #
    # @option params [String] :next_token
    #   You can use this parameter to paginate results in the response. Set
    #   the value of this parameter to null on your first call to the list
    #   action. For subsequent calls to the action, fill nextToken in the
    #   request with the value of NextToken from the previous response to
    #   continue listing data.
    #
    # @return [Types::ListThreatIntelSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThreatIntelSetsResponse#threat_intel_set_ids #threat_intel_set_ids} => Array&lt;String&gt;
    #   * {Types::ListThreatIntelSetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_threat_intel_sets({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.threat_intel_set_ids #=> Array
    #   resp.threat_intel_set_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListThreatIntelSets AWS API Documentation
    #
    # @overload list_threat_intel_sets(params = {})
    # @param [Hash] params ({})
    def list_threat_intel_sets(params = {}, options = {})
      req = build_request(:list_threat_intel_sets, params)
      req.send_request(options)
    end

    # Lists the trusted entity sets associated with the specified GuardDuty
    # detector ID. If you use this operation from a member account, the
    # trusted entity sets that are returned as a response, belong to the
    # administrator account.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the GuardDuty detector that is associated with this
    #   threat entity set.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Integer] :max_results
    #   You can use this parameter to indicate the maximum number of items you
    #   want in the response. The default value is 50.
    #
    # @option params [String] :next_token
    #   You can use this parameter when paginating results. Set the value of
    #   this parameter to null on your first call to the list action. For
    #   subsequent calls to the action, fill nextToken in the request with the
    #   value of NextToken from the previous response to continue listing
    #   data.
    #
    # @return [Types::ListTrustedEntitySetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrustedEntitySetsResponse#trusted_entity_set_ids #trusted_entity_set_ids} => Array&lt;String&gt;
    #   * {Types::ListTrustedEntitySetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trusted_entity_sets({
    #     detector_id: "DetectorId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.trusted_entity_set_ids #=> Array
    #   resp.trusted_entity_set_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/ListTrustedEntitySets AWS API Documentation
    #
    # @overload list_trusted_entity_sets(params = {})
    # @param [Hash] params ({})
    def list_trusted_entity_sets(params = {}, options = {})
      req = build_request(:list_trusted_entity_sets, params)
      req.send_request(options)
    end

    # Initiates a malware scan for a specific S3 object. This API allows you
    # to perform on-demand malware scanning of individual objects in S3
    # buckets that have Malware Protection for S3 enabled.
    #
    # When you use this API, the Amazon Web Services service terms for
    # GuardDuty Malware Protection apply. For more information, see [Amazon
    # Web Services service terms for GuardDuty Malware Protection][1].
    #
    #
    #
    # [1]: http://aws.amazon.com/service-terms/#87._Amazon_GuardDuty
    #
    # @option params [Types::S3ObjectForSendObjectMalwareScan] :s3_object
    #   The S3 object information for the object you want to scan. The bucket
    #   must have a Malware Protection plan configured to use this API.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_object_malware_scan({
    #     s3_object: {
    #       bucket: "String",
    #       key: "String",
    #       version_id: "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/SendObjectMalwareScan AWS API Documentation
    #
    # @overload send_object_malware_scan(params = {})
    # @param [Hash] params ({})
    def send_object_malware_scan(params = {}, options = {})
      req = build_request(:send_object_malware_scan, params)
      req.send_request(options)
    end

    # Initiates the malware scan. Invoking this API will automatically
    # create the [Service-linked role][1] in the corresponding account if
    # the resourceArn belongs to an EC2 instance.
    #
    # When the malware scan starts, you can use the associated scan ID to
    # track the status of the scan. For more information, see
    # [ListMalwareScans][2] and [GetMalwareScan][3].
    #
    # When you use this API, the Amazon Web Services service terms for
    # GuardDuty Malware Protection apply. For more information, see [Amazon
    # Web Services service terms for GuardDuty Malware Protection][4].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/slr-permissions-malware-protection.html
    # [2]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListMalwareScans.html
    # [3]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_GetMalwareScan.html
    # [4]: http://aws.amazon.com/service-terms/#87._Amazon_GuardDuty
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) of the resource for which you invoked the
    #   API.
    #
    # @option params [String] :client_token
    #   The idempotency token for the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::StartMalwareScanConfiguration] :scan_configuration
    #   Contains information about the configuration to be used for the
    #   malware scan.
    #
    # @return [Types::StartMalwareScanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMalwareScanResponse#scan_id #scan_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_malware_scan({
    #     resource_arn: "ResourceArn", # required
    #     client_token: "ClientToken",
    #     scan_configuration: {
    #       role: "NonEmptyString", # required
    #       incremental_scan_details: {
    #         baseline_resource_arn: "NonEmptyString", # required
    #       },
    #       recovery_point: {
    #         backup_vault_name: "String", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.scan_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StartMalwareScan AWS API Documentation
    #
    # @overload start_malware_scan(params = {})
    # @param [Hash] params ({})
    def start_malware_scan(params = {}, options = {})
      req = build_request(:start_malware_scan, params)
      req.send_request(options)
    end

    # Turns on GuardDuty monitoring of the specified member accounts. Use
    # this operation to restart monitoring of accounts that you stopped
    # monitoring with the [StopMonitoringMembers][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_StopMonitoringMembers.html
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector of the GuardDuty administrator account
    #   associated with the member accounts to monitor.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs of the GuardDuty member accounts to start
    #   monitoring.
    #
    # @return [Types::StartMonitoringMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMonitoringMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_monitoring_members({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StartMonitoringMembers AWS API Documentation
    #
    # @overload start_monitoring_members(params = {})
    # @param [Hash] params ({})
    def start_monitoring_members(params = {}, options = {})
      req = build_request(:start_monitoring_members, params)
      req.send_request(options)
    end

    # Stops GuardDuty monitoring for the specified member accounts. Use the
    # `StartMonitoringMembers` operation to restart monitoring for those
    # accounts.
    #
    # With `autoEnableOrganizationMembers` configuration for your
    # organization set to `ALL`, you'll receive an error if you attempt to
    # stop monitoring the member accounts in your organization.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector associated with the GuardDuty
    #   administrator account that is monitoring member accounts.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of account IDs for the member accounts to stop monitoring.
    #
    # @return [Types::StopMonitoringMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopMonitoringMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_monitoring_members({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/StopMonitoringMembers AWS API Documentation
    #
    # @overload stop_monitoring_members(params = {})
    # @param [Hash] params ({})
    def stop_monitoring_members(params = {}, options = {})
      req = build_request(:stop_monitoring_members, params)
      req.send_request(options)
    end

    # Adds tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the GuardDuty resource to apply a
    #   tag to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to be added to a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "GuardDutyArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Unarchives GuardDuty findings specified by the `findingIds`.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector associated with the findings to unarchive.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, Array<String>] :finding_ids
    #   The IDs of the findings to unarchive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unarchive_findings({
    #     detector_id: "DetectorId", # required
    #     finding_ids: ["FindingId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UnarchiveFindings AWS API Documentation
    #
    # @overload unarchive_findings(params = {})
    # @param [Hash] params ({})
    def unarchive_findings(params = {}, options = {})
      req = build_request(:unarchive_findings, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "GuardDutyArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the GuardDuty detector specified by the detector ID.
    #
    # Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING`) and
    # Runtime Monitoring (`RUNTIME_MONITORING`) will cause an error. You can
    # add only one of these two features because Runtime Monitoring already
    # includes the threat detection for Amazon EKS resources. For more
    # information, see [Runtime Monitoring][1].
    #
    # There might be regional differences because some data sources might
    # not be available in all the Amazon Web Services Regions where
    # GuardDuty is presently supported. For more information, see [Regions
    # and endpoints][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html
    # [2]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector to update.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Boolean] :enable
    #   Specifies whether the detector is enabled or not enabled.
    #
    # @option params [String] :finding_publishing_frequency
    #   An enum value that specifies how frequently findings are exported,
    #   such as to CloudWatch Events.
    #
    # @option params [Types::DataSourceConfigurations] :data_sources
    #   Describes which data sources will be updated.
    #
    #   There might be regional differences because some data sources might
    #   not be available in all the Amazon Web Services Regions where
    #   GuardDuty is presently supported. For more information, see [Regions
    #   and endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [Array<Types::DetectorFeatureConfiguration>] :features
    #   Provides the features that will be updated for the detector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_detector({
    #     detector_id: "DetectorId", # required
    #     enable: false,
    #     finding_publishing_frequency: "FIFTEEN_MINUTES", # accepts FIFTEEN_MINUTES, ONE_HOUR, SIX_HOURS
    #     data_sources: {
    #       s3_logs: {
    #         enable: false, # required
    #       },
    #       kubernetes: {
    #         audit_logs: { # required
    #           enable: false, # required
    #         },
    #       },
    #       malware_protection: {
    #         scan_ec2_instance_with_findings: {
    #           ebs_volumes: false,
    #         },
    #       },
    #     },
    #     features: [
    #       {
    #         name: "S3_DATA_EVENTS", # accepts S3_DATA_EVENTS, EKS_AUDIT_LOGS, EBS_MALWARE_PROTECTION, RDS_LOGIN_EVENTS, EKS_RUNTIME_MONITORING, LAMBDA_NETWORK_LOGS, RUNTIME_MONITORING
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #         additional_configuration: [
    #           {
    #             name: "EKS_ADDON_MANAGEMENT", # accepts EKS_ADDON_MANAGEMENT, ECS_FARGATE_AGENT_MANAGEMENT, EC2_AGENT_MANAGEMENT
    #             status: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateDetector AWS API Documentation
    #
    # @overload update_detector(params = {})
    # @param [Hash] params ({})
    def update_detector(params = {}, options = {})
      req = build_request(:update_detector, params)
      req.send_request(options)
    end

    # Updates the filter specified by the filter name.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that specifies the GuardDuty service
    #   where you want to update a filter.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :filter_name
    #   The name of the filter.
    #
    # @option params [String] :description
    #   The description of the filter. Valid characters include alphanumeric
    #   characters, and special characters such as hyphen, period, colon,
    #   underscore, parentheses (`{ }`, `[ ]`, and `( )`), forward slash,
    #   horizontal tab, vertical tab, newline, form feed, return, and
    #   whitespace.
    #
    # @option params [String] :action
    #   Specifies the action that is to be applied to the findings that match
    #   the filter.
    #
    # @option params [Integer] :rank
    #   Specifies the position of the filter in the list of current filters.
    #   Also specifies the order in which this filter is applied to the
    #   findings.
    #
    # @option params [Types::FindingCriteria] :finding_criteria
    #   Represents the criteria to be used in the filter for querying
    #   findings.
    #
    # @return [Types::UpdateFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFilterResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_filter({
    #     detector_id: "DetectorId", # required
    #     filter_name: "String", # required
    #     description: "FilterDescription",
    #     action: "NOOP", # accepts NOOP, ARCHIVE
    #     rank: 1,
    #     finding_criteria: {
    #       criterion: {
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           gt: 1,
    #           gte: 1,
    #           lt: 1,
    #           lte: 1,
    #           equals: ["String"],
    #           not_equals: ["String"],
    #           greater_than: 1,
    #           greater_than_or_equal: 1,
    #           less_than: 1,
    #           less_than_or_equal: 1,
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFilter AWS API Documentation
    #
    # @overload update_filter(params = {})
    # @param [Hash] params ({})
    def update_filter(params = {}, options = {})
      req = build_request(:update_filter, params)
      req.send_request(options)
    end

    # Marks the specified GuardDuty findings as useful or not useful.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector that is associated with the findings for which
    #   you want to update the feedback.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, Array<String>] :finding_ids
    #   The IDs of the findings that you want to mark as useful or not useful.
    #
    # @option params [required, String] :feedback
    #   The feedback for the finding.
    #
    # @option params [String] :comments
    #   Additional feedback about the GuardDuty findings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_findings_feedback({
    #     detector_id: "DetectorId", # required
    #     finding_ids: ["FindingId"], # required
    #     feedback: "USEFUL", # required, accepts USEFUL, NOT_USEFUL
    #     comments: "SensitiveString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateFindingsFeedback AWS API Documentation
    #
    # @overload update_findings_feedback(params = {})
    # @param [Hash] params ({})
    def update_findings_feedback(params = {}, options = {})
      req = build_request(:update_findings_feedback, params)
      req.send_request(options)
    end

    # Updates the IPSet specified by the IPSet ID.
    #
    # @option params [required, String] :detector_id
    #   The detectorID that specifies the GuardDuty service whose IPSet you
    #   want to update.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :ip_set_id
    #   The unique ID that specifies the IPSet that you want to update.
    #
    # @option params [String] :name
    #   The unique ID that specifies the IPSet that you want to update.
    #
    # @option params [String] :location
    #   The updated URI of the file that contains the IPSet.
    #
    # @option params [Boolean] :activate
    #   The updated Boolean value that specifies whether the IPSet is active
    #   or not.
    #
    # @option params [String] :expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ip_set({
    #     detector_id: "DetectorId", # required
    #     ip_set_id: "String", # required
    #     name: "Name",
    #     location: "Location",
    #     activate: false,
    #     expected_bucket_owner: "AccountId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateIPSet AWS API Documentation
    #
    # @overload update_ip_set(params = {})
    # @param [Hash] params ({})
    def update_ip_set(params = {}, options = {})
      req = build_request(:update_ip_set, params)
      req.send_request(options)
    end

    # Updates an existing Malware Protection plan resource.
    #
    # @option params [required, String] :malware_protection_plan_id
    #   A unique identifier associated with the Malware Protection plan.
    #
    # @option params [String] :role
    #   Amazon Resource Name (ARN) of the IAM role with permissions to scan
    #   and add tags to the associated protected resource.
    #
    # @option params [Types::MalwareProtectionPlanActions] :actions
    #   Information about whether the tags will be added to the S3 object
    #   after scanning.
    #
    # @option params [Types::UpdateProtectedResource] :protected_resource
    #   Information about the protected resource that is associated with the
    #   created Malware Protection plan. Presently, `S3Bucket` is the only
    #   supported protected resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_malware_protection_plan({
    #     malware_protection_plan_id: "String", # required
    #     role: "String",
    #     actions: {
    #       tagging: {
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     protected_resource: {
    #       s3_bucket: {
    #         object_prefixes: ["String"],
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateMalwareProtectionPlan AWS API Documentation
    #
    # @overload update_malware_protection_plan(params = {})
    # @param [Hash] params ({})
    def update_malware_protection_plan(params = {}, options = {})
      req = build_request(:update_malware_protection_plan, params)
      req.send_request(options)
    end

    # Updates the malware scan settings.
    #
    # There might be regional differences because some data sources might
    # not be available in all the Amazon Web Services Regions where
    # GuardDuty is presently supported. For more information, see [Regions
    # and endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the detector that specifies the GuardDuty service
    #   where you want to update scan settings.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Types::ScanResourceCriteria] :scan_resource_criteria
    #   Represents the criteria to be used in the filter for selecting
    #   resources to scan.
    #
    # @option params [String] :ebs_snapshot_preservation
    #   An enum value representing possible snapshot preservation settings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_malware_scan_settings({
    #     detector_id: "DetectorId", # required
    #     scan_resource_criteria: {
    #       include: {
    #         "EC2_INSTANCE_TAG" => {
    #           map_equals: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue",
    #             },
    #           ],
    #         },
    #       },
    #       exclude: {
    #         "EC2_INSTANCE_TAG" => {
    #           map_equals: [ # required
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue",
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     ebs_snapshot_preservation: "NO_RETENTION", # accepts NO_RETENTION, RETENTION_WITH_FINDING
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateMalwareScanSettings AWS API Documentation
    #
    # @overload update_malware_scan_settings(params = {})
    # @param [Hash] params ({})
    def update_malware_scan_settings(params = {}, options = {})
      req = build_request(:update_malware_scan_settings, params)
      req.send_request(options)
    end

    # Contains information on member accounts to be updated.
    #
    # Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING`) and
    # Runtime Monitoring (`RUNTIME_MONITORING`) will cause an error. You can
    # add only one of these two features because Runtime Monitoring already
    # includes the threat detection for Amazon EKS resources. For more
    # information, see [Runtime Monitoring][1].
    #
    # There might be regional differences because some data sources might
    # not be available in all the Amazon Web Services Regions where
    # GuardDuty is presently supported. For more information, see [Regions
    # and endpoints][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html
    # [2]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, String] :detector_id
    #   The detector ID of the administrator account.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, Array<String>] :account_ids
    #   A list of member account IDs to be updated.
    #
    # @option params [Types::DataSourceConfigurations] :data_sources
    #   Describes which data sources will be updated.
    #
    # @option params [Array<Types::MemberFeaturesConfiguration>] :features
    #   A list of features that will be updated for the specified member
    #   accounts.
    #
    # @return [Types::UpdateMemberDetectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMemberDetectorsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::UnprocessedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_member_detectors({
    #     detector_id: "DetectorId", # required
    #     account_ids: ["AccountId"], # required
    #     data_sources: {
    #       s3_logs: {
    #         enable: false, # required
    #       },
    #       kubernetes: {
    #         audit_logs: { # required
    #           enable: false, # required
    #         },
    #       },
    #       malware_protection: {
    #         scan_ec2_instance_with_findings: {
    #           ebs_volumes: false,
    #         },
    #       },
    #     },
    #     features: [
    #       {
    #         name: "S3_DATA_EVENTS", # accepts S3_DATA_EVENTS, EKS_AUDIT_LOGS, EBS_MALWARE_PROTECTION, RDS_LOGIN_EVENTS, EKS_RUNTIME_MONITORING, LAMBDA_NETWORK_LOGS, RUNTIME_MONITORING
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #         additional_configuration: [
    #           {
    #             name: "EKS_ADDON_MANAGEMENT", # accepts EKS_ADDON_MANAGEMENT, ECS_FARGATE_AGENT_MANAGEMENT, EC2_AGENT_MANAGEMENT
    #             status: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateMemberDetectors AWS API Documentation
    #
    # @overload update_member_detectors(params = {})
    # @param [Hash] params ({})
    def update_member_detectors(params = {}, options = {})
      req = build_request(:update_member_detectors, params)
      req.send_request(options)
    end

    # Configures the delegated administrator account with the provided
    # values. You must provide a value for either
    # `autoEnableOrganizationMembers` or `autoEnable`, but not both.
    #
    # Specifying both EKS Runtime Monitoring (`EKS_RUNTIME_MONITORING`) and
    # Runtime Monitoring (`RUNTIME_MONITORING`) will cause an error. You can
    # add only one of these two features because Runtime Monitoring already
    # includes the threat detection for Amazon EKS resources. For more
    # information, see [Runtime Monitoring][1].
    #
    # There might be regional differences because some data sources might
    # not be available in all the Amazon Web Services Regions where
    # GuardDuty is presently supported. For more information, see [Regions
    # and endpoints][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html
    # [2]: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector that configures the delegated administrator.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [Boolean] :auto_enable
    #   Represents whether to automatically enable member accounts in the
    #   organization. This applies to only new member accounts, not the
    #   existing member accounts. When a new account joins the organization,
    #   the chosen features will be enabled for them by default.
    #
    #   Even though this is still supported, we recommend using
    #   `AutoEnableOrganizationMembers` to achieve the similar results. You
    #   must provide a value for either `autoEnableOrganizationMembers` or
    #   `autoEnable`.
    #
    # @option params [Types::OrganizationDataSourceConfigurations] :data_sources
    #   Describes which data sources will be updated.
    #
    # @option params [Array<Types::OrganizationFeatureConfiguration>] :features
    #   A list of features that will be configured for the organization.
    #
    # @option params [String] :auto_enable_organization_members
    #   Indicates the auto-enablement configuration of GuardDuty for the
    #   member accounts in the organization. You must provide a value for
    #   either `autoEnableOrganizationMembers` or `autoEnable`.
    #
    #   Use one of the following configuration values for
    #   `autoEnableOrganizationMembers`:
    #
    #   * `NEW`: Indicates that when a new account joins the organization,
    #     they will have GuardDuty enabled automatically.
    #
    #   * `ALL`: Indicates that all accounts in the organization have
    #     GuardDuty enabled automatically. This includes `NEW` accounts that
    #     join the organization and accounts that may have been suspended or
    #     removed from the organization in GuardDuty.
    #
    #     It may take up to 24 hours to update the configuration for all the
    #     member accounts.
    #
    #   * `NONE`: Indicates that GuardDuty will not be automatically enabled
    #     for any account in the organization. The administrator must manage
    #     GuardDuty for each account in the organization individually.
    #
    #     When you update the auto-enable setting from `ALL` or `NEW` to
    #     `NONE`, this action doesn't disable the corresponding option for
    #     your existing accounts. This configuration will apply to the new
    #     accounts that join the organization. After you update the
    #     auto-enable settings, no new account will have the corresponding
    #     option as enabled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration({
    #     detector_id: "DetectorId", # required
    #     auto_enable: false,
    #     data_sources: {
    #       s3_logs: {
    #         auto_enable: false, # required
    #       },
    #       kubernetes: {
    #         audit_logs: { # required
    #           auto_enable: false, # required
    #         },
    #       },
    #       malware_protection: {
    #         scan_ec2_instance_with_findings: {
    #           ebs_volumes: {
    #             auto_enable: false,
    #           },
    #         },
    #       },
    #     },
    #     features: [
    #       {
    #         name: "S3_DATA_EVENTS", # accepts S3_DATA_EVENTS, EKS_AUDIT_LOGS, EBS_MALWARE_PROTECTION, RDS_LOGIN_EVENTS, EKS_RUNTIME_MONITORING, LAMBDA_NETWORK_LOGS, RUNTIME_MONITORING
    #         auto_enable: "NEW", # accepts NEW, NONE, ALL
    #         additional_configuration: [
    #           {
    #             name: "EKS_ADDON_MANAGEMENT", # accepts EKS_ADDON_MANAGEMENT, ECS_FARGATE_AGENT_MANAGEMENT, EC2_AGENT_MANAGEMENT
    #             auto_enable: "NEW", # accepts NEW, NONE, ALL
    #           },
    #         ],
    #       },
    #     ],
    #     auto_enable_organization_members: "NEW", # accepts NEW, ALL, NONE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateOrganizationConfiguration AWS API Documentation
    #
    # @overload update_organization_configuration(params = {})
    # @param [Hash] params ({})
    def update_organization_configuration(params = {}, options = {})
      req = build_request(:update_organization_configuration, params)
      req.send_request(options)
    end

    # Updates information about the publishing destination specified by the
    # `destinationId`.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector associated with the publishing destinations to
    #   update.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :destination_id
    #   The ID of the publishing destination to update.
    #
    # @option params [Types::DestinationProperties] :destination_properties
    #   A `DestinationProperties` object that includes the `DestinationArn`
    #   and `KmsKeyArn` of the publishing destination.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_publishing_destination({
    #     detector_id: "DetectorId", # required
    #     destination_id: "String", # required
    #     destination_properties: {
    #       destination_arn: "String",
    #       kms_key_arn: "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdatePublishingDestination AWS API Documentation
    #
    # @overload update_publishing_destination(params = {})
    # @param [Hash] params ({})
    def update_publishing_destination(params = {}, options = {})
      req = build_request(:update_publishing_destination, params)
      req.send_request(options)
    end

    # Updates the threat entity set associated with the specified
    # `threatEntitySetId`.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the GuardDuty detector associated with the threat
    #   entity set that you want to update.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :threat_entity_set_id
    #   The ID returned by GuardDuty after updating the threat entity set
    #   resource.
    #
    # @option params [String] :name
    #   A user-friendly name to identify the trusted entity set.
    #
    #   The name of your list can include lowercase letters, uppercase
    #   letters, numbers, dash (-), and underscore (\_).
    #
    # @option params [String] :location
    #   The URI of the file that contains the trusted entity set.
    #
    # @option params [String] :expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #
    # @option params [Boolean] :activate
    #   A boolean value that indicates whether GuardDuty is to start using
    #   this updated threat entity set. After you update an entity set, you
    #   will need to activate it again. It might take up to 15 minutes for the
    #   updated entity set to be effective.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_threat_entity_set({
    #     detector_id: "DetectorId", # required
    #     threat_entity_set_id: "String", # required
    #     name: "Name",
    #     location: "Location",
    #     expected_bucket_owner: "ExpectedBucketOwner",
    #     activate: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateThreatEntitySet AWS API Documentation
    #
    # @overload update_threat_entity_set(params = {})
    # @param [Hash] params ({})
    def update_threat_entity_set(params = {}, options = {})
      req = build_request(:update_threat_entity_set, params)
      req.send_request(options)
    end

    # Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
    #
    # @option params [required, String] :detector_id
    #   The detectorID that specifies the GuardDuty service whose
    #   ThreatIntelSet you want to update.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :threat_intel_set_id
    #   The unique ID that specifies the ThreatIntelSet that you want to
    #   update.
    #
    # @option params [String] :name
    #   The unique ID that specifies the ThreatIntelSet that you want to
    #   update.
    #
    # @option params [String] :location
    #   The updated URI of the file that contains the ThreateIntelSet.
    #
    # @option params [Boolean] :activate
    #   The updated Boolean value that specifies whether the ThreateIntelSet
    #   is active or not.
    #
    # @option params [String] :expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_threat_intel_set({
    #     detector_id: "DetectorId", # required
    #     threat_intel_set_id: "String", # required
    #     name: "Name",
    #     location: "Location",
    #     activate: false,
    #     expected_bucket_owner: "AccountId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateThreatIntelSet AWS API Documentation
    #
    # @overload update_threat_intel_set(params = {})
    # @param [Hash] params ({})
    def update_threat_intel_set(params = {}, options = {})
      req = build_request(:update_threat_intel_set, params)
      req.send_request(options)
    end

    # Updates the trusted entity set associated with the specified
    # `trustedEntitySetId`.
    #
    # @option params [required, String] :detector_id
    #   The unique ID of the GuardDuty detector associated with the threat
    #   entity set that you want to update.
    #
    #   To find the `detectorId` in the current Region, see the Settings page
    #   in the GuardDuty console, or run the [ListDetectors][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html
    #
    # @option params [required, String] :trusted_entity_set_id
    #   The ID returned by GuardDuty after updating the trusted entity set
    #   resource.
    #
    # @option params [String] :name
    #   A user-friendly name to identify the trusted entity set.
    #
    #   The name of your list can include lowercase letters, uppercase
    #   letters, numbers, dash (-), and underscore (\_).
    #
    # @option params [String] :location
    #   The URI of the file that contains the trusted entity set.
    #
    # @option params [String] :expected_bucket_owner
    #   The Amazon Web Services account ID that owns the Amazon S3 bucket
    #   specified in the **location** parameter.
    #
    # @option params [Boolean] :activate
    #   A boolean value that indicates whether GuardDuty is to start using
    #   this updated trusted entity set. After you update an entity set, you
    #   will need to activate it again. It might take up to 15 minutes for the
    #   updated entity set to be effective.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trusted_entity_set({
    #     detector_id: "DetectorId", # required
    #     trusted_entity_set_id: "String", # required
    #     name: "Name",
    #     location: "Location",
    #     expected_bucket_owner: "ExpectedBucketOwner",
    #     activate: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/guardduty-2017-11-28/UpdateTrustedEntitySet AWS API Documentation
    #
    # @overload update_trusted_entity_set(params = {})
    # @param [Hash] params ({})
    def update_trusted_entity_set(params = {}, options = {})
      req = build_request(:update_trusted_entity_set, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::GuardDuty')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-guardduty'
      context[:gem_version] = '1.135.0'
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
