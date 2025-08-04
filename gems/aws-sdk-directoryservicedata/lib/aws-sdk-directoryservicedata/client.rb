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

module Aws::DirectoryServiceData
  # An API client for DirectoryServiceData.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DirectoryServiceData::Client.new(
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

    @identifier = :directoryservicedata

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
    add_plugin(Aws::DirectoryServiceData::Plugins::Endpoints)

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
    #   @option options [Aws::DirectoryServiceData::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::DirectoryServiceData::EndpointParameters`.
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

    # Adds an existing user, group, or computer as a group member.
    #
    # @option params [String] :client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it completes. After 8 hours, any request with the same client token is
    #   treated as a new request. If the request succeeds, any future uses of
    #   that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [required, String] :member_name
    #   The `SAMAccountName` of the user, group, or computer to add as a group
    #   member.
    #
    # @option params [String] :member_realm
    #   The domain name that's associated with the group member. This
    #   parameter is required only when adding a member outside of your
    #   Managed Microsoft AD domain to a group inside of your Managed
    #   Microsoft AD domain. This parameter defaults to the Managed Microsoft
    #   AD domain.
    #
    #   <note markdown="1"> This parameter is case insensitive.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_group_member({
    #     client_token: "ClientToken",
    #     directory_id: "DirectoryId", # required
    #     group_name: "GroupName", # required
    #     member_name: "MemberName", # required
    #     member_realm: "Realm",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/AddGroupMember AWS API Documentation
    #
    # @overload add_group_member(params = {})
    # @param [Hash] params ({})
    def add_group_member(params = {}, options = {})
      req = build_request(:add_group_member, params)
      req.send_request(options)
    end

    # Creates a new group.
    #
    # @option params [String] :client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it completes. After 8 hours, any request with the same client token is
    #   treated as a new request. If the request succeeds, any future uses of
    #   that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #
    # @option params [String] :group_scope
    #   The scope of the AD group. For details, see [Active Directory security
    #   group scope][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope
    #
    # @option params [String] :group_type
    #   The AD group type. For details, see [Active Directory security group
    #   type][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work
    #
    # @option params [Hash<String,Types::AttributeValue>] :other_attributes
    #   An expression that defines one or more attributes with the data type
    #   and value of each attribute.
    #
    # @option params [required, String] :sam_account_name
    #   The name of the group.
    #
    # @return [Types::CreateGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResult#directory_id #directory_id} => String
    #   * {Types::CreateGroupResult#sam_account_name #sam_account_name} => String
    #   * {Types::CreateGroupResult#sid #sid} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     client_token: "ClientToken",
    #     directory_id: "DirectoryId", # required
    #     group_scope: "DomainLocal", # accepts DomainLocal, Global, Universal, BuiltinLocal
    #     group_type: "Distribution", # accepts Distribution, Security
    #     other_attributes: {
    #       "LdapDisplayName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     sam_account_name: "GroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #   resp.sam_account_name #=> String
    #   resp.sid #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Creates a new user.
    #
    # @option params [String] :client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it completes. After 8 hours, any request with the same client token is
    #   treated as a new request. If the request succeeds, any future uses of
    #   that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that’s associated with the user.
    #
    # @option params [String] :email_address
    #   The email address of the user.
    #
    # @option params [String] :given_name
    #   The first name of the user.
    #
    # @option params [Hash<String,Types::AttributeValue>] :other_attributes
    #   An expression that defines one or more attribute names with the data
    #   type and value of each attribute. A key is an attribute name, and the
    #   value is a list of maps. For a list of supported attributes, see
    #   [Directory Service Data Attributes][1].
    #
    #   <note markdown="1"> Attribute names are case insensitive.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #
    # @option params [required, String] :sam_account_name
    #   The name of the user.
    #
    # @option params [String] :surname
    #   The last name of the user.
    #
    # @return [Types::CreateUserResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResult#directory_id #directory_id} => String
    #   * {Types::CreateUserResult#sam_account_name #sam_account_name} => String
    #   * {Types::CreateUserResult#sid #sid} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     client_token: "ClientToken",
    #     directory_id: "DirectoryId", # required
    #     email_address: "EmailAddress",
    #     given_name: "GivenName",
    #     other_attributes: {
    #       "LdapDisplayName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     sam_account_name: "UserName", # required
    #     surname: "Surname",
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #   resp.sam_account_name #=> String
    #   resp.sid #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes a group.
    #
    # @option params [String] :client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it completes. After 8 hours, any request with the same client token is
    #   treated as a new request. If the request succeeds, any future uses of
    #   that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #
    # @option params [required, String] :sam_account_name
    #   The name of the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     client_token: "ClientToken",
    #     directory_id: "DirectoryId", # required
    #     sam_account_name: "GroupName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Deletes a user.
    #
    # @option params [String] :client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it completes. After 8 hours, any request with the same client token is
    #   treated as a new request. If the request succeeds, any future uses of
    #   that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the user.
    #
    # @option params [required, String] :sam_account_name
    #   The name of the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     client_token: "ClientToken",
    #     directory_id: "DirectoryId", # required
    #     sam_account_name: "UserName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Returns information about a specific group.
    #
    # @option params [required, String] :directory_id
    #   The Identifier (ID) of the directory associated with the group.
    #
    # @option params [Array<String>] :other_attributes
    #   One or more attributes to be returned for the group. For a list of
    #   supported attributes, see [Directory Service Data Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #
    # @option params [String] :realm
    #   The domain name that's associated with the group.
    #
    #   <note markdown="1"> This parameter is optional, so you can return groups outside of your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD groups are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #
    # @option params [required, String] :sam_account_name
    #   The name of the group.
    #
    # @return [Types::DescribeGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGroupResult#directory_id #directory_id} => String
    #   * {Types::DescribeGroupResult#distinguished_name #distinguished_name} => String
    #   * {Types::DescribeGroupResult#group_scope #group_scope} => String
    #   * {Types::DescribeGroupResult#group_type #group_type} => String
    #   * {Types::DescribeGroupResult#other_attributes #other_attributes} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::DescribeGroupResult#realm #realm} => String
    #   * {Types::DescribeGroupResult#sam_account_name #sam_account_name} => String
    #   * {Types::DescribeGroupResult#sid #sid} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group({
    #     directory_id: "DirectoryId", # required
    #     other_attributes: ["LdapDisplayName"],
    #     realm: "Realm",
    #     sam_account_name: "GroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #   resp.distinguished_name #=> String
    #   resp.group_scope #=> String, one of "DomainLocal", "Global", "Universal", "BuiltinLocal"
    #   resp.group_type #=> String, one of "Distribution", "Security"
    #   resp.other_attributes #=> Hash
    #   resp.other_attributes["LdapDisplayName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.realm #=> String
    #   resp.sam_account_name #=> String
    #   resp.sid #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DescribeGroup AWS API Documentation
    #
    # @overload describe_group(params = {})
    # @param [Hash] params ({})
    def describe_group(params = {}, options = {})
      req = build_request(:describe_group, params)
      req.send_request(options)
    end

    # Returns information about a specific user.
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the user.
    #
    # @option params [Array<String>] :other_attributes
    #   One or more attribute names to be returned for the user. A key is an
    #   attribute name, and the value is a list of maps. For a list of
    #   supported attributes, see [Directory Service Data Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #
    # @option params [String] :realm
    #   The domain name that's associated with the user.
    #
    #   <note markdown="1"> This parameter is optional, so you can return users outside your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD users are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #
    # @option params [required, String] :sam_account_name
    #   The name of the user.
    #
    # @return [Types::DescribeUserResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResult#directory_id #directory_id} => String
    #   * {Types::DescribeUserResult#distinguished_name #distinguished_name} => String
    #   * {Types::DescribeUserResult#email_address #email_address} => String
    #   * {Types::DescribeUserResult#enabled #enabled} => Boolean
    #   * {Types::DescribeUserResult#given_name #given_name} => String
    #   * {Types::DescribeUserResult#other_attributes #other_attributes} => Hash&lt;String,Types::AttributeValue&gt;
    #   * {Types::DescribeUserResult#realm #realm} => String
    #   * {Types::DescribeUserResult#sam_account_name #sam_account_name} => String
    #   * {Types::DescribeUserResult#sid #sid} => String
    #   * {Types::DescribeUserResult#surname #surname} => String
    #   * {Types::DescribeUserResult#user_principal_name #user_principal_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     directory_id: "DirectoryId", # required
    #     other_attributes: ["LdapDisplayName"],
    #     realm: "Realm",
    #     sam_account_name: "UserName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #   resp.distinguished_name #=> String
    #   resp.email_address #=> String
    #   resp.enabled #=> Boolean
    #   resp.given_name #=> String
    #   resp.other_attributes #=> Hash
    #   resp.other_attributes["LdapDisplayName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.realm #=> String
    #   resp.sam_account_name #=> String
    #   resp.sid #=> String
    #   resp.surname #=> String
    #   resp.user_principal_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Deactivates an active user account. For information about how to
    # enable an inactive user account, see [ResetUserPassword][1] in the
    # *Directory Service API Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/directoryservice/latest/devguide/API_ResetUserPassword.html
    #
    # @option params [String] :client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it completes. After 8 hours, any request with the same client token is
    #   treated as a new request. If the request succeeds, any future uses of
    #   that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the user.
    #
    # @option params [required, String] :sam_account_name
    #   The name of the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_user({
    #     client_token: "ClientToken",
    #     directory_id: "DirectoryId", # required
    #     sam_account_name: "UserName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/DisableUser AWS API Documentation
    #
    # @overload disable_user(params = {})
    # @param [Hash] params ({})
    def disable_user(params = {}, options = {})
      req = build_request(:disable_user, params)
      req.send_request(options)
    end

    # Returns member information for the specified group.
    #
    # This operation supports pagination with the use of the `NextToken`
    # request and response parameters. If more results are available, the
    # `ListGroupMembers.NextToken` member contains a token that you pass in
    # the next call to `ListGroupMembers`. This retrieves the next set of
    # items.
    #
    # You can also specify a maximum number of return results with the
    # `MaxResults` parameter.
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :member_realm
    #   The domain name that's associated with the group member. This
    #   parameter defaults to the Managed Microsoft AD domain.
    #
    #   <note markdown="1"> This parameter is optional and case insensitive.
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   An encoded paging token for paginated calls that can be passed back to
    #   retrieve the next page.
    #
    # @option params [String] :realm
    #   The domain name that's associated with the group.
    #
    #   <note markdown="1"> This parameter is optional, so you can return members from a group
    #   outside of your Managed Microsoft AD domain. When no value is defined,
    #   only members of your Managed Microsoft AD groups are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #
    # @option params [required, String] :sam_account_name
    #   The name of the group.
    #
    # @return [Types::ListGroupMembersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupMembersResult#directory_id #directory_id} => String
    #   * {Types::ListGroupMembersResult#member_realm #member_realm} => String
    #   * {Types::ListGroupMembersResult#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::ListGroupMembersResult#next_token #next_token} => String
    #   * {Types::ListGroupMembersResult#realm #realm} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_members({
    #     directory_id: "DirectoryId", # required
    #     max_results: 1,
    #     member_realm: "Realm",
    #     next_token: "NextToken",
    #     realm: "Realm",
    #     sam_account_name: "GroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #   resp.member_realm #=> String
    #   resp.members #=> Array
    #   resp.members[0].member_type #=> String, one of "USER", "GROUP", "COMPUTER"
    #   resp.members[0].sam_account_name #=> String
    #   resp.members[0].sid #=> String
    #   resp.next_token #=> String
    #   resp.realm #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ListGroupMembers AWS API Documentation
    #
    # @overload list_group_members(params = {})
    # @param [Hash] params ({})
    def list_group_members(params = {}, options = {})
      req = build_request(:list_group_members, params)
      req.send_request(options)
    end

    # Returns group information for the specified directory.
    #
    # This operation supports pagination with the use of the `NextToken`
    # request and response parameters. If more results are available, the
    # `ListGroups.NextToken` member contains a token that you pass in the
    # next call to `ListGroups`. This retrieves the next set of items.
    #
    # You can also specify a maximum number of return results with the
    # `MaxResults` parameter.
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   An encoded paging token for paginated calls that can be passed back to
    #   retrieve the next page.
    #
    # @option params [String] :realm
    #   The domain name associated with the directory.
    #
    #   <note markdown="1"> This parameter is optional, so you can return groups outside of your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD groups are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #
    # @return [Types::ListGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsResult#directory_id #directory_id} => String
    #   * {Types::ListGroupsResult#groups #groups} => Array&lt;Types::GroupSummary&gt;
    #   * {Types::ListGroupsResult#next_token #next_token} => String
    #   * {Types::ListGroupsResult#realm #realm} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     directory_id: "DirectoryId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     realm: "Realm",
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #   resp.groups #=> Array
    #   resp.groups[0].group_scope #=> String, one of "DomainLocal", "Global", "Universal", "BuiltinLocal"
    #   resp.groups[0].group_type #=> String, one of "Distribution", "Security"
    #   resp.groups[0].sam_account_name #=> String
    #   resp.groups[0].sid #=> String
    #   resp.next_token #=> String
    #   resp.realm #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Returns group information for the specified member.
    #
    # This operation supports pagination with the use of the `NextToken`
    # request and response parameters. If more results are available, the
    # `ListGroupsForMember.NextToken` member contains a token that you pass
    # in the next call to `ListGroupsForMember`. This retrieves the next set
    # of items.
    #
    # You can also specify a maximum number of return results with the
    # `MaxResults` parameter.
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   member.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :member_realm
    #   The domain name that's associated with the group member.
    #
    #   <note markdown="1"> This parameter is optional, so you can limit your results to the group
    #   members in a specific domain.
    #
    #    This parameter is case insensitive and defaults to `Realm`
    #
    #    </note>
    #
    # @option params [String] :next_token
    #   An encoded paging token for paginated calls that can be passed back to
    #   retrieve the next page.
    #
    # @option params [String] :realm
    #   The domain name that's associated with the group.
    #
    #   <note markdown="1"> This parameter is optional, so you can return groups outside of your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD groups are returned.
    #
    #    This value is case insensitive and defaults to your Managed Microsoft
    #   AD domain.
    #
    #    </note>
    #
    # @option params [required, String] :sam_account_name
    #   The `SAMAccountName` of the user, group, or computer that's a member
    #   of the group.
    #
    # @return [Types::ListGroupsForMemberResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsForMemberResult#directory_id #directory_id} => String
    #   * {Types::ListGroupsForMemberResult#groups #groups} => Array&lt;Types::GroupSummary&gt;
    #   * {Types::ListGroupsForMemberResult#member_realm #member_realm} => String
    #   * {Types::ListGroupsForMemberResult#next_token #next_token} => String
    #   * {Types::ListGroupsForMemberResult#realm #realm} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups_for_member({
    #     directory_id: "DirectoryId", # required
    #     max_results: 1,
    #     member_realm: "Realm",
    #     next_token: "NextToken",
    #     realm: "Realm",
    #     sam_account_name: "MemberName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #   resp.groups #=> Array
    #   resp.groups[0].group_scope #=> String, one of "DomainLocal", "Global", "Universal", "BuiltinLocal"
    #   resp.groups[0].group_type #=> String, one of "Distribution", "Security"
    #   resp.groups[0].sam_account_name #=> String
    #   resp.groups[0].sid #=> String
    #   resp.member_realm #=> String
    #   resp.next_token #=> String
    #   resp.realm #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ListGroupsForMember AWS API Documentation
    #
    # @overload list_groups_for_member(params = {})
    # @param [Hash] params ({})
    def list_groups_for_member(params = {}, options = {})
      req = build_request(:list_groups_for_member, params)
      req.send_request(options)
    end

    # Returns user information for the specified directory.
    #
    # This operation supports pagination with the use of the `NextToken`
    # request and response parameters. If more results are available, the
    # `ListUsers.NextToken` member contains a token that you pass in the
    # next call to `ListUsers`. This retrieves the next set of items.
    #
    # You can also specify a maximum number of return results with the
    # `MaxResults` parameter.
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the user.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   An encoded paging token for paginated calls that can be passed back to
    #   retrieve the next page.
    #
    # @option params [String] :realm
    #   The domain name that's associated with the user.
    #
    #   <note markdown="1"> This parameter is optional, so you can return users outside of your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD users are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #
    # @return [Types::ListUsersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResult#directory_id #directory_id} => String
    #   * {Types::ListUsersResult#next_token #next_token} => String
    #   * {Types::ListUsersResult#realm #realm} => String
    #   * {Types::ListUsersResult#users #users} => Array&lt;Types::UserSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     directory_id: "DirectoryId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     realm: "Realm",
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #   resp.next_token #=> String
    #   resp.realm #=> String
    #   resp.users #=> Array
    #   resp.users[0].enabled #=> Boolean
    #   resp.users[0].given_name #=> String
    #   resp.users[0].sam_account_name #=> String
    #   resp.users[0].sid #=> String
    #   resp.users[0].surname #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Removes a member from a group.
    #
    # @option params [String] :client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it completes. After 8 hours, any request with the same client token is
    #   treated as a new request. If the request succeeds, any future uses of
    #   that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   member.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [required, String] :member_name
    #   The `SAMAccountName` of the user, group, or computer to remove from
    #   the group.
    #
    # @option params [String] :member_realm
    #   The domain name that's associated with the group member. This
    #   parameter defaults to the Managed Microsoft AD domain.
    #
    #   <note markdown="1"> This parameter is optional and case insensitive.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_group_member({
    #     client_token: "ClientToken",
    #     directory_id: "DirectoryId", # required
    #     group_name: "GroupName", # required
    #     member_name: "MemberName", # required
    #     member_realm: "Realm",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/RemoveGroupMember AWS API Documentation
    #
    # @overload remove_group_member(params = {})
    # @param [Hash] params ({})
    def remove_group_member(params = {}, options = {})
      req = build_request(:remove_group_member, params)
      req.send_request(options)
    end

    # Searches the specified directory for a group. You can find groups that
    # match the `SearchString` parameter with the value of their attributes
    # included in the `SearchString` parameter.
    #
    # This operation supports pagination with the use of the `NextToken`
    # request and response parameters. If more results are available, the
    # `SearchGroups.NextToken` member contains a token that you pass in the
    # next call to `SearchGroups`. This retrieves the next set of items.
    #
    # You can also specify a maximum number of return results with the
    # `MaxResults` parameter.
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   An encoded paging token for paginated calls that can be passed back to
    #   retrieve the next page.
    #
    # @option params [String] :realm
    #   The domain name that's associated with the group.
    #
    #   <note markdown="1"> This parameter is optional, so you can return groups outside of your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD groups are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #
    # @option params [required, Array<String>] :search_attributes
    #   One or more data attributes that are used to search for a group. For a
    #   list of supported attributes, see [Directory Service Data
    #   Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #
    # @option params [required, String] :search_string
    #   The attribute value that you want to search for.
    #
    #   <note markdown="1"> Wildcard `(*)` searches aren't supported. For a list of supported
    #   attributes, see [Directory Service Data Attributes][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #
    # @return [Types::SearchGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchGroupsResult#directory_id #directory_id} => String
    #   * {Types::SearchGroupsResult#groups #groups} => Array&lt;Types::Group&gt;
    #   * {Types::SearchGroupsResult#next_token #next_token} => String
    #   * {Types::SearchGroupsResult#realm #realm} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_groups({
    #     directory_id: "DirectoryId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     realm: "Realm",
    #     search_attributes: ["LdapDisplayName"], # required
    #     search_string: "SearchString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #   resp.groups #=> Array
    #   resp.groups[0].distinguished_name #=> String
    #   resp.groups[0].group_scope #=> String, one of "DomainLocal", "Global", "Universal", "BuiltinLocal"
    #   resp.groups[0].group_type #=> String, one of "Distribution", "Security"
    #   resp.groups[0].other_attributes #=> Hash
    #   resp.groups[0].other_attributes["LdapDisplayName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.groups[0].sam_account_name #=> String
    #   resp.groups[0].sid #=> String
    #   resp.next_token #=> String
    #   resp.realm #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/SearchGroups AWS API Documentation
    #
    # @overload search_groups(params = {})
    # @param [Hash] params ({})
    def search_groups(params = {}, options = {})
      req = build_request(:search_groups, params)
      req.send_request(options)
    end

    # Searches the specified directory for a user. You can find users that
    # match the `SearchString` parameter with the value of their attributes
    # included in the `SearchString` parameter.
    #
    # This operation supports pagination with the use of the `NextToken`
    # request and response parameters. If more results are available, the
    # `SearchUsers.NextToken` member contains a token that you pass in the
    # next call to `SearchUsers`. This retrieves the next set of items.
    #
    # You can also specify a maximum number of return results with the
    # `MaxResults` parameter.
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the user.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   An encoded paging token for paginated calls that can be passed back to
    #   retrieve the next page.
    #
    # @option params [String] :realm
    #   The domain name that's associated with the user.
    #
    #   <note markdown="1"> This parameter is optional, so you can return users outside of your
    #   Managed Microsoft AD domain. When no value is defined, only your
    #   Managed Microsoft AD users are returned.
    #
    #    This value is case insensitive.
    #
    #    </note>
    #
    # @option params [required, Array<String>] :search_attributes
    #   One or more data attributes that are used to search for a user. For a
    #   list of supported attributes, see [Directory Service Data
    #   Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #
    # @option params [required, String] :search_string
    #   The attribute value that you want to search for.
    #
    #   <note markdown="1"> Wildcard `(*)` searches aren't supported. For a list of supported
    #   attributes, see [Directory Service Data Attributes][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #
    # @return [Types::SearchUsersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchUsersResult#directory_id #directory_id} => String
    #   * {Types::SearchUsersResult#next_token #next_token} => String
    #   * {Types::SearchUsersResult#realm #realm} => String
    #   * {Types::SearchUsersResult#users #users} => Array&lt;Types::User&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_users({
    #     directory_id: "DirectoryId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     realm: "Realm",
    #     search_attributes: ["LdapDisplayName"], # required
    #     search_string: "SearchString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #   resp.next_token #=> String
    #   resp.realm #=> String
    #   resp.users #=> Array
    #   resp.users[0].distinguished_name #=> String
    #   resp.users[0].email_address #=> String
    #   resp.users[0].enabled #=> Boolean
    #   resp.users[0].given_name #=> String
    #   resp.users[0].other_attributes #=> Hash
    #   resp.users[0].other_attributes["LdapDisplayName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.users[0].sam_account_name #=> String
    #   resp.users[0].sid #=> String
    #   resp.users[0].surname #=> String
    #   resp.users[0].user_principal_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/SearchUsers AWS API Documentation
    #
    # @overload search_users(params = {})
    # @param [Hash] params ({})
    def search_users(params = {}, options = {})
      req = build_request(:search_users, params)
      req.send_request(options)
    end

    # Updates group information.
    #
    # @option params [String] :client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it completes. After 8 hours, any request with the same client token is
    #   treated as a new request. If the request succeeds, any future uses of
    #   that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the
    #   group.
    #
    # @option params [String] :group_scope
    #   The scope of the AD group. For details, see [Active Directory security
    #   groups][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope
    #
    # @option params [String] :group_type
    #   The AD group type. For details, see [Active Directory security group
    #   type][1].
    #
    #
    #
    #   [1]: https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work
    #
    # @option params [Hash<String,Types::AttributeValue>] :other_attributes
    #   An expression that defines one or more attributes with the data type
    #   and the value of each attribute.
    #
    # @option params [required, String] :sam_account_name
    #   The name of the group.
    #
    # @option params [String] :update_type
    #   The type of update to be performed. If no value exists for the
    #   attribute, use `ADD`. Otherwise, use `REPLACE` to change an attribute
    #   value or `REMOVE` to clear the attribute value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     client_token: "ClientToken",
    #     directory_id: "DirectoryId", # required
    #     group_scope: "DomainLocal", # accepts DomainLocal, Global, Universal, BuiltinLocal
    #     group_type: "Distribution", # accepts Distribution, Security
    #     other_attributes: {
    #       "LdapDisplayName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     sam_account_name: "GroupName", # required
    #     update_type: "ADD", # accepts ADD, REPLACE, REMOVE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Updates user information.
    #
    # @option params [String] :client_token
    #   A unique and case-sensitive identifier that you provide to make sure
    #   the idempotency of the request, so multiple identical calls have the
    #   same effect as one single call.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it completes. After 8 hours, any request with the same client token is
    #   treated as a new request. If the request succeeds, any future uses of
    #   that token will be idempotent for another 8 hours.
    #
    #   If you submit a request with the same client token but change one of
    #   the other parameters within the 8-hour idempotency window, Directory
    #   Service Data returns an `ConflictException`.
    #
    #   <note markdown="1"> This parameter is optional when using the CLI or SDK.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :directory_id
    #   The identifier (ID) of the directory that's associated with the user.
    #
    # @option params [String] :email_address
    #   The email address of the user.
    #
    # @option params [String] :given_name
    #   The first name of the user.
    #
    # @option params [Hash<String,Types::AttributeValue>] :other_attributes
    #   An expression that defines one or more attribute names with the data
    #   type and value of each attribute. A key is an attribute name, and the
    #   value is a list of maps. For a list of supported attributes, see
    #   [Directory Service Data Attributes][1].
    #
    #   <note markdown="1"> Attribute names are case insensitive.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html
    #
    # @option params [required, String] :sam_account_name
    #   The name of the user.
    #
    # @option params [String] :surname
    #   The last name of the user.
    #
    # @option params [String] :update_type
    #   The type of update to be performed. If no value exists for the
    #   attribute, use `ADD`. Otherwise, use `REPLACE` to change an attribute
    #   value or `REMOVE` to clear the attribute value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     client_token: "ClientToken",
    #     directory_id: "DirectoryId", # required
    #     email_address: "EmailAddress",
    #     given_name: "GivenName",
    #     other_attributes: {
    #       "LdapDisplayName" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #     },
    #     sam_account_name: "UserName", # required
    #     surname: "Surname",
    #     update_type: "ADD", # accepts ADD, REPLACE, REMOVE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/directory-service-data-2023-05-31/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::DirectoryServiceData')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-directoryservicedata'
      context[:gem_version] = '1.14.0'
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
