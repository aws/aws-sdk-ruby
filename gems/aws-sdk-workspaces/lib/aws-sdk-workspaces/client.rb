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

module Aws::WorkSpaces
  # An API client for WorkSpaces.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::WorkSpaces::Client.new(
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

    @identifier = :workspaces

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
    add_plugin(Aws::WorkSpaces::Plugins::Endpoints)

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
    #   @option options [Aws::WorkSpaces::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::WorkSpaces::EndpointParameters`.
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

    # Accepts the account link invitation.
    #
    # There's currently no unlinking capability after you accept the
    # account linking invitation.
    #
    # @option params [required, String] :link_id
    #   The identifier of the account link.
    #
    # @option params [String] :client_token
    #   A string of up to 64 ASCII characters that Amazon WorkSpaces uses to
    #   ensure idempotent creation.
    #
    # @return [Types::AcceptAccountLinkInvitationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptAccountLinkInvitationResult#account_link #account_link} => Types::AccountLink
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_account_link_invitation({
    #     link_id: "LinkId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_link.account_link_id #=> String
    #   resp.account_link.account_link_status #=> String, one of "LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"
    #   resp.account_link.source_account_id #=> String
    #   resp.account_link.target_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AcceptAccountLinkInvitation AWS API Documentation
    #
    # @overload accept_account_link_invitation(params = {})
    # @param [Hash] params ({})
    def accept_account_link_invitation(params = {}, options = {})
      req = build_request(:accept_account_link_invitation, params)
      req.send_request(options)
    end

    # Associates the specified connection alias with the specified directory
    # to enable cross-Region redirection. For more information, see [
    # Cross-Region Redirection for Amazon WorkSpaces][1].
    #
    # <note markdown="1"> Before performing this operation, call [ DescribeConnectionAliases][2]
    # to make sure that the current state of the connection alias is
    # `CREATED`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    # [2]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html
    #
    # @option params [required, String] :alias_id
    #   The identifier of the connection alias.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the directory to associate the connection alias
    #   with.
    #
    # @return [Types::AssociateConnectionAliasResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateConnectionAliasResult#connection_identifier #connection_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_connection_alias({
    #     alias_id: "ConnectionAliasId", # required
    #     resource_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AssociateConnectionAlias AWS API Documentation
    #
    # @overload associate_connection_alias(params = {})
    # @param [Hash] params ({})
    def associate_connection_alias(params = {}, options = {})
      req = build_request(:associate_connection_alias, params)
      req.send_request(options)
    end

    # Associates the specified IP access control group with the specified
    # directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [required, Array<String>] :group_ids
    #   The identifiers of one or more IP access control groups.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_ip_groups({
    #     directory_id: "DirectoryId", # required
    #     group_ids: ["IpGroupId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AssociateIpGroups AWS API Documentation
    #
    # @overload associate_ip_groups(params = {})
    # @param [Hash] params ({})
    def associate_ip_groups(params = {}, options = {})
      req = build_request(:associate_ip_groups, params)
      req.send_request(options)
    end

    # Associates the specified application to the specified WorkSpace.
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the WorkSpace.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application.
    #
    # @return [Types::AssociateWorkspaceApplicationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateWorkspaceApplicationResult#association #association} => Types::WorkspaceResourceAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_workspace_application({
    #     workspace_id: "WorkspaceId", # required
    #     application_id: "WorkSpaceApplicationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.association.associated_resource_id #=> String
    #   resp.association.associated_resource_type #=> String, one of "APPLICATION"
    #   resp.association.created #=> Time
    #   resp.association.last_updated_time #=> Time
    #   resp.association.state #=> String, one of "PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"
    #   resp.association.state_reason.error_code #=> String, one of "ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"
    #   resp.association.state_reason.error_message #=> String
    #   resp.association.workspace_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AssociateWorkspaceApplication AWS API Documentation
    #
    # @overload associate_workspace_application(params = {})
    # @param [Hash] params ({})
    def associate_workspace_application(params = {}, options = {})
      req = build_request(:associate_workspace_application, params)
      req.send_request(options)
    end

    # Adds one or more rules to the specified IP access control group.
    #
    # This action gives users permission to access their WorkSpaces from the
    # CIDR address ranges specified in the rules.
    #
    # @option params [required, String] :group_id
    #   The identifier of the group.
    #
    # @option params [required, Array<Types::IpRuleItem>] :user_rules
    #   The rules to add to the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_ip_rules({
    #     group_id: "IpGroupId", # required
    #     user_rules: [ # required
    #       {
    #         ip_rule: "IpRule",
    #         rule_desc: "IpRuleDesc",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/AuthorizeIpRules AWS API Documentation
    #
    # @overload authorize_ip_rules(params = {})
    # @param [Hash] params ({})
    def authorize_ip_rules(params = {}, options = {})
      req = build_request(:authorize_ip_rules, params)
      req.send_request(options)
    end

    # Copies the specified image from the specified Region to the current
    # Region. For more information about copying images, see [ Copy a Custom
    # WorkSpaces Image][1].
    #
    # In the China (Ningxia) Region, you can copy images only within the
    # same Region.
    #
    # In Amazon Web Services GovCloud (US), to copy images to and from other
    # Regions, contact Amazon Web ServicesSupport.
    #
    # Before copying a shared image, be sure to verify that it has been
    # shared from the correct Amazon Web Services account. To determine if
    # an image has been shared and to see the ID of the Amazon Web Services
    # account that owns an image, use the [DescribeWorkSpaceImages][2] and
    # [DescribeWorkspaceImagePermissions][3] API operations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/copy-custom-image.html
    # [2]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html
    # [3]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImagePermissions.html
    #
    # @option params [required, String] :name
    #   The name of the image.
    #
    # @option params [String] :description
    #   A description of the image.
    #
    # @option params [required, String] :source_image_id
    #   The identifier of the source image.
    #
    # @option params [required, String] :source_region
    #   The identifier of the source Region.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the image.
    #
    # @return [Types::CopyWorkspaceImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyWorkspaceImageResult#image_id #image_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_workspace_image({
    #     name: "WorkspaceImageName", # required
    #     description: "WorkspaceImageDescription",
    #     source_image_id: "WorkspaceImageId", # required
    #     source_region: "Region", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.image_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CopyWorkspaceImage AWS API Documentation
    #
    # @overload copy_workspace_image(params = {})
    # @param [Hash] params ({})
    def copy_workspace_image(params = {}, options = {})
      req = build_request(:copy_workspace_image, params)
      req.send_request(options)
    end

    # Creates the account link invitation.
    #
    # @option params [required, String] :target_account_id
    #   The identifier of the target account.
    #
    # @option params [String] :client_token
    #   A string of up to 64 ASCII characters that Amazon WorkSpaces uses to
    #   ensure idempotent creation.
    #
    # @return [Types::CreateAccountLinkInvitationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountLinkInvitationResult#account_link #account_link} => Types::AccountLink
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_link_invitation({
    #     target_account_id: "AwsAccount", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_link.account_link_id #=> String
    #   resp.account_link.account_link_status #=> String, one of "LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"
    #   resp.account_link.source_account_id #=> String
    #   resp.account_link.target_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateAccountLinkInvitation AWS API Documentation
    #
    # @overload create_account_link_invitation(params = {})
    # @param [Hash] params ({})
    def create_account_link_invitation(params = {}, options = {})
      req = build_request(:create_account_link_invitation, params)
      req.send_request(options)
    end

    # Creates a client-add-in for Amazon Connect within a directory. You can
    # create only one Amazon Connect client add-in within a directory.
    #
    # This client add-in allows WorkSpaces users to seamlessly connect to
    # Amazon Connect.
    #
    # @option params [required, String] :resource_id
    #   The directory identifier for which to configure the client add-in.
    #
    # @option params [required, String] :name
    #   The name of the client add-in.
    #
    # @option params [required, String] :url
    #   The endpoint URL of the Amazon Connect client add-in.
    #
    # @return [Types::CreateConnectClientAddInResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectClientAddInResult#add_in_id #add_in_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connect_client_add_in({
    #     resource_id: "DirectoryId", # required
    #     name: "AddInName", # required
    #     url: "AddInUrl", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.add_in_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateConnectClientAddIn AWS API Documentation
    #
    # @overload create_connect_client_add_in(params = {})
    # @param [Hash] params ({})
    def create_connect_client_add_in(params = {}, options = {})
      req = build_request(:create_connect_client_add_in, params)
      req.send_request(options)
    end

    # Creates the specified connection alias for use with cross-Region
    # redirection. For more information, see [ Cross-Region Redirection for
    # Amazon WorkSpaces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    #
    # @option params [required, String] :connection_string
    #   A connection string in the form of a fully qualified domain name
    #   (FQDN), such as `www.example.com`.
    #
    #   After you create a connection string, it is always associated to your
    #   Amazon Web Services account. You cannot recreate the same connection
    #   string with a different account, even if you delete all instances of
    #   it from the original account. The connection string is globally
    #   reserved for your account.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to associate with the connection alias.
    #
    # @return [Types::CreateConnectionAliasResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectionAliasResult#alias_id #alias_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection_alias({
    #     connection_string: "ConnectionString", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateConnectionAlias AWS API Documentation
    #
    # @overload create_connection_alias(params = {})
    # @param [Hash] params ({})
    def create_connection_alias(params = {}, options = {})
      req = build_request(:create_connection_alias, params)
      req.send_request(options)
    end

    # Creates an IP access control group.
    #
    # An IP access control group provides you with the ability to control
    # the IP addresses from which users are allowed to access their
    # WorkSpaces. To specify the CIDR address ranges, add rules to your IP
    # access control group and then associate the group with your directory.
    # You can add rules when you create the group or at any time using
    # AuthorizeIpRules.
    #
    # There is a default IP access control group associated with your
    # directory. If you don't associate an IP access control group with
    # your directory, the default group is used. The default group includes
    # a default rule that allows users to access their WorkSpaces from
    # anywhere. You cannot modify the default IP access control group for
    # your directory.
    #
    # @option params [required, String] :group_name
    #   The name of the group.
    #
    # @option params [String] :group_desc
    #   The description of the group.
    #
    # @option params [Array<Types::IpRuleItem>] :user_rules
    #   The rules to add to the group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags. Each WorkSpaces resource can have a maximum of 50 tags.
    #
    # @return [Types::CreateIpGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIpGroupResult#group_id #group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ip_group({
    #     group_name: "IpGroupName", # required
    #     group_desc: "IpGroupDesc",
    #     user_rules: [
    #       {
    #         ip_rule: "IpRule",
    #         rule_desc: "IpRuleDesc",
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateIpGroup AWS API Documentation
    #
    # @overload create_ip_group(params = {})
    # @param [Hash] params ({})
    def create_ip_group(params = {}, options = {})
      req = build_request(:create_ip_group, params)
      req.send_request(options)
    end

    # Creates a standby WorkSpace in a secondary Region.
    #
    # @option params [required, String] :primary_region
    #   The Region of the primary WorkSpace.
    #
    # @option params [required, Array<Types::StandbyWorkspace>] :standby_workspaces
    #   Information about the standby WorkSpace to be created.
    #
    # @return [Types::CreateStandbyWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStandbyWorkspacesResult#failed_standby_requests #failed_standby_requests} => Array&lt;Types::FailedCreateStandbyWorkspacesRequest&gt;
    #   * {Types::CreateStandbyWorkspacesResult#pending_standby_requests #pending_standby_requests} => Array&lt;Types::PendingCreateStandbyWorkspacesRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_standby_workspaces({
    #     primary_region: "Region", # required
    #     standby_workspaces: [ # required
    #       {
    #         primary_workspace_id: "WorkspaceId", # required
    #         volume_encryption_key: "VolumeEncryptionKey",
    #         directory_id: "DirectoryId", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         data_replication: "NO_REPLICATION", # accepts NO_REPLICATION, PRIMARY_AS_SOURCE
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_standby_requests #=> Array
    #   resp.failed_standby_requests[0].standby_workspace_request.primary_workspace_id #=> String
    #   resp.failed_standby_requests[0].standby_workspace_request.volume_encryption_key #=> String
    #   resp.failed_standby_requests[0].standby_workspace_request.directory_id #=> String
    #   resp.failed_standby_requests[0].standby_workspace_request.tags #=> Array
    #   resp.failed_standby_requests[0].standby_workspace_request.tags[0].key #=> String
    #   resp.failed_standby_requests[0].standby_workspace_request.tags[0].value #=> String
    #   resp.failed_standby_requests[0].standby_workspace_request.data_replication #=> String, one of "NO_REPLICATION", "PRIMARY_AS_SOURCE"
    #   resp.failed_standby_requests[0].error_code #=> String
    #   resp.failed_standby_requests[0].error_message #=> String
    #   resp.pending_standby_requests #=> Array
    #   resp.pending_standby_requests[0].user_name #=> String
    #   resp.pending_standby_requests[0].directory_id #=> String
    #   resp.pending_standby_requests[0].state #=> String, one of "PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"
    #   resp.pending_standby_requests[0].workspace_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateStandbyWorkspaces AWS API Documentation
    #
    # @overload create_standby_workspaces(params = {})
    # @param [Hash] params ({})
    def create_standby_workspaces(params = {}, options = {})
      req = build_request(:create_standby_workspaces, params)
      req.send_request(options)
    end

    # Creates the specified tags for the specified WorkSpaces resource.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the WorkSpaces resource. The supported resource
    #   types are WorkSpaces, registered directories, images, custom bundles,
    #   IP access control groups, and connection aliases.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags. Each WorkSpaces resource can have a maximum of 50 tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags({
    #     resource_id: "NonEmptyString", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateTags AWS API Documentation
    #
    # @overload create_tags(params = {})
    # @param [Hash] params ({})
    def create_tags(params = {}, options = {})
      req = build_request(:create_tags, params)
      req.send_request(options)
    end

    # Creates a new updated WorkSpace image based on the specified source
    # image. The new updated WorkSpace image has the latest drivers and
    # other updates required by the Amazon WorkSpaces components.
    #
    # To determine which WorkSpace images need to be updated with the latest
    # Amazon WorkSpaces requirements, use [ DescribeWorkspaceImages][1].
    #
    # <note markdown="1"> * Only Windows 10, Windows Server 2016, and Windows Server 2019
    #   WorkSpace images can be programmatically updated at this time.
    #
    # * Microsoft Windows updates and other application updates are not
    #   included in the update process.
    #
    # * The source WorkSpace image is not deleted. You can delete the source
    #   image after you've verified your new updated image and created a
    #   new bundle.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html
    #
    # @option params [required, String] :name
    #   The name of the new updated WorkSpace image.
    #
    # @option params [required, String] :description
    #   A description of whether updates for the WorkSpace image are
    #   available.
    #
    # @option params [required, String] :source_image_id
    #   The identifier of the source WorkSpace image.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags that you want to add to the new updated WorkSpace image.
    #
    #   <note markdown="1"> To add tags at the same time when you're creating the updated image,
    #   you must create an IAM policy that grants your IAM user permissions to
    #   use `workspaces:CreateTags`.
    #
    #    </note>
    #
    # @return [Types::CreateUpdatedWorkspaceImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUpdatedWorkspaceImageResult#image_id #image_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_updated_workspace_image({
    #     name: "WorkspaceImageName", # required
    #     description: "WorkspaceImageDescription", # required
    #     source_image_id: "WorkspaceImageId", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.image_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateUpdatedWorkspaceImage AWS API Documentation
    #
    # @overload create_updated_workspace_image(params = {})
    # @param [Hash] params ({})
    def create_updated_workspace_image(params = {}, options = {})
      req = build_request(:create_updated_workspace_image, params)
      req.send_request(options)
    end

    # Creates the specified WorkSpace bundle. For more information about
    # creating WorkSpace bundles, see [ Create a Custom WorkSpaces Image and
    # Bundle][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/create-custom-bundle.html
    #
    # @option params [required, String] :bundle_name
    #   The name of the bundle.
    #
    # @option params [required, String] :bundle_description
    #   The description of the bundle.
    #
    # @option params [required, String] :image_id
    #   The identifier of the image that is used to create the bundle.
    #
    # @option params [required, Types::ComputeType] :compute_type
    #   Describes the compute type of the bundle.
    #
    # @option params [required, Types::UserStorage] :user_storage
    #   Describes the user volume for a WorkSpace bundle.
    #
    # @option params [Types::RootStorage] :root_storage
    #   Describes the root volume for a WorkSpace bundle.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags associated with the bundle.
    #
    #   <note markdown="1"> To add tags at the same time when you're creating the bundle, you
    #   must create an IAM policy that grants your IAM user permissions to use
    #   `workspaces:CreateTags`.
    #
    #    </note>
    #
    # @return [Types::CreateWorkspaceBundleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkspaceBundleResult#workspace_bundle #workspace_bundle} => Types::WorkspaceBundle
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace_bundle({
    #     bundle_name: "WorkspaceBundleName", # required
    #     bundle_description: "WorkspaceBundleDescription", # required
    #     image_id: "WorkspaceImageId", # required
    #     compute_type: { # required
    #       name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GENERALPURPOSE_4XLARGE, GENERALPURPOSE_8XLARGE, GRAPHICSPRO, GRAPHICS_G4DN, GRAPHICSPRO_G4DN
    #     },
    #     user_storage: { # required
    #       capacity: "NonEmptyString", # required
    #     },
    #     root_storage: {
    #       capacity: "NonEmptyString", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.workspace_bundle.bundle_id #=> String
    #   resp.workspace_bundle.name #=> String
    #   resp.workspace_bundle.owner #=> String
    #   resp.workspace_bundle.description #=> String
    #   resp.workspace_bundle.image_id #=> String
    #   resp.workspace_bundle.root_storage.capacity #=> String
    #   resp.workspace_bundle.user_storage.capacity #=> String
    #   resp.workspace_bundle.compute_type.name #=> String, one of "VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"
    #   resp.workspace_bundle.last_updated_time #=> Time
    #   resp.workspace_bundle.creation_time #=> Time
    #   resp.workspace_bundle.state #=> String, one of "AVAILABLE", "PENDING", "ERROR"
    #   resp.workspace_bundle.bundle_type #=> String, one of "REGULAR", "STANDBY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateWorkspaceBundle AWS API Documentation
    #
    # @overload create_workspace_bundle(params = {})
    # @param [Hash] params ({})
    def create_workspace_bundle(params = {}, options = {})
      req = build_request(:create_workspace_bundle, params)
      req.send_request(options)
    end

    # Creates a new WorkSpace image from an existing WorkSpace.
    #
    # @option params [required, String] :name
    #   The name of the new WorkSpace image.
    #
    # @option params [required, String] :description
    #   The description of the new WorkSpace image.
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the source WorkSpace
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags that you want to add to the new WorkSpace image. To add tags
    #   when you're creating the image, you must create an IAM policy that
    #   grants your IAM user permission to use `workspaces:CreateTags`.
    #
    # @return [Types::CreateWorkspaceImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkspaceImageResult#image_id #image_id} => String
    #   * {Types::CreateWorkspaceImageResult#name #name} => String
    #   * {Types::CreateWorkspaceImageResult#description #description} => String
    #   * {Types::CreateWorkspaceImageResult#operating_system #operating_system} => Types::OperatingSystem
    #   * {Types::CreateWorkspaceImageResult#state #state} => String
    #   * {Types::CreateWorkspaceImageResult#required_tenancy #required_tenancy} => String
    #   * {Types::CreateWorkspaceImageResult#created #created} => Time
    #   * {Types::CreateWorkspaceImageResult#owner_account_id #owner_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace_image({
    #     name: "WorkspaceImageName", # required
    #     description: "WorkspaceImageDescription", # required
    #     workspace_id: "WorkspaceId", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.image_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.operating_system.type #=> String, one of "WINDOWS", "LINUX"
    #   resp.state #=> String, one of "AVAILABLE", "PENDING", "ERROR"
    #   resp.required_tenancy #=> String, one of "DEFAULT", "DEDICATED"
    #   resp.created #=> Time
    #   resp.owner_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateWorkspaceImage AWS API Documentation
    #
    # @overload create_workspace_image(params = {})
    # @param [Hash] params ({})
    def create_workspace_image(params = {}, options = {})
      req = build_request(:create_workspace_image, params)
      req.send_request(options)
    end

    # Creates one or more WorkSpaces.
    #
    # This operation is asynchronous and returns before the WorkSpaces are
    # created.
    #
    # <note markdown="1"> * The `MANUAL` running mode value is only supported by Amazon
    #   WorkSpaces Core. Contact your account team to be allow-listed to use
    #   this value. For more information, see [Amazon WorkSpaces Core][1].
    #
    # * You don't need to specify the `PCOIP` protocol for Linux bundles
    #   because `DCV` (formerly WSP) is the default protocol for those
    #   bundles.
    #
    # * User-decoupled WorkSpaces are only supported by Amazon WorkSpaces
    #   Core.
    #
    # * Review your running mode to ensure you are using one that is optimal
    #   for your needs and budget. For more information on switching running
    #   modes, see [ Can I switch between hourly and monthly billing?][2]
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/workspaces/core/
    # [2]: http://aws.amazon.com/workspaces-family/workspaces/faqs/#:~:text=Can%20I%20switch%20between%20hourly%20and%20monthly%20billing%20on%20WorkSpaces%20Personal%3F
    #
    # @option params [required, Array<Types::WorkspaceRequest>] :workspaces
    #   The WorkSpaces to create. You can specify up to 25 WorkSpaces.
    #
    # @return [Types::CreateWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedCreateWorkspaceRequest&gt;
    #   * {Types::CreateWorkspacesResult#pending_requests #pending_requests} => Array&lt;Types::Workspace&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspaces({
    #     workspaces: [ # required
    #       {
    #         directory_id: "DirectoryId", # required
    #         user_name: "UserName", # required
    #         bundle_id: "BundleId", # required
    #         volume_encryption_key: "VolumeEncryptionKey",
    #         user_volume_encryption_enabled: false,
    #         root_volume_encryption_enabled: false,
    #         workspace_properties: {
    #           running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON, MANUAL
    #           running_mode_auto_stop_timeout_in_minutes: 1,
    #           root_volume_size_gib: 1,
    #           user_volume_size_gib: 1,
    #           compute_type_name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GENERALPURPOSE_4XLARGE, GENERALPURPOSE_8XLARGE, GRAPHICSPRO, GRAPHICS_G4DN, GRAPHICSPRO_G4DN
    #           protocols: ["PCOIP"], # accepts PCOIP, WSP
    #           operating_system_name: "AMAZON_LINUX_2", # accepts AMAZON_LINUX_2, UBUNTU_18_04, UBUNTU_20_04, UBUNTU_22_04, UNKNOWN, WINDOWS_10, WINDOWS_11, WINDOWS_7, WINDOWS_SERVER_2016, WINDOWS_SERVER_2019, WINDOWS_SERVER_2022, RHEL_8, ROCKY_8
    #           global_accelerator: {
    #             mode: "ENABLED_AUTO", # required, accepts ENABLED_AUTO, DISABLED, INHERITED
    #             preferred_protocol: "TCP", # accepts TCP, NONE, INHERITED
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         workspace_name: "WorkspaceName",
    #         ipv_6_address: "Ipv6Address",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_request.directory_id #=> String
    #   resp.failed_requests[0].workspace_request.user_name #=> String
    #   resp.failed_requests[0].workspace_request.bundle_id #=> String
    #   resp.failed_requests[0].workspace_request.volume_encryption_key #=> String
    #   resp.failed_requests[0].workspace_request.user_volume_encryption_enabled #=> Boolean
    #   resp.failed_requests[0].workspace_request.root_volume_encryption_enabled #=> Boolean
    #   resp.failed_requests[0].workspace_request.workspace_properties.running_mode #=> String, one of "AUTO_STOP", "ALWAYS_ON", "MANUAL"
    #   resp.failed_requests[0].workspace_request.workspace_properties.running_mode_auto_stop_timeout_in_minutes #=> Integer
    #   resp.failed_requests[0].workspace_request.workspace_properties.root_volume_size_gib #=> Integer
    #   resp.failed_requests[0].workspace_request.workspace_properties.user_volume_size_gib #=> Integer
    #   resp.failed_requests[0].workspace_request.workspace_properties.compute_type_name #=> String, one of "VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"
    #   resp.failed_requests[0].workspace_request.workspace_properties.protocols #=> Array
    #   resp.failed_requests[0].workspace_request.workspace_properties.protocols[0] #=> String, one of "PCOIP", "WSP"
    #   resp.failed_requests[0].workspace_request.workspace_properties.operating_system_name #=> String, one of "AMAZON_LINUX_2", "UBUNTU_18_04", "UBUNTU_20_04", "UBUNTU_22_04", "UNKNOWN", "WINDOWS_10", "WINDOWS_11", "WINDOWS_7", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "RHEL_8", "ROCKY_8"
    #   resp.failed_requests[0].workspace_request.workspace_properties.global_accelerator.mode #=> String, one of "ENABLED_AUTO", "DISABLED", "INHERITED"
    #   resp.failed_requests[0].workspace_request.workspace_properties.global_accelerator.preferred_protocol #=> String, one of "TCP", "NONE", "INHERITED"
    #   resp.failed_requests[0].workspace_request.tags #=> Array
    #   resp.failed_requests[0].workspace_request.tags[0].key #=> String
    #   resp.failed_requests[0].workspace_request.tags[0].value #=> String
    #   resp.failed_requests[0].workspace_request.workspace_name #=> String
    #   resp.failed_requests[0].workspace_request.ipv_6_address #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #   resp.pending_requests #=> Array
    #   resp.pending_requests[0].workspace_id #=> String
    #   resp.pending_requests[0].directory_id #=> String
    #   resp.pending_requests[0].user_name #=> String
    #   resp.pending_requests[0].ip_address #=> String
    #   resp.pending_requests[0].ipv_6_address #=> String
    #   resp.pending_requests[0].state #=> String, one of "PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"
    #   resp.pending_requests[0].bundle_id #=> String
    #   resp.pending_requests[0].subnet_id #=> String
    #   resp.pending_requests[0].error_message #=> String
    #   resp.pending_requests[0].error_code #=> String
    #   resp.pending_requests[0].computer_name #=> String
    #   resp.pending_requests[0].volume_encryption_key #=> String
    #   resp.pending_requests[0].user_volume_encryption_enabled #=> Boolean
    #   resp.pending_requests[0].root_volume_encryption_enabled #=> Boolean
    #   resp.pending_requests[0].workspace_name #=> String
    #   resp.pending_requests[0].workspace_properties.running_mode #=> String, one of "AUTO_STOP", "ALWAYS_ON", "MANUAL"
    #   resp.pending_requests[0].workspace_properties.running_mode_auto_stop_timeout_in_minutes #=> Integer
    #   resp.pending_requests[0].workspace_properties.root_volume_size_gib #=> Integer
    #   resp.pending_requests[0].workspace_properties.user_volume_size_gib #=> Integer
    #   resp.pending_requests[0].workspace_properties.compute_type_name #=> String, one of "VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"
    #   resp.pending_requests[0].workspace_properties.protocols #=> Array
    #   resp.pending_requests[0].workspace_properties.protocols[0] #=> String, one of "PCOIP", "WSP"
    #   resp.pending_requests[0].workspace_properties.operating_system_name #=> String, one of "AMAZON_LINUX_2", "UBUNTU_18_04", "UBUNTU_20_04", "UBUNTU_22_04", "UNKNOWN", "WINDOWS_10", "WINDOWS_11", "WINDOWS_7", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "RHEL_8", "ROCKY_8"
    #   resp.pending_requests[0].workspace_properties.global_accelerator.mode #=> String, one of "ENABLED_AUTO", "DISABLED", "INHERITED"
    #   resp.pending_requests[0].workspace_properties.global_accelerator.preferred_protocol #=> String, one of "TCP", "NONE", "INHERITED"
    #   resp.pending_requests[0].modification_states #=> Array
    #   resp.pending_requests[0].modification_states[0].resource #=> String, one of "ROOT_VOLUME", "USER_VOLUME", "COMPUTE_TYPE"
    #   resp.pending_requests[0].modification_states[0].state #=> String, one of "UPDATE_INITIATED", "UPDATE_IN_PROGRESS"
    #   resp.pending_requests[0].related_workspaces #=> Array
    #   resp.pending_requests[0].related_workspaces[0].workspace_id #=> String
    #   resp.pending_requests[0].related_workspaces[0].region #=> String
    #   resp.pending_requests[0].related_workspaces[0].state #=> String, one of "PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"
    #   resp.pending_requests[0].related_workspaces[0].type #=> String, one of "PRIMARY", "STANDBY"
    #   resp.pending_requests[0].data_replication_settings.data_replication #=> String, one of "NO_REPLICATION", "PRIMARY_AS_SOURCE"
    #   resp.pending_requests[0].data_replication_settings.recovery_snapshot_time #=> Time
    #   resp.pending_requests[0].standby_workspaces_properties #=> Array
    #   resp.pending_requests[0].standby_workspaces_properties[0].standby_workspace_id #=> String
    #   resp.pending_requests[0].standby_workspaces_properties[0].data_replication #=> String, one of "NO_REPLICATION", "PRIMARY_AS_SOURCE"
    #   resp.pending_requests[0].standby_workspaces_properties[0].recovery_snapshot_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateWorkspaces AWS API Documentation
    #
    # @overload create_workspaces(params = {})
    # @param [Hash] params ({})
    def create_workspaces(params = {}, options = {})
      req = build_request(:create_workspaces, params)
      req.send_request(options)
    end

    # Creates a pool of WorkSpaces.
    #
    # @option params [required, String] :pool_name
    #   The name of the pool.
    #
    # @option params [required, String] :description
    #   The pool description.
    #
    # @option params [required, String] :bundle_id
    #   The identifier of the bundle for the pool.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory for the pool.
    #
    # @option params [required, Types::Capacity] :capacity
    #   The user capacity of the pool.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the pool.
    #
    # @option params [Types::ApplicationSettingsRequest] :application_settings
    #   Indicates the application settings of the pool.
    #
    # @option params [Types::TimeoutSettings] :timeout_settings
    #   Indicates the timeout settings of the pool.
    #
    # @option params [String] :running_mode
    #   The running mode for the pool.
    #
    # @return [Types::CreateWorkspacesPoolResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkspacesPoolResult#workspaces_pool #workspaces_pool} => Types::WorkspacesPool
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspaces_pool({
    #     pool_name: "WorkspacesPoolName", # required
    #     description: "UpdateDescription", # required
    #     bundle_id: "BundleId", # required
    #     directory_id: "DirectoryId", # required
    #     capacity: { # required
    #       desired_user_sessions: 1, # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     application_settings: {
    #       status: "DISABLED", # required, accepts DISABLED, ENABLED
    #       settings_group: "SettingsGroup",
    #     },
    #     timeout_settings: {
    #       disconnect_timeout_in_seconds: 1,
    #       idle_disconnect_timeout_in_seconds: 1,
    #       max_user_duration_in_seconds: 1,
    #     },
    #     running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #   })
    #
    # @example Response structure
    #
    #   resp.workspaces_pool.pool_id #=> String
    #   resp.workspaces_pool.pool_arn #=> String
    #   resp.workspaces_pool.capacity_status.available_user_sessions #=> Integer
    #   resp.workspaces_pool.capacity_status.desired_user_sessions #=> Integer
    #   resp.workspaces_pool.capacity_status.actual_user_sessions #=> Integer
    #   resp.workspaces_pool.capacity_status.active_user_sessions #=> Integer
    #   resp.workspaces_pool.pool_name #=> String
    #   resp.workspaces_pool.description #=> String
    #   resp.workspaces_pool.state #=> String, one of "CREATING", "DELETING", "RUNNING", "STARTING", "STOPPED", "STOPPING", "UPDATING"
    #   resp.workspaces_pool.created_at #=> Time
    #   resp.workspaces_pool.bundle_id #=> String
    #   resp.workspaces_pool.directory_id #=> String
    #   resp.workspaces_pool.errors #=> Array
    #   resp.workspaces_pool.errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_IS_MISSING", "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "WORKSPACES_POOL_STOPPED", "WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR", "DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING", "DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE", "DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID", "DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND", "DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND", "DOMAIN_JOIN_ERROR_SECRET_INVALID", "BUNDLE_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INSUFFICIENT_PERMISSIONS_ERROR", "DEFAULT_OU_IS_MISSING"
    #   resp.workspaces_pool.errors[0].error_message #=> String
    #   resp.workspaces_pool.application_settings.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.workspaces_pool.application_settings.settings_group #=> String
    #   resp.workspaces_pool.application_settings.s3_bucket_name #=> String
    #   resp.workspaces_pool.timeout_settings.disconnect_timeout_in_seconds #=> Integer
    #   resp.workspaces_pool.timeout_settings.idle_disconnect_timeout_in_seconds #=> Integer
    #   resp.workspaces_pool.timeout_settings.max_user_duration_in_seconds #=> Integer
    #   resp.workspaces_pool.running_mode #=> String, one of "AUTO_STOP", "ALWAYS_ON"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/CreateWorkspacesPool AWS API Documentation
    #
    # @overload create_workspaces_pool(params = {})
    # @param [Hash] params ({})
    def create_workspaces_pool(params = {}, options = {})
      req = build_request(:create_workspaces_pool, params)
      req.send_request(options)
    end

    # Deletes the account link invitation.
    #
    # @option params [required, String] :link_id
    #   The identifier of the account link.
    #
    # @option params [String] :client_token
    #   A string of up to 64 ASCII characters that Amazon WorkSpaces uses to
    #   ensure idempotent creation.
    #
    # @return [Types::DeleteAccountLinkInvitationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAccountLinkInvitationResult#account_link #account_link} => Types::AccountLink
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_link_invitation({
    #     link_id: "LinkId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_link.account_link_id #=> String
    #   resp.account_link.account_link_status #=> String, one of "LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"
    #   resp.account_link.source_account_id #=> String
    #   resp.account_link.target_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteAccountLinkInvitation AWS API Documentation
    #
    # @overload delete_account_link_invitation(params = {})
    # @param [Hash] params ({})
    def delete_account_link_invitation(params = {}, options = {})
      req = build_request(:delete_account_link_invitation, params)
      req.send_request(options)
    end

    # Deletes customized client branding. Client branding allows you to
    # customize your WorkSpace's client login portal. You can tailor your
    # login portal company logo, the support email address, support link,
    # link to reset password, and a custom message for users trying to sign
    # in.
    #
    # After you delete your customized client branding, your login portal
    # reverts to the default client branding.
    #
    # @option params [required, String] :resource_id
    #   The directory identifier of the WorkSpace for which you want to delete
    #   client branding.
    #
    # @option params [required, Array<String>] :platforms
    #   The device type for which you want to delete client branding.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_client_branding({
    #     resource_id: "DirectoryId", # required
    #     platforms: ["DeviceTypeWindows"], # required, accepts DeviceTypeWindows, DeviceTypeOsx, DeviceTypeAndroid, DeviceTypeIos, DeviceTypeLinux, DeviceTypeWeb
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteClientBranding AWS API Documentation
    #
    # @overload delete_client_branding(params = {})
    # @param [Hash] params ({})
    def delete_client_branding(params = {}, options = {})
      req = build_request(:delete_client_branding, params)
      req.send_request(options)
    end

    # Deletes a client-add-in for Amazon Connect that is configured within a
    # directory.
    #
    # @option params [required, String] :add_in_id
    #   The identifier of the client add-in to delete.
    #
    # @option params [required, String] :resource_id
    #   The directory identifier for which the client add-in is configured.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connect_client_add_in({
    #     add_in_id: "AmazonUuid", # required
    #     resource_id: "DirectoryId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteConnectClientAddIn AWS API Documentation
    #
    # @overload delete_connect_client_add_in(params = {})
    # @param [Hash] params ({})
    def delete_connect_client_add_in(params = {}, options = {})
      req = build_request(:delete_connect_client_add_in, params)
      req.send_request(options)
    end

    # Deletes the specified connection alias. For more information, see [
    # Cross-Region Redirection for Amazon WorkSpaces][1].
    #
    # **If you will no longer be using a fully qualified domain name (FQDN)
    # as the registration code for your WorkSpaces users, you must take
    # certain precautions to prevent potential security issues.** For more
    # information, see [ Security Considerations if You Stop Using
    # Cross-Region Redirection][2].
    #
    # <note markdown="1"> To delete a connection alias that has been shared, the shared account
    # must first disassociate the connection alias from any directories it
    # has been associated with. Then you must unshare the connection alias
    # from the account it has been shared with. You can delete a connection
    # alias only after it is no longer shared with any accounts or
    # associated with any directories.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    # [2]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html#cross-region-redirection-security-considerations
    #
    # @option params [required, String] :alias_id
    #   The identifier of the connection alias to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection_alias({
    #     alias_id: "ConnectionAliasId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteConnectionAlias AWS API Documentation
    #
    # @overload delete_connection_alias(params = {})
    # @param [Hash] params ({})
    def delete_connection_alias(params = {}, options = {})
      req = build_request(:delete_connection_alias, params)
      req.send_request(options)
    end

    # Deletes the specified IP access control group.
    #
    # You cannot delete an IP access control group that is associated with a
    # directory.
    #
    # @option params [required, String] :group_id
    #   The identifier of the IP access control group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ip_group({
    #     group_id: "IpGroupId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteIpGroup AWS API Documentation
    #
    # @overload delete_ip_group(params = {})
    # @param [Hash] params ({})
    def delete_ip_group(params = {}, options = {})
      req = build_request(:delete_ip_group, params)
      req.send_request(options)
    end

    # Deletes the specified tags from the specified WorkSpaces resource.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the WorkSpaces resource. The supported resource
    #   types are WorkSpaces, registered directories, images, custom bundles,
    #   IP access control groups, and connection aliases.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     resource_id: "NonEmptyString", # required
    #     tag_keys: ["NonEmptyString"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Deletes the specified WorkSpace bundle. For more information about
    # deleting WorkSpace bundles, see [ Delete a Custom WorkSpaces Bundle or
    # Image][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/delete_bundle.html
    #
    # @option params [String] :bundle_id
    #   The identifier of the bundle.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace_bundle({
    #     bundle_id: "BundleId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteWorkspaceBundle AWS API Documentation
    #
    # @overload delete_workspace_bundle(params = {})
    # @param [Hash] params ({})
    def delete_workspace_bundle(params = {}, options = {})
      req = build_request(:delete_workspace_bundle, params)
      req.send_request(options)
    end

    # Deletes the specified image from your account. To delete an image, you
    # must first delete any bundles that are associated with the image and
    # unshare the image if it is shared with other accounts.
    #
    # @option params [required, String] :image_id
    #   The identifier of the image.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace_image({
    #     image_id: "WorkspaceImageId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeleteWorkspaceImage AWS API Documentation
    #
    # @overload delete_workspace_image(params = {})
    # @param [Hash] params ({})
    def delete_workspace_image(params = {}, options = {})
      req = build_request(:delete_workspace_image, params)
      req.send_request(options)
    end

    # Deploys associated applications to the specified WorkSpace
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the WorkSpace.
    #
    # @option params [Boolean] :force
    #   Indicates whether the force flag is applied for the specified
    #   WorkSpace. When the force flag is enabled, it allows previously failed
    #   deployments to be retried.
    #
    # @return [Types::DeployWorkspaceApplicationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeployWorkspaceApplicationsResult#deployment #deployment} => Types::WorkSpaceApplicationDeployment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deploy_workspace_applications({
    #     workspace_id: "WorkspaceId", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment.associations #=> Array
    #   resp.deployment.associations[0].associated_resource_id #=> String
    #   resp.deployment.associations[0].associated_resource_type #=> String, one of "APPLICATION"
    #   resp.deployment.associations[0].created #=> Time
    #   resp.deployment.associations[0].last_updated_time #=> Time
    #   resp.deployment.associations[0].state #=> String, one of "PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"
    #   resp.deployment.associations[0].state_reason.error_code #=> String, one of "ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"
    #   resp.deployment.associations[0].state_reason.error_message #=> String
    #   resp.deployment.associations[0].workspace_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeployWorkspaceApplications AWS API Documentation
    #
    # @overload deploy_workspace_applications(params = {})
    # @param [Hash] params ({})
    def deploy_workspace_applications(params = {}, options = {})
      req = build_request(:deploy_workspace_applications, params)
      req.send_request(options)
    end

    # Deregisters the specified directory. This operation is asynchronous
    # and returns before the WorkSpace directory is deregistered. If any
    # WorkSpaces are registered to this directory, you must remove them
    # before you can deregister the directory.
    #
    # <note markdown="1"> Simple AD and AD Connector are made available to you free of charge to
    # use with WorkSpaces. If there are no WorkSpaces being used with your
    # Simple AD or AD Connector directory for 30 consecutive days, this
    # directory will be automatically deregistered for use with Amazon
    # WorkSpaces, and you will be charged for this directory as per the
    # [Directory Service pricing terms][1].
    #
    #  To delete empty directories, see [ Delete the Directory for Your
    # WorkSpaces][2]. If you delete your Simple AD or AD Connector
    # directory, you can always create a new one when you want to start
    # using WorkSpaces again.
    #
    #  </note>
    #
    #
    #
    # [1]: http://aws.amazon.com/directoryservice/pricing/
    # [2]: https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory. If any WorkSpaces are registered to
    #   this directory, you must remove them before you deregister the
    #   directory, or you will receive an OperationNotSupportedException
    #   error.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_workspace_directory({
    #     directory_id: "DirectoryId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DeregisterWorkspaceDirectory AWS API Documentation
    #
    # @overload deregister_workspace_directory(params = {})
    # @param [Hash] params ({})
    def deregister_workspace_directory(params = {}, options = {})
      req = build_request(:deregister_workspace_directory, params)
      req.send_request(options)
    end

    # Retrieves a list that describes the configuration of Bring Your Own
    # License (BYOL) for the specified account.
    #
    # @return [Types::DescribeAccountResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountResult#dedicated_tenancy_support #dedicated_tenancy_support} => String
    #   * {Types::DescribeAccountResult#dedicated_tenancy_management_cidr_range #dedicated_tenancy_management_cidr_range} => String
    #   * {Types::DescribeAccountResult#dedicated_tenancy_account_type #dedicated_tenancy_account_type} => String
    #   * {Types::DescribeAccountResult#message #message} => String
    #
    # @example Response structure
    #
    #   resp.dedicated_tenancy_support #=> String, one of "ENABLED", "DISABLED"
    #   resp.dedicated_tenancy_management_cidr_range #=> String
    #   resp.dedicated_tenancy_account_type #=> String, one of "SOURCE_ACCOUNT", "TARGET_ACCOUNT"
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeAccount AWS API Documentation
    #
    # @overload describe_account(params = {})
    # @param [Hash] params ({})
    def describe_account(params = {}, options = {})
      req = build_request(:describe_account, params)
      req.send_request(options)
    end

    # Retrieves a list that describes modifications to the configuration of
    # Bring Your Own License (BYOL) for the specified account.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::DescribeAccountModificationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountModificationsResult#account_modifications #account_modifications} => Array&lt;Types::AccountModification&gt;
    #   * {Types::DescribeAccountModificationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_modifications({
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_modifications #=> Array
    #   resp.account_modifications[0].modification_state #=> String, one of "PENDING", "COMPLETED", "FAILED"
    #   resp.account_modifications[0].dedicated_tenancy_support #=> String, one of "ENABLED", "DISABLED"
    #   resp.account_modifications[0].dedicated_tenancy_management_cidr_range #=> String
    #   resp.account_modifications[0].start_time #=> Time
    #   resp.account_modifications[0].error_code #=> String
    #   resp.account_modifications[0].error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeAccountModifications AWS API Documentation
    #
    # @overload describe_account_modifications(params = {})
    # @param [Hash] params ({})
    def describe_account_modifications(params = {}, options = {})
      req = build_request(:describe_account_modifications, params)
      req.send_request(options)
    end

    # Describes the associations between the application and the specified
    # associated resources.
    #
    # @option params [Integer] :max_results
    #   The maximum number of associations to return.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @option params [required, String] :application_id
    #   The identifier of the specified application.
    #
    # @option params [required, Array<String>] :associated_resource_types
    #   The resource type of the associated resources.
    #
    # @return [Types::DescribeApplicationAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationAssociationsResult#associations #associations} => Array&lt;Types::ApplicationResourceAssociation&gt;
    #   * {Types::DescribeApplicationAssociationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_associations({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     application_id: "WorkSpaceApplicationId", # required
    #     associated_resource_types: ["WORKSPACE"], # required, accepts WORKSPACE, BUNDLE, IMAGE
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].application_id #=> String
    #   resp.associations[0].associated_resource_id #=> String
    #   resp.associations[0].associated_resource_type #=> String, one of "WORKSPACE", "BUNDLE", "IMAGE"
    #   resp.associations[0].created #=> Time
    #   resp.associations[0].last_updated_time #=> Time
    #   resp.associations[0].state #=> String, one of "PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"
    #   resp.associations[0].state_reason.error_code #=> String, one of "ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"
    #   resp.associations[0].state_reason.error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeApplicationAssociations AWS API Documentation
    #
    # @overload describe_application_associations(params = {})
    # @param [Hash] params ({})
    def describe_application_associations(params = {}, options = {})
      req = build_request(:describe_application_associations, params)
      req.send_request(options)
    end

    # Describes the specified applications by filtering based on their
    # compute types, license availability, operating systems, and owners.
    #
    # @option params [Array<String>] :application_ids
    #   The identifiers of one or more applications.
    #
    # @option params [Array<String>] :compute_type_names
    #   The compute types supported by the applications.
    #
    # @option params [String] :license_type
    #   The license availability for the applications.
    #
    # @option params [Array<String>] :operating_system_names
    #   The operating systems supported by the applications.
    #
    # @option params [String] :owner
    #   The owner of the applications.
    #
    # @option params [Integer] :max_results
    #   The maximum number of applications to return.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::DescribeApplicationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationsResult#applications #applications} => Array&lt;Types::WorkSpaceApplication&gt;
    #   * {Types::DescribeApplicationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_applications({
    #     application_ids: ["WorkSpaceApplicationId"],
    #     compute_type_names: ["VALUE"], # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GENERALPURPOSE_4XLARGE, GENERALPURPOSE_8XLARGE, GRAPHICSPRO, GRAPHICS_G4DN, GRAPHICSPRO_G4DN
    #     license_type: "LICENSED", # accepts LICENSED, UNLICENSED
    #     operating_system_names: ["AMAZON_LINUX_2"], # accepts AMAZON_LINUX_2, UBUNTU_18_04, UBUNTU_20_04, UBUNTU_22_04, UNKNOWN, WINDOWS_10, WINDOWS_11, WINDOWS_7, WINDOWS_SERVER_2016, WINDOWS_SERVER_2019, WINDOWS_SERVER_2022, RHEL_8, ROCKY_8
    #     owner: "WorkSpaceApplicationOwner",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.applications #=> Array
    #   resp.applications[0].application_id #=> String
    #   resp.applications[0].created #=> Time
    #   resp.applications[0].description #=> String
    #   resp.applications[0].license_type #=> String, one of "LICENSED", "UNLICENSED"
    #   resp.applications[0].name #=> String
    #   resp.applications[0].owner #=> String
    #   resp.applications[0].state #=> String, one of "PENDING", "ERROR", "AVAILABLE", "UNINSTALL_ONLY"
    #   resp.applications[0].supported_compute_type_names #=> Array
    #   resp.applications[0].supported_compute_type_names[0] #=> String, one of "VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"
    #   resp.applications[0].supported_operating_system_names #=> Array
    #   resp.applications[0].supported_operating_system_names[0] #=> String, one of "AMAZON_LINUX_2", "UBUNTU_18_04", "UBUNTU_20_04", "UBUNTU_22_04", "UNKNOWN", "WINDOWS_10", "WINDOWS_11", "WINDOWS_7", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "RHEL_8", "ROCKY_8"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeApplications AWS API Documentation
    #
    # @overload describe_applications(params = {})
    # @param [Hash] params ({})
    def describe_applications(params = {}, options = {})
      req = build_request(:describe_applications, params)
      req.send_request(options)
    end

    # Describes the associations between the applications and the specified
    # bundle.
    #
    # @option params [required, String] :bundle_id
    #   The identifier of the bundle.
    #
    # @option params [required, Array<String>] :associated_resource_types
    #   The resource types of the associated resource.
    #
    # @return [Types::DescribeBundleAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBundleAssociationsResult#associations #associations} => Array&lt;Types::BundleResourceAssociation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bundle_associations({
    #     bundle_id: "BundleId", # required
    #     associated_resource_types: ["APPLICATION"], # required, accepts APPLICATION
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].associated_resource_id #=> String
    #   resp.associations[0].associated_resource_type #=> String, one of "APPLICATION"
    #   resp.associations[0].bundle_id #=> String
    #   resp.associations[0].created #=> Time
    #   resp.associations[0].last_updated_time #=> Time
    #   resp.associations[0].state #=> String, one of "PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"
    #   resp.associations[0].state_reason.error_code #=> String, one of "ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"
    #   resp.associations[0].state_reason.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeBundleAssociations AWS API Documentation
    #
    # @overload describe_bundle_associations(params = {})
    # @param [Hash] params ({})
    def describe_bundle_associations(params = {}, options = {})
      req = build_request(:describe_bundle_associations, params)
      req.send_request(options)
    end

    # Describes the specified client branding. Client branding allows you to
    # customize the log in page of various device types for your users. You
    # can add your company logo, the support email address, support link,
    # link to reset password, and a custom message for users trying to sign
    # in.
    #
    # <note markdown="1"> Only device types that have branding information configured will be
    # shown in the response.
    #
    #  </note>
    #
    # @option params [required, String] :resource_id
    #   The directory identifier of the WorkSpace for which you want to view
    #   client branding information.
    #
    # @return [Types::DescribeClientBrandingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClientBrandingResult#device_type_windows #device_type_windows} => Types::DefaultClientBrandingAttributes
    #   * {Types::DescribeClientBrandingResult#device_type_osx #device_type_osx} => Types::DefaultClientBrandingAttributes
    #   * {Types::DescribeClientBrandingResult#device_type_android #device_type_android} => Types::DefaultClientBrandingAttributes
    #   * {Types::DescribeClientBrandingResult#device_type_ios #device_type_ios} => Types::IosClientBrandingAttributes
    #   * {Types::DescribeClientBrandingResult#device_type_linux #device_type_linux} => Types::DefaultClientBrandingAttributes
    #   * {Types::DescribeClientBrandingResult#device_type_web #device_type_web} => Types::DefaultClientBrandingAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_client_branding({
    #     resource_id: "DirectoryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_type_windows.logo_url #=> String
    #   resp.device_type_windows.support_email #=> String
    #   resp.device_type_windows.support_link #=> String
    #   resp.device_type_windows.forgot_password_link #=> String
    #   resp.device_type_windows.login_message #=> Hash
    #   resp.device_type_windows.login_message["ClientLocale"] #=> String
    #   resp.device_type_osx.logo_url #=> String
    #   resp.device_type_osx.support_email #=> String
    #   resp.device_type_osx.support_link #=> String
    #   resp.device_type_osx.forgot_password_link #=> String
    #   resp.device_type_osx.login_message #=> Hash
    #   resp.device_type_osx.login_message["ClientLocale"] #=> String
    #   resp.device_type_android.logo_url #=> String
    #   resp.device_type_android.support_email #=> String
    #   resp.device_type_android.support_link #=> String
    #   resp.device_type_android.forgot_password_link #=> String
    #   resp.device_type_android.login_message #=> Hash
    #   resp.device_type_android.login_message["ClientLocale"] #=> String
    #   resp.device_type_ios.logo_url #=> String
    #   resp.device_type_ios.logo_2x_url #=> String
    #   resp.device_type_ios.logo_3x_url #=> String
    #   resp.device_type_ios.support_email #=> String
    #   resp.device_type_ios.support_link #=> String
    #   resp.device_type_ios.forgot_password_link #=> String
    #   resp.device_type_ios.login_message #=> Hash
    #   resp.device_type_ios.login_message["ClientLocale"] #=> String
    #   resp.device_type_linux.logo_url #=> String
    #   resp.device_type_linux.support_email #=> String
    #   resp.device_type_linux.support_link #=> String
    #   resp.device_type_linux.forgot_password_link #=> String
    #   resp.device_type_linux.login_message #=> Hash
    #   resp.device_type_linux.login_message["ClientLocale"] #=> String
    #   resp.device_type_web.logo_url #=> String
    #   resp.device_type_web.support_email #=> String
    #   resp.device_type_web.support_link #=> String
    #   resp.device_type_web.forgot_password_link #=> String
    #   resp.device_type_web.login_message #=> Hash
    #   resp.device_type_web.login_message["ClientLocale"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeClientBranding AWS API Documentation
    #
    # @overload describe_client_branding(params = {})
    # @param [Hash] params ({})
    def describe_client_branding(params = {}, options = {})
      req = build_request(:describe_client_branding, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified Amazon
    # WorkSpaces clients.
    #
    # @option params [required, Array<String>] :resource_ids
    #   The resource identifier, in the form of directory IDs.
    #
    # @return [Types::DescribeClientPropertiesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClientPropertiesResult#client_properties_list #client_properties_list} => Array&lt;Types::ClientPropertiesResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_client_properties({
    #     resource_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_properties_list #=> Array
    #   resp.client_properties_list[0].resource_id #=> String
    #   resp.client_properties_list[0].client_properties.reconnect_enabled #=> String, one of "ENABLED", "DISABLED"
    #   resp.client_properties_list[0].client_properties.log_upload_enabled #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeClientProperties AWS API Documentation
    #
    # @overload describe_client_properties(params = {})
    # @param [Hash] params ({})
    def describe_client_properties(params = {}, options = {})
      req = build_request(:describe_client_properties, params)
      req.send_request(options)
    end

    # Retrieves a list of Amazon Connect client add-ins that have been
    # created.
    #
    # @option params [required, String] :resource_id
    #   The directory identifier for which the client add-in is configured.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return.
    #
    # @return [Types::DescribeConnectClientAddInsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectClientAddInsResult#add_ins #add_ins} => Array&lt;Types::ConnectClientAddIn&gt;
    #   * {Types::DescribeConnectClientAddInsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connect_client_add_ins({
    #     resource_id: "DirectoryId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.add_ins #=> Array
    #   resp.add_ins[0].add_in_id #=> String
    #   resp.add_ins[0].resource_id #=> String
    #   resp.add_ins[0].name #=> String
    #   resp.add_ins[0].url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeConnectClientAddIns AWS API Documentation
    #
    # @overload describe_connect_client_add_ins(params = {})
    # @param [Hash] params ({})
    def describe_connect_client_add_ins(params = {}, options = {})
      req = build_request(:describe_connect_client_add_ins, params)
      req.send_request(options)
    end

    # Describes the permissions that the owner of a connection alias has
    # granted to another Amazon Web Services account for the specified
    # connection alias. For more information, see [ Cross-Region Redirection
    # for Amazon WorkSpaces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    #
    # @option params [required, String] :alias_id
    #   The identifier of the connection alias.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::DescribeConnectionAliasPermissionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectionAliasPermissionsResult#alias_id #alias_id} => String
    #   * {Types::DescribeConnectionAliasPermissionsResult#connection_alias_permissions #connection_alias_permissions} => Array&lt;Types::ConnectionAliasPermission&gt;
    #   * {Types::DescribeConnectionAliasPermissionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connection_alias_permissions({
    #     alias_id: "ConnectionAliasId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.alias_id #=> String
    #   resp.connection_alias_permissions #=> Array
    #   resp.connection_alias_permissions[0].shared_account_id #=> String
    #   resp.connection_alias_permissions[0].allow_association #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeConnectionAliasPermissions AWS API Documentation
    #
    # @overload describe_connection_alias_permissions(params = {})
    # @param [Hash] params ({})
    def describe_connection_alias_permissions(params = {}, options = {})
      req = build_request(:describe_connection_alias_permissions, params)
      req.send_request(options)
    end

    # Retrieves a list that describes the connection aliases used for
    # cross-Region redirection. For more information, see [ Cross-Region
    # Redirection for Amazon WorkSpaces][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    #
    # @option params [Array<String>] :alias_ids
    #   The identifiers of the connection aliases to describe.
    #
    # @option params [String] :resource_id
    #   The identifier of the directory associated with the connection alias.
    #
    # @option params [Integer] :limit
    #   The maximum number of connection aliases to return.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::DescribeConnectionAliasesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConnectionAliasesResult#connection_aliases #connection_aliases} => Array&lt;Types::ConnectionAlias&gt;
    #   * {Types::DescribeConnectionAliasesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connection_aliases({
    #     alias_ids: ["ConnectionAliasId"],
    #     resource_id: "NonEmptyString",
    #     limit: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_aliases #=> Array
    #   resp.connection_aliases[0].connection_string #=> String
    #   resp.connection_aliases[0].alias_id #=> String
    #   resp.connection_aliases[0].state #=> String, one of "CREATING", "CREATED", "DELETING"
    #   resp.connection_aliases[0].owner_account_id #=> String
    #   resp.connection_aliases[0].associations #=> Array
    #   resp.connection_aliases[0].associations[0].association_status #=> String, one of "NOT_ASSOCIATED", "ASSOCIATED_WITH_OWNER_ACCOUNT", "ASSOCIATED_WITH_SHARED_ACCOUNT", "PENDING_ASSOCIATION", "PENDING_DISASSOCIATION"
    #   resp.connection_aliases[0].associations[0].associated_account_id #=> String
    #   resp.connection_aliases[0].associations[0].resource_id #=> String
    #   resp.connection_aliases[0].associations[0].connection_identifier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeConnectionAliases AWS API Documentation
    #
    # @overload describe_connection_aliases(params = {})
    # @param [Hash] params ({})
    def describe_connection_aliases(params = {}, options = {})
      req = build_request(:describe_connection_aliases, params)
      req.send_request(options)
    end

    # Retrieves information about a WorkSpace BYOL image being imported via
    # ImportCustomWorkspaceImage.
    #
    # @option params [required, String] :image_id
    #   The identifier of the WorkSpace image.
    #
    # @return [Types::DescribeCustomWorkspaceImageImportResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCustomWorkspaceImageImportResult#image_id #image_id} => String
    #   * {Types::DescribeCustomWorkspaceImageImportResult#infrastructure_configuration_arn #infrastructure_configuration_arn} => String
    #   * {Types::DescribeCustomWorkspaceImageImportResult#state #state} => String
    #   * {Types::DescribeCustomWorkspaceImageImportResult#created #created} => Time
    #   * {Types::DescribeCustomWorkspaceImageImportResult#last_updated_time #last_updated_time} => Time
    #   * {Types::DescribeCustomWorkspaceImageImportResult#image_source #image_source} => Types::ImageSourceIdentifier
    #   * {Types::DescribeCustomWorkspaceImageImportResult#image_builder_instance_id #image_builder_instance_id} => String
    #   * {Types::DescribeCustomWorkspaceImageImportResult#error_details #error_details} => Array&lt;Types::CustomWorkspaceImageImportErrorDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_workspace_image_import({
    #     image_id: "WorkspaceImageId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.image_id #=> String
    #   resp.infrastructure_configuration_arn #=> String
    #   resp.state #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "ERROR"
    #   resp.created #=> Time
    #   resp.last_updated_time #=> Time
    #   resp.image_source.ec2_import_task_id #=> String
    #   resp.image_source.image_build_version_arn #=> String
    #   resp.image_source.ec2_image_id #=> String
    #   resp.image_builder_instance_id #=> String
    #   resp.error_details #=> Array
    #   resp.error_details[0].error_code #=> String
    #   resp.error_details[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeCustomWorkspaceImageImport AWS API Documentation
    #
    # @overload describe_custom_workspace_image_import(params = {})
    # @param [Hash] params ({})
    def describe_custom_workspace_image_import(params = {}, options = {})
      req = build_request(:describe_custom_workspace_image_import, params)
      req.send_request(options)
    end

    # Describes the associations between the applications and the specified
    # image.
    #
    # @option params [required, String] :image_id
    #   The identifier of the image.
    #
    # @option params [required, Array<String>] :associated_resource_types
    #   The resource types of the associated resource.
    #
    # @return [Types::DescribeImageAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImageAssociationsResult#associations #associations} => Array&lt;Types::ImageResourceAssociation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_associations({
    #     image_id: "WorkspaceImageId", # required
    #     associated_resource_types: ["APPLICATION"], # required, accepts APPLICATION
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].associated_resource_id #=> String
    #   resp.associations[0].associated_resource_type #=> String, one of "APPLICATION"
    #   resp.associations[0].created #=> Time
    #   resp.associations[0].last_updated_time #=> Time
    #   resp.associations[0].image_id #=> String
    #   resp.associations[0].state #=> String, one of "PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"
    #   resp.associations[0].state_reason.error_code #=> String, one of "ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"
    #   resp.associations[0].state_reason.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeImageAssociations AWS API Documentation
    #
    # @overload describe_image_associations(params = {})
    # @param [Hash] params ({})
    def describe_image_associations(params = {}, options = {})
      req = build_request(:describe_image_associations, params)
      req.send_request(options)
    end

    # Describes one or more of your IP access control groups.
    #
    # @option params [Array<String>] :group_ids
    #   The identifiers of one or more IP access control groups.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return.
    #
    # @return [Types::DescribeIpGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIpGroupsResult#result #result} => Array&lt;Types::WorkspacesIpGroup&gt;
    #   * {Types::DescribeIpGroupsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ip_groups({
    #     group_ids: ["IpGroupId"],
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.result #=> Array
    #   resp.result[0].group_id #=> String
    #   resp.result[0].group_name #=> String
    #   resp.result[0].group_desc #=> String
    #   resp.result[0].user_rules #=> Array
    #   resp.result[0].user_rules[0].ip_rule #=> String
    #   resp.result[0].user_rules[0].rule_desc #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeIpGroups AWS API Documentation
    #
    # @overload describe_ip_groups(params = {})
    # @param [Hash] params ({})
    def describe_ip_groups(params = {}, options = {})
      req = build_request(:describe_ip_groups, params)
      req.send_request(options)
    end

    # Describes the specified tags for the specified WorkSpaces resource.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the WorkSpaces resource. The supported resource
    #   types are WorkSpaces, registered directories, images, custom bundles,
    #   IP access control groups, and connection aliases.
    #
    # @return [Types::DescribeTagsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagsResult#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     resource_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Describes the associations betweens applications and the specified
    # WorkSpace.
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the WorkSpace.
    #
    # @option params [required, Array<String>] :associated_resource_types
    #   The resource types of the associated resources.
    #
    # @return [Types::DescribeWorkspaceAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceAssociationsResult#associations #associations} => Array&lt;Types::WorkspaceResourceAssociation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_associations({
    #     workspace_id: "WorkspaceId", # required
    #     associated_resource_types: ["APPLICATION"], # required, accepts APPLICATION
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].associated_resource_id #=> String
    #   resp.associations[0].associated_resource_type #=> String, one of "APPLICATION"
    #   resp.associations[0].created #=> Time
    #   resp.associations[0].last_updated_time #=> Time
    #   resp.associations[0].state #=> String, one of "PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"
    #   resp.associations[0].state_reason.error_code #=> String, one of "ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"
    #   resp.associations[0].state_reason.error_message #=> String
    #   resp.associations[0].workspace_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceAssociations AWS API Documentation
    #
    # @overload describe_workspace_associations(params = {})
    # @param [Hash] params ({})
    def describe_workspace_associations(params = {}, options = {})
      req = build_request(:describe_workspace_associations, params)
      req.send_request(options)
    end

    # Retrieves a list that describes the available WorkSpace bundles.
    #
    # You can filter the results using either bundle ID or owner, but not
    # both.
    #
    # @option params [Array<String>] :bundle_ids
    #   The identifiers of the bundles. You cannot combine this parameter with
    #   any other filter.
    #
    # @option params [String] :owner
    #   The owner of the bundles. You cannot combine this parameter with any
    #   other filter.
    #
    #   To describe the bundles provided by Amazon Web Services, specify
    #   `AMAZON`. To describe the bundles that belong to your account, don't
    #   specify a value.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. (You received this token from a
    #   previous call.)
    #
    # @return [Types::DescribeWorkspaceBundlesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceBundlesResult#bundles #bundles} => Array&lt;Types::WorkspaceBundle&gt;
    #   * {Types::DescribeWorkspaceBundlesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_bundles({
    #     bundle_ids: ["BundleId"],
    #     owner: "BundleOwner",
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.bundles #=> Array
    #   resp.bundles[0].bundle_id #=> String
    #   resp.bundles[0].name #=> String
    #   resp.bundles[0].owner #=> String
    #   resp.bundles[0].description #=> String
    #   resp.bundles[0].image_id #=> String
    #   resp.bundles[0].root_storage.capacity #=> String
    #   resp.bundles[0].user_storage.capacity #=> String
    #   resp.bundles[0].compute_type.name #=> String, one of "VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"
    #   resp.bundles[0].last_updated_time #=> Time
    #   resp.bundles[0].creation_time #=> Time
    #   resp.bundles[0].state #=> String, one of "AVAILABLE", "PENDING", "ERROR"
    #   resp.bundles[0].bundle_type #=> String, one of "REGULAR", "STANDBY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceBundles AWS API Documentation
    #
    # @overload describe_workspace_bundles(params = {})
    # @param [Hash] params ({})
    def describe_workspace_bundles(params = {}, options = {})
      req = build_request(:describe_workspace_bundles, params)
      req.send_request(options)
    end

    # Describes the available directories that are registered with Amazon
    # WorkSpaces.
    #
    # @option params [Array<String>] :directory_ids
    #   The identifiers of the directories. If the value is null, all
    #   directories are retrieved.
    #
    # @option params [Array<String>] :workspace_directory_names
    #   The names of the WorkSpace directories.
    #
    # @option params [Integer] :limit
    #   The maximum number of directories to return.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @option params [Array<Types::DescribeWorkspaceDirectoriesFilter>] :filters
    #   The filter condition for the WorkSpaces.
    #
    # @return [Types::DescribeWorkspaceDirectoriesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceDirectoriesResult#directories #directories} => Array&lt;Types::WorkspaceDirectory&gt;
    #   * {Types::DescribeWorkspaceDirectoriesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_directories({
    #     directory_ids: ["DirectoryId"],
    #     workspace_directory_names: ["WorkspaceDirectoryName"],
    #     limit: 1,
    #     next_token: "PaginationToken",
    #     filters: [
    #       {
    #         name: "USER_IDENTITY_TYPE", # required, accepts USER_IDENTITY_TYPE, WORKSPACE_TYPE
    #         values: ["DescribeWorkspaceDirectoriesFilterValue"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.directories #=> Array
    #   resp.directories[0].directory_id #=> String
    #   resp.directories[0].alias #=> String
    #   resp.directories[0].directory_name #=> String
    #   resp.directories[0].registration_code #=> String
    #   resp.directories[0].subnet_ids #=> Array
    #   resp.directories[0].subnet_ids[0] #=> String
    #   resp.directories[0].dns_ip_addresses #=> Array
    #   resp.directories[0].dns_ip_addresses[0] #=> String
    #   resp.directories[0].dns_ipv_6_addresses #=> Array
    #   resp.directories[0].dns_ipv_6_addresses[0] #=> String
    #   resp.directories[0].customer_user_name #=> String
    #   resp.directories[0].iam_role_id #=> String
    #   resp.directories[0].directory_type #=> String, one of "SIMPLE_AD", "AD_CONNECTOR", "CUSTOMER_MANAGED", "AWS_IAM_IDENTITY_CENTER"
    #   resp.directories[0].workspace_security_group_id #=> String
    #   resp.directories[0].state #=> String, one of "REGISTERING", "REGISTERED", "DEREGISTERING", "DEREGISTERED", "ERROR"
    #   resp.directories[0].workspace_creation_properties.enable_internet_access #=> Boolean
    #   resp.directories[0].workspace_creation_properties.default_ou #=> String
    #   resp.directories[0].workspace_creation_properties.custom_security_group_id #=> String
    #   resp.directories[0].workspace_creation_properties.user_enabled_as_local_administrator #=> Boolean
    #   resp.directories[0].workspace_creation_properties.enable_maintenance_mode #=> Boolean
    #   resp.directories[0].workspace_creation_properties.instance_iam_role_arn #=> String
    #   resp.directories[0].ip_group_ids #=> Array
    #   resp.directories[0].ip_group_ids[0] #=> String
    #   resp.directories[0].workspace_access_properties.device_type_windows #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_osx #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_web #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_ios #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_android #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_chrome_os #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_zero_client #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_linux #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.device_type_work_spaces_thin_client #=> String, one of "ALLOW", "DENY"
    #   resp.directories[0].workspace_access_properties.access_endpoint_config.access_endpoints #=> Array
    #   resp.directories[0].workspace_access_properties.access_endpoint_config.access_endpoints[0].access_endpoint_type #=> String, one of "STREAMING_WSP"
    #   resp.directories[0].workspace_access_properties.access_endpoint_config.access_endpoints[0].vpc_endpoint_id #=> String
    #   resp.directories[0].workspace_access_properties.access_endpoint_config.internet_fallback_protocols #=> Array
    #   resp.directories[0].workspace_access_properties.access_endpoint_config.internet_fallback_protocols[0] #=> String, one of "PCOIP"
    #   resp.directories[0].tenancy #=> String, one of "DEDICATED", "SHARED"
    #   resp.directories[0].selfservice_permissions.restart_workspace #=> String, one of "ENABLED", "DISABLED"
    #   resp.directories[0].selfservice_permissions.increase_volume_size #=> String, one of "ENABLED", "DISABLED"
    #   resp.directories[0].selfservice_permissions.change_compute_type #=> String, one of "ENABLED", "DISABLED"
    #   resp.directories[0].selfservice_permissions.switch_running_mode #=> String, one of "ENABLED", "DISABLED"
    #   resp.directories[0].selfservice_permissions.rebuild_workspace #=> String, one of "ENABLED", "DISABLED"
    #   resp.directories[0].saml_properties.status #=> String, one of "DISABLED", "ENABLED", "ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK"
    #   resp.directories[0].saml_properties.user_access_url #=> String
    #   resp.directories[0].saml_properties.relay_state_parameter_name #=> String
    #   resp.directories[0].certificate_based_auth_properties.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.directories[0].certificate_based_auth_properties.certificate_authority_arn #=> String
    #   resp.directories[0].endpoint_encryption_mode #=> String, one of "STANDARD_TLS", "FIPS_VALIDATED"
    #   resp.directories[0].microsoft_entra_config.tenant_id #=> String
    #   resp.directories[0].microsoft_entra_config.application_config_secret_arn #=> String
    #   resp.directories[0].workspace_directory_name #=> String
    #   resp.directories[0].workspace_directory_description #=> String
    #   resp.directories[0].user_identity_type #=> String, one of "CUSTOMER_MANAGED", "AWS_DIRECTORY_SERVICE", "AWS_IAM_IDENTITY_CENTER"
    #   resp.directories[0].workspace_type #=> String, one of "PERSONAL", "POOLS"
    #   resp.directories[0].idc_config.instance_arn #=> String
    #   resp.directories[0].idc_config.application_arn #=> String
    #   resp.directories[0].active_directory_config.domain_name #=> String
    #   resp.directories[0].active_directory_config.service_account_secret_arn #=> String
    #   resp.directories[0].streaming_properties.streaming_experience_preferred_protocol #=> String, one of "TCP", "UDP"
    #   resp.directories[0].streaming_properties.user_settings #=> Array
    #   resp.directories[0].streaming_properties.user_settings[0].action #=> String, one of "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", "CLIPBOARD_COPY_TO_LOCAL_DEVICE", "PRINTING_TO_LOCAL_DEVICE", "SMART_CARD"
    #   resp.directories[0].streaming_properties.user_settings[0].permission #=> String, one of "ENABLED", "DISABLED"
    #   resp.directories[0].streaming_properties.user_settings[0].maximum_length #=> Integer
    #   resp.directories[0].streaming_properties.storage_connectors #=> Array
    #   resp.directories[0].streaming_properties.storage_connectors[0].connector_type #=> String, one of "HOME_FOLDER"
    #   resp.directories[0].streaming_properties.storage_connectors[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.directories[0].streaming_properties.global_accelerator.mode #=> String, one of "ENABLED_AUTO", "DISABLED"
    #   resp.directories[0].streaming_properties.global_accelerator.preferred_protocol #=> String, one of "TCP", "NONE"
    #   resp.directories[0].error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceDirectories AWS API Documentation
    #
    # @overload describe_workspace_directories(params = {})
    # @param [Hash] params ({})
    def describe_workspace_directories(params = {}, options = {})
      req = build_request(:describe_workspace_directories, params)
      req.send_request(options)
    end

    # Describes the permissions that the owner of an image has granted to
    # other Amazon Web Services accounts for an image.
    #
    # @option params [required, String] :image_id
    #   The identifier of the image.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return.
    #
    # @return [Types::DescribeWorkspaceImagePermissionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceImagePermissionsResult#image_id #image_id} => String
    #   * {Types::DescribeWorkspaceImagePermissionsResult#image_permissions #image_permissions} => Array&lt;Types::ImagePermission&gt;
    #   * {Types::DescribeWorkspaceImagePermissionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_image_permissions({
    #     image_id: "WorkspaceImageId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.image_id #=> String
    #   resp.image_permissions #=> Array
    #   resp.image_permissions[0].shared_account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceImagePermissions AWS API Documentation
    #
    # @overload describe_workspace_image_permissions(params = {})
    # @param [Hash] params ({})
    def describe_workspace_image_permissions(params = {}, options = {})
      req = build_request(:describe_workspace_image_permissions, params)
      req.send_request(options)
    end

    # Retrieves a list that describes one or more specified images, if the
    # image identifiers are provided. Otherwise, all images in the account
    # are described.
    #
    # @option params [Array<String>] :image_ids
    #   The identifier of the image.
    #
    # @option params [String] :image_type
    #   The type (owned or shared) of the image.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return.
    #
    # @return [Types::DescribeWorkspaceImagesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceImagesResult#images #images} => Array&lt;Types::WorkspaceImage&gt;
    #   * {Types::DescribeWorkspaceImagesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_images({
    #     image_ids: ["WorkspaceImageId"],
    #     image_type: "OWNED", # accepts OWNED, SHARED
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.images #=> Array
    #   resp.images[0].image_id #=> String
    #   resp.images[0].name #=> String
    #   resp.images[0].description #=> String
    #   resp.images[0].operating_system.type #=> String, one of "WINDOWS", "LINUX"
    #   resp.images[0].state #=> String, one of "AVAILABLE", "PENDING", "ERROR"
    #   resp.images[0].required_tenancy #=> String, one of "DEFAULT", "DEDICATED"
    #   resp.images[0].error_code #=> String
    #   resp.images[0].error_message #=> String
    #   resp.images[0].created #=> Time
    #   resp.images[0].owner_account_id #=> String
    #   resp.images[0].updates.update_available #=> Boolean
    #   resp.images[0].updates.description #=> String
    #   resp.images[0].error_details #=> Array
    #   resp.images[0].error_details[0].error_code #=> String, one of "OutdatedPowershellVersion", "OfficeInstalled", "PCoIPAgentInstalled", "WindowsUpdatesEnabled", "AutoMountDisabled", "WorkspacesBYOLAccountNotFound", "WorkspacesBYOLAccountDisabled", "DHCPDisabled", "DiskFreeSpace", "AdditionalDrivesAttached", "OSNotSupported", "DomainJoined", "AzureDomainJoined", "FirewallEnabled", "VMWareToolsInstalled", "DiskSizeExceeded", "IncompatiblePartitioning", "PendingReboot", "AutoLogonEnabled", "RealTimeUniversalDisabled", "MultipleBootPartition", "Requires64BitOS", "ZeroRearmCount", "InPlaceUpgrade", "AntiVirusInstalled", "UEFINotSupported", "UnknownError", "AppXPackagesInstalled", "ReservedStorageInUse", "AdditionalDrivesPresent", "WindowsUpdatesRequired", "SysPrepFileMissing", "UserProfileMissing", "InsufficientDiskSpace", "EnvironmentVariablesPathMissingEntries", "DomainAccountServicesFound", "InvalidIp", "RemoteDesktopServicesDisabled", "WindowsModulesInstallerDisabled", "AmazonSsmAgentEnabled", "UnsupportedSecurityProtocol", "MultipleUserProfiles", "StagedAppxPackage", "UnsupportedOsUpgrade", "InsufficientRearmCount", "ProtocolOSIncompatibility", "MemoryIntegrityIncompatibility", "RestrictedDriveLetterInUse"
    #   resp.images[0].error_details[0].error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceImages AWS API Documentation
    #
    # @overload describe_workspace_images(params = {})
    # @param [Hash] params ({})
    def describe_workspace_images(params = {}, options = {})
      req = build_request(:describe_workspace_images, params)
      req.send_request(options)
    end

    # Describes the snapshots for the specified WorkSpace.
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the WorkSpace.
    #
    # @return [Types::DescribeWorkspaceSnapshotsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspaceSnapshotsResult#rebuild_snapshots #rebuild_snapshots} => Array&lt;Types::Snapshot&gt;
    #   * {Types::DescribeWorkspaceSnapshotsResult#restore_snapshots #restore_snapshots} => Array&lt;Types::Snapshot&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_snapshots({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rebuild_snapshots #=> Array
    #   resp.rebuild_snapshots[0].snapshot_time #=> Time
    #   resp.restore_snapshots #=> Array
    #   resp.restore_snapshots[0].snapshot_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaceSnapshots AWS API Documentation
    #
    # @overload describe_workspace_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_workspace_snapshots(params = {}, options = {})
      req = build_request(:describe_workspace_snapshots, params)
      req.send_request(options)
    end

    # Describes the specified WorkSpaces.
    #
    # You can filter the results by using the bundle identifier, directory
    # identifier, or owner, but you can specify only one filter at a time.
    #
    # @option params [Array<String>] :workspace_ids
    #   The identifiers of the WorkSpaces. You cannot combine this parameter
    #   with any other filter.
    #
    #   Because the CreateWorkspaces operation is asynchronous, the identifier
    #   it returns is not immediately available. If you immediately call
    #   DescribeWorkspaces with this identifier, no information is returned.
    #
    # @option params [String] :directory_id
    #   The identifier of the directory. In addition, you can optionally
    #   specify a specific directory user (see `UserName`). You cannot combine
    #   this parameter with any other filter.
    #
    # @option params [String] :user_name
    #   The name of the directory user. You must specify this parameter with
    #   `DirectoryId`.
    #
    # @option params [String] :bundle_id
    #   The identifier of the bundle. All WorkSpaces that are created from
    #   this bundle are retrieved. You cannot combine this parameter with any
    #   other filter.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @option params [String] :workspace_name
    #   The name of the user-decoupled WorkSpace.
    #
    # @return [Types::DescribeWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspacesResult#workspaces #workspaces} => Array&lt;Types::Workspace&gt;
    #   * {Types::DescribeWorkspacesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspaces({
    #     workspace_ids: ["WorkspaceId"],
    #     directory_id: "DirectoryId",
    #     user_name: "UserName",
    #     bundle_id: "BundleId",
    #     limit: 1,
    #     next_token: "PaginationToken",
    #     workspace_name: "WorkspaceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.workspaces #=> Array
    #   resp.workspaces[0].workspace_id #=> String
    #   resp.workspaces[0].directory_id #=> String
    #   resp.workspaces[0].user_name #=> String
    #   resp.workspaces[0].ip_address #=> String
    #   resp.workspaces[0].ipv_6_address #=> String
    #   resp.workspaces[0].state #=> String, one of "PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"
    #   resp.workspaces[0].bundle_id #=> String
    #   resp.workspaces[0].subnet_id #=> String
    #   resp.workspaces[0].error_message #=> String
    #   resp.workspaces[0].error_code #=> String
    #   resp.workspaces[0].computer_name #=> String
    #   resp.workspaces[0].volume_encryption_key #=> String
    #   resp.workspaces[0].user_volume_encryption_enabled #=> Boolean
    #   resp.workspaces[0].root_volume_encryption_enabled #=> Boolean
    #   resp.workspaces[0].workspace_name #=> String
    #   resp.workspaces[0].workspace_properties.running_mode #=> String, one of "AUTO_STOP", "ALWAYS_ON", "MANUAL"
    #   resp.workspaces[0].workspace_properties.running_mode_auto_stop_timeout_in_minutes #=> Integer
    #   resp.workspaces[0].workspace_properties.root_volume_size_gib #=> Integer
    #   resp.workspaces[0].workspace_properties.user_volume_size_gib #=> Integer
    #   resp.workspaces[0].workspace_properties.compute_type_name #=> String, one of "VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GENERALPURPOSE_4XLARGE", "GENERALPURPOSE_8XLARGE", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"
    #   resp.workspaces[0].workspace_properties.protocols #=> Array
    #   resp.workspaces[0].workspace_properties.protocols[0] #=> String, one of "PCOIP", "WSP"
    #   resp.workspaces[0].workspace_properties.operating_system_name #=> String, one of "AMAZON_LINUX_2", "UBUNTU_18_04", "UBUNTU_20_04", "UBUNTU_22_04", "UNKNOWN", "WINDOWS_10", "WINDOWS_11", "WINDOWS_7", "WINDOWS_SERVER_2016", "WINDOWS_SERVER_2019", "WINDOWS_SERVER_2022", "RHEL_8", "ROCKY_8"
    #   resp.workspaces[0].workspace_properties.global_accelerator.mode #=> String, one of "ENABLED_AUTO", "DISABLED", "INHERITED"
    #   resp.workspaces[0].workspace_properties.global_accelerator.preferred_protocol #=> String, one of "TCP", "NONE", "INHERITED"
    #   resp.workspaces[0].modification_states #=> Array
    #   resp.workspaces[0].modification_states[0].resource #=> String, one of "ROOT_VOLUME", "USER_VOLUME", "COMPUTE_TYPE"
    #   resp.workspaces[0].modification_states[0].state #=> String, one of "UPDATE_INITIATED", "UPDATE_IN_PROGRESS"
    #   resp.workspaces[0].related_workspaces #=> Array
    #   resp.workspaces[0].related_workspaces[0].workspace_id #=> String
    #   resp.workspaces[0].related_workspaces[0].region #=> String
    #   resp.workspaces[0].related_workspaces[0].state #=> String, one of "PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"
    #   resp.workspaces[0].related_workspaces[0].type #=> String, one of "PRIMARY", "STANDBY"
    #   resp.workspaces[0].data_replication_settings.data_replication #=> String, one of "NO_REPLICATION", "PRIMARY_AS_SOURCE"
    #   resp.workspaces[0].data_replication_settings.recovery_snapshot_time #=> Time
    #   resp.workspaces[0].standby_workspaces_properties #=> Array
    #   resp.workspaces[0].standby_workspaces_properties[0].standby_workspace_id #=> String
    #   resp.workspaces[0].standby_workspaces_properties[0].data_replication #=> String, one of "NO_REPLICATION", "PRIMARY_AS_SOURCE"
    #   resp.workspaces[0].standby_workspaces_properties[0].recovery_snapshot_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspaces AWS API Documentation
    #
    # @overload describe_workspaces(params = {})
    # @param [Hash] params ({})
    def describe_workspaces(params = {}, options = {})
      req = build_request(:describe_workspaces, params)
      req.send_request(options)
    end

    # Describes the connection status of the specified WorkSpaces.
    #
    # @option params [Array<String>] :workspace_ids
    #   The identifiers of the WorkSpaces. You can specify up to 25
    #   WorkSpaces.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::DescribeWorkspacesConnectionStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspacesConnectionStatusResult#workspaces_connection_status #workspaces_connection_status} => Array&lt;Types::WorkspaceConnectionStatus&gt;
    #   * {Types::DescribeWorkspacesConnectionStatusResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspaces_connection_status({
    #     workspace_ids: ["WorkspaceId"],
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workspaces_connection_status #=> Array
    #   resp.workspaces_connection_status[0].workspace_id #=> String
    #   resp.workspaces_connection_status[0].connection_state #=> String, one of "CONNECTED", "DISCONNECTED", "UNKNOWN"
    #   resp.workspaces_connection_status[0].connection_state_check_timestamp #=> Time
    #   resp.workspaces_connection_status[0].last_known_user_connection_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesConnectionStatus AWS API Documentation
    #
    # @overload describe_workspaces_connection_status(params = {})
    # @param [Hash] params ({})
    def describe_workspaces_connection_status(params = {}, options = {})
      req = build_request(:describe_workspaces_connection_status, params)
      req.send_request(options)
    end

    # Retrieves a list that describes the streaming sessions for a specified
    # pool.
    #
    # @option params [required, String] :pool_id
    #   The identifier of the pool.
    #
    # @option params [String] :user_id
    #   The identifier of the user.
    #
    # @option params [Integer] :limit
    #   The maximum size of each page of results. The default value is 20 and
    #   the maximum value is 50.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::DescribeWorkspacesPoolSessionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspacesPoolSessionsResult#sessions #sessions} => Array&lt;Types::WorkspacesPoolSession&gt;
    #   * {Types::DescribeWorkspacesPoolSessionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspaces_pool_sessions({
    #     pool_id: "WorkspacesPoolId", # required
    #     user_id: "WorkspacesPoolUserId",
    #     limit: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.sessions #=> Array
    #   resp.sessions[0].authentication_type #=> String, one of "SAML"
    #   resp.sessions[0].connection_state #=> String, one of "CONNECTED", "NOT_CONNECTED"
    #   resp.sessions[0].session_id #=> String
    #   resp.sessions[0].instance_id #=> String
    #   resp.sessions[0].pool_id #=> String
    #   resp.sessions[0].expiration_time #=> Time
    #   resp.sessions[0].network_access_configuration.eni_private_ip_address #=> String
    #   resp.sessions[0].network_access_configuration.eni_id #=> String
    #   resp.sessions[0].start_time #=> Time
    #   resp.sessions[0].user_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesPoolSessions AWS API Documentation
    #
    # @overload describe_workspaces_pool_sessions(params = {})
    # @param [Hash] params ({})
    def describe_workspaces_pool_sessions(params = {}, options = {})
      req = build_request(:describe_workspaces_pool_sessions, params)
      req.send_request(options)
    end

    # Describes the specified WorkSpaces Pools.
    #
    # @option params [Array<String>] :pool_ids
    #   The identifier of the WorkSpaces Pools.
    #
    # @option params [Array<Types::DescribeWorkspacesPoolsFilter>] :filters
    #   The filter conditions for the WorkSpaces Pool to return.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::DescribeWorkspacesPoolsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWorkspacesPoolsResult#workspaces_pools #workspaces_pools} => Array&lt;Types::WorkspacesPool&gt;
    #   * {Types::DescribeWorkspacesPoolsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspaces_pools({
    #     pool_ids: ["WorkspacesPoolId"],
    #     filters: [
    #       {
    #         name: "PoolName", # required, accepts PoolName
    #         values: ["DescribeWorkspacesPoolsFilterValue"], # required
    #         operator: "EQUALS", # required, accepts EQUALS, NOTEQUALS, CONTAINS, NOTCONTAINS
    #       },
    #     ],
    #     limit: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.workspaces_pools #=> Array
    #   resp.workspaces_pools[0].pool_id #=> String
    #   resp.workspaces_pools[0].pool_arn #=> String
    #   resp.workspaces_pools[0].capacity_status.available_user_sessions #=> Integer
    #   resp.workspaces_pools[0].capacity_status.desired_user_sessions #=> Integer
    #   resp.workspaces_pools[0].capacity_status.actual_user_sessions #=> Integer
    #   resp.workspaces_pools[0].capacity_status.active_user_sessions #=> Integer
    #   resp.workspaces_pools[0].pool_name #=> String
    #   resp.workspaces_pools[0].description #=> String
    #   resp.workspaces_pools[0].state #=> String, one of "CREATING", "DELETING", "RUNNING", "STARTING", "STOPPED", "STOPPING", "UPDATING"
    #   resp.workspaces_pools[0].created_at #=> Time
    #   resp.workspaces_pools[0].bundle_id #=> String
    #   resp.workspaces_pools[0].directory_id #=> String
    #   resp.workspaces_pools[0].errors #=> Array
    #   resp.workspaces_pools[0].errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_IS_MISSING", "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "WORKSPACES_POOL_STOPPED", "WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR", "DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING", "DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE", "DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID", "DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND", "DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND", "DOMAIN_JOIN_ERROR_SECRET_INVALID", "BUNDLE_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INSUFFICIENT_PERMISSIONS_ERROR", "DEFAULT_OU_IS_MISSING"
    #   resp.workspaces_pools[0].errors[0].error_message #=> String
    #   resp.workspaces_pools[0].application_settings.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.workspaces_pools[0].application_settings.settings_group #=> String
    #   resp.workspaces_pools[0].application_settings.s3_bucket_name #=> String
    #   resp.workspaces_pools[0].timeout_settings.disconnect_timeout_in_seconds #=> Integer
    #   resp.workspaces_pools[0].timeout_settings.idle_disconnect_timeout_in_seconds #=> Integer
    #   resp.workspaces_pools[0].timeout_settings.max_user_duration_in_seconds #=> Integer
    #   resp.workspaces_pools[0].running_mode #=> String, one of "AUTO_STOP", "ALWAYS_ON"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DescribeWorkspacesPools AWS API Documentation
    #
    # @overload describe_workspaces_pools(params = {})
    # @param [Hash] params ({})
    def describe_workspaces_pools(params = {}, options = {})
      req = build_request(:describe_workspaces_pools, params)
      req.send_request(options)
    end

    # Disassociates a connection alias from a directory. Disassociating a
    # connection alias disables cross-Region redirection between two
    # directories in different Regions. For more information, see [
    # Cross-Region Redirection for Amazon WorkSpaces][1].
    #
    # <note markdown="1"> Before performing this operation, call [ DescribeConnectionAliases][2]
    # to make sure that the current state of the connection alias is
    # `CREATED`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    # [2]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html
    #
    # @option params [required, String] :alias_id
    #   The identifier of the connection alias to disassociate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_connection_alias({
    #     alias_id: "ConnectionAliasId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DisassociateConnectionAlias AWS API Documentation
    #
    # @overload disassociate_connection_alias(params = {})
    # @param [Hash] params ({})
    def disassociate_connection_alias(params = {}, options = {})
      req = build_request(:disassociate_connection_alias, params)
      req.send_request(options)
    end

    # Disassociates the specified IP access control group from the specified
    # directory.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [required, Array<String>] :group_ids
    #   The identifiers of one or more IP access control groups.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_ip_groups({
    #     directory_id: "DirectoryId", # required
    #     group_ids: ["IpGroupId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DisassociateIpGroups AWS API Documentation
    #
    # @overload disassociate_ip_groups(params = {})
    # @param [Hash] params ({})
    def disassociate_ip_groups(params = {}, options = {})
      req = build_request(:disassociate_ip_groups, params)
      req.send_request(options)
    end

    # Disassociates the specified application from a WorkSpace.
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the WorkSpace.
    #
    # @option params [required, String] :application_id
    #   The identifier of the application.
    #
    # @return [Types::DisassociateWorkspaceApplicationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateWorkspaceApplicationResult#association #association} => Types::WorkspaceResourceAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_workspace_application({
    #     workspace_id: "WorkspaceId", # required
    #     application_id: "WorkSpaceApplicationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.association.associated_resource_id #=> String
    #   resp.association.associated_resource_type #=> String, one of "APPLICATION"
    #   resp.association.created #=> Time
    #   resp.association.last_updated_time #=> Time
    #   resp.association.state #=> String, one of "PENDING_INSTALL", "PENDING_INSTALL_DEPLOYMENT", "PENDING_UNINSTALL", "PENDING_UNINSTALL_DEPLOYMENT", "INSTALLING", "UNINSTALLING", "ERROR", "COMPLETED", "REMOVED"
    #   resp.association.state_reason.error_code #=> String, one of "ValidationError.InsufficientDiskSpace", "ValidationError.InsufficientMemory", "ValidationError.UnsupportedOperatingSystem", "DeploymentError.InternalServerError", "DeploymentError.WorkspaceUnreachable"
    #   resp.association.state_reason.error_message #=> String
    #   resp.association.workspace_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/DisassociateWorkspaceApplication AWS API Documentation
    #
    # @overload disassociate_workspace_application(params = {})
    # @param [Hash] params ({})
    def disassociate_workspace_application(params = {}, options = {})
      req = build_request(:disassociate_workspace_application, params)
      req.send_request(options)
    end

    # Retrieves account link information.
    #
    # @option params [String] :link_id
    #   The identifier of the account to link.
    #
    # @option params [String] :linked_account_id
    #   The identifier of the account link
    #
    # @return [Types::GetAccountLinkResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountLinkResult#account_link #account_link} => Types::AccountLink
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_link({
    #     link_id: "LinkId",
    #     linked_account_id: "AwsAccount",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_link.account_link_id #=> String
    #   resp.account_link.account_link_status #=> String, one of "LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"
    #   resp.account_link.source_account_id #=> String
    #   resp.account_link.target_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/GetAccountLink AWS API Documentation
    #
    # @overload get_account_link(params = {})
    # @param [Hash] params ({})
    def get_account_link(params = {}, options = {})
      req = build_request(:get_account_link, params)
      req.send_request(options)
    end

    # Imports client branding. Client branding allows you to customize your
    # WorkSpace's client login portal. You can tailor your login portal
    # company logo, the support email address, support link, link to reset
    # password, and a custom message for users trying to sign in.
    #
    # After you import client branding, the default branding experience for
    # the specified platform type is replaced with the imported experience
    #
    # <note markdown="1"> * You must specify at least one platform type when importing client
    #   branding.
    #
    # * You can import up to 6 MB of data with each request. If your request
    #   exceeds this limit, you can import client branding for different
    #   platform types using separate requests.
    #
    # * In each platform type, the `SupportEmail` and `SupportLink`
    #   parameters are mutually exclusive. You can specify only one
    #   parameter for each platform type, but not both.
    #
    # * Imported data can take up to a minute to appear in the WorkSpaces
    #   client.
    #
    #  </note>
    #
    # @option params [required, String] :resource_id
    #   The directory identifier of the WorkSpace for which you want to import
    #   client branding.
    #
    # @option params [Types::DefaultImportClientBrandingAttributes] :device_type_windows
    #   The branding information to import for Windows devices.
    #
    # @option params [Types::DefaultImportClientBrandingAttributes] :device_type_osx
    #   The branding information to import for macOS devices.
    #
    # @option params [Types::DefaultImportClientBrandingAttributes] :device_type_android
    #   The branding information to import for Android devices.
    #
    # @option params [Types::IosImportClientBrandingAttributes] :device_type_ios
    #   The branding information to import for iOS devices.
    #
    # @option params [Types::DefaultImportClientBrandingAttributes] :device_type_linux
    #   The branding information to import for Linux devices.
    #
    # @option params [Types::DefaultImportClientBrandingAttributes] :device_type_web
    #   The branding information to import for web access.
    #
    # @return [Types::ImportClientBrandingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportClientBrandingResult#device_type_windows #device_type_windows} => Types::DefaultClientBrandingAttributes
    #   * {Types::ImportClientBrandingResult#device_type_osx #device_type_osx} => Types::DefaultClientBrandingAttributes
    #   * {Types::ImportClientBrandingResult#device_type_android #device_type_android} => Types::DefaultClientBrandingAttributes
    #   * {Types::ImportClientBrandingResult#device_type_ios #device_type_ios} => Types::IosClientBrandingAttributes
    #   * {Types::ImportClientBrandingResult#device_type_linux #device_type_linux} => Types::DefaultClientBrandingAttributes
    #   * {Types::ImportClientBrandingResult#device_type_web #device_type_web} => Types::DefaultClientBrandingAttributes
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_client_branding({
    #     resource_id: "DirectoryId", # required
    #     device_type_windows: {
    #       logo: "data",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage",
    #       },
    #     },
    #     device_type_osx: {
    #       logo: "data",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage",
    #       },
    #     },
    #     device_type_android: {
    #       logo: "data",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage",
    #       },
    #     },
    #     device_type_ios: {
    #       logo: "data",
    #       logo_2x: "data",
    #       logo_3x: "data",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage",
    #       },
    #     },
    #     device_type_linux: {
    #       logo: "data",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage",
    #       },
    #     },
    #     device_type_web: {
    #       logo: "data",
    #       support_email: "ClientEmail",
    #       support_link: "ClientUrl",
    #       forgot_password_link: "ClientUrl",
    #       login_message: {
    #         "ClientLocale" => "ClientLoginMessage",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.device_type_windows.logo_url #=> String
    #   resp.device_type_windows.support_email #=> String
    #   resp.device_type_windows.support_link #=> String
    #   resp.device_type_windows.forgot_password_link #=> String
    #   resp.device_type_windows.login_message #=> Hash
    #   resp.device_type_windows.login_message["ClientLocale"] #=> String
    #   resp.device_type_osx.logo_url #=> String
    #   resp.device_type_osx.support_email #=> String
    #   resp.device_type_osx.support_link #=> String
    #   resp.device_type_osx.forgot_password_link #=> String
    #   resp.device_type_osx.login_message #=> Hash
    #   resp.device_type_osx.login_message["ClientLocale"] #=> String
    #   resp.device_type_android.logo_url #=> String
    #   resp.device_type_android.support_email #=> String
    #   resp.device_type_android.support_link #=> String
    #   resp.device_type_android.forgot_password_link #=> String
    #   resp.device_type_android.login_message #=> Hash
    #   resp.device_type_android.login_message["ClientLocale"] #=> String
    #   resp.device_type_ios.logo_url #=> String
    #   resp.device_type_ios.logo_2x_url #=> String
    #   resp.device_type_ios.logo_3x_url #=> String
    #   resp.device_type_ios.support_email #=> String
    #   resp.device_type_ios.support_link #=> String
    #   resp.device_type_ios.forgot_password_link #=> String
    #   resp.device_type_ios.login_message #=> Hash
    #   resp.device_type_ios.login_message["ClientLocale"] #=> String
    #   resp.device_type_linux.logo_url #=> String
    #   resp.device_type_linux.support_email #=> String
    #   resp.device_type_linux.support_link #=> String
    #   resp.device_type_linux.forgot_password_link #=> String
    #   resp.device_type_linux.login_message #=> Hash
    #   resp.device_type_linux.login_message["ClientLocale"] #=> String
    #   resp.device_type_web.logo_url #=> String
    #   resp.device_type_web.support_email #=> String
    #   resp.device_type_web.support_link #=> String
    #   resp.device_type_web.forgot_password_link #=> String
    #   resp.device_type_web.login_message #=> Hash
    #   resp.device_type_web.login_message["ClientLocale"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ImportClientBranding AWS API Documentation
    #
    # @overload import_client_branding(params = {})
    # @param [Hash] params ({})
    def import_client_branding(params = {}, options = {})
      req = build_request(:import_client_branding, params)
      req.send_request(options)
    end

    # Imports the specified Windows 10 or 11 Bring Your Own License (BYOL)
    # image into Amazon WorkSpaces using EC2 Image Builder. The image must
    # be an already licensed image that is in your Amazon Web Services
    # account, and you must own the image. For more information about
    # creating BYOL images, see [ Bring Your Own Windows Desktop
    # Licenses][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html
    #
    # @option params [required, String] :image_name
    #   The name of the WorkSpace image.
    #
    # @option params [required, String] :image_description
    #   The description of the WorkSpace image.
    #
    # @option params [required, String] :compute_type
    #   The supported compute type for the WorkSpace image.
    #
    # @option params [required, String] :protocol
    #   The supported protocol for the WorkSpace image. Windows 11 does not
    #   support PCOIP protocol.
    #
    # @option params [required, Types::ImageSourceIdentifier] :image_source
    #   The options for image import source.
    #
    # @option params [required, String] :infrastructure_configuration_arn
    #   The infrastructure configuration ARN that specifies how the WorkSpace
    #   image is built.
    #
    # @option params [required, String] :platform
    #   The platform for the WorkSpace image source.
    #
    # @option params [required, String] :os_version
    #   The OS version for the WorkSpace image source.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The resource tags. Each WorkSpaces resource can have a maximum of 50
    #   tags.
    #
    # @return [Types::ImportCustomWorkspaceImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportCustomWorkspaceImageResult#image_id #image_id} => String
    #   * {Types::ImportCustomWorkspaceImageResult#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_custom_workspace_image({
    #     image_name: "WorkspaceImageName", # required
    #     image_description: "WorkspaceImageDescription", # required
    #     compute_type: "BASE", # required, accepts BASE, GRAPHICS_G4DN
    #     protocol: "PCOIP", # required, accepts PCOIP, DCV, BYOP
    #     image_source: { # required
    #       ec2_import_task_id: "Ec2ImportTaskId",
    #       image_build_version_arn: "ImageBuildVersionArn",
    #       ec2_image_id: "Ec2ImageId",
    #     },
    #     infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #     platform: "WINDOWS", # required, accepts WINDOWS
    #     os_version: "Windows_10", # required, accepts Windows_10, Windows_11
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.image_id #=> String
    #   resp.state #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ImportCustomWorkspaceImage AWS API Documentation
    #
    # @overload import_custom_workspace_image(params = {})
    # @param [Hash] params ({})
    def import_custom_workspace_image(params = {}, options = {})
      req = build_request(:import_custom_workspace_image, params)
      req.send_request(options)
    end

    # Imports the specified Windows 10 or 11 Bring Your Own License (BYOL)
    # image into Amazon WorkSpaces. The image must be an already licensed
    # Amazon EC2 image that is in your Amazon Web Services account, and you
    # must own the image. For more information about creating BYOL images,
    # see [ Bring Your Own Windows Desktop Licenses][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html
    #
    # @option params [required, String] :ec2_image_id
    #   The identifier of the EC2 image.
    #
    # @option params [required, String] :ingestion_process
    #   The ingestion process to be used when importing the image, depending
    #   on which protocol you want to use for your BYOL Workspace image,
    #   either PCoIP, WSP, or bring your own protocol (BYOP). To use DCV,
    #   specify a value that ends in `_WSP`. To use PCoIP, specify a value
    #   that does not end in `_WSP`. To use BYOP, specify a value that ends in
    #   `_BYOP`.
    #
    #   For non-GPU-enabled bundles (bundles other than Graphics or
    #   GraphicsPro), specify `BYOL_REGULAR`, `BYOL_REGULAR_WSP`, or
    #   `BYOL_REGULAR_BYOP`, depending on the protocol.
    #
    #   <note markdown="1"> The `BYOL_REGULAR_BYOP` and `BYOL_GRAPHICS_G4DN_BYOP` values are only
    #   supported by Amazon WorkSpaces Core. Contact your account team to be
    #   allow-listed to use these values. For more information, see [Amazon
    #   WorkSpaces Core][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/workspaces/core/
    #
    # @option params [required, String] :image_name
    #   The name of the WorkSpace image.
    #
    # @option params [required, String] :image_description
    #   The description of the WorkSpace image.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags. Each WorkSpaces resource can have a maximum of 50 tags.
    #
    # @option params [Array<String>] :applications
    #   If specified, the version of Microsoft Office to subscribe to. Valid
    #   only for Windows 10 and 11 BYOL images. For more information about
    #   subscribing to Office for BYOL images, see [ Bring Your Own Windows
    #   Desktop Licenses][1].
    #
    #   <note markdown="1"> * Although this parameter is an array, only one item is allowed at
    #     this time.
    #
    #   * During the image import process, non-GPU DCV (formerly WSP)
    #     WorkSpaces with Windows 11 support only `Microsoft_Office_2019`. GPU
    #     DCV (formerly WSP) WorkSpaces with Windows 11 do not support Office
    #     installation.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html
    #
    # @return [Types::ImportWorkspaceImageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportWorkspaceImageResult#image_id #image_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_workspace_image({
    #     ec2_image_id: "Ec2ImageId", # required
    #     ingestion_process: "BYOL_REGULAR", # required, accepts BYOL_REGULAR, BYOL_GRAPHICS, BYOL_GRAPHICSPRO, BYOL_GRAPHICS_G4DN, BYOL_REGULAR_WSP, BYOL_GRAPHICS_G4DN_WSP, BYOL_REGULAR_BYOP, BYOL_GRAPHICS_G4DN_BYOP
    #     image_name: "WorkspaceImageName", # required
    #     image_description: "WorkspaceImageDescription", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     applications: ["Microsoft_Office_2016"], # accepts Microsoft_Office_2016, Microsoft_Office_2019
    #   })
    #
    # @example Response structure
    #
    #   resp.image_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ImportWorkspaceImage AWS API Documentation
    #
    # @overload import_workspace_image(params = {})
    # @param [Hash] params ({})
    def import_workspace_image(params = {}, options = {})
      req = build_request(:import_workspace_image, params)
      req.send_request(options)
    end

    # Lists all account links.
    #
    # @option params [Array<String>] :link_status_filter
    #   Filters the account based on their link status.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results. This value is
    #   null when there are no more results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of accounts to return.
    #
    # @return [Types::ListAccountLinksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountLinksResult#account_links #account_links} => Array&lt;Types::AccountLink&gt;
    #   * {Types::ListAccountLinksResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_links({
    #     link_status_filter: ["LINKED"], # accepts LINKED, LINKING_FAILED, LINK_NOT_FOUND, PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT, REJECTED
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.account_links #=> Array
    #   resp.account_links[0].account_link_id #=> String
    #   resp.account_links[0].account_link_status #=> String, one of "LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"
    #   resp.account_links[0].source_account_id #=> String
    #   resp.account_links[0].target_account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ListAccountLinks AWS API Documentation
    #
    # @overload list_account_links(params = {})
    # @param [Hash] params ({})
    def list_account_links(params = {}, options = {})
      req = build_request(:list_account_links, params)
      req.send_request(options)
    end

    # Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks,
    # that you can use for the network management interface when you enable
    # Bring Your Own License (BYOL).
    #
    # This operation can be run only by Amazon Web Services accounts that
    # are enabled for BYOL. If your account isn't enabled for BYOL, you'll
    # receive an `AccessDeniedException` error.
    #
    # The management network interface is connected to a secure Amazon
    # WorkSpaces management network. It is used for interactive streaming of
    # the WorkSpace desktop to Amazon WorkSpaces clients, and to allow
    # Amazon WorkSpaces to manage the WorkSpace.
    #
    # @option params [required, String] :management_cidr_range_constraint
    #   The IP address range to search. Specify an IP address range that is
    #   compatible with your network and in CIDR notation (that is, specify
    #   the range as an IPv4 CIDR block).
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return.
    #
    # @option params [String] :next_token
    #   If you received a `NextToken` from a previous call that was paginated,
    #   provide this token to receive the next set of results.
    #
    # @return [Types::ListAvailableManagementCidrRangesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAvailableManagementCidrRangesResult#management_cidr_ranges #management_cidr_ranges} => Array&lt;String&gt;
    #   * {Types::ListAvailableManagementCidrRangesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_management_cidr_ranges({
    #     management_cidr_range_constraint: "ManagementCidrRangeConstraint", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.management_cidr_ranges #=> Array
    #   resp.management_cidr_ranges[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ListAvailableManagementCidrRanges AWS API Documentation
    #
    # @overload list_available_management_cidr_ranges(params = {})
    # @param [Hash] params ({})
    def list_available_management_cidr_ranges(params = {}, options = {})
      req = build_request(:list_available_management_cidr_ranges, params)
      req.send_request(options)
    end

    # Migrates a WorkSpace from one operating system or bundle type to
    # another, while retaining the data on the user volume.
    #
    # The migration process recreates the WorkSpace by using a new root
    # volume from the target bundle image and the user volume from the last
    # available snapshot of the original WorkSpace. During migration, the
    # original `D:\Users\%USERNAME%` user profile folder is renamed to
    # `D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated`. A new
    # `D:\Users\%USERNAME%` folder is generated by the new OS. Certain
    # files in the old user profile are moved to the new user profile.
    #
    # For available migration scenarios, details about what happens during
    # migration, and best practices, see [Migrate a WorkSpace][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html
    #
    # @option params [required, String] :source_workspace_id
    #   The identifier of the WorkSpace to migrate from.
    #
    # @option params [required, String] :bundle_id
    #   The identifier of the target bundle type to migrate the WorkSpace to.
    #
    # @return [Types::MigrateWorkspaceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MigrateWorkspaceResult#source_workspace_id #source_workspace_id} => String
    #   * {Types::MigrateWorkspaceResult#target_workspace_id #target_workspace_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.migrate_workspace({
    #     source_workspace_id: "WorkspaceId", # required
    #     bundle_id: "BundleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.source_workspace_id #=> String
    #   resp.target_workspace_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/MigrateWorkspace AWS API Documentation
    #
    # @overload migrate_workspace(params = {})
    # @param [Hash] params ({})
    def migrate_workspace(params = {}, options = {})
      req = build_request(:migrate_workspace, params)
      req.send_request(options)
    end

    # Modifies the configuration of Bring Your Own License (BYOL) for the
    # specified account.
    #
    # @option params [String] :dedicated_tenancy_support
    #   The status of BYOL.
    #
    # @option params [String] :dedicated_tenancy_management_cidr_range
    #   The IP address range, specified as an IPv4 CIDR block, for the
    #   management network interface. Specify an IP address range that is
    #   compatible with your network and in CIDR notation (that is, specify
    #   the range as an IPv4 CIDR block). The CIDR block size must be /16 (for
    #   example, 203.0.113.25/16). It must also be specified as available by
    #   the `ListAvailableManagementCidrRanges` operation.
    #
    # @return [Types::ModifyAccountResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyAccountResult#message #message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_account({
    #     dedicated_tenancy_support: "ENABLED", # accepts ENABLED
    #     dedicated_tenancy_management_cidr_range: "DedicatedTenancyManagementCidrRange",
    #   })
    #
    # @example Response structure
    #
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyAccount AWS API Documentation
    #
    # @overload modify_account(params = {})
    # @param [Hash] params ({})
    def modify_account(params = {}, options = {})
      req = build_request(:modify_account, params)
      req.send_request(options)
    end

    # Modifies the properties of the certificate-based authentication you
    # want to use with your WorkSpaces.
    #
    # @option params [required, String] :resource_id
    #   The resource identifiers, in the form of directory IDs.
    #
    # @option params [Types::CertificateBasedAuthProperties] :certificate_based_auth_properties
    #   The properties of the certificate-based authentication.
    #
    # @option params [Array<String>] :properties_to_delete
    #   The properties of the certificate-based authentication you want to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_certificate_based_auth_properties({
    #     resource_id: "DirectoryId", # required
    #     certificate_based_auth_properties: {
    #       status: "DISABLED", # accepts DISABLED, ENABLED
    #       certificate_authority_arn: "CertificateAuthorityArn",
    #     },
    #     properties_to_delete: ["CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN"], # accepts CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyCertificateBasedAuthProperties AWS API Documentation
    #
    # @overload modify_certificate_based_auth_properties(params = {})
    # @param [Hash] params ({})
    def modify_certificate_based_auth_properties(params = {}, options = {})
      req = build_request(:modify_certificate_based_auth_properties, params)
      req.send_request(options)
    end

    # Modifies the properties of the specified Amazon WorkSpaces clients.
    #
    # @option params [required, String] :resource_id
    #   The resource identifiers, in the form of directory IDs.
    #
    # @option params [required, Types::ClientProperties] :client_properties
    #   Information about the Amazon WorkSpaces client.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_client_properties({
    #     resource_id: "NonEmptyString", # required
    #     client_properties: { # required
    #       reconnect_enabled: "ENABLED", # accepts ENABLED, DISABLED
    #       log_upload_enabled: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyClientProperties AWS API Documentation
    #
    # @overload modify_client_properties(params = {})
    # @param [Hash] params ({})
    def modify_client_properties(params = {}, options = {})
      req = build_request(:modify_client_properties, params)
      req.send_request(options)
    end

    # Modifies the endpoint encryption mode that allows you to configure the
    # specified directory between Standard TLS and FIPS 140-2 validated
    # mode.
    #
    # @option params [required, String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [required, String] :endpoint_encryption_mode
    #   The encryption mode used for endpoint connections when streaming to
    #   WorkSpaces Personal or WorkSpace Pools.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_endpoint_encryption_mode({
    #     directory_id: "DirectoryId", # required
    #     endpoint_encryption_mode: "STANDARD_TLS", # required, accepts STANDARD_TLS, FIPS_VALIDATED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyEndpointEncryptionMode AWS API Documentation
    #
    # @overload modify_endpoint_encryption_mode(params = {})
    # @param [Hash] params ({})
    def modify_endpoint_encryption_mode(params = {}, options = {})
      req = build_request(:modify_endpoint_encryption_mode, params)
      req.send_request(options)
    end

    # Modifies multiple properties related to SAML 2.0 authentication,
    # including the enablement status, user access URL, and relay state
    # parameter name that are used for configuring federation with an SAML
    # 2.0 identity provider.
    #
    # @option params [required, String] :resource_id
    #   The directory identifier for which you want to configure SAML
    #   properties.
    #
    # @option params [Types::SamlProperties] :saml_properties
    #   The properties for configuring SAML 2.0 authentication.
    #
    # @option params [Array<String>] :properties_to_delete
    #   The SAML properties to delete as part of your request.
    #
    #   Specify one of the following options:
    #
    #   * `SAML_PROPERTIES_USER_ACCESS_URL` to delete the user access URL.
    #
    #   * `SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME` to delete the relay
    #     state parameter name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_saml_properties({
    #     resource_id: "DirectoryId", # required
    #     saml_properties: {
    #       status: "DISABLED", # accepts DISABLED, ENABLED, ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK
    #       user_access_url: "SamlUserAccessUrl",
    #       relay_state_parameter_name: "NonEmptyString",
    #     },
    #     properties_to_delete: ["SAML_PROPERTIES_USER_ACCESS_URL"], # accepts SAML_PROPERTIES_USER_ACCESS_URL, SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifySamlProperties AWS API Documentation
    #
    # @overload modify_saml_properties(params = {})
    # @param [Hash] params ({})
    def modify_saml_properties(params = {}, options = {})
      req = build_request(:modify_saml_properties, params)
      req.send_request(options)
    end

    # Modifies the self-service WorkSpace management capabilities for your
    # users. For more information, see [Enable Self-Service WorkSpace
    # Management Capabilities for Your Users][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html
    #
    # @option params [required, String] :resource_id
    #   The identifier of the directory.
    #
    # @option params [required, Types::SelfservicePermissions] :selfservice_permissions
    #   The permissions to enable or disable self-service capabilities.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_selfservice_permissions({
    #     resource_id: "DirectoryId", # required
    #     selfservice_permissions: { # required
    #       restart_workspace: "ENABLED", # accepts ENABLED, DISABLED
    #       increase_volume_size: "ENABLED", # accepts ENABLED, DISABLED
    #       change_compute_type: "ENABLED", # accepts ENABLED, DISABLED
    #       switch_running_mode: "ENABLED", # accepts ENABLED, DISABLED
    #       rebuild_workspace: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifySelfservicePermissions AWS API Documentation
    #
    # @overload modify_selfservice_permissions(params = {})
    # @param [Hash] params ({})
    def modify_selfservice_permissions(params = {}, options = {})
      req = build_request(:modify_selfservice_permissions, params)
      req.send_request(options)
    end

    # Modifies the specified streaming properties.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the resource.
    #
    # @option params [Types::StreamingProperties] :streaming_properties
    #   The streaming properties to configure.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_streaming_properties({
    #     resource_id: "DirectoryId", # required
    #     streaming_properties: {
    #       streaming_experience_preferred_protocol: "TCP", # accepts TCP, UDP
    #       user_settings: [
    #         {
    #           action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", # required, accepts CLIPBOARD_COPY_FROM_LOCAL_DEVICE, CLIPBOARD_COPY_TO_LOCAL_DEVICE, PRINTING_TO_LOCAL_DEVICE, SMART_CARD
    #           permission: "ENABLED", # required, accepts ENABLED, DISABLED
    #           maximum_length: 1,
    #         },
    #       ],
    #       storage_connectors: [
    #         {
    #           connector_type: "HOME_FOLDER", # required, accepts HOME_FOLDER
    #           status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         },
    #       ],
    #       global_accelerator: {
    #         mode: "ENABLED_AUTO", # required, accepts ENABLED_AUTO, DISABLED
    #         preferred_protocol: "TCP", # accepts TCP, NONE
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyStreamingProperties AWS API Documentation
    #
    # @overload modify_streaming_properties(params = {})
    # @param [Hash] params ({})
    def modify_streaming_properties(params = {}, options = {})
      req = build_request(:modify_streaming_properties, params)
      req.send_request(options)
    end

    # Specifies which devices and operating systems users can use to access
    # their WorkSpaces. For more information, see [ Control Device
    # Access][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html#control-device-access
    #
    # @option params [required, String] :resource_id
    #   The identifier of the directory.
    #
    # @option params [required, Types::WorkspaceAccessProperties] :workspace_access_properties
    #   The device types and operating systems to enable or disable for
    #   access.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_access_properties({
    #     resource_id: "DirectoryId", # required
    #     workspace_access_properties: { # required
    #       device_type_windows: "ALLOW", # accepts ALLOW, DENY
    #       device_type_osx: "ALLOW", # accepts ALLOW, DENY
    #       device_type_web: "ALLOW", # accepts ALLOW, DENY
    #       device_type_ios: "ALLOW", # accepts ALLOW, DENY
    #       device_type_android: "ALLOW", # accepts ALLOW, DENY
    #       device_type_chrome_os: "ALLOW", # accepts ALLOW, DENY
    #       device_type_zero_client: "ALLOW", # accepts ALLOW, DENY
    #       device_type_linux: "ALLOW", # accepts ALLOW, DENY
    #       device_type_work_spaces_thin_client: "ALLOW", # accepts ALLOW, DENY
    #       access_endpoint_config: {
    #         access_endpoints: [ # required
    #           {
    #             access_endpoint_type: "STREAMING_WSP", # accepts STREAMING_WSP
    #             vpc_endpoint_id: "AlphanumericDashUnderscoreNonEmptyString",
    #           },
    #         ],
    #         internet_fallback_protocols: ["PCOIP"], # accepts PCOIP
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceAccessProperties AWS API Documentation
    #
    # @overload modify_workspace_access_properties(params = {})
    # @param [Hash] params ({})
    def modify_workspace_access_properties(params = {}, options = {})
      req = build_request(:modify_workspace_access_properties, params)
      req.send_request(options)
    end

    # Modify the default properties used to create WorkSpaces.
    #
    # @option params [required, String] :resource_id
    #   The identifier of the directory.
    #
    # @option params [required, Types::WorkspaceCreationProperties] :workspace_creation_properties
    #   The default properties for creating WorkSpaces.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_creation_properties({
    #     resource_id: "DirectoryId", # required
    #     workspace_creation_properties: { # required
    #       enable_internet_access: false,
    #       default_ou: "DefaultOu",
    #       custom_security_group_id: "SecurityGroupId",
    #       user_enabled_as_local_administrator: false,
    #       enable_maintenance_mode: false,
    #       instance_iam_role_arn: "ARN",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceCreationProperties AWS API Documentation
    #
    # @overload modify_workspace_creation_properties(params = {})
    # @param [Hash] params ({})
    def modify_workspace_creation_properties(params = {}, options = {})
      req = build_request(:modify_workspace_creation_properties, params)
      req.send_request(options)
    end

    # Modifies the specified WorkSpace properties. For important information
    # about how to modify the size of the root and user volumes, see [
    # Modify a WorkSpace][1].
    #
    # <note markdown="1"> The `MANUAL` running mode value is only supported by Amazon WorkSpaces
    # Core. Contact your account team to be allow-listed to use this value.
    # For more information, see [Amazon WorkSpaces Core][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html
    # [2]: http://aws.amazon.com/workspaces/core/
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the WorkSpace.
    #
    # @option params [Types::WorkspaceProperties] :workspace_properties
    #   The properties of the WorkSpace.
    #
    # @option params [String] :data_replication
    #   Indicates the data replication status.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_properties({
    #     workspace_id: "WorkspaceId", # required
    #     workspace_properties: {
    #       running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON, MANUAL
    #       running_mode_auto_stop_timeout_in_minutes: 1,
    #       root_volume_size_gib: 1,
    #       user_volume_size_gib: 1,
    #       compute_type_name: "VALUE", # accepts VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GENERALPURPOSE_4XLARGE, GENERALPURPOSE_8XLARGE, GRAPHICSPRO, GRAPHICS_G4DN, GRAPHICSPRO_G4DN
    #       protocols: ["PCOIP"], # accepts PCOIP, WSP
    #       operating_system_name: "AMAZON_LINUX_2", # accepts AMAZON_LINUX_2, UBUNTU_18_04, UBUNTU_20_04, UBUNTU_22_04, UNKNOWN, WINDOWS_10, WINDOWS_11, WINDOWS_7, WINDOWS_SERVER_2016, WINDOWS_SERVER_2019, WINDOWS_SERVER_2022, RHEL_8, ROCKY_8
    #       global_accelerator: {
    #         mode: "ENABLED_AUTO", # required, accepts ENABLED_AUTO, DISABLED, INHERITED
    #         preferred_protocol: "TCP", # accepts TCP, NONE, INHERITED
    #       },
    #     },
    #     data_replication: "NO_REPLICATION", # accepts NO_REPLICATION, PRIMARY_AS_SOURCE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceProperties AWS API Documentation
    #
    # @overload modify_workspace_properties(params = {})
    # @param [Hash] params ({})
    def modify_workspace_properties(params = {}, options = {})
      req = build_request(:modify_workspace_properties, params)
      req.send_request(options)
    end

    # Sets the state of the specified WorkSpace.
    #
    # To maintain a WorkSpace without being interrupted, set the WorkSpace
    # state to `ADMIN_MAINTENANCE`. WorkSpaces in this state do not respond
    # to requests to reboot, stop, start, rebuild, or restore. An AutoStop
    # WorkSpace in this state is not stopped. Users cannot log into a
    # WorkSpace in the `ADMIN_MAINTENANCE` state.
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the WorkSpace.
    #
    # @option params [required, String] :workspace_state
    #   The WorkSpace state.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_state({
    #     workspace_id: "WorkspaceId", # required
    #     workspace_state: "AVAILABLE", # required, accepts AVAILABLE, ADMIN_MAINTENANCE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/ModifyWorkspaceState AWS API Documentation
    #
    # @overload modify_workspace_state(params = {})
    # @param [Hash] params ({})
    def modify_workspace_state(params = {}, options = {})
      req = build_request(:modify_workspace_state, params)
      req.send_request(options)
    end

    # Reboots the specified WorkSpaces.
    #
    # You cannot reboot a WorkSpace unless its state is `AVAILABLE`,
    # `UNHEALTHY`, or `REBOOTING`. Reboot a WorkSpace in the `REBOOTING`
    # state only if your WorkSpace has been stuck in the `REBOOTING` state
    # for over 20 minutes.
    #
    # This operation is asynchronous and returns before the WorkSpaces have
    # rebooted.
    #
    # @option params [required, Array<Types::RebootRequest>] :reboot_workspace_requests
    #   The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.
    #
    # @return [Types::RebootWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_workspaces({
    #     reboot_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebootWorkspaces AWS API Documentation
    #
    # @overload reboot_workspaces(params = {})
    # @param [Hash] params ({})
    def reboot_workspaces(params = {}, options = {})
      req = build_request(:reboot_workspaces, params)
      req.send_request(options)
    end

    # Rebuilds the specified WorkSpace.
    #
    # You cannot rebuild a WorkSpace unless its state is `AVAILABLE`,
    # `ERROR`, `UNHEALTHY`, `STOPPED`, or `REBOOTING`.
    #
    # Rebuilding a WorkSpace is a potentially destructive action that can
    # result in the loss of data. For more information, see [Rebuild a
    # WorkSpace][1].
    #
    # This operation is asynchronous and returns before the WorkSpaces have
    # been completely rebuilt.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html
    #
    # @option params [required, Array<Types::RebuildRequest>] :rebuild_workspace_requests
    #   The WorkSpace to rebuild. You can specify a single WorkSpace.
    #
    # @return [Types::RebuildWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebuildWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rebuild_workspaces({
    #     rebuild_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RebuildWorkspaces AWS API Documentation
    #
    # @overload rebuild_workspaces(params = {})
    # @param [Hash] params ({})
    def rebuild_workspaces(params = {}, options = {})
      req = build_request(:rebuild_workspaces, params)
      req.send_request(options)
    end

    # Registers the specified directory. This operation is asynchronous and
    # returns before the WorkSpace directory is registered. If this is the
    # first time you are registering a directory, you will need to create
    # the workspaces\_DefaultRole role before you can register a directory.
    # For more information, see [ Creating the workspaces\_DefaultRole
    # Role][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role
    #
    # @option params [String] :directory_id
    #   The identifier of the directory. You cannot register a directory if it
    #   does not have a status of Active. If the directory does not have a
    #   status of Active, you will receive an InvalidResourceStateException
    #   error. If you have already registered the maximum number of
    #   directories that you can register with Amazon WorkSpaces, you will
    #   receive a ResourceLimitExceededException error. Deregister directories
    #   that you are not using for WorkSpaces, and try again.
    #
    # @option params [Array<String>] :subnet_ids
    #   The identifiers of the subnets for your virtual private cloud (VPC).
    #   Make sure that the subnets are in supported Availability Zones. The
    #   subnets must also be in separate Availability Zones. If these
    #   conditions are not met, you will receive an
    #   OperationNotSupportedException error.
    #
    # @option params [Boolean] :enable_self_service
    #   Indicates whether self-service capabilities are enabled or disabled.
    #
    # @option params [String] :tenancy
    #   Indicates whether your WorkSpace directory is dedicated or shared. To
    #   use Bring Your Own License (BYOL) images, this value must be set to
    #   `DEDICATED` and your Amazon Web Services account must be enabled for
    #   BYOL. If your account has not been enabled for BYOL, you will receive
    #   an InvalidParameterValuesException error. For more information about
    #   BYOL images, see [Bring Your Own Windows Desktop Images][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags associated with the directory.
    #
    # @option params [String] :workspace_directory_name
    #   The name of the directory to register.
    #
    # @option params [String] :workspace_directory_description
    #   Description of the directory to register.
    #
    # @option params [String] :user_identity_type
    #   The type of identity management the user is using.
    #
    # @option params [String] :idc_instance_arn
    #   The Amazon Resource Name (ARN) of the identity center instance.
    #
    # @option params [Types::MicrosoftEntraConfig] :microsoft_entra_config
    #   The details about Microsoft Entra config.
    #
    # @option params [String] :workspace_type
    #   Indicates whether the directory's WorkSpace type is personal or
    #   pools.
    #
    # @option params [Types::ActiveDirectoryConfig] :active_directory_config
    #   The active directory config of the directory.
    #
    # @return [Types::RegisterWorkspaceDirectoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterWorkspaceDirectoryResult#directory_id #directory_id} => String
    #   * {Types::RegisterWorkspaceDirectoryResult#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_workspace_directory({
    #     directory_id: "DirectoryId",
    #     subnet_ids: ["SubnetId"],
    #     enable_self_service: false,
    #     tenancy: "DEDICATED", # accepts DEDICATED, SHARED
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     workspace_directory_name: "WorkspaceDirectoryName",
    #     workspace_directory_description: "WorkspaceDirectoryDescription",
    #     user_identity_type: "CUSTOMER_MANAGED", # accepts CUSTOMER_MANAGED, AWS_DIRECTORY_SERVICE, AWS_IAM_IDENTITY_CENTER
    #     idc_instance_arn: "ARN",
    #     microsoft_entra_config: {
    #       tenant_id: "MicrosoftEntraConfigTenantId",
    #       application_config_secret_arn: "SecretsManagerArn",
    #     },
    #     workspace_type: "PERSONAL", # accepts PERSONAL, POOLS
    #     active_directory_config: {
    #       domain_name: "DomainName", # required
    #       service_account_secret_arn: "SecretsManagerArn", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_id #=> String
    #   resp.state #=> String, one of "REGISTERING", "REGISTERED", "DEREGISTERING", "DEREGISTERED", "ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RegisterWorkspaceDirectory AWS API Documentation
    #
    # @overload register_workspace_directory(params = {})
    # @param [Hash] params ({})
    def register_workspace_directory(params = {}, options = {})
      req = build_request(:register_workspace_directory, params)
      req.send_request(options)
    end

    # Rejects the account link invitation.
    #
    # @option params [required, String] :link_id
    #   The identifier of the account link
    #
    # @option params [String] :client_token
    #   The client token of the account link invitation to reject.
    #
    # @return [Types::RejectAccountLinkInvitationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectAccountLinkInvitationResult#account_link #account_link} => Types::AccountLink
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_account_link_invitation({
    #     link_id: "LinkId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_link.account_link_id #=> String
    #   resp.account_link.account_link_status #=> String, one of "LINKED", "LINKING_FAILED", "LINK_NOT_FOUND", "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT", "REJECTED"
    #   resp.account_link.source_account_id #=> String
    #   resp.account_link.target_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RejectAccountLinkInvitation AWS API Documentation
    #
    # @overload reject_account_link_invitation(params = {})
    # @param [Hash] params ({})
    def reject_account_link_invitation(params = {}, options = {})
      req = build_request(:reject_account_link_invitation, params)
      req.send_request(options)
    end

    # Restores the specified WorkSpace to its last known healthy state.
    #
    # You cannot restore a WorkSpace unless its state is ` AVAILABLE`,
    # `ERROR`, `UNHEALTHY`, or `STOPPED`.
    #
    # Restoring a WorkSpace is a potentially destructive action that can
    # result in the loss of data. For more information, see [Restore a
    # WorkSpace][1].
    #
    # This operation is asynchronous and returns before the WorkSpace is
    # completely restored.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/restore-workspace.html
    #
    # @option params [required, String] :workspace_id
    #   The identifier of the WorkSpace.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_workspace({
    #     workspace_id: "WorkspaceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RestoreWorkspace AWS API Documentation
    #
    # @overload restore_workspace(params = {})
    # @param [Hash] params ({})
    def restore_workspace(params = {}, options = {})
      req = build_request(:restore_workspace, params)
      req.send_request(options)
    end

    # Removes one or more rules from the specified IP access control group.
    #
    # @option params [required, String] :group_id
    #   The identifier of the group.
    #
    # @option params [required, Array<String>] :user_rules
    #   The rules to remove from the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_ip_rules({
    #     group_id: "IpGroupId", # required
    #     user_rules: ["IpRule"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/RevokeIpRules AWS API Documentation
    #
    # @overload revoke_ip_rules(params = {})
    # @param [Hash] params ({})
    def revoke_ip_rules(params = {}, options = {})
      req = build_request(:revoke_ip_rules, params)
      req.send_request(options)
    end

    # Starts the specified WorkSpaces.
    #
    # You cannot start a WorkSpace unless it has a running mode of
    # `AutoStop` or `Manual` and a state of `STOPPED`.
    #
    # @option params [required, Array<Types::StartRequest>] :start_workspace_requests
    #   The WorkSpaces to start. You can specify up to 25 WorkSpaces.
    #
    # @return [Types::StartWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_workspaces({
    #     start_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StartWorkspaces AWS API Documentation
    #
    # @overload start_workspaces(params = {})
    # @param [Hash] params ({})
    def start_workspaces(params = {}, options = {})
      req = build_request(:start_workspaces, params)
      req.send_request(options)
    end

    # Starts the specified pool.
    #
    # You cannot start a pool unless it has a running mode of `AutoStop` and
    # a state of `STOPPED`.
    #
    # @option params [required, String] :pool_id
    #   The identifier of the pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_workspaces_pool({
    #     pool_id: "WorkspacesPoolId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StartWorkspacesPool AWS API Documentation
    #
    # @overload start_workspaces_pool(params = {})
    # @param [Hash] params ({})
    def start_workspaces_pool(params = {}, options = {})
      req = build_request(:start_workspaces_pool, params)
      req.send_request(options)
    end

    # Stops the specified WorkSpaces.
    #
    # You cannot stop a WorkSpace unless it has a running mode of `AutoStop`
    # or `Manual` and a state of `AVAILABLE`, `IMPAIRED`, `UNHEALTHY`, or
    # `ERROR`.
    #
    # @option params [required, Array<Types::StopRequest>] :stop_workspace_requests
    #   The WorkSpaces to stop. You can specify up to 25 WorkSpaces.
    #
    # @return [Types::StopWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_workspaces({
    #     stop_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StopWorkspaces AWS API Documentation
    #
    # @overload stop_workspaces(params = {})
    # @param [Hash] params ({})
    def stop_workspaces(params = {}, options = {})
      req = build_request(:stop_workspaces, params)
      req.send_request(options)
    end

    # Stops the specified pool.
    #
    # You cannot stop a WorkSpace pool unless it has a running mode of
    # `AutoStop` and a state of `AVAILABLE`, `IMPAIRED`, `UNHEALTHY`, or
    # `ERROR`.
    #
    # @option params [required, String] :pool_id
    #   The identifier of the pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_workspaces_pool({
    #     pool_id: "WorkspacesPoolId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/StopWorkspacesPool AWS API Documentation
    #
    # @overload stop_workspaces_pool(params = {})
    # @param [Hash] params ({})
    def stop_workspaces_pool(params = {}, options = {})
      req = build_request(:stop_workspaces_pool, params)
      req.send_request(options)
    end

    # Terminates the specified WorkSpaces.
    #
    # Terminating a WorkSpace is a permanent action and cannot be undone.
    # The user's data is destroyed. If you need to archive any user data,
    # contact Amazon Web ServicesSupport before terminating the WorkSpace.
    #
    # You can terminate a WorkSpace that is in any state except `SUSPENDED`.
    #
    # This operation is asynchronous and returns before the WorkSpaces have
    # been completely terminated. After a WorkSpace is terminated, the
    # `TERMINATED` state is returned only briefly before the WorkSpace
    # directory metadata is cleaned up, so this state is rarely returned. To
    # confirm that a WorkSpace is terminated, check for the WorkSpace ID by
    # using [ DescribeWorkSpaces][1]. If the WorkSpace ID isn't returned,
    # then the WorkSpace has been successfully terminated.
    #
    # <note markdown="1"> Simple AD and AD Connector are made available to you free of charge to
    # use with WorkSpaces. If there are no WorkSpaces being used with your
    # Simple AD or AD Connector directory for 30 consecutive days, this
    # directory will be automatically deregistered for use with Amazon
    # WorkSpaces, and you will be charged for this directory as per the
    # [Directory Service pricing terms][2].
    #
    #  To delete empty directories, see [ Delete the Directory for Your
    # WorkSpaces][3]. If you delete your Simple AD or AD Connector
    # directory, you can always create a new one when you want to start
    # using WorkSpaces again.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html
    # [2]: http://aws.amazon.com/directoryservice/pricing/
    # [3]: https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html
    #
    # @option params [required, Array<Types::TerminateRequest>] :terminate_workspace_requests
    #   The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.
    #
    # @return [Types::TerminateWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TerminateWorkspacesResult#failed_requests #failed_requests} => Array&lt;Types::FailedWorkspaceChangeRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_workspaces({
    #     terminate_workspace_requests: [ # required
    #       {
    #         workspace_id: "WorkspaceId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_requests #=> Array
    #   resp.failed_requests[0].workspace_id #=> String
    #   resp.failed_requests[0].error_code #=> String
    #   resp.failed_requests[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateWorkspaces AWS API Documentation
    #
    # @overload terminate_workspaces(params = {})
    # @param [Hash] params ({})
    def terminate_workspaces(params = {}, options = {})
      req = build_request(:terminate_workspaces, params)
      req.send_request(options)
    end

    # Terminates the specified pool.
    #
    # @option params [required, String] :pool_id
    #   The identifier of the pool.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_workspaces_pool({
    #     pool_id: "WorkspacesPoolId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateWorkspacesPool AWS API Documentation
    #
    # @overload terminate_workspaces_pool(params = {})
    # @param [Hash] params ({})
    def terminate_workspaces_pool(params = {}, options = {})
      req = build_request(:terminate_workspaces_pool, params)
      req.send_request(options)
    end

    # Terminates the pool session.
    #
    # @option params [required, String] :session_id
    #   The identifier of the pool session.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_workspaces_pool_session({
    #     session_id: "AmazonUuid", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/TerminateWorkspacesPoolSession AWS API Documentation
    #
    # @overload terminate_workspaces_pool_session(params = {})
    # @param [Hash] params ({})
    def terminate_workspaces_pool_session(params = {}, options = {})
      req = build_request(:terminate_workspaces_pool_session, params)
      req.send_request(options)
    end

    # Updates a Amazon Connect client add-in. Use this action to update the
    # name and endpoint URL of a Amazon Connect client add-in.
    #
    # @option params [required, String] :add_in_id
    #   The identifier of the client add-in to update.
    #
    # @option params [required, String] :resource_id
    #   The directory identifier for which the client add-in is configured.
    #
    # @option params [String] :name
    #   The name of the client add-in.
    #
    # @option params [String] :url
    #   The endpoint URL of the Amazon Connect client add-in.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connect_client_add_in({
    #     add_in_id: "AmazonUuid", # required
    #     resource_id: "DirectoryId", # required
    #     name: "AddInName",
    #     url: "AddInUrl",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateConnectClientAddIn AWS API Documentation
    #
    # @overload update_connect_client_add_in(params = {})
    # @param [Hash] params ({})
    def update_connect_client_add_in(params = {}, options = {})
      req = build_request(:update_connect_client_add_in, params)
      req.send_request(options)
    end

    # Shares or unshares a connection alias with one account by specifying
    # whether that account has permission to associate the connection alias
    # with a directory. If the association permission is granted, the
    # connection alias is shared with that account. If the association
    # permission is revoked, the connection alias is unshared with the
    # account. For more information, see [ Cross-Region Redirection for
    # Amazon WorkSpaces][1].
    #
    # <note markdown="1"> * Before performing this operation, call [
    #   DescribeConnectionAliases][2] to make sure that the current state of
    #   the connection alias is `CREATED`.
    #
    # * To delete a connection alias that has been shared, the shared
    #   account must first disassociate the connection alias from any
    #   directories it has been associated with. Then you must unshare the
    #   connection alias from the account it has been shared with. You can
    #   delete a connection alias only after it is no longer shared with any
    #   accounts or associated with any directories.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html
    # [2]: https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html
    #
    # @option params [required, String] :alias_id
    #   The identifier of the connection alias that you want to update
    #   permissions for.
    #
    # @option params [required, Types::ConnectionAliasPermission] :connection_alias_permission
    #   Indicates whether to share or unshare the connection alias with the
    #   specified Amazon Web Services account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connection_alias_permission({
    #     alias_id: "ConnectionAliasId", # required
    #     connection_alias_permission: { # required
    #       shared_account_id: "AwsAccount", # required
    #       allow_association: false, # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateConnectionAliasPermission AWS API Documentation
    #
    # @overload update_connection_alias_permission(params = {})
    # @param [Hash] params ({})
    def update_connection_alias_permission(params = {}, options = {})
      req = build_request(:update_connection_alias_permission, params)
      req.send_request(options)
    end

    # Replaces the current rules of the specified IP access control group
    # with the specified rules.
    #
    # @option params [required, String] :group_id
    #   The identifier of the group.
    #
    # @option params [required, Array<Types::IpRuleItem>] :user_rules
    #   One or more rules.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rules_of_ip_group({
    #     group_id: "IpGroupId", # required
    #     user_rules: [ # required
    #       {
    #         ip_rule: "IpRule",
    #         rule_desc: "IpRuleDesc",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateRulesOfIpGroup AWS API Documentation
    #
    # @overload update_rules_of_ip_group(params = {})
    # @param [Hash] params ({})
    def update_rules_of_ip_group(params = {}, options = {})
      req = build_request(:update_rules_of_ip_group, params)
      req.send_request(options)
    end

    # Updates a WorkSpace bundle with a new image. For more information
    # about updating WorkSpace bundles, see [ Update a Custom WorkSpaces
    # Bundle][1].
    #
    # Existing WorkSpaces aren't automatically updated when you update the
    # bundle that they're based on. To update existing WorkSpaces that are
    # based on a bundle that you've updated, you must either rebuild the
    # WorkSpaces or delete and recreate them.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/update-custom-bundle.html
    #
    # @option params [String] :bundle_id
    #   The identifier of the bundle.
    #
    # @option params [String] :image_id
    #   The identifier of the image.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace_bundle({
    #     bundle_id: "BundleId",
    #     image_id: "WorkspaceImageId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateWorkspaceBundle AWS API Documentation
    #
    # @overload update_workspace_bundle(params = {})
    # @param [Hash] params ({})
    def update_workspace_bundle(params = {}, options = {})
      req = build_request(:update_workspace_bundle, params)
      req.send_request(options)
    end

    # Shares or unshares an image with one account in the same Amazon Web
    # Services Region by specifying whether that account has permission to
    # copy the image. If the copy image permission is granted, the image is
    # shared with that account. If the copy image permission is revoked, the
    # image is unshared with the account.
    #
    # After an image has been shared, the recipient account can copy the
    # image to other Regions as needed.
    #
    # In the China (Ningxia) Region, you can copy images only within the
    # same Region.
    #
    # In Amazon Web Services GovCloud (US), to copy images to and from other
    # Regions, contact Amazon Web ServicesSupport.
    #
    # For more information about sharing images, see [ Share or Unshare a
    # Custom WorkSpaces Image][1].
    #
    # <note markdown="1"> * To delete an image that has been shared, you must unshare the image
    #   before you delete it.
    #
    # * Sharing Bring Your Own License (BYOL) images across Amazon Web
    #   Services accounts isn't supported at this time in Amazon Web
    #   Services GovCloud (US). To share BYOL images across accounts in
    #   Amazon Web Services GovCloud (US), contact Amazon Web
    #   ServicesSupport.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html
    #
    # @option params [required, String] :image_id
    #   The identifier of the image.
    #
    # @option params [required, Boolean] :allow_copy_image
    #   The permission to copy the image. This permission can be revoked only
    #   after an image has been shared.
    #
    # @option params [required, String] :shared_account_id
    #   The identifier of the Amazon Web Services account to share or unshare
    #   the image with.
    #
    #   Before sharing the image, confirm that you are sharing to the correct
    #   Amazon Web Services account ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace_image_permission({
    #     image_id: "WorkspaceImageId", # required
    #     allow_copy_image: false, # required
    #     shared_account_id: "AwsAccount", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateWorkspaceImagePermission AWS API Documentation
    #
    # @overload update_workspace_image_permission(params = {})
    # @param [Hash] params ({})
    def update_workspace_image_permission(params = {}, options = {})
      req = build_request(:update_workspace_image_permission, params)
      req.send_request(options)
    end

    # Updates the specified pool.
    #
    # @option params [required, String] :pool_id
    #   The identifier of the specified pool to update.
    #
    # @option params [String] :description
    #   Describes the specified pool to update.
    #
    # @option params [String] :bundle_id
    #   The identifier of the bundle.
    #
    # @option params [String] :directory_id
    #   The identifier of the directory.
    #
    # @option params [Types::Capacity] :capacity
    #   The desired capacity for the pool.
    #
    # @option params [Types::ApplicationSettingsRequest] :application_settings
    #   The persistent application settings for users in the pool.
    #
    # @option params [Types::TimeoutSettings] :timeout_settings
    #   Indicates the timeout settings of the specified pool.
    #
    # @option params [String] :running_mode
    #   The desired running mode for the pool. The running mode can only be
    #   updated when the pool is in a stopped state.
    #
    # @return [Types::UpdateWorkspacesPoolResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkspacesPoolResult#workspaces_pool #workspaces_pool} => Types::WorkspacesPool
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspaces_pool({
    #     pool_id: "WorkspacesPoolId", # required
    #     description: "UpdateDescription",
    #     bundle_id: "BundleId",
    #     directory_id: "DirectoryId",
    #     capacity: {
    #       desired_user_sessions: 1, # required
    #     },
    #     application_settings: {
    #       status: "DISABLED", # required, accepts DISABLED, ENABLED
    #       settings_group: "SettingsGroup",
    #     },
    #     timeout_settings: {
    #       disconnect_timeout_in_seconds: 1,
    #       idle_disconnect_timeout_in_seconds: 1,
    #       max_user_duration_in_seconds: 1,
    #     },
    #     running_mode: "AUTO_STOP", # accepts AUTO_STOP, ALWAYS_ON
    #   })
    #
    # @example Response structure
    #
    #   resp.workspaces_pool.pool_id #=> String
    #   resp.workspaces_pool.pool_arn #=> String
    #   resp.workspaces_pool.capacity_status.available_user_sessions #=> Integer
    #   resp.workspaces_pool.capacity_status.desired_user_sessions #=> Integer
    #   resp.workspaces_pool.capacity_status.actual_user_sessions #=> Integer
    #   resp.workspaces_pool.capacity_status.active_user_sessions #=> Integer
    #   resp.workspaces_pool.pool_name #=> String
    #   resp.workspaces_pool.description #=> String
    #   resp.workspaces_pool.state #=> String, one of "CREATING", "DELETING", "RUNNING", "STARTING", "STOPPED", "STOPPING", "UPDATING"
    #   resp.workspaces_pool.created_at #=> Time
    #   resp.workspaces_pool.bundle_id #=> String
    #   resp.workspaces_pool.directory_id #=> String
    #   resp.workspaces_pool.errors #=> Array
    #   resp.workspaces_pool.errors[0].error_code #=> String, one of "IAM_SERVICE_ROLE_IS_MISSING", "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", "NETWORK_INTERFACE_LIMIT_EXCEEDED", "INTERNAL_SERVICE_ERROR", "MACHINE_ROLE_IS_MISSING", "STS_DISABLED_IN_REGION", "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", "SUBNET_NOT_FOUND", "IMAGE_NOT_FOUND", "INVALID_SUBNET_CONFIGURATION", "SECURITY_GROUPS_NOT_FOUND", "IGW_NOT_ATTACHED", "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", "WORKSPACES_POOL_STOPPED", "WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE", "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", "DOMAIN_JOIN_ERROR_ACCESS_DENIED", "DOMAIN_JOIN_ERROR_LOGON_FAILURE", "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", "DOMAIN_JOIN_ERROR_MORE_DATA", "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR", "DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING", "DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE", "DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID", "DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND", "DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND", "DOMAIN_JOIN_ERROR_SECRET_INVALID", "BUNDLE_NOT_FOUND", "DIRECTORY_NOT_FOUND", "INSUFFICIENT_PERMISSIONS_ERROR", "DEFAULT_OU_IS_MISSING"
    #   resp.workspaces_pool.errors[0].error_message #=> String
    #   resp.workspaces_pool.application_settings.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.workspaces_pool.application_settings.settings_group #=> String
    #   resp.workspaces_pool.application_settings.s3_bucket_name #=> String
    #   resp.workspaces_pool.timeout_settings.disconnect_timeout_in_seconds #=> Integer
    #   resp.workspaces_pool.timeout_settings.idle_disconnect_timeout_in_seconds #=> Integer
    #   resp.workspaces_pool.timeout_settings.max_user_duration_in_seconds #=> Integer
    #   resp.workspaces_pool.running_mode #=> String, one of "AUTO_STOP", "ALWAYS_ON"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-2015-04-08/UpdateWorkspacesPool AWS API Documentation
    #
    # @overload update_workspaces_pool(params = {})
    # @param [Hash] params ({})
    def update_workspaces_pool(params = {}, options = {})
      req = build_request(:update_workspaces_pool, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::WorkSpaces')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-workspaces'
      context[:gem_version] = '1.148.0'
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
