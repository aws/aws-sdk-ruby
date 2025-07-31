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

module Aws::MPA
  # An API client for MPA.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MPA::Client.new(
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

    @identifier = :mpa

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
    add_plugin(Aws::MPA::Plugins::Endpoints)

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
    #   @option options [Aws::MPA::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MPA::EndpointParameters`.
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

    # Cancels an approval session. For more information, see [Session][1] in
    # the *Multi-party approval User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html
    #
    # @option params [required, String] :session_arn
    #   Amazon Resource Name (ARN) for the session.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_session({
    #     session_arn: "SessionArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/CancelSession AWS API Documentation
    #
    # @overload cancel_session(params = {})
    # @param [Hash] params ({})
    def cancel_session(params = {}, options = {})
      req = build_request(:cancel_session, params)
      req.send_request(options)
    end

    # Creates a new approval team. For more information, see [Approval
    # team][1] in the *Multi-party approval User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   populates this field.
    #
    #   <note markdown="1"> **What is idempotency?**
    #
    #    When you make a mutating API request, the request typically returns a
    #   result before the operation's asynchronous workflows have completed.
    #   Operations might also time out or encounter other server issues before
    #   they complete, even though the request has already returned a result.
    #   This could make it difficult to determine whether the request
    #   succeeded or not, and could lead to multiple retries to ensure that
    #   the operation completes successfully. However, if the original request
    #   and the subsequent retries are successful, the operation is completed
    #   multiple times. This means that you might create more resources than
    #   you intended.
    #
    #    *Idempotency* ensures that an API request completes no more than one
    #   time. With an idempotent request, if the original request completes
    #   successfully, any subsequent retries complete successfully without
    #   performing any further actions.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::ApprovalStrategy] :approval_strategy
    #   An `ApprovalStrategy` object. Contains details for how the team grants
    #   approval.
    #
    # @option params [required, Array<Types::ApprovalTeamRequestApprover>] :approvers
    #   An array of `ApprovalTeamRequesterApprovers` objects. Contains details
    #   for the approvers in the team.
    #
    # @option params [required, String] :description
    #   Description for the team.
    #
    # @option params [required, Array<Types::PolicyReference>] :policies
    #   An array of `PolicyReference` objects. Contains a list of policies
    #   that define the permissions for team resources.
    #
    #   The protected operation for a service integration might require
    #   specific permissions. For more information, see [How other services
    #   work with Multi-party approval][1] in the *Multi-party approval User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #
    # @option params [required, String] :name
    #   Name of the team.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags you want to attach to the team.
    #
    # @return [Types::CreateApprovalTeamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApprovalTeamResponse#creation_time #creation_time} => Time
    #   * {Types::CreateApprovalTeamResponse#arn #arn} => String
    #   * {Types::CreateApprovalTeamResponse#name #name} => String
    #   * {Types::CreateApprovalTeamResponse#version_id #version_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_approval_team({
    #     client_token: "Token",
    #     approval_strategy: { # required
    #       mof_n: {
    #         min_approvals_required: 1, # required
    #       },
    #     },
    #     approvers: [ # required
    #       {
    #         primary_identity_id: "IdentityId", # required
    #         primary_identity_source_arn: "String", # required
    #       },
    #     ],
    #     description: "Description", # required
    #     policies: [ # required
    #       {
    #         policy_arn: "QualifiedPolicyArn", # required
    #       },
    #     ],
    #     name: "ApprovalTeamName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/CreateApprovalTeam AWS API Documentation
    #
    # @overload create_approval_team(params = {})
    # @param [Hash] params ({})
    def create_approval_team(params = {}, options = {})
      req = build_request(:create_approval_team, params)
      req.send_request(options)
    end

    # Creates a new identity source. For more information, see [Identity
    # Source][1] in the *Multi-party approval User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html
    #
    # @option params [required, Types::IdentitySourceParameters] :identity_source_parameters
    #   A ` IdentitySourceParameters` object. Contains details for the
    #   resource that provides identities to the identity source. For example,
    #   an IAM Identity Center instance.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   populates this field.
    #
    #   <note markdown="1"> **What is idempotency?**
    #
    #    When you make a mutating API request, the request typically returns a
    #   result before the operation's asynchronous workflows have completed.
    #   Operations might also time out or encounter other server issues before
    #   they complete, even though the request has already returned a result.
    #   This could make it difficult to determine whether the request
    #   succeeded or not, and could lead to multiple retries to ensure that
    #   the operation completes successfully. However, if the original request
    #   and the subsequent retries are successful, the operation is completed
    #   multiple times. This means that you might create more resources than
    #   you intended.
    #
    #    *Idempotency* ensures that an API request completes no more than one
    #   time. With an idempotent request, if the original request completes
    #   successfully, any subsequent retries complete successfully without
    #   performing any further actions.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Tag you want to attach to the identity source.
    #
    # @return [Types::CreateIdentitySourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIdentitySourceResponse#identity_source_type #identity_source_type} => String
    #   * {Types::CreateIdentitySourceResponse#identity_source_arn #identity_source_arn} => String
    #   * {Types::CreateIdentitySourceResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_identity_source({
    #     identity_source_parameters: { # required
    #       iam_identity_center: {
    #         instance_arn: "IdcInstanceArn", # required
    #         region: "String", # required
    #       },
    #     },
    #     client_token: "Token",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_source_type #=> String, one of "IAM_IDENTITY_CENTER"
    #   resp.identity_source_arn #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/CreateIdentitySource AWS API Documentation
    #
    # @overload create_identity_source(params = {})
    # @param [Hash] params ({})
    def create_identity_source(params = {}, options = {})
      req = build_request(:create_identity_source, params)
      req.send_request(options)
    end

    # Deletes an identity source. For more information, see [Identity
    # Source][1] in the *Multi-party approval User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html
    #
    # @option params [required, String] :identity_source_arn
    #   Amazon Resource Name (ARN) for identity source.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_source({
    #     identity_source_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/DeleteIdentitySource AWS API Documentation
    #
    # @overload delete_identity_source(params = {})
    # @param [Hash] params ({})
    def delete_identity_source(params = {}, options = {})
      req = build_request(:delete_identity_source, params)
      req.send_request(options)
    end

    # Deletes an inactive approval team. For more information, see [Team
    # health][1] in the *Multi-party approval User Guide*.
    #
    # You can also use this operation to delete a team draft. For more
    # information, see [Interacting with drafts][2] in the *Multi-party
    # approval User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html
    # [2]: https://docs.aws.amazon.com/mpa/latest/userguide/update-team.html#update-team-draft-status
    #
    # @option params [required, String] :arn
    #   Amaazon Resource Name (ARN) for the team.
    #
    # @option params [required, String] :version_id
    #   Version ID for the team.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inactive_approval_team_version({
    #     arn: "ApprovalTeamArn", # required
    #     version_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/DeleteInactiveApprovalTeamVersion AWS API Documentation
    #
    # @overload delete_inactive_approval_team_version(params = {})
    # @param [Hash] params ({})
    def delete_inactive_approval_team_version(params = {}, options = {})
      req = build_request(:delete_inactive_approval_team_version, params)
      req.send_request(options)
    end

    # Returns details for an approval team.
    #
    # @option params [required, String] :arn
    #   Amazon Resource Name (ARN) for the team.
    #
    # @return [Types::GetApprovalTeamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApprovalTeamResponse#creation_time #creation_time} => Time
    #   * {Types::GetApprovalTeamResponse#approval_strategy #approval_strategy} => Types::ApprovalStrategyResponse
    #   * {Types::GetApprovalTeamResponse#number_of_approvers #number_of_approvers} => Integer
    #   * {Types::GetApprovalTeamResponse#approvers #approvers} => Array&lt;Types::GetApprovalTeamResponseApprover&gt;
    #   * {Types::GetApprovalTeamResponse#arn #arn} => String
    #   * {Types::GetApprovalTeamResponse#description #description} => String
    #   * {Types::GetApprovalTeamResponse#name #name} => String
    #   * {Types::GetApprovalTeamResponse#status #status} => String
    #   * {Types::GetApprovalTeamResponse#status_code #status_code} => String
    #   * {Types::GetApprovalTeamResponse#status_message #status_message} => String
    #   * {Types::GetApprovalTeamResponse#update_session_arn #update_session_arn} => String
    #   * {Types::GetApprovalTeamResponse#version_id #version_id} => String
    #   * {Types::GetApprovalTeamResponse#policies #policies} => Array&lt;Types::PolicyReference&gt;
    #   * {Types::GetApprovalTeamResponse#last_update_time #last_update_time} => Time
    #   * {Types::GetApprovalTeamResponse#pending_update #pending_update} => Types::PendingUpdate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_approval_team({
    #     arn: "ApprovalTeamArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.creation_time #=> Time
    #   resp.approval_strategy.mof_n.min_approvals_required #=> Integer
    #   resp.number_of_approvers #=> Integer
    #   resp.approvers #=> Array
    #   resp.approvers[0].approver_id #=> String
    #   resp.approvers[0].response_time #=> Time
    #   resp.approvers[0].primary_identity_id #=> String
    #   resp.approvers[0].primary_identity_source_arn #=> String
    #   resp.approvers[0].primary_identity_status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "INVALID"
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE", "DELETING", "PENDING"
    #   resp.status_code #=> String, one of "VALIDATING", "PENDING_ACTIVATION", "FAILED_VALIDATION", "FAILED_ACTIVATION", "UPDATE_PENDING_APPROVAL", "UPDATE_PENDING_ACTIVATION", "UPDATE_FAILED_APPROVAL", "UPDATE_FAILED_ACTIVATION", "UPDATE_FAILED_VALIDATION", "DELETE_PENDING_APPROVAL", "DELETE_FAILED_APPROVAL", "DELETE_FAILED_VALIDATION"
    #   resp.status_message #=> String
    #   resp.update_session_arn #=> String
    #   resp.version_id #=> String
    #   resp.policies #=> Array
    #   resp.policies[0].policy_arn #=> String
    #   resp.last_update_time #=> Time
    #   resp.pending_update.version_id #=> String
    #   resp.pending_update.description #=> String
    #   resp.pending_update.approval_strategy.mof_n.min_approvals_required #=> Integer
    #   resp.pending_update.number_of_approvers #=> Integer
    #   resp.pending_update.status #=> String, one of "ACTIVE", "INACTIVE", "DELETING", "PENDING"
    #   resp.pending_update.status_code #=> String, one of "VALIDATING", "PENDING_ACTIVATION", "FAILED_VALIDATION", "FAILED_ACTIVATION", "UPDATE_PENDING_APPROVAL", "UPDATE_PENDING_ACTIVATION", "UPDATE_FAILED_APPROVAL", "UPDATE_FAILED_ACTIVATION", "UPDATE_FAILED_VALIDATION", "DELETE_PENDING_APPROVAL", "DELETE_FAILED_APPROVAL", "DELETE_FAILED_VALIDATION"
    #   resp.pending_update.status_message #=> String
    #   resp.pending_update.approvers #=> Array
    #   resp.pending_update.approvers[0].approver_id #=> String
    #   resp.pending_update.approvers[0].response_time #=> Time
    #   resp.pending_update.approvers[0].primary_identity_id #=> String
    #   resp.pending_update.approvers[0].primary_identity_source_arn #=> String
    #   resp.pending_update.approvers[0].primary_identity_status #=> String, one of "PENDING", "ACCEPTED", "REJECTED", "INVALID"
    #   resp.pending_update.update_initiation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetApprovalTeam AWS API Documentation
    #
    # @overload get_approval_team(params = {})
    # @param [Hash] params ({})
    def get_approval_team(params = {}, options = {})
      req = build_request(:get_approval_team, params)
      req.send_request(options)
    end

    # Returns details for an identity source. For more information, see
    # [Identity Source][1] in the *Multi-party approval User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html
    #
    # @option params [required, String] :identity_source_arn
    #   Amazon Resource Name (ARN) for the identity source.
    #
    # @return [Types::GetIdentitySourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentitySourceResponse#identity_source_type #identity_source_type} => String
    #   * {Types::GetIdentitySourceResponse#identity_source_parameters #identity_source_parameters} => Types::IdentitySourceParametersForGet
    #   * {Types::GetIdentitySourceResponse#identity_source_arn #identity_source_arn} => String
    #   * {Types::GetIdentitySourceResponse#creation_time #creation_time} => Time
    #   * {Types::GetIdentitySourceResponse#status #status} => String
    #   * {Types::GetIdentitySourceResponse#status_code #status_code} => String
    #   * {Types::GetIdentitySourceResponse#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_source({
    #     identity_source_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_source_type #=> String, one of "IAM_IDENTITY_CENTER"
    #   resp.identity_source_parameters.iam_identity_center.instance_arn #=> String
    #   resp.identity_source_parameters.iam_identity_center.approval_portal_url #=> String
    #   resp.identity_source_parameters.iam_identity_center.region #=> String
    #   resp.identity_source_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING", "ERROR"
    #   resp.status_code #=> String, one of "ACCESS_DENIED", "DELETION_FAILED", "IDC_INSTANCE_NOT_FOUND", "IDC_INSTANCE_NOT_VALID"
    #   resp.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetIdentitySource AWS API Documentation
    #
    # @overload get_identity_source(params = {})
    # @param [Hash] params ({})
    def get_identity_source(params = {}, options = {})
      req = build_request(:get_identity_source, params)
      req.send_request(options)
    end

    # Returns details for the version of a policy. Policies define the
    # permissions for team resources.
    #
    # The protected operation for a service integration might require
    # specific permissions. For more information, see [How other services
    # work with Multi-party approval][1] in the *Multi-party approval User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #
    # @option params [required, String] :policy_version_arn
    #   Amazon Resource Name (ARN) for the policy.
    #
    # @return [Types::GetPolicyVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyVersionResponse#policy_version #policy_version} => Types::PolicyVersion
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_version({
    #     policy_version_arn: "QualifiedPolicyArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_version.arn #=> String
    #   resp.policy_version.policy_arn #=> String
    #   resp.policy_version.version_id #=> Integer
    #   resp.policy_version.policy_type #=> String, one of "AWS_MANAGED", "AWS_RAM"
    #   resp.policy_version.is_default #=> Boolean
    #   resp.policy_version.name #=> String
    #   resp.policy_version.status #=> String, one of "ATTACHABLE", "DEPRECATED"
    #   resp.policy_version.creation_time #=> Time
    #   resp.policy_version.last_updated_time #=> Time
    #   resp.policy_version.document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetPolicyVersion AWS API Documentation
    #
    # @overload get_policy_version(params = {})
    # @param [Hash] params ({})
    def get_policy_version(params = {}, options = {})
      req = build_request(:get_policy_version, params)
      req.send_request(options)
    end

    # Returns details about a policy for a resource.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) for the resource.
    #
    # @option params [required, String] :policy_name
    #   Name of the policy.
    #
    # @option params [required, String] :policy_type
    #   The type of policy.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#resource_arn #resource_arn} => String
    #   * {Types::GetResourcePolicyResponse#policy_type #policy_type} => String
    #   * {Types::GetResourcePolicyResponse#policy_version_arn #policy_version_arn} => String
    #   * {Types::GetResourcePolicyResponse#policy_name #policy_name} => String
    #   * {Types::GetResourcePolicyResponse#policy_document #policy_document} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "String", # required
    #     policy_name: "String", # required
    #     policy_type: "AWS_MANAGED", # required, accepts AWS_MANAGED, AWS_RAM
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.policy_type #=> String, one of "AWS_MANAGED", "AWS_RAM"
    #   resp.policy_version_arn #=> String
    #   resp.policy_name #=> String
    #   resp.policy_document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Returns details for an approval session. For more information, see
    # [Session][1] in the *Multi-party approval User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html
    #
    # @option params [required, String] :session_arn
    #   Amazon Resource Name (ARN) for the session.
    #
    # @return [Types::GetSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSessionResponse#session_arn #session_arn} => String
    #   * {Types::GetSessionResponse#approval_team_arn #approval_team_arn} => String
    #   * {Types::GetSessionResponse#approval_team_name #approval_team_name} => String
    #   * {Types::GetSessionResponse#protected_resource_arn #protected_resource_arn} => String
    #   * {Types::GetSessionResponse#approval_strategy #approval_strategy} => Types::ApprovalStrategyResponse
    #   * {Types::GetSessionResponse#number_of_approvers #number_of_approvers} => Integer
    #   * {Types::GetSessionResponse#initiation_time #initiation_time} => Time
    #   * {Types::GetSessionResponse#expiration_time #expiration_time} => Time
    #   * {Types::GetSessionResponse#completion_time #completion_time} => Time
    #   * {Types::GetSessionResponse#description #description} => String
    #   * {Types::GetSessionResponse#metadata #metadata} => Hash&lt;String,String&gt;
    #   * {Types::GetSessionResponse#status #status} => String
    #   * {Types::GetSessionResponse#status_code #status_code} => String
    #   * {Types::GetSessionResponse#status_message #status_message} => String
    #   * {Types::GetSessionResponse#execution_status #execution_status} => String
    #   * {Types::GetSessionResponse#action_name #action_name} => String
    #   * {Types::GetSessionResponse#requester_service_principal #requester_service_principal} => String
    #   * {Types::GetSessionResponse#requester_principal_arn #requester_principal_arn} => String
    #   * {Types::GetSessionResponse#requester_account_id #requester_account_id} => String
    #   * {Types::GetSessionResponse#requester_region #requester_region} => String
    #   * {Types::GetSessionResponse#requester_comment #requester_comment} => String
    #   * {Types::GetSessionResponse#action_completion_strategy #action_completion_strategy} => String
    #   * {Types::GetSessionResponse#approver_responses #approver_responses} => Array&lt;Types::GetSessionResponseApproverResponse&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_session({
    #     session_arn: "SessionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.session_arn #=> String
    #   resp.approval_team_arn #=> String
    #   resp.approval_team_name #=> String
    #   resp.protected_resource_arn #=> String
    #   resp.approval_strategy.mof_n.min_approvals_required #=> Integer
    #   resp.number_of_approvers #=> Integer
    #   resp.initiation_time #=> Time
    #   resp.expiration_time #=> Time
    #   resp.completion_time #=> Time
    #   resp.description #=> String
    #   resp.metadata #=> Hash
    #   resp.metadata["SessionKey"] #=> String
    #   resp.status #=> String, one of "PENDING", "CANCELLED", "APPROVED", "FAILED", "CREATING"
    #   resp.status_code #=> String, one of "REJECTED", "EXPIRED", "CONFIGURATION_CHANGED"
    #   resp.status_message #=> String
    #   resp.execution_status #=> String, one of "EXECUTED", "FAILED", "PENDING"
    #   resp.action_name #=> String
    #   resp.requester_service_principal #=> String
    #   resp.requester_principal_arn #=> String
    #   resp.requester_account_id #=> String
    #   resp.requester_region #=> String
    #   resp.requester_comment #=> String
    #   resp.action_completion_strategy #=> String, one of "AUTO_COMPLETION_UPON_APPROVAL"
    #   resp.approver_responses #=> Array
    #   resp.approver_responses[0].approver_id #=> String
    #   resp.approver_responses[0].identity_source_arn #=> String
    #   resp.approver_responses[0].identity_id #=> String
    #   resp.approver_responses[0].response #=> String, one of "APPROVED", "REJECTED", "NO_RESPONSE"
    #   resp.approver_responses[0].response_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/GetSession AWS API Documentation
    #
    # @overload get_session(params = {})
    # @param [Hash] params ({})
    def get_session(params = {}, options = {})
      req = build_request(:get_session, params)
      req.send_request(options)
    end

    # Returns a list of approval teams.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response. If more results
    #   exist than the specified `MaxResults` value, a token is included in
    #   the response so that you can retrieve the remaining results.
    #
    # @option params [String] :next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You can
    #   repeat this until the `NextToken` response element returns `null`.
    #
    # @return [Types::ListApprovalTeamsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApprovalTeamsResponse#next_token #next_token} => String
    #   * {Types::ListApprovalTeamsResponse#approval_teams #approval_teams} => Array&lt;Types::ListApprovalTeamsResponseApprovalTeam&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_approval_teams({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.approval_teams #=> Array
    #   resp.approval_teams[0].creation_time #=> Time
    #   resp.approval_teams[0].approval_strategy.mof_n.min_approvals_required #=> Integer
    #   resp.approval_teams[0].number_of_approvers #=> Integer
    #   resp.approval_teams[0].arn #=> String
    #   resp.approval_teams[0].name #=> String
    #   resp.approval_teams[0].description #=> String
    #   resp.approval_teams[0].status #=> String, one of "ACTIVE", "INACTIVE", "DELETING", "PENDING"
    #   resp.approval_teams[0].status_code #=> String, one of "VALIDATING", "PENDING_ACTIVATION", "FAILED_VALIDATION", "FAILED_ACTIVATION", "UPDATE_PENDING_APPROVAL", "UPDATE_PENDING_ACTIVATION", "UPDATE_FAILED_APPROVAL", "UPDATE_FAILED_ACTIVATION", "UPDATE_FAILED_VALIDATION", "DELETE_PENDING_APPROVAL", "DELETE_FAILED_APPROVAL", "DELETE_FAILED_VALIDATION"
    #   resp.approval_teams[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListApprovalTeams AWS API Documentation
    #
    # @overload list_approval_teams(params = {})
    # @param [Hash] params ({})
    def list_approval_teams(params = {}, options = {})
      req = build_request(:list_approval_teams, params)
      req.send_request(options)
    end

    # Returns a list of identity sources. For more information, see
    # [Identity Source][1] in the *Multi-party approval User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response. If more results
    #   exist than the specified `MaxResults` value, a token is included in
    #   the response so that you can retrieve the remaining results.
    #
    # @option params [String] :next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You can
    #   repeat this until the `NextToken` response element returns `null`.
    #
    # @return [Types::ListIdentitySourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentitySourcesResponse#next_token #next_token} => String
    #   * {Types::ListIdentitySourcesResponse#identity_sources #identity_sources} => Array&lt;Types::IdentitySourceForList&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_sources({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.identity_sources #=> Array
    #   resp.identity_sources[0].identity_source_type #=> String, one of "IAM_IDENTITY_CENTER"
    #   resp.identity_sources[0].identity_source_parameters.iam_identity_center.instance_arn #=> String
    #   resp.identity_sources[0].identity_source_parameters.iam_identity_center.approval_portal_url #=> String
    #   resp.identity_sources[0].identity_source_parameters.iam_identity_center.region #=> String
    #   resp.identity_sources[0].identity_source_arn #=> String
    #   resp.identity_sources[0].creation_time #=> Time
    #   resp.identity_sources[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING", "ERROR"
    #   resp.identity_sources[0].status_code #=> String, one of "ACCESS_DENIED", "DELETION_FAILED", "IDC_INSTANCE_NOT_FOUND", "IDC_INSTANCE_NOT_VALID"
    #   resp.identity_sources[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListIdentitySources AWS API Documentation
    #
    # @overload list_identity_sources(params = {})
    # @param [Hash] params ({})
    def list_identity_sources(params = {}, options = {})
      req = build_request(:list_identity_sources, params)
      req.send_request(options)
    end

    # Returns a list of policies. Policies define the permissions for team
    # resources.
    #
    # The protected operation for a service integration might require
    # specific permissions. For more information, see [How other services
    # work with Multi-party approval][1] in the *Multi-party approval User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response. If more results
    #   exist than the specified `MaxResults` value, a token is included in
    #   the response so that you can retrieve the remaining results.
    #
    # @option params [String] :next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You can
    #   repeat this until the `NextToken` response element returns `null`.
    #
    # @return [Types::ListPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesResponse#next_token #next_token} => String
    #   * {Types::ListPoliciesResponse#policies #policies} => Array&lt;Types::Policy&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies({
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.policies #=> Array
    #   resp.policies[0].arn #=> String
    #   resp.policies[0].default_version #=> Integer
    #   resp.policies[0].policy_type #=> String, one of "AWS_MANAGED", "AWS_RAM"
    #   resp.policies[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListPolicies AWS API Documentation
    #
    # @overload list_policies(params = {})
    # @param [Hash] params ({})
    def list_policies(params = {}, options = {})
      req = build_request(:list_policies, params)
      req.send_request(options)
    end

    # Returns a list of the versions for policies. Policies define the
    # permissions for team resources.
    #
    # The protected operation for a service integration might require
    # specific permissions. For more information, see [How other services
    # work with Multi-party approval][1] in the *Multi-party approval User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response. If more results
    #   exist than the specified `MaxResults` value, a token is included in
    #   the response so that you can retrieve the remaining results.
    #
    # @option params [String] :next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You can
    #   repeat this until the `NextToken` response element returns `null`.
    #
    # @option params [required, String] :policy_arn
    #   Amazon Resource Name (ARN) for the policy.
    #
    # @return [Types::ListPolicyVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyVersionsResponse#next_token #next_token} => String
    #   * {Types::ListPolicyVersionsResponse#policy_versions #policy_versions} => Array&lt;Types::PolicyVersionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_versions({
    #     max_results: 1,
    #     next_token: "Token",
    #     policy_arn: "UnqualifiedPolicyArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.policy_versions #=> Array
    #   resp.policy_versions[0].arn #=> String
    #   resp.policy_versions[0].policy_arn #=> String
    #   resp.policy_versions[0].version_id #=> Integer
    #   resp.policy_versions[0].policy_type #=> String, one of "AWS_MANAGED", "AWS_RAM"
    #   resp.policy_versions[0].is_default #=> Boolean
    #   resp.policy_versions[0].name #=> String
    #   resp.policy_versions[0].status #=> String, one of "ATTACHABLE", "DEPRECATED"
    #   resp.policy_versions[0].creation_time #=> Time
    #   resp.policy_versions[0].last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListPolicyVersions AWS API Documentation
    #
    # @overload list_policy_versions(params = {})
    # @param [Hash] params ({})
    def list_policy_versions(params = {}, options = {})
      req = build_request(:list_policy_versions, params)
      req.send_request(options)
    end

    # Returns a list of policies for a resource.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) for the resource.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response. If more results
    #   exist than the specified `MaxResults` value, a token is included in
    #   the response so that you can retrieve the remaining results.
    #
    # @option params [String] :next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You can
    #   repeat this until the `NextToken` response element returns `null`.
    #
    # @return [Types::ListResourcePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcePoliciesResponse#next_token #next_token} => String
    #   * {Types::ListResourcePoliciesResponse#resource_policies #resource_policies} => Array&lt;Types::ListResourcePoliciesResponseResourcePolicy&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_policies({
    #     resource_arn: "String", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resource_policies #=> Array
    #   resp.resource_policies[0].policy_arn #=> String
    #   resp.resource_policies[0].policy_type #=> String, one of "AWS_MANAGED", "AWS_RAM"
    #   resp.resource_policies[0].policy_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListResourcePolicies AWS API Documentation
    #
    # @overload list_resource_policies(params = {})
    # @param [Hash] params ({})
    def list_resource_policies(params = {}, options = {})
      req = build_request(:list_resource_policies, params)
      req.send_request(options)
    end

    # Returns a list of approval sessions. For more information, see
    # [Session][1] in the *Multi-party approval User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mpa/latest/userguide/mpa-concepts.html
    #
    # @option params [required, String] :approval_team_arn
    #   Amazon Resource Name (ARN) for the approval team.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response. If more results
    #   exist than the specified `MaxResults` value, a token is included in
    #   the response so that you can retrieve the remaining results.
    #
    # @option params [String] :next_token
    #   If present, indicates that more output is available than is included
    #   in the current response. Use this value in the `NextToken` request
    #   parameter in a next call to the operation to get more output. You can
    #   repeat this until the `NextToken` response element returns `null`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An array of `Filter` objects. Contains the filter to apply when
    #   listing sessions.
    #
    # @return [Types::ListSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSessionsResponse#next_token #next_token} => String
    #   * {Types::ListSessionsResponse#sessions #sessions} => Array&lt;Types::ListSessionsResponseSession&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sessions({
    #     approval_team_arn: "ApprovalTeamArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     filters: [
    #       {
    #         field_name: "ActionName", # accepts ActionName, ApprovalTeamName, VotingTime, Vote, SessionStatus, InitiationTime
    #         operator: "EQ", # accepts EQ, NE, GT, LT, GTE, LTE, CONTAINS, NOT_CONTAINS, BETWEEN
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.sessions #=> Array
    #   resp.sessions[0].session_arn #=> String
    #   resp.sessions[0].approval_team_name #=> String
    #   resp.sessions[0].approval_team_arn #=> String
    #   resp.sessions[0].initiation_time #=> Time
    #   resp.sessions[0].expiration_time #=> Time
    #   resp.sessions[0].completion_time #=> Time
    #   resp.sessions[0].description #=> String
    #   resp.sessions[0].action_name #=> String
    #   resp.sessions[0].protected_resource_arn #=> String
    #   resp.sessions[0].requester_service_principal #=> String
    #   resp.sessions[0].requester_principal_arn #=> String
    #   resp.sessions[0].requester_region #=> String
    #   resp.sessions[0].requester_account_id #=> String
    #   resp.sessions[0].status #=> String, one of "PENDING", "CANCELLED", "APPROVED", "FAILED", "CREATING"
    #   resp.sessions[0].status_code #=> String, one of "REJECTED", "EXPIRED", "CONFIGURATION_CHANGED"
    #   resp.sessions[0].status_message #=> String
    #   resp.sessions[0].action_completion_strategy #=> String, one of "AUTO_COMPLETION_UPON_APPROVAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListSessions AWS API Documentation
    #
    # @overload list_sessions(params = {})
    # @param [Hash] params ({})
    def list_sessions(params = {}, options = {})
      req = build_request(:list_sessions, params)
      req.send_request(options)
    end

    # Returns a list of the tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) for the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts the deletion process for an active approval team.
    #
    # <note markdown="1"> **Deletions require team approval**
    #
    #  Requests to delete an active team must be approved by the team.
    #
    #  </note>
    #
    # @option params [Integer] :pending_window_days
    #   Number of days between when the team approves the delete request and
    #   when the team is deleted.
    #
    # @option params [required, String] :arn
    #   Amazon Resource Name (ARN) for the team.
    #
    # @return [Types::StartActiveApprovalTeamDeletionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartActiveApprovalTeamDeletionResponse#deletion_completion_time #deletion_completion_time} => Time
    #   * {Types::StartActiveApprovalTeamDeletionResponse#deletion_start_time #deletion_start_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_active_approval_team_deletion({
    #     pending_window_days: 1,
    #     arn: "ApprovalTeamArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deletion_completion_time #=> Time
    #   resp.deletion_start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/StartActiveApprovalTeamDeletion AWS API Documentation
    #
    # @overload start_active_approval_team_deletion(params = {})
    # @param [Hash] params ({})
    def start_active_approval_team_deletion(params = {}, options = {})
      req = build_request(:start_active_approval_team_deletion, params)
      req.send_request(options)
    end

    # Creates or updates a resource tag. Each tag is a label consisting of a
    # user-defined key and value. Tags can help you manage, identify,
    # organize, search for, and filter resources.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) for the resource you want to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tags that you have added to the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a resource tag. Each tag is a label consisting of a
    # user-defined key and value. Tags can help you manage, identify,
    # organize, search for, and filter resources.
    #
    # @option params [required, String] :resource_arn
    #   Amazon Resource Name (ARN) for the resource you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Array of tag key-value pairs that you want to untag.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an approval team. You can request to update the team
    # description, approval threshold, and approvers in the team.
    #
    # <note markdown="1"> **Updates require team approval**
    #
    #  Updates to an active team must be approved by the team.
    #
    #  </note>
    #
    # @option params [Types::ApprovalStrategy] :approval_strategy
    #   An `ApprovalStrategy` object. Contains details for how the team grants
    #   approval.
    #
    # @option params [Array<Types::ApprovalTeamRequestApprover>] :approvers
    #   An array of `ApprovalTeamRequestApprover` objects. Contains details
    #   for the approvers in the team.
    #
    # @option params [String] :description
    #   Description for the team.
    #
    # @option params [required, String] :arn
    #   Amazon Resource Name (ARN) for the team.
    #
    # @return [Types::UpdateApprovalTeamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApprovalTeamResponse#version_id #version_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_approval_team({
    #     approval_strategy: {
    #       mof_n: {
    #         min_approvals_required: 1, # required
    #       },
    #     },
    #     approvers: [
    #       {
    #         primary_identity_id: "IdentityId", # required
    #         primary_identity_source_arn: "String", # required
    #       },
    #     ],
    #     description: "Description",
    #     arn: "ApprovalTeamArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mpa-2022-07-26/UpdateApprovalTeam AWS API Documentation
    #
    # @overload update_approval_team(params = {})
    # @param [Hash] params ({})
    def update_approval_team(params = {}, options = {})
      req = build_request(:update_approval_team, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MPA')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-mpa'
      context[:gem_version] = '1.2.0'
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
