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

module Aws::SecurityHub
  # An API client for SecurityHub.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SecurityHub::Client.new(
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

    @identifier = :securityhub

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
    add_plugin(Aws::SecurityHub::Plugins::Endpoints)

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
    #   @option options [Aws::SecurityHub::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SecurityHub::EndpointParameters`.
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

    # <note markdown="1"> We recommend using Organizations instead of Security Hub invitations
    # to manage your member accounts. For information, see [Managing
    # Security Hub administrator and member accounts with Organizations][1]
    # in the *Security Hub User Guide*.
    #
    #  </note>
    #
    # Accepts the invitation to be a member account and be monitored by the
    # Security Hub administrator account that the invitation was sent from.
    #
    # This operation is only used by member accounts that are not added
    # through Organizations.
    #
    # When the member account accepts the invitation, permission is granted
    # to the administrator account to view findings generated in the member
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html
    #
    # @option params [required, String] :administrator_id
    #   The account ID of the Security Hub administrator account that sent the
    #   invitation.
    #
    # @option params [required, String] :invitation_id
    #   The identifier of the invitation sent from the Security Hub
    #   administrator account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To accept an invitation be a member account
    #
    #   # The following example demonstrates how an account can accept an invitation from the Security Hub administrator account
    #   # to be a member account. This operation is applicable only to member accounts that are not added through AWS
    #   # Organizations.
    #
    #   resp = client.accept_administrator_invitation({
    #     administrator_id: "123456789012", 
    #     invitation_id: "7ab938c5d52d7904ad09f9e7c20cc4eb", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_administrator_invitation({
    #     administrator_id: "NonEmptyString", # required
    #     invitation_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptAdministratorInvitation AWS API Documentation
    #
    # @overload accept_administrator_invitation(params = {})
    # @param [Hash] params ({})
    def accept_administrator_invitation(params = {}, options = {})
      req = build_request(:accept_administrator_invitation, params)
      req.send_request(options)
    end

    # This method is deprecated. Instead, use
    # `AcceptAdministratorInvitation`.
    #
    # The Security Hub console continues to use `AcceptInvitation`. It will
    # eventually change to use `AcceptAdministratorInvitation`. Any IAM
    # policies that specifically control access to this function must
    # continue to use `AcceptInvitation`. You should also add
    # `AcceptAdministratorInvitation` to your policies to ensure that the
    # correct permissions are in place after the console begins to use
    # `AcceptAdministratorInvitation`.
    #
    # Accepts the invitation to be a member account and be monitored by the
    # Security Hub administrator account that the invitation was sent from.
    #
    # This operation is only used by member accounts that are not added
    # through Organizations.
    #
    # When the member account accepts the invitation, permission is granted
    # to the administrator account to view findings generated in the member
    # account.
    #
    # @option params [required, String] :master_id
    #   The account ID of the Security Hub administrator account that sent the
    #   invitation.
    #
    # @option params [required, String] :invitation_id
    #   The identifier of the invitation sent from the Security Hub
    #   administrator account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_invitation({
    #     master_id: "NonEmptyString", # required
    #     invitation_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptInvitation AWS API Documentation
    #
    # @overload accept_invitation(params = {})
    # @param [Hash] params ({})
    def accept_invitation(params = {}, options = {})
      req = build_request(:accept_invitation, params)
      req.send_request(options)
    end

    # Deletes one or more automation rules.
    #
    # @option params [required, Array<String>] :automation_rules_arns
    #   A list of Amazon Resource Names (ARNs) for the rules that are to be
    #   deleted.
    #
    # @return [Types::BatchDeleteAutomationRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteAutomationRulesResponse#processed_automation_rules #processed_automation_rules} => Array&lt;String&gt;
    #   * {Types::BatchDeleteAutomationRulesResponse#unprocessed_automation_rules #unprocessed_automation_rules} => Array&lt;Types::UnprocessedAutomationRule&gt;
    #
    #
    # @example Example: To delete one or more automation rules
    #
    #   # The following example deletes the specified automation rules.
    #
    #   resp = client.batch_delete_automation_rules({
    #     automation_rules_arns: [
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     processed_automation_rules: [
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     ], 
    #     unprocessed_automation_rules: [
    #       {
    #         error_code: 500, 
    #         error_message: "InternalException", 
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_automation_rules({
    #     automation_rules_arns: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.processed_automation_rules #=> Array
    #   resp.processed_automation_rules[0] #=> String
    #   resp.unprocessed_automation_rules #=> Array
    #   resp.unprocessed_automation_rules[0].rule_arn #=> String
    #   resp.unprocessed_automation_rules[0].error_code #=> Integer
    #   resp.unprocessed_automation_rules[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDeleteAutomationRules AWS API Documentation
    #
    # @overload batch_delete_automation_rules(params = {})
    # @param [Hash] params ({})
    def batch_delete_automation_rules(params = {}, options = {})
      req = build_request(:batch_delete_automation_rules, params)
      req.send_request(options)
    end

    # Disables the standards specified by the provided
    # `StandardsSubscriptionArns`.
    #
    # For more information, see [Security Standards][1] section of the
    # *Security Hub User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html
    #
    # @option params [required, Array<String>] :standards_subscription_arns
    #   The ARNs of the standards subscriptions to disable.
    #
    # @return [Types::BatchDisableStandardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisableStandardsResponse#standards_subscriptions #standards_subscriptions} => Array&lt;Types::StandardsSubscription&gt;
    #
    #
    # @example Example: To disable one or more security standards
    #
    #   # The following example disables a security standard in Security Hub.
    #
    #   resp = client.batch_disable_standards({
    #     standards_subscription_arns: [
    #       "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     standards_subscriptions: [
    #       {
    #         standards_arn: "arn:aws:securityhub:eu-central-1::standards/pci-dss/v/3.2.1", 
    #         standards_input: {
    #         }, 
    #         standards_status: "DELETING", 
    #         standards_subscription_arn: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disable_standards({
    #     standards_subscription_arns: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.standards_subscriptions #=> Array
    #   resp.standards_subscriptions[0].standards_subscription_arn #=> String
    #   resp.standards_subscriptions[0].standards_arn #=> String
    #   resp.standards_subscriptions[0].standards_input #=> Hash
    #   resp.standards_subscriptions[0].standards_input["NonEmptyString"] #=> String
    #   resp.standards_subscriptions[0].standards_status #=> String, one of "PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"
    #   resp.standards_subscriptions[0].standards_controls_updatable #=> String, one of "READY_FOR_UPDATES", "NOT_READY_FOR_UPDATES"
    #   resp.standards_subscriptions[0].standards_status_reason.status_reason_code #=> String, one of "NO_AVAILABLE_CONFIGURATION_RECORDER", "MAXIMUM_NUMBER_OF_CONFIG_RULES_EXCEEDED", "INTERNAL_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDisableStandards AWS API Documentation
    #
    # @overload batch_disable_standards(params = {})
    # @param [Hash] params ({})
    def batch_disable_standards(params = {}, options = {})
      req = build_request(:batch_disable_standards, params)
      req.send_request(options)
    end

    # Enables the standards specified by the provided `StandardsArn`. To
    # obtain the ARN for a standard, use the `DescribeStandards` operation.
    #
    # For more information, see the [Security Standards][1] section of the
    # *Security Hub User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html
    #
    # @option params [required, Array<Types::StandardsSubscriptionRequest>] :standards_subscription_requests
    #   The list of standards checks to enable.
    #
    # @return [Types::BatchEnableStandardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchEnableStandardsResponse#standards_subscriptions #standards_subscriptions} => Array&lt;Types::StandardsSubscription&gt;
    #
    #
    # @example Example: To enable security standards
    #
    #   # The following example enables the security standard specified by the StandardArn. You can use this operation to enable
    #   # one or more Security Hub standards.
    #
    #   resp = client.batch_enable_standards({
    #     standards_subscription_requests: [
    #       {
    #         standards_arn: "arn:aws:securityhub:us-west-1::standards/pci-dss/v/3.2.1", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     standards_subscriptions: [
    #       {
    #         standards_arn: "arn:aws:securityhub:us-west-1::standards/pci-dss/v/3.2.1", 
    #         standards_input: {
    #         }, 
    #         standards_status: "PENDING", 
    #         standards_subscription_arn: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_enable_standards({
    #     standards_subscription_requests: [ # required
    #       {
    #         standards_arn: "NonEmptyString", # required
    #         standards_input: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.standards_subscriptions #=> Array
    #   resp.standards_subscriptions[0].standards_subscription_arn #=> String
    #   resp.standards_subscriptions[0].standards_arn #=> String
    #   resp.standards_subscriptions[0].standards_input #=> Hash
    #   resp.standards_subscriptions[0].standards_input["NonEmptyString"] #=> String
    #   resp.standards_subscriptions[0].standards_status #=> String, one of "PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"
    #   resp.standards_subscriptions[0].standards_controls_updatable #=> String, one of "READY_FOR_UPDATES", "NOT_READY_FOR_UPDATES"
    #   resp.standards_subscriptions[0].standards_status_reason.status_reason_code #=> String, one of "NO_AVAILABLE_CONFIGURATION_RECORDER", "MAXIMUM_NUMBER_OF_CONFIG_RULES_EXCEEDED", "INTERNAL_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchEnableStandards AWS API Documentation
    #
    # @overload batch_enable_standards(params = {})
    # @param [Hash] params ({})
    def batch_enable_standards(params = {}, options = {})
      req = build_request(:batch_enable_standards, params)
      req.send_request(options)
    end

    # Retrieves a list of details for automation rules based on rule Amazon
    # Resource Names (ARNs).
    #
    # @option params [required, Array<String>] :automation_rules_arns
    #   A list of rule ARNs to get details for.
    #
    # @return [Types::BatchGetAutomationRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetAutomationRulesResponse#rules #rules} => Array&lt;Types::AutomationRulesConfig&gt;
    #   * {Types::BatchGetAutomationRulesResponse#unprocessed_automation_rules #unprocessed_automation_rules} => Array&lt;Types::UnprocessedAutomationRule&gt;
    #
    #
    # @example Example: To update one ore more automation rules
    #
    #   # The following example updates the specified automation rules.
    #
    #   resp = client.batch_get_automation_rules({
    #     automation_rules_arns: [
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     rules: [
    #       {
    #         actions: [
    #           {
    #             finding_fields_update: {
    #               workflow: {
    #                 status: "RESOLVED", 
    #               }, 
    #             }, 
    #             type: "FINDING_FIELDS_UPDATE", 
    #           }, 
    #         ], 
    #         created_at: Time.parse("2022-08-31T01:52:33.250Z"), 
    #         created_by: "AROAJURBUYQQNL5OL2TIM:TEST-16MJ75L9VBK14", 
    #         criteria: {
    #           aws_account_id: [
    #             {
    #               comparison: "EQUALS", 
    #               value: "111122223333", 
    #             }, 
    #           ], 
    #           first_observed_at: [
    #             {
    #               date_range: {
    #                 unit: "DAYS", 
    #                 value: 5, 
    #               }, 
    #             }, 
    #           ], 
    #           type: [
    #             {
    #               comparison: "EQUALS", 
    #               value: "Software and Configuration Checks/Industry and Regulatory Standards", 
    #             }, 
    #           ], 
    #         }, 
    #         description: "sample rule description 1", 
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         rule_name: "sample-rule-name-1", 
    #         rule_order: 1, 
    #         rule_status: "ENABLED", 
    #         updated_at: Time.parse("2022-08-31T01:52:33.250Z"), 
    #       }, 
    #       {
    #         actions: [
    #           {
    #             finding_fields_update: {
    #               workflow: {
    #                 status: "RESOLVED", 
    #               }, 
    #             }, 
    #             type: "FINDING_FIELDS_UPDATE", 
    #           }, 
    #         ], 
    #         created_at: Time.parse("2022-08-31T01:52:33.250Z"), 
    #         created_by: "AROAJURBUYQQNL5OL2TIM:TEST-16MJ75L9VBK14", 
    #         criteria: {
    #           resource_type: [
    #             {
    #               comparison: "EQUALS", 
    #               value: "Ec2Instance", 
    #             }, 
    #           ], 
    #           severity_label: [
    #             {
    #               comparison: "EQUALS", 
    #               value: "INFORMATIONAL", 
    #             }, 
    #           ], 
    #         }, 
    #         description: "Sample rule description 2", 
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #         rule_name: "sample-rule-name-2", 
    #         rule_order: 2, 
    #         rule_status: "ENABLED", 
    #         updated_at: Time.parse("2022-08-31T01:52:33.250Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_automation_rules({
    #     automation_rules_arns: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].rule_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.rules[0].rule_order #=> Integer
    #   resp.rules[0].rule_name #=> String
    #   resp.rules[0].description #=> String
    #   resp.rules[0].is_terminal #=> Boolean
    #   resp.rules[0].criteria.product_arn #=> Array
    #   resp.rules[0].criteria.product_arn[0].value #=> String
    #   resp.rules[0].criteria.product_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.aws_account_id #=> Array
    #   resp.rules[0].criteria.aws_account_id[0].value #=> String
    #   resp.rules[0].criteria.aws_account_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.id #=> Array
    #   resp.rules[0].criteria.id[0].value #=> String
    #   resp.rules[0].criteria.id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.generator_id #=> Array
    #   resp.rules[0].criteria.generator_id[0].value #=> String
    #   resp.rules[0].criteria.generator_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.type #=> Array
    #   resp.rules[0].criteria.type[0].value #=> String
    #   resp.rules[0].criteria.type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.first_observed_at #=> Array
    #   resp.rules[0].criteria.first_observed_at[0].start #=> String
    #   resp.rules[0].criteria.first_observed_at[0].end #=> String
    #   resp.rules[0].criteria.first_observed_at[0].date_range.value #=> Integer
    #   resp.rules[0].criteria.first_observed_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.rules[0].criteria.last_observed_at #=> Array
    #   resp.rules[0].criteria.last_observed_at[0].start #=> String
    #   resp.rules[0].criteria.last_observed_at[0].end #=> String
    #   resp.rules[0].criteria.last_observed_at[0].date_range.value #=> Integer
    #   resp.rules[0].criteria.last_observed_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.rules[0].criteria.created_at #=> Array
    #   resp.rules[0].criteria.created_at[0].start #=> String
    #   resp.rules[0].criteria.created_at[0].end #=> String
    #   resp.rules[0].criteria.created_at[0].date_range.value #=> Integer
    #   resp.rules[0].criteria.created_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.rules[0].criteria.updated_at #=> Array
    #   resp.rules[0].criteria.updated_at[0].start #=> String
    #   resp.rules[0].criteria.updated_at[0].end #=> String
    #   resp.rules[0].criteria.updated_at[0].date_range.value #=> Integer
    #   resp.rules[0].criteria.updated_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.rules[0].criteria.confidence #=> Array
    #   resp.rules[0].criteria.confidence[0].gte #=> Float
    #   resp.rules[0].criteria.confidence[0].lte #=> Float
    #   resp.rules[0].criteria.confidence[0].eq #=> Float
    #   resp.rules[0].criteria.confidence[0].gt #=> Float
    #   resp.rules[0].criteria.confidence[0].lt #=> Float
    #   resp.rules[0].criteria.criticality #=> Array
    #   resp.rules[0].criteria.criticality[0].gte #=> Float
    #   resp.rules[0].criteria.criticality[0].lte #=> Float
    #   resp.rules[0].criteria.criticality[0].eq #=> Float
    #   resp.rules[0].criteria.criticality[0].gt #=> Float
    #   resp.rules[0].criteria.criticality[0].lt #=> Float
    #   resp.rules[0].criteria.title #=> Array
    #   resp.rules[0].criteria.title[0].value #=> String
    #   resp.rules[0].criteria.title[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.description #=> Array
    #   resp.rules[0].criteria.description[0].value #=> String
    #   resp.rules[0].criteria.description[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.source_url #=> Array
    #   resp.rules[0].criteria.source_url[0].value #=> String
    #   resp.rules[0].criteria.source_url[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.product_name #=> Array
    #   resp.rules[0].criteria.product_name[0].value #=> String
    #   resp.rules[0].criteria.product_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.company_name #=> Array
    #   resp.rules[0].criteria.company_name[0].value #=> String
    #   resp.rules[0].criteria.company_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.severity_label #=> Array
    #   resp.rules[0].criteria.severity_label[0].value #=> String
    #   resp.rules[0].criteria.severity_label[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.resource_type #=> Array
    #   resp.rules[0].criteria.resource_type[0].value #=> String
    #   resp.rules[0].criteria.resource_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.resource_id #=> Array
    #   resp.rules[0].criteria.resource_id[0].value #=> String
    #   resp.rules[0].criteria.resource_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.resource_partition #=> Array
    #   resp.rules[0].criteria.resource_partition[0].value #=> String
    #   resp.rules[0].criteria.resource_partition[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.resource_region #=> Array
    #   resp.rules[0].criteria.resource_region[0].value #=> String
    #   resp.rules[0].criteria.resource_region[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.resource_tags #=> Array
    #   resp.rules[0].criteria.resource_tags[0].key #=> String
    #   resp.rules[0].criteria.resource_tags[0].value #=> String
    #   resp.rules[0].criteria.resource_tags[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"
    #   resp.rules[0].criteria.resource_details_other #=> Array
    #   resp.rules[0].criteria.resource_details_other[0].key #=> String
    #   resp.rules[0].criteria.resource_details_other[0].value #=> String
    #   resp.rules[0].criteria.resource_details_other[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"
    #   resp.rules[0].criteria.compliance_status #=> Array
    #   resp.rules[0].criteria.compliance_status[0].value #=> String
    #   resp.rules[0].criteria.compliance_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.compliance_security_control_id #=> Array
    #   resp.rules[0].criteria.compliance_security_control_id[0].value #=> String
    #   resp.rules[0].criteria.compliance_security_control_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.compliance_associated_standards_id #=> Array
    #   resp.rules[0].criteria.compliance_associated_standards_id[0].value #=> String
    #   resp.rules[0].criteria.compliance_associated_standards_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.verification_state #=> Array
    #   resp.rules[0].criteria.verification_state[0].value #=> String
    #   resp.rules[0].criteria.verification_state[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.workflow_status #=> Array
    #   resp.rules[0].criteria.workflow_status[0].value #=> String
    #   resp.rules[0].criteria.workflow_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.record_state #=> Array
    #   resp.rules[0].criteria.record_state[0].value #=> String
    #   resp.rules[0].criteria.record_state[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.related_findings_product_arn #=> Array
    #   resp.rules[0].criteria.related_findings_product_arn[0].value #=> String
    #   resp.rules[0].criteria.related_findings_product_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.related_findings_id #=> Array
    #   resp.rules[0].criteria.related_findings_id[0].value #=> String
    #   resp.rules[0].criteria.related_findings_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.note_text #=> Array
    #   resp.rules[0].criteria.note_text[0].value #=> String
    #   resp.rules[0].criteria.note_text[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.note_updated_at #=> Array
    #   resp.rules[0].criteria.note_updated_at[0].start #=> String
    #   resp.rules[0].criteria.note_updated_at[0].end #=> String
    #   resp.rules[0].criteria.note_updated_at[0].date_range.value #=> Integer
    #   resp.rules[0].criteria.note_updated_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.rules[0].criteria.note_updated_by #=> Array
    #   resp.rules[0].criteria.note_updated_by[0].value #=> String
    #   resp.rules[0].criteria.note_updated_by[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.user_defined_fields #=> Array
    #   resp.rules[0].criteria.user_defined_fields[0].key #=> String
    #   resp.rules[0].criteria.user_defined_fields[0].value #=> String
    #   resp.rules[0].criteria.user_defined_fields[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"
    #   resp.rules[0].criteria.resource_application_arn #=> Array
    #   resp.rules[0].criteria.resource_application_arn[0].value #=> String
    #   resp.rules[0].criteria.resource_application_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.resource_application_name #=> Array
    #   resp.rules[0].criteria.resource_application_name[0].value #=> String
    #   resp.rules[0].criteria.resource_application_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].criteria.aws_account_name #=> Array
    #   resp.rules[0].criteria.aws_account_name[0].value #=> String
    #   resp.rules[0].criteria.aws_account_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].type #=> String, one of "FINDING_FIELDS_UPDATE"
    #   resp.rules[0].actions[0].finding_fields_update.note.text #=> String
    #   resp.rules[0].actions[0].finding_fields_update.note.updated_by #=> String
    #   resp.rules[0].actions[0].finding_fields_update.severity.normalized #=> Integer
    #   resp.rules[0].actions[0].finding_fields_update.severity.product #=> Float
    #   resp.rules[0].actions[0].finding_fields_update.severity.label #=> String, one of "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL"
    #   resp.rules[0].actions[0].finding_fields_update.verification_state #=> String, one of "UNKNOWN", "TRUE_POSITIVE", "FALSE_POSITIVE", "BENIGN_POSITIVE"
    #   resp.rules[0].actions[0].finding_fields_update.confidence #=> Integer
    #   resp.rules[0].actions[0].finding_fields_update.criticality #=> Integer
    #   resp.rules[0].actions[0].finding_fields_update.types #=> Array
    #   resp.rules[0].actions[0].finding_fields_update.types[0] #=> String
    #   resp.rules[0].actions[0].finding_fields_update.user_defined_fields #=> Hash
    #   resp.rules[0].actions[0].finding_fields_update.user_defined_fields["NonEmptyString"] #=> String
    #   resp.rules[0].actions[0].finding_fields_update.workflow.status #=> String, one of "NEW", "NOTIFIED", "RESOLVED", "SUPPRESSED"
    #   resp.rules[0].actions[0].finding_fields_update.related_findings #=> Array
    #   resp.rules[0].actions[0].finding_fields_update.related_findings[0].product_arn #=> String
    #   resp.rules[0].actions[0].finding_fields_update.related_findings[0].id #=> String
    #   resp.rules[0].created_at #=> Time
    #   resp.rules[0].updated_at #=> Time
    #   resp.rules[0].created_by #=> String
    #   resp.unprocessed_automation_rules #=> Array
    #   resp.unprocessed_automation_rules[0].rule_arn #=> String
    #   resp.unprocessed_automation_rules[0].error_code #=> Integer
    #   resp.unprocessed_automation_rules[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchGetAutomationRules AWS API Documentation
    #
    # @overload batch_get_automation_rules(params = {})
    # @param [Hash] params ({})
    def batch_get_automation_rules(params = {}, options = {})
      req = build_request(:batch_get_automation_rules, params)
      req.send_request(options)
    end

    # Returns associations between an Security Hub configuration and a batch
    # of target accounts, organizational units, or the root. Only the
    # Security Hub delegated administrator can invoke this operation from
    # the home Region. A configuration can refer to a configuration policy
    # or to a self-managed configuration.
    #
    # @option params [required, Array<Types::ConfigurationPolicyAssociation>] :configuration_policy_association_identifiers
    #   Specifies one or more target account IDs, organizational unit (OU)
    #   IDs, or the root ID to retrieve associations for.
    #
    # @return [Types::BatchGetConfigurationPolicyAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetConfigurationPolicyAssociationsResponse#configuration_policy_associations #configuration_policy_associations} => Array&lt;Types::ConfigurationPolicyAssociationSummary&gt;
    #   * {Types::BatchGetConfigurationPolicyAssociationsResponse#unprocessed_configuration_policy_associations #unprocessed_configuration_policy_associations} => Array&lt;Types::UnprocessedConfigurationPolicyAssociation&gt;
    #
    #
    # @example Example: To get configuration associations for a batch of targets
    #
    #   # This operation provides details about configuration associations for a batch of target accounts, organizational units,
    #   # or the root.
    #
    #   resp = client.batch_get_configuration_policy_associations({
    #     configuration_policy_association_identifiers: [
    #       {
    #         target: {
    #           account_id: "111122223333", 
    #         }, 
    #       }, 
    #       {
    #         target: {
    #           root_id: "r-f6g7h8i9j0example", 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     configuration_policy_associations: [
    #       {
    #         association_status: "SUCCESS", 
    #         association_status_message: "This field is only populated for a failed association", 
    #         association_type: "INHERITED", 
    #         configuration_policy_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         target_id: "111122223333", 
    #         target_type: "ACCOUNT", 
    #         updated_at: Time.parse("2023-01-11T06:17:17.154Z"), 
    #       }, 
    #     ], 
    #     unprocessed_configuration_policy_associations: [
    #       {
    #         configuration_policy_association_identifiers: {
    #           target: {
    #             root_id: "r-f6g7h8i9j0example", 
    #           }, 
    #         }, 
    #         error_code: "400", 
    #         error_reason: "You do not have sufficient access to perform this action.", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_configuration_policy_associations({
    #     configuration_policy_association_identifiers: [ # required
    #       {
    #         target: {
    #           account_id: "NonEmptyString",
    #           organizational_unit_id: "NonEmptyString",
    #           root_id: "NonEmptyString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_policy_associations #=> Array
    #   resp.configuration_policy_associations[0].configuration_policy_id #=> String
    #   resp.configuration_policy_associations[0].target_id #=> String
    #   resp.configuration_policy_associations[0].target_type #=> String, one of "ACCOUNT", "ORGANIZATIONAL_UNIT", "ROOT"
    #   resp.configuration_policy_associations[0].association_type #=> String, one of "INHERITED", "APPLIED"
    #   resp.configuration_policy_associations[0].updated_at #=> Time
    #   resp.configuration_policy_associations[0].association_status #=> String, one of "PENDING", "SUCCESS", "FAILED"
    #   resp.configuration_policy_associations[0].association_status_message #=> String
    #   resp.unprocessed_configuration_policy_associations #=> Array
    #   resp.unprocessed_configuration_policy_associations[0].configuration_policy_association_identifiers.target.account_id #=> String
    #   resp.unprocessed_configuration_policy_associations[0].configuration_policy_association_identifiers.target.organizational_unit_id #=> String
    #   resp.unprocessed_configuration_policy_associations[0].configuration_policy_association_identifiers.target.root_id #=> String
    #   resp.unprocessed_configuration_policy_associations[0].error_code #=> String
    #   resp.unprocessed_configuration_policy_associations[0].error_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchGetConfigurationPolicyAssociations AWS API Documentation
    #
    # @overload batch_get_configuration_policy_associations(params = {})
    # @param [Hash] params ({})
    def batch_get_configuration_policy_associations(params = {}, options = {})
      req = build_request(:batch_get_configuration_policy_associations, params)
      req.send_request(options)
    end

    # Provides details about a batch of security controls for the current
    # Amazon Web Services account and Amazon Web Services Region.
    #
    # @option params [required, Array<String>] :security_control_ids
    #   A list of security controls (identified with `SecurityControlId`,
    #   `SecurityControlArn`, or a mix of both parameters). The security
    #   control ID or Amazon Resource Name (ARN) is the same across standards.
    #
    # @return [Types::BatchGetSecurityControlsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetSecurityControlsResponse#security_controls #security_controls} => Array&lt;Types::SecurityControl&gt;
    #   * {Types::BatchGetSecurityControlsResponse#unprocessed_ids #unprocessed_ids} => Array&lt;Types::UnprocessedSecurityControl&gt;
    #
    #
    # @example Example: To get security control details 
    #
    #   # The following example gets details for the specified controls in the current AWS account and AWS Region.
    #
    #   resp = client.batch_get_security_controls({
    #     security_control_ids: [
    #       "ACM.1", 
    #       "APIGateway.1", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     security_controls: [
    #       {
    #         description: "This AWS control checks whether ACM Certificates in your account are marked for expiration within a specified time period. Certificates provided by ACM are automatically renewed. ACM does not automatically renew certificates that you import.", 
    #         last_update_reason: "Stayed with default value", 
    #         parameters: {
    #           "daysToExpiration" => {
    #             value: {
    #               integer: 30, 
    #             }, 
    #             value_type: "DEFAULT", 
    #           }, 
    #         }, 
    #         remediation_url: "https://docs.aws.amazon.com/console/securityhub/ACM.1/remediation", 
    #         security_control_arn: "arn:aws:securityhub:us-west-2:123456789012:security-control/ACM.1", 
    #         security_control_id: "ACM.1", 
    #         security_control_status: "ENABLED", 
    #         severity_rating: "MEDIUM", 
    #         title: "Imported and ACM-issued certificates should be renewed after a specified time period", 
    #         update_status: "UPDATING", 
    #       }, 
    #       {
    #         description: "This control checks whether all stages of Amazon API Gateway REST and WebSocket APIs have logging enabled. The control fails if logging is not enabled for all methods of a stage or if loggingLevel is neither ERROR nor INFO.", 
    #         last_update_reason: "Updated control parameters to comply with internal requirements", 
    #         parameters: {
    #           "loggingLevel" => {
    #             value: {
    #               enum: "ERROR", 
    #             }, 
    #             value_type: "CUSTOM", 
    #           }, 
    #         }, 
    #         remediation_url: "https://docs.aws.amazon.com/console/securityhub/APIGateway.1/remediation", 
    #         security_control_arn: "arn:aws:securityhub:us-west-2:123456789012:security-control/APIGateway.1", 
    #         security_control_id: "APIGateway.1", 
    #         security_control_status: "ENABLED", 
    #         severity_rating: "MEDIUM", 
    #         title: "API Gateway REST and WebSocket API execution logging should be enabled", 
    #         update_status: "UPDATING", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_security_controls({
    #     security_control_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_controls #=> Array
    #   resp.security_controls[0].security_control_id #=> String
    #   resp.security_controls[0].security_control_arn #=> String
    #   resp.security_controls[0].title #=> String
    #   resp.security_controls[0].description #=> String
    #   resp.security_controls[0].remediation_url #=> String
    #   resp.security_controls[0].severity_rating #=> String, one of "LOW", "MEDIUM", "HIGH", "CRITICAL"
    #   resp.security_controls[0].security_control_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.security_controls[0].update_status #=> String, one of "READY", "UPDATING"
    #   resp.security_controls[0].parameters #=> Hash
    #   resp.security_controls[0].parameters["NonEmptyString"].value_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.security_controls[0].parameters["NonEmptyString"].value.integer #=> Integer
    #   resp.security_controls[0].parameters["NonEmptyString"].value.integer_list #=> Array
    #   resp.security_controls[0].parameters["NonEmptyString"].value.integer_list[0] #=> Integer
    #   resp.security_controls[0].parameters["NonEmptyString"].value.double #=> Float
    #   resp.security_controls[0].parameters["NonEmptyString"].value.string #=> String
    #   resp.security_controls[0].parameters["NonEmptyString"].value.string_list #=> Array
    #   resp.security_controls[0].parameters["NonEmptyString"].value.string_list[0] #=> String
    #   resp.security_controls[0].parameters["NonEmptyString"].value.boolean #=> Boolean
    #   resp.security_controls[0].parameters["NonEmptyString"].value.enum #=> String
    #   resp.security_controls[0].parameters["NonEmptyString"].value.enum_list #=> Array
    #   resp.security_controls[0].parameters["NonEmptyString"].value.enum_list[0] #=> String
    #   resp.security_controls[0].last_update_reason #=> String
    #   resp.unprocessed_ids #=> Array
    #   resp.unprocessed_ids[0].security_control_id #=> String
    #   resp.unprocessed_ids[0].error_code #=> String, one of "INVALID_INPUT", "ACCESS_DENIED", "NOT_FOUND", "RESOURCE_NOT_FOUND", "LIMIT_EXCEEDED"
    #   resp.unprocessed_ids[0].error_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchGetSecurityControls AWS API Documentation
    #
    # @overload batch_get_security_controls(params = {})
    # @param [Hash] params ({})
    def batch_get_security_controls(params = {}, options = {})
      req = build_request(:batch_get_security_controls, params)
      req.send_request(options)
    end

    # For a batch of security controls and standards, identifies whether
    # each control is currently enabled or disabled in a standard.
    #
    # Calls to this operation return a `RESOURCE_NOT_FOUND_EXCEPTION` error
    # when the standard subscription for the association has a
    # `NOT_READY_FOR_UPDATES` value for `StandardsControlsUpdatable`.
    #
    # @option params [required, Array<Types::StandardsControlAssociationId>] :standards_control_association_ids
    #   An array with one or more objects that includes a security control
    #   (identified with `SecurityControlId`, `SecurityControlArn`, or a mix
    #   of both parameters) and the Amazon Resource Name (ARN) of a standard.
    #   This field is used to query the enablement status of a control in a
    #   specified standard. The security control ID or ARN is the same across
    #   standards.
    #
    # @return [Types::BatchGetStandardsControlAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetStandardsControlAssociationsResponse#standards_control_association_details #standards_control_association_details} => Array&lt;Types::StandardsControlAssociationDetail&gt;
    #   * {Types::BatchGetStandardsControlAssociationsResponse#unprocessed_associations #unprocessed_associations} => Array&lt;Types::UnprocessedStandardsControlAssociation&gt;
    #
    #
    # @example Example: To get enablement status of a batch of controls
    #
    #   # The following example retrieves the enablement status of the specified controls in the specified standards.
    #
    #   resp = client.batch_get_standards_control_associations({
    #     standards_control_association_ids: [
    #       {
    #         security_control_id: "CloudTrail.1", 
    #         standards_arn: "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0", 
    #       }, 
    #       {
    #         security_control_id: "CloudWatch.12", 
    #         standards_arn: "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     standards_control_association_details: [
    #       {
    #         association_status: "ENABLED", 
    #         related_requirements: [
    #           "CIS AWS Foundations 2.1", 
    #         ], 
    #         security_control_arn: "arn:aws:securityhub:us-west-2:110479873537:security-control/CloudTrail.1", 
    #         security_control_id: "CloudTrail.1", 
    #         standards_arn: "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0", 
    #         standards_control_description: "AWS CloudTrail is a web service that records AWS API calls for your account and delivers log files to you. The recorded information includes the identity of the API caller, the time of the API call, the source IP address of the API caller, the request parameters, and the response elements returned by the AWS service.", 
    #         standards_control_title: "Ensure CloudTrail is enabled in all regions", 
    #         updated_at: Time.parse("2022-01-13T18:52:29.539000+00:00"), 
    #       }, 
    #       {
    #         association_status: "ENABLED", 
    #         related_requirements: [
    #           "CIS AWS Foundations 3.12", 
    #         ], 
    #         security_control_arn: "arn:aws:securityhub:us-west-2:110479873537:security-control/CloudWatch.12", 
    #         security_control_id: "CloudWatch.12", 
    #         standards_arn: "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0", 
    #         standards_control_description: "Real-time monitoring of API calls can be achieved by directing CloudTrail Logs to CloudWatch Logs and establishing corresponding metric filters and alarms. Network gateways are required to send/receive traffic to a destination outside of a VPC. It is recommended that a metric filter and alarm be established for changes to network gateways.", 
    #         standards_control_title: "Ensure a log metric filter and alarm exist for changes to network gateways", 
    #         updated_at: Time.parse("2022-01-13T18:52:29.686000+00:00"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_standards_control_associations({
    #     standards_control_association_ids: [ # required
    #       {
    #         security_control_id: "NonEmptyString", # required
    #         standards_arn: "NonEmptyString", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.standards_control_association_details #=> Array
    #   resp.standards_control_association_details[0].standards_arn #=> String
    #   resp.standards_control_association_details[0].security_control_id #=> String
    #   resp.standards_control_association_details[0].security_control_arn #=> String
    #   resp.standards_control_association_details[0].association_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.standards_control_association_details[0].related_requirements #=> Array
    #   resp.standards_control_association_details[0].related_requirements[0] #=> String
    #   resp.standards_control_association_details[0].updated_at #=> Time
    #   resp.standards_control_association_details[0].updated_reason #=> String
    #   resp.standards_control_association_details[0].standards_control_title #=> String
    #   resp.standards_control_association_details[0].standards_control_description #=> String
    #   resp.standards_control_association_details[0].standards_control_arns #=> Array
    #   resp.standards_control_association_details[0].standards_control_arns[0] #=> String
    #   resp.unprocessed_associations #=> Array
    #   resp.unprocessed_associations[0].standards_control_association_id.security_control_id #=> String
    #   resp.unprocessed_associations[0].standards_control_association_id.standards_arn #=> String
    #   resp.unprocessed_associations[0].error_code #=> String, one of "INVALID_INPUT", "ACCESS_DENIED", "NOT_FOUND", "RESOURCE_NOT_FOUND", "LIMIT_EXCEEDED"
    #   resp.unprocessed_associations[0].error_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchGetStandardsControlAssociations AWS API Documentation
    #
    # @overload batch_get_standards_control_associations(params = {})
    # @param [Hash] params ({})
    def batch_get_standards_control_associations(params = {}, options = {})
      req = build_request(:batch_get_standards_control_associations, params)
      req.send_request(options)
    end

    # Imports security findings generated by a finding provider into
    # Security Hub. This action is requested by the finding provider to
    # import its findings into Security Hub.
    #
    # `BatchImportFindings` must be called by one of the following:
    #
    # * The Amazon Web Services account that is associated with a finding if
    #   you are using the [default product ARN][1] or are a partner sending
    #   findings from within a customer's Amazon Web Services account. In
    #   these cases, the identifier of the account that you are calling
    #   `BatchImportFindings` from needs to be the same as the
    #   `AwsAccountId` attribute for the finding.
    #
    # * An Amazon Web Services account that Security Hub has allow-listed
    #   for an official partner integration. In this case, you can call
    #   `BatchImportFindings` from the allow-listed account and send
    #   findings from different customer accounts in the same batch.
    #
    # The maximum allowed size for a finding is 240 Kb. An error is returned
    # for any finding larger than 240 Kb.
    #
    # After a finding is created, `BatchImportFindings` cannot be used to
    # update the following finding fields and objects, which Security Hub
    # customers use to manage their investigation workflow.
    #
    # * `Note`
    #
    # * `UserDefinedFields`
    #
    # * `VerificationState`
    #
    # * `Workflow`
    #
    # Finding providers also should not use `BatchImportFindings` to update
    # the following attributes.
    #
    # * `Confidence`
    #
    # * `Criticality`
    #
    # * `RelatedFindings`
    #
    # * `Severity`
    #
    # * `Types`
    #
    # Instead, finding providers use `FindingProviderFields` to provide
    # values for these attributes.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-custom-providers.html#securityhub-custom-providers-bfi-reqs
    #
    # @option params [required, Array<Types::AwsSecurityFinding>] :findings
    #   A list of findings to import. To successfully import a finding, it
    #   must follow the [Amazon Web Services Security Finding Format][1].
    #   Maximum of 100 findings per request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html
    #
    # @return [Types::BatchImportFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchImportFindingsResponse#failed_count #failed_count} => Integer
    #   * {Types::BatchImportFindingsResponse#success_count #success_count} => Integer
    #   * {Types::BatchImportFindingsResponse#failed_findings #failed_findings} => Array&lt;Types::ImportFindingsError&gt;
    #
    #
    # @example Example: To import security findings from a third party provider to Security Hub
    #
    #   # The following example imports findings from a third party provider to Security Hub.
    #
    #   resp = client.batch_import_findings({
    #     findings: [
    #       {
    #         aws_account_id: "123456789012", 
    #         created_at: "2020-05-27T17:05:54.832Z", 
    #         description: "Vulnerability in a CloudTrail trail", 
    #         finding_provider_fields: {
    #           severity: {
    #             label: "LOW", 
    #             original: "10", 
    #           }, 
    #           types: [
    #             "Software and Configuration Checks/Vulnerabilities/CVE", 
    #           ], 
    #         }, 
    #         generator_id: "TestGeneratorId", 
    #         id: "Id1", 
    #         product_arn: "arn:aws:securityhub:us-west-1:123456789012:product/123456789012/default", 
    #         resources: [
    #           {
    #             id: "arn:aws:cloudtrail:us-west-1:123456789012:trail/TrailName", 
    #             partition: "aws", 
    #             region: "us-west-1", 
    #             type: "AwsCloudTrailTrail", 
    #           }, 
    #         ], 
    #         schema_version: "2018-10-08", 
    #         title: "CloudTrail trail vulnerability", 
    #         updated_at: "2020-06-02T16:05:54.832Z", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failed_count: 123, 
    #     failed_findings: [
    #     ], 
    #     success_count: 123, 
    #   }
    #
    # @example Response structure
    #
    #   resp.failed_count #=> Integer
    #   resp.success_count #=> Integer
    #   resp.failed_findings #=> Array
    #   resp.failed_findings[0].id #=> String
    #   resp.failed_findings[0].error_code #=> String
    #   resp.failed_findings[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchImportFindings AWS API Documentation
    #
    # @overload batch_import_findings(params = {})
    # @param [Hash] params ({})
    def batch_import_findings(params = {}, options = {})
      req = build_request(:batch_import_findings, params)
      req.send_request(options)
    end

    # Updates one or more automation rules based on rule Amazon Resource
    # Names (ARNs) and input parameters.
    #
    # @option params [required, Array<Types::UpdateAutomationRulesRequestItem>] :update_automation_rules_request_items
    #   An array of ARNs for the rules that are to be updated. Optionally, you
    #   can also include `RuleStatus` and `RuleOrder`.
    #
    # @return [Types::BatchUpdateAutomationRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateAutomationRulesResponse#processed_automation_rules #processed_automation_rules} => Array&lt;String&gt;
    #   * {Types::BatchUpdateAutomationRulesResponse#unprocessed_automation_rules #unprocessed_automation_rules} => Array&lt;Types::UnprocessedAutomationRule&gt;
    #
    #
    # @example Example: To update one ore more automation rules
    #
    #   # The following example updates the specified automation rules.
    #
    #   resp = client.batch_update_automation_rules({
    #     update_automation_rules_request_items: [
    #       {
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         rule_order: 15, 
    #         rule_status: "ENABLED", 
    #       }, 
    #       {
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #         rule_status: "DISABLED", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     processed_automation_rules: [
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #       "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_automation_rules({
    #     update_automation_rules_request_items: [ # required
    #       {
    #         rule_arn: "NonEmptyString", # required
    #         rule_status: "ENABLED", # accepts ENABLED, DISABLED
    #         rule_order: 1,
    #         description: "NonEmptyString",
    #         rule_name: "NonEmptyString",
    #         is_terminal: false,
    #         criteria: {
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #               gt: 1.0,
    #               lt: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           compliance_security_control_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           compliance_associated_standards_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           workflow_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #             },
    #           ],
    #           resource_application_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           resource_application_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #           aws_account_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #             },
    #           ],
    #         },
    #         actions: [
    #           {
    #             type: "FINDING_FIELDS_UPDATE", # accepts FINDING_FIELDS_UPDATE
    #             finding_fields_update: {
    #               note: {
    #                 text: "NonEmptyString", # required
    #                 updated_by: "NonEmptyString", # required
    #               },
    #               severity: {
    #                 normalized: 1,
    #                 product: 1.0,
    #                 label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #               },
    #               verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #               confidence: 1,
    #               criticality: 1,
    #               types: ["NonEmptyString"],
    #               user_defined_fields: {
    #                 "NonEmptyString" => "NonEmptyString",
    #               },
    #               workflow: {
    #                 status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #               },
    #               related_findings: [
    #                 {
    #                   product_arn: "NonEmptyString", # required
    #                   id: "NonEmptyString", # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.processed_automation_rules #=> Array
    #   resp.processed_automation_rules[0] #=> String
    #   resp.unprocessed_automation_rules #=> Array
    #   resp.unprocessed_automation_rules[0].rule_arn #=> String
    #   resp.unprocessed_automation_rules[0].error_code #=> Integer
    #   resp.unprocessed_automation_rules[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateAutomationRules AWS API Documentation
    #
    # @overload batch_update_automation_rules(params = {})
    # @param [Hash] params ({})
    def batch_update_automation_rules(params = {}, options = {})
      req = build_request(:batch_update_automation_rules, params)
      req.send_request(options)
    end

    # Used by Security Hub customers to update information about their
    # investigation into one or more findings. Requested by administrator
    # accounts or member accounts. Administrator accounts can update
    # findings for their account and their member accounts. A member account
    # can update findings only for their own account. Administrator and
    # member accounts can use this operation to update the following fields
    # and objects for one or more findings:
    #
    # * `Confidence`
    #
    # * `Criticality`
    #
    # * `Note`
    #
    # * `RelatedFindings`
    #
    # * `Severity`
    #
    # * `Types`
    #
    # * `UserDefinedFields`
    #
    # * `VerificationState`
    #
    # * `Workflow`
    #
    # If you use this operation to update a finding, your updates don’t
    # affect the value for the `UpdatedAt` field of the finding. Also note
    # that it can take several minutes for Security Hub to process your
    # request and update each finding specified in the request.
    #
    # You can configure IAM policies to restrict access to fields and field
    # values. For example, you might not want member accounts to be able to
    # suppress findings or change the finding severity. For more information
    # see [Configuring access to BatchUpdateFindings][1] in the *Security
    # Hub User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchupdatefindings.html#batchupdatefindings-configure-access
    #
    # @option params [required, Array<Types::AwsSecurityFindingIdentifier>] :finding_identifiers
    #   The list of findings to update. `BatchUpdateFindings` can be used to
    #   update up to 100 findings at a time.
    #
    #   For each finding, the list provides the finding identifier and the ARN
    #   of the finding provider.
    #
    # @option params [Types::NoteUpdate] :note
    #   The updated note.
    #
    # @option params [Types::SeverityUpdate] :severity
    #   Used to update the finding severity.
    #
    # @option params [String] :verification_state
    #   Indicates the veracity of a finding.
    #
    #   The available values for `VerificationState` are as follows.
    #
    #   * `UNKNOWN` – The default disposition of a security finding
    #
    #   * `TRUE_POSITIVE` – The security finding is confirmed
    #
    #   * `FALSE_POSITIVE` – The security finding was determined to be a false
    #     alarm
    #
    #   * `BENIGN_POSITIVE` – A special case of `TRUE_POSITIVE` where the
    #     finding doesn't pose any threat, is expected, or both
    #
    # @option params [Integer] :confidence
    #   The updated value for the finding confidence. Confidence is defined as
    #   the likelihood that a finding accurately identifies the behavior or
    #   issue that it was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #
    # @option params [Integer] :criticality
    #   The updated value for the level of importance assigned to the
    #   resources associated with the findings.
    #
    #   A score of 0 means that the underlying resources have no criticality,
    #   and a score of 100 is reserved for the most critical resources.
    #
    # @option params [Array<String>] :types
    #   One or more finding types in the format of
    #   namespace/category/classifier that classify a finding.
    #
    #   Valid namespace values are as follows.
    #
    #   * Software and Configuration Checks
    #
    #   * TTPs
    #
    #   * Effects
    #
    #   * Unusual Behaviors
    #
    #   * Sensitive Data Identifications
    #
    # @option params [Hash<String,String>] :user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #
    # @option params [Types::WorkflowUpdate] :workflow
    #   Used to update the workflow status of a finding.
    #
    #   The workflow status indicates the progress of the investigation into
    #   the finding.
    #
    # @option params [Array<Types::RelatedFinding>] :related_findings
    #   A list of findings that are related to the updated findings.
    #
    # @return [Types::BatchUpdateFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateFindingsResponse#processed_findings #processed_findings} => Array&lt;Types::AwsSecurityFindingIdentifier&gt;
    #   * {Types::BatchUpdateFindingsResponse#unprocessed_findings #unprocessed_findings} => Array&lt;Types::BatchUpdateFindingsUnprocessedFinding&gt;
    #
    #
    # @example Example: To update Security Hub findings
    #
    #   # The following example updates Security Hub findings. The finding identifier parameter specifies which findings to
    #   # update. Only specific finding fields can be updated with this operation.
    #
    #   resp = client.batch_update_findings({
    #     confidence: 80, 
    #     criticality: 80, 
    #     finding_identifiers: [
    #       {
    #         id: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1/PCI.Lambda.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         product_arn: "arn:aws:securityhub:us-west-1::product/aws/securityhub", 
    #       }, 
    #       {
    #         id: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1/PCI.Lambda.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #         product_arn: "arn:aws:securityhub:us-west-1::product/aws/securityhub", 
    #       }, 
    #     ], 
    #     note: {
    #       text: "Known issue that is not a risk.", 
    #       updated_by: "user1", 
    #     }, 
    #     related_findings: [
    #       {
    #         id: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1/PCI.Lambda.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE33333", 
    #         product_arn: "arn:aws:securityhub:us-west-1::product/aws/securityhub", 
    #       }, 
    #     ], 
    #     severity: {
    #       label: "LOW", 
    #     }, 
    #     types: [
    #       "Software and Configuration Checks/Vulnerabilities/CVE", 
    #     ], 
    #     user_defined_fields: {
    #       "reviewedByCio" => "true", 
    #     }, 
    #     verification_state: "TRUE_POSITIVE", 
    #     workflow: {
    #       status: "RESOLVED", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     processed_findings: [
    #       {
    #         id: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1/PCI.Lambda.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         product_arn: "arn:aws:securityhub:us-west-1::product/aws/securityhub", 
    #       }, 
    #       {
    #         id: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1/PCI.Lambda.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #         product_arn: "arn:aws:securityhub:us-west-1::product/aws/securityhub", 
    #       }, 
    #     ], 
    #     unprocessed_findings: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_findings({
    #     finding_identifiers: [ # required
    #       {
    #         id: "NonEmptyString", # required
    #         product_arn: "NonEmptyString", # required
    #       },
    #     ],
    #     note: {
    #       text: "NonEmptyString", # required
    #       updated_by: "NonEmptyString", # required
    #     },
    #     severity: {
    #       normalized: 1,
    #       product: 1.0,
    #       label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #     },
    #     verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #     confidence: 1,
    #     criticality: 1,
    #     types: ["NonEmptyString"],
    #     user_defined_fields: {
    #       "NonEmptyString" => "NonEmptyString",
    #     },
    #     workflow: {
    #       status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #     },
    #     related_findings: [
    #       {
    #         product_arn: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.processed_findings #=> Array
    #   resp.processed_findings[0].id #=> String
    #   resp.processed_findings[0].product_arn #=> String
    #   resp.unprocessed_findings #=> Array
    #   resp.unprocessed_findings[0].finding_identifier.id #=> String
    #   resp.unprocessed_findings[0].finding_identifier.product_arn #=> String
    #   resp.unprocessed_findings[0].error_code #=> String
    #   resp.unprocessed_findings[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateFindings AWS API Documentation
    #
    # @overload batch_update_findings(params = {})
    # @param [Hash] params ({})
    def batch_update_findings(params = {}, options = {})
      req = build_request(:batch_update_findings, params)
      req.send_request(options)
    end

    # Used by customers to update information about their investigation into
    # a finding. Requested by delegated administrator accounts or member
    # accounts. Delegated administrator accounts can update findings for
    # their account and their member accounts. Member accounts can update
    # findings for their account. `BatchUpdateFindings` and
    # `BatchUpdateFindingV2` both use `securityhub:BatchUpdateFindings` in
    # the `Action` element of an IAM policy statement. You must have
    # permission to perform the `securityhub:BatchUpdateFindings` action.
    # Updates from `BatchUpdateFindingsV2` don't affect the value of
    # f`inding_info.modified_time`, `finding_info.modified_time_dt`, `time`,
    # `time_dt for a finding`. This API is in public preview and subject to
    # change.
    #
    # @option params [Array<String>] :metadata_uids
    #   The list of finding `metadata.uid` to indicate findings to update.
    #   Finding `metadata.uid` is a globally unique identifier associated with
    #   the finding. Customers cannot use `MetadataUids` together with
    #   `FindingIdentifiers`.
    #
    # @option params [Array<Types::OcsfFindingIdentifier>] :finding_identifiers
    #   Provides information to identify a specific V2 finding.
    #
    # @option params [String] :comment
    #   The updated value for a user provided comment about the finding.
    #   Minimum character length 1. Maximum character length 512.
    #
    # @option params [Integer] :severity_id
    #   The updated value for the normalized severity identifier. The severity
    #   ID is an integer with the allowed enum values \[0, 1, 2, 3, 4, 5,
    #   99\]. When customer provides the updated severity ID, the string
    #   sibling severity will automatically be updated in the finding.
    #
    # @option params [Integer] :status_id
    #   The updated value for the normalized status identifier. The status ID
    #   is an integer with the allowed enum values \[0, 1, 2, 3, 4, 5, 6,
    #   99\]. When customer provides the updated status ID, the string sibling
    #   status will automatically be updated in the finding.
    #
    # @return [Types::BatchUpdateFindingsV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateFindingsV2Response#processed_findings #processed_findings} => Array&lt;Types::BatchUpdateFindingsV2ProcessedFinding&gt;
    #   * {Types::BatchUpdateFindingsV2Response#unprocessed_findings #unprocessed_findings} => Array&lt;Types::BatchUpdateFindingsV2UnprocessedFinding&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_findings_v2({
    #     metadata_uids: ["NonEmptyString"],
    #     finding_identifiers: [
    #       {
    #         cloud_account_uid: "NonEmptyString", # required
    #         finding_info_uid: "NonEmptyString", # required
    #         metadata_product_uid: "NonEmptyString", # required
    #       },
    #     ],
    #     comment: "NonEmptyString",
    #     severity_id: 1,
    #     status_id: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.processed_findings #=> Array
    #   resp.processed_findings[0].finding_identifier.cloud_account_uid #=> String
    #   resp.processed_findings[0].finding_identifier.finding_info_uid #=> String
    #   resp.processed_findings[0].finding_identifier.metadata_product_uid #=> String
    #   resp.processed_findings[0].metadata_uid #=> String
    #   resp.unprocessed_findings #=> Array
    #   resp.unprocessed_findings[0].finding_identifier.cloud_account_uid #=> String
    #   resp.unprocessed_findings[0].finding_identifier.finding_info_uid #=> String
    #   resp.unprocessed_findings[0].finding_identifier.metadata_product_uid #=> String
    #   resp.unprocessed_findings[0].metadata_uid #=> String
    #   resp.unprocessed_findings[0].error_code #=> String, one of "ResourceNotFoundException", "ValidationException", "InternalServerException", "ConflictException"
    #   resp.unprocessed_findings[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateFindingsV2 AWS API Documentation
    #
    # @overload batch_update_findings_v2(params = {})
    # @param [Hash] params ({})
    def batch_update_findings_v2(params = {}, options = {})
      req = build_request(:batch_update_findings_v2, params)
      req.send_request(options)
    end

    # For a batch of security controls and standards, this operation updates
    # the enablement status of a control in a standard.
    #
    # @option params [required, Array<Types::StandardsControlAssociationUpdate>] :standards_control_association_updates
    #   Updates the enablement status of a security control in a specified
    #   standard.
    #
    #   Calls to this operation return a `RESOURCE_NOT_FOUND_EXCEPTION` error
    #   when the standard subscription for the control has
    #   `StandardsControlsUpdatable` value `NOT_READY_FOR_UPDATES`.
    #
    # @return [Types::BatchUpdateStandardsControlAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateStandardsControlAssociationsResponse#unprocessed_association_updates #unprocessed_association_updates} => Array&lt;Types::UnprocessedStandardsControlAssociationUpdate&gt;
    #
    #
    # @example Example: To update enablement status of a batch of controls
    #
    #   # The following example disables CloudWatch.12 in CIS AWS Foundations Benchmark v1.2.0. The example returns an error for
    #   # CloudTrail.1 because an invalid standard ARN is provided.
    #
    #   resp = client.batch_update_standards_control_associations({
    #     standards_control_association_updates: [
    #       {
    #         association_status: "DISABLED", 
    #         security_control_id: "CloudTrail.1", 
    #         standards_arn: "arn:aws:securityhub:::ruleset/sample-standard/v/1.1.0", 
    #         updated_reason: "Not relevant to environment", 
    #       }, 
    #       {
    #         association_status: "DISABLED", 
    #         security_control_id: "CloudWatch.12", 
    #         standards_arn: "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0", 
    #         updated_reason: "Not relevant to environment", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     unprocessed_association_updates: [
    #       {
    #         error_code: "INVALID_INPUT", 
    #         error_reason: "Invalid Standards Arn: 'arn:aws:securityhub:::ruleset/sample-standard/v/1.1.0'", 
    #         standards_control_association_update: {
    #           association_status: "DISABLED", 
    #           security_control_id: "CloudTrail.1", 
    #           standards_arn: "arn:aws:securityhub:::ruleset/sample-standard/v/1.1.0", 
    #           updated_reason: "Test Reason", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_standards_control_associations({
    #     standards_control_association_updates: [ # required
    #       {
    #         standards_arn: "NonEmptyString", # required
    #         security_control_id: "NonEmptyString", # required
    #         association_status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         updated_reason: "NonEmptyString",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_association_updates #=> Array
    #   resp.unprocessed_association_updates[0].standards_control_association_update.standards_arn #=> String
    #   resp.unprocessed_association_updates[0].standards_control_association_update.security_control_id #=> String
    #   resp.unprocessed_association_updates[0].standards_control_association_update.association_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.unprocessed_association_updates[0].standards_control_association_update.updated_reason #=> String
    #   resp.unprocessed_association_updates[0].error_code #=> String, one of "INVALID_INPUT", "ACCESS_DENIED", "NOT_FOUND", "RESOURCE_NOT_FOUND", "LIMIT_EXCEEDED"
    #   resp.unprocessed_association_updates[0].error_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateStandardsControlAssociations AWS API Documentation
    #
    # @overload batch_update_standards_control_associations(params = {})
    # @param [Hash] params ({})
    def batch_update_standards_control_associations(params = {}, options = {})
      req = build_request(:batch_update_standards_control_associations, params)
      req.send_request(options)
    end

    # Grants permission to complete the authorization based on input
    # parameters. This API is in preview release and subject to change.
    #
    # @option params [required, String] :auth_code
    #   The authCode retrieved from authUrl to complete the OAuth 2.0
    #   authorization code flow.
    #
    # @option params [required, String] :auth_state
    #   The authState retrieved from authUrl to complete the OAuth 2.0
    #   authorization code flow.
    #
    # @return [Types::ConnectorRegistrationsV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConnectorRegistrationsV2Response#connector_arn #connector_arn} => String
    #   * {Types::ConnectorRegistrationsV2Response#connector_id #connector_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.connector_registrations_v2({
    #     auth_code: "NonEmptyString", # required
    #     auth_state: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_arn #=> String
    #   resp.connector_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ConnectorRegistrationsV2 AWS API Documentation
    #
    # @overload connector_registrations_v2(params = {})
    # @param [Hash] params ({})
    def connector_registrations_v2(params = {}, options = {})
      req = build_request(:connector_registrations_v2, params)
      req.send_request(options)
    end

    # Creates a custom action target in Security Hub.
    #
    # You can use custom actions on findings and insights in Security Hub to
    # trigger target actions in Amazon CloudWatch Events.
    #
    # @option params [required, String] :name
    #   The name of the custom action target. Can contain up to 20 characters.
    #
    # @option params [required, String] :description
    #   The description for the custom action target.
    #
    # @option params [required, String] :id
    #   The ID for the custom action target. Can contain up to 20 alphanumeric
    #   characters.
    #
    # @return [Types::CreateActionTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateActionTargetResponse#action_target_arn #action_target_arn} => String
    #
    #
    # @example Example: To create a custom action target
    #
    #   # The following example creates a custom action target in Security Hub. Custom actions on findings and insights
    #   # automatically trigger actions in Amazon CloudWatch Events.
    #
    #   resp = client.create_action_target({
    #     description: "Action to send the finding for remediation tracking", 
    #     id: "Remediation", 
    #     name: "Send to remediation", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     action_target_arn: "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_action_target({
    #     name: "NonEmptyString", # required
    #     description: "NonEmptyString", # required
    #     id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action_target_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateActionTarget AWS API Documentation
    #
    # @overload create_action_target(params = {})
    # @param [Hash] params ({})
    def create_action_target(params = {}, options = {})
      req = build_request(:create_action_target, params)
      req.send_request(options)
    end

    # Enables aggregation across Amazon Web Services Regions. This API is in
    # public preview and subject to change.
    #
    # @option params [required, String] :region_linking_mode
    #   Determines how Regions are linked to an Aggregator V2.
    #
    # @option params [Array<String>] :linked_regions
    #   The list of Regions that are linked to the aggregation Region.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to be applied to the AggregatorV2.
    #
    # @option params [String] :client_token
    #   A unique identifier used to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAggregatorV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAggregatorV2Response#aggregator_v2_arn #aggregator_v2_arn} => String
    #   * {Types::CreateAggregatorV2Response#aggregation_region #aggregation_region} => String
    #   * {Types::CreateAggregatorV2Response#region_linking_mode #region_linking_mode} => String
    #   * {Types::CreateAggregatorV2Response#linked_regions #linked_regions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_aggregator_v2({
    #     region_linking_mode: "NonEmptyString", # required
    #     linked_regions: ["NonEmptyString"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregator_v2_arn #=> String
    #   resp.aggregation_region #=> String
    #   resp.region_linking_mode #=> String
    #   resp.linked_regions #=> Array
    #   resp.linked_regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateAggregatorV2 AWS API Documentation
    #
    # @overload create_aggregator_v2(params = {})
    # @param [Hash] params ({})
    def create_aggregator_v2(params = {}, options = {})
      req = build_request(:create_aggregator_v2, params)
      req.send_request(options)
    end

    # Creates an automation rule based on input parameters.
    #
    # @option params [Hash<String,String>] :tags
    #   User-defined tags associated with an automation rule.
    #
    # @option params [String] :rule_status
    #   Whether the rule is active after it is created. If this parameter is
    #   equal to `ENABLED`, Security Hub starts applying the rule to findings
    #   and finding updates after the rule is created. To change the value of
    #   this parameter after creating a rule, use [
    #   `BatchUpdateAutomationRules` ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateAutomationRules.html
    #
    # @option params [required, Integer] :rule_order
    #   An integer ranging from 1 to 1000 that represents the order in which
    #   the rule action is applied to findings. Security Hub applies rules
    #   with lower values for this parameter first.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule.
    #
    # @option params [required, String] :description
    #   A description of the rule.
    #
    # @option params [Boolean] :is_terminal
    #   Specifies whether a rule is the last to be applied with respect to a
    #   finding that matches the rule criteria. This is useful when a finding
    #   matches the criteria for multiple rules, and each rule has different
    #   actions. If a rule is terminal, Security Hub applies the rule action
    #   to a finding that matches the rule criteria and doesn't evaluate
    #   other rules for the finding. By default, a rule isn't terminal.
    #
    # @option params [required, Types::AutomationRulesFindingFilters] :criteria
    #   A set of ASFF finding field attributes and corresponding expected
    #   values that Security Hub uses to filter findings. If a rule is enabled
    #   and a finding matches the conditions specified in this parameter,
    #   Security Hub applies the rule action to the finding.
    #
    # @option params [required, Array<Types::AutomationRulesAction>] :actions
    #   One or more actions to update finding fields if a finding matches the
    #   conditions specified in `Criteria`.
    #
    # @return [Types::CreateAutomationRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAutomationRuleResponse#rule_arn #rule_arn} => String
    #
    #
    # @example Example: To create an automation rule
    #
    #   # The following example creates an automation rule.
    #
    #   resp = client.create_automation_rule({
    #     actions: [
    #       {
    #         finding_fields_update: {
    #           note: {
    #             text: "This is a critical S3 bucket, please look into this ASAP", 
    #             updated_by: "test-user", 
    #           }, 
    #           severity: {
    #             label: "CRITICAL", 
    #           }, 
    #         }, 
    #         type: "FINDING_FIELDS_UPDATE", 
    #       }, 
    #     ], 
    #     criteria: {
    #       compliance_status: [
    #         {
    #           comparison: "EQUALS", 
    #           value: "FAILED", 
    #         }, 
    #       ], 
    #       product_name: [
    #         {
    #           comparison: "EQUALS", 
    #           value: "Security Hub", 
    #         }, 
    #       ], 
    #       record_state: [
    #         {
    #           comparison: "EQUALS", 
    #           value: "ACTIVE", 
    #         }, 
    #       ], 
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", 
    #           value: "arn:aws:s3:::examplebucket/developers/design_info.doc", 
    #         }, 
    #       ], 
    #       workflow_status: [
    #         {
    #           comparison: "EQUALS", 
    #           value: "NEW", 
    #         }, 
    #       ], 
    #     }, 
    #     description: "Elevate finding severity to Critical for important resources", 
    #     is_terminal: false, 
    #     rule_name: "Elevate severity for important resources", 
    #     rule_order: 1, 
    #     rule_status: "ENABLED", 
    #     tags: {
    #       "important-resources-rule" => "s3-bucket", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_automation_rule({
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     rule_status: "ENABLED", # accepts ENABLED, DISABLED
    #     rule_order: 1, # required
    #     rule_name: "NonEmptyString", # required
    #     description: "NonEmptyString", # required
    #     is_terminal: false,
    #     criteria: { # required
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_security_control_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_associated_standards_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       resource_application_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_application_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       aws_account_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #     },
    #     actions: [ # required
    #       {
    #         type: "FINDING_FIELDS_UPDATE", # accepts FINDING_FIELDS_UPDATE
    #         finding_fields_update: {
    #           note: {
    #             text: "NonEmptyString", # required
    #             updated_by: "NonEmptyString", # required
    #           },
    #           severity: {
    #             normalized: 1,
    #             product: 1.0,
    #             label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #           },
    #           verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #           confidence: 1,
    #           criticality: 1,
    #           types: ["NonEmptyString"],
    #           user_defined_fields: {
    #             "NonEmptyString" => "NonEmptyString",
    #           },
    #           workflow: {
    #             status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #           },
    #           related_findings: [
    #             {
    #               product_arn: "NonEmptyString", # required
    #               id: "NonEmptyString", # required
    #             },
    #           ],
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateAutomationRule AWS API Documentation
    #
    # @overload create_automation_rule(params = {})
    # @param [Hash] params ({})
    def create_automation_rule(params = {}, options = {})
      req = build_request(:create_automation_rule, params)
      req.send_request(options)
    end

    # Creates a V2 automation rule. This API is in public preview and
    # subject to change.
    #
    # @option params [required, String] :rule_name
    #   The name of the V2 automation rule.
    #
    # @option params [String] :rule_status
    #   The status of the V2 automation rule.
    #
    # @option params [required, String] :description
    #   A description of the V2 automation rule.
    #
    # @option params [required, Float] :rule_order
    #   The value for the rule priority.
    #
    # @option params [required, Types::Criteria] :criteria
    #   The filtering type and configuration of the automation rule.
    #
    # @option params [required, Array<Types::AutomationRulesActionV2>] :actions
    #   A list of actions to be performed when the rule criteria is met.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs associated with the V2 automation rule.
    #
    # @option params [String] :client_token
    #   A unique identifier used to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAutomationRuleV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAutomationRuleV2Response#rule_arn #rule_arn} => String
    #   * {Types::CreateAutomationRuleV2Response#rule_id #rule_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_automation_rule_v2({
    #     rule_name: "NonEmptyString", # required
    #     rule_status: "ENABLED", # accepts ENABLED, DISABLED
    #     description: "NonEmptyString", # required
    #     rule_order: 1.0, # required
    #     criteria: { # required
    #       ocsf_finding_criteria: {
    #         composite_filters: [
    #           {
    #             string_filters: [
    #               {
    #                 field_name: "metadata.uid", # accepts metadata.uid, activity_name, cloud.account.uid, cloud.provider, cloud.region, compliance.assessments.category, compliance.assessments.name, compliance.control, compliance.status, compliance.standards, finding_info.desc, finding_info.src_url, finding_info.title, finding_info.types, finding_info.uid, finding_info.related_events.uid, finding_info.related_events.product.uid, finding_info.related_events.title, metadata.product.name, metadata.product.uid, metadata.product.vendor_name, remediation.desc, remediation.references, resources.cloud_partition, resources.region, resources.type, resources.uid, severity, status, comment, vulnerabilities.fix_coverage, class_name, databucket.encryption_details.algorithm, databucket.encryption_details.key_uid, databucket.file.data_classifications.classifier_details.type, evidences.actor.user.account.uid, evidences.api.operation, evidences.api.response.error_message, evidences.api.service.name, evidences.connection_info.direction, evidences.connection_info.protocol_name, evidences.dst_endpoint.autonomous_system.name, evidences.dst_endpoint.location.city, evidences.dst_endpoint.location.country, evidences.src_endpoint.autonomous_system.name, evidences.src_endpoint.hostname, evidences.src_endpoint.location.city, evidences.src_endpoint.location.country, finding_info.analytic.name, malware.name, malware_scan_info.uid, malware.severity, resources.cloud_function.layers.uid_alt, resources.cloud_function.runtime, resources.cloud_function.user.uid, resources.device.encryption_details.key_uid, resources.device.image.uid, resources.image.architecture, resources.image.registry_uid, resources.image.repository_name, resources.image.uid, resources.subnet_info.uid, resources.vpc_uid, vulnerabilities.affected_code.file.path, vulnerabilities.affected_packages.name, vulnerabilities.cve.epss.score, vulnerabilities.cve.uid, vulnerabilities.related_vulnerabilities, cloud.account.name
    #                 filter: {
    #                   value: "NonEmptyString",
    #                   comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #                 },
    #               },
    #             ],
    #             date_filters: [
    #               {
    #                 field_name: "finding_info.created_time_dt", # accepts finding_info.created_time_dt, finding_info.first_seen_time_dt, finding_info.last_seen_time_dt, finding_info.modified_time_dt, resources.image.created_time_dt, resources.image.last_used_time_dt, resources.modified_time_dt
    #                 filter: {
    #                   start: "NonEmptyString",
    #                   end: "NonEmptyString",
    #                   date_range: {
    #                     value: 1,
    #                     unit: "DAYS", # accepts DAYS
    #                   },
    #                 },
    #               },
    #             ],
    #             boolean_filters: [
    #               {
    #                 field_name: "compliance.assessments.meets_criteria", # accepts compliance.assessments.meets_criteria, vulnerabilities.is_exploit_available, vulnerabilities.is_fix_available
    #                 filter: {
    #                   value: false,
    #                 },
    #               },
    #             ],
    #             number_filters: [
    #               {
    #                 field_name: "activity_id", # accepts activity_id, compliance.status_id, confidence_score, severity_id, status_id, finding_info.related_events_count, evidences.api.response.code, evidences.dst_endpoint.autonomous_system.number, evidences.dst_endpoint.port, evidences.src_endpoint.autonomous_system.number, evidences.src_endpoint.port, resources.image.in_use_count
    #                 filter: {
    #                   gte: 1.0,
    #                   lte: 1.0,
    #                   eq: 1.0,
    #                   gt: 1.0,
    #                   lt: 1.0,
    #                 },
    #               },
    #             ],
    #             map_filters: [
    #               {
    #                 field_name: "resources.tags", # accepts resources.tags, compliance.control_parameters, databucket.tags, finding_info.tags
    #                 filter: {
    #                   key: "NonEmptyString",
    #                   value: "NonEmptyString",
    #                   comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #                 },
    #               },
    #             ],
    #             ip_filters: [
    #               {
    #                 field_name: "evidences.dst_endpoint.ip", # accepts evidences.dst_endpoint.ip, evidences.src_endpoint.ip
    #                 filter: {
    #                   cidr: "NonEmptyString",
    #                 },
    #               },
    #             ],
    #             nested_composite_filters: {
    #               # recursive CompositeFilterList
    #             },
    #             operator: "AND", # accepts AND, OR
    #           },
    #         ],
    #         composite_operator: "AND", # accepts AND, OR
    #       },
    #     },
    #     actions: [ # required
    #       {
    #         type: "FINDING_FIELDS_UPDATE", # required, accepts FINDING_FIELDS_UPDATE, EXTERNAL_INTEGRATION
    #         finding_fields_update: {
    #           severity_id: 1,
    #           comment: "NonEmptyString",
    #           status_id: 1,
    #         },
    #         external_integration_configuration: {
    #           connector_arn: "NonEmptyString",
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_arn #=> String
    #   resp.rule_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateAutomationRuleV2 AWS API Documentation
    #
    # @overload create_automation_rule_v2(params = {})
    # @param [Hash] params ({})
    def create_automation_rule_v2(params = {}, options = {})
      req = build_request(:create_automation_rule_v2, params)
      req.send_request(options)
    end

    # Creates a configuration policy with the defined configuration. Only
    # the Security Hub delegated administrator can invoke this operation
    # from the home Region.
    #
    # @option params [required, String] :name
    #   The name of the configuration policy. Alphanumeric characters and the
    #   following ASCII characters are permitted: `-, ., !, *, /`.
    #
    # @option params [String] :description
    #   The description of the configuration policy.
    #
    # @option params [required, Types::Policy] :configuration_policy
    #   An object that defines how Security Hub is configured. It includes
    #   whether Security Hub is enabled or disabled, a list of enabled
    #   security standards, a list of enabled or disabled security controls,
    #   and a list of custom parameter values for specified controls. If you
    #   provide a list of security controls that are enabled in the
    #   configuration policy, Security Hub disables all other controls
    #   (including newly released controls). If you provide a list of security
    #   controls that are disabled in the configuration policy, Security Hub
    #   enables all other controls (including newly released controls).
    #
    # @option params [Hash<String,String>] :tags
    #   User-defined tags associated with a configuration policy. For more
    #   information, see [Tagging Security Hub resources][1] in the *Security
    #   Hub user guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/tagging-resources.html
    #
    # @return [Types::CreateConfigurationPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfigurationPolicyResponse#arn #arn} => String
    #   * {Types::CreateConfigurationPolicyResponse#id #id} => String
    #   * {Types::CreateConfigurationPolicyResponse#name #name} => String
    #   * {Types::CreateConfigurationPolicyResponse#description #description} => String
    #   * {Types::CreateConfigurationPolicyResponse#updated_at #updated_at} => Time
    #   * {Types::CreateConfigurationPolicyResponse#created_at #created_at} => Time
    #   * {Types::CreateConfigurationPolicyResponse#configuration_policy #configuration_policy} => Types::Policy
    #
    #
    # @example Example: To create a configuration policy
    #
    #   # This operation creates a configuration policy in Security Hub.
    #
    #   resp = client.create_configuration_policy({
    #     configuration_policy: {
    #       security_hub: {
    #         enabled_standard_identifiers: [
    #           "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0", 
    #           "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0", 
    #         ], 
    #         security_controls_configuration: {
    #           disabled_security_control_identifiers: [
    #             "CloudWatch.1", 
    #           ], 
    #           security_control_custom_parameters: [
    #             {
    #               parameters: {
    #                 "daysToExpiration" => {
    #                   value: {
    #                     integer: 14, 
    #                   }, 
    #                   value_type: "CUSTOM", 
    #                 }, 
    #               }, 
    #               security_control_id: "ACM.1", 
    #             }, 
    #           ], 
    #         }, 
    #         service_enabled: true, 
    #       }, 
    #     }, 
    #     description: "Configuration policy for testing FSBP and CIS", 
    #     name: "TestConfigurationPolicy", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     configuration_policy: {
    #       security_hub: {
    #         enabled_standard_identifiers: [
    #           "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0", 
    #           "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0", 
    #         ], 
    #         security_controls_configuration: {
    #           disabled_security_control_identifiers: [
    #             "CloudWatch.1", 
    #           ], 
    #           security_control_custom_parameters: [
    #             {
    #               parameters: {
    #                 "daysToExpiration" => {
    #                   value: {
    #                     integer: 14, 
    #                   }, 
    #                   value_type: "CUSTOM", 
    #                 }, 
    #               }, 
    #               security_control_id: "ACM.1", 
    #             }, 
    #           ], 
    #         }, 
    #         service_enabled: true, 
    #       }, 
    #     }, 
    #     created_at: Time.parse("2023-01-11T06:17:17.154Z"), 
    #     description: "Configuration policy for testing FSBP and CIS", 
    #     id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     name: "TestConfigurationPolicy", 
    #     updated_at: Time.parse("2023-01-11T06:17:17.154Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_policy({
    #     name: "NonEmptyString", # required
    #     description: "NonEmptyString",
    #     configuration_policy: { # required
    #       security_hub: {
    #         service_enabled: false,
    #         enabled_standard_identifiers: ["NonEmptyString"],
    #         security_controls_configuration: {
    #           enabled_security_control_identifiers: ["NonEmptyString"],
    #           disabled_security_control_identifiers: ["NonEmptyString"],
    #           security_control_custom_parameters: [
    #             {
    #               security_control_id: "NonEmptyString",
    #               parameters: {
    #                 "NonEmptyString" => {
    #                   value_type: "DEFAULT", # required, accepts DEFAULT, CUSTOM
    #                   value: {
    #                     integer: 1,
    #                     integer_list: [1],
    #                     double: 1.0,
    #                     string: "NonEmptyString",
    #                     string_list: ["NonEmptyString"],
    #                     boolean: false,
    #                     enum: "NonEmptyString",
    #                     enum_list: ["NonEmptyString"],
    #                   },
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.updated_at #=> Time
    #   resp.created_at #=> Time
    #   resp.configuration_policy.security_hub.service_enabled #=> Boolean
    #   resp.configuration_policy.security_hub.enabled_standard_identifiers #=> Array
    #   resp.configuration_policy.security_hub.enabled_standard_identifiers[0] #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.enabled_security_control_identifiers #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.enabled_security_control_identifiers[0] #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.disabled_security_control_identifiers #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.disabled_security_control_identifiers[0] #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].security_control_id #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters #=> Hash
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.integer #=> Integer
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.integer_list #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.integer_list[0] #=> Integer
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.double #=> Float
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.string #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.string_list #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.string_list[0] #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.boolean #=> Boolean
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.enum #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.enum_list #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.enum_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateConfigurationPolicy AWS API Documentation
    #
    # @overload create_configuration_policy(params = {})
    # @param [Hash] params ({})
    def create_configuration_policy(params = {}, options = {})
      req = build_request(:create_configuration_policy, params)
      req.send_request(options)
    end

    # Grants permission to create a connectorV2 based on input parameters.
    # This API is in preview release and subject to change.
    #
    # @option params [required, String] :name
    #   The unique name of the connectorV2.
    #
    # @option params [String] :description
    #   The description of the connectorV2.
    #
    # @option params [required, Types::ProviderConfiguration] :provider
    #   The third-party provider’s service configuration.
    #
    # @option params [String] :kms_key_arn
    #   The Amazon Resource Name (ARN) of KMS key used to encrypt secrets for
    #   the connectorV2.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the connectorV2 when you create.
    #
    # @option params [String] :client_token
    #   A unique identifier used to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateConnectorV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectorV2Response#connector_arn #connector_arn} => String
    #   * {Types::CreateConnectorV2Response#connector_id #connector_id} => String
    #   * {Types::CreateConnectorV2Response#auth_url #auth_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connector_v2({
    #     name: "NonEmptyString", # required
    #     description: "NonEmptyString",
    #     provider: { # required
    #       jira_cloud: {
    #         project_key: "NonEmptyString",
    #       },
    #       service_now: {
    #         instance_name: "NonEmptyString", # required
    #         client_id: "NonEmptyString", # required
    #         client_secret: "SensitiveNonEmptyString", # required
    #       },
    #     },
    #     kms_key_arn: "NonEmptyString",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_arn #=> String
    #   resp.connector_id #=> String
    #   resp.auth_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateConnectorV2 AWS API Documentation
    #
    # @overload create_connector_v2(params = {})
    # @param [Hash] params ({})
    def create_connector_v2(params = {}, options = {})
      req = build_request(:create_connector_v2, params)
      req.send_request(options)
    end

    # <note markdown="1"> The *aggregation Region* is now called the *home Region*.
    #
    #  </note>
    #
    # Used to enable cross-Region aggregation. This operation can be invoked
    # from the home Region only.
    #
    # For information about how cross-Region aggregation works, see
    # [Understanding cross-Region aggregation in Security Hub][1] in the
    # *Security Hub User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/finding-aggregation.html
    #
    # @option params [required, String] :region_linking_mode
    #   Indicates whether to aggregate findings from all of the available
    #   Regions in the current partition. Also determines whether to
    #   automatically aggregate findings from new Regions as Security Hub
    #   supports them and you opt into them.
    #
    #   The selected option also determines how to use the Regions provided in
    #   the Regions list.
    #
    #   The options are as follows:
    #
    #   * `ALL_REGIONS` - Aggregates findings from all of the Regions where
    #     Security Hub is enabled. When you choose this option, Security Hub
    #     also automatically aggregates findings from new Regions as Security
    #     Hub supports them and you opt into them.
    #
    #   * `ALL_REGIONS_EXCEPT_SPECIFIED` - Aggregates findings from all of the
    #     Regions where Security Hub is enabled, except for the Regions listed
    #     in the `Regions` parameter. When you choose this option, Security
    #     Hub also automatically aggregates findings from new Regions as
    #     Security Hub supports them and you opt into them.
    #
    #   * `SPECIFIED_REGIONS` - Aggregates findings only from the Regions
    #     listed in the `Regions` parameter. Security Hub does not
    #     automatically aggregate findings from new Regions.
    #
    #   * `NO_REGIONS` - Aggregates no data because no Regions are selected as
    #     linked Regions.
    #
    # @option params [Array<String>] :regions
    #   If `RegionLinkingMode` is `ALL_REGIONS_EXCEPT_SPECIFIED`, then this is
    #   a space-separated list of Regions that don't replicate and send
    #   findings to the home Region.
    #
    #   If `RegionLinkingMode` is `SPECIFIED_REGIONS`, then this is a
    #   space-separated list of Regions that do replicate and send findings to
    #   the home Region.
    #
    #   An `InvalidInputException` error results if you populate this field
    #   while `RegionLinkingMode` is `NO_REGIONS`.
    #
    # @return [Types::CreateFindingAggregatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFindingAggregatorResponse#finding_aggregator_arn #finding_aggregator_arn} => String
    #   * {Types::CreateFindingAggregatorResponse#finding_aggregation_region #finding_aggregation_region} => String
    #   * {Types::CreateFindingAggregatorResponse#region_linking_mode #region_linking_mode} => String
    #   * {Types::CreateFindingAggregatorResponse#regions #regions} => Array&lt;String&gt;
    #
    #
    # @example Example: To enable cross-Region aggregation
    #
    #   # The following example creates a finding aggregator. This is required to enable cross-Region aggregation.
    #
    #   resp = client.create_finding_aggregator({
    #     region_linking_mode: "SPECIFIED_REGIONS", 
    #     regions: [
    #       "us-west-1", 
    #       "us-west-2", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     finding_aggregation_region: "us-east-1", 
    #     finding_aggregator_arn: "arn:aws:securityhub:us-east-1:222222222222:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     region_linking_mode: "SPECIFIED_REGIONS", 
    #     regions: [
    #       "us-west-1", 
    #       "us-west-2", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_finding_aggregator({
    #     region_linking_mode: "NonEmptyString", # required
    #     regions: ["NonEmptyString"],
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_aggregator_arn #=> String
    #   resp.finding_aggregation_region #=> String
    #   resp.region_linking_mode #=> String
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateFindingAggregator AWS API Documentation
    #
    # @overload create_finding_aggregator(params = {})
    # @param [Hash] params ({})
    def create_finding_aggregator(params = {}, options = {})
      req = build_request(:create_finding_aggregator, params)
      req.send_request(options)
    end

    # Creates a custom insight in Security Hub. An insight is a
    # consolidation of findings that relate to a security issue that
    # requires attention or remediation.
    #
    # To group the related findings in the insight, use the
    # `GroupByAttribute`.
    #
    # @option params [required, String] :name
    #   The name of the custom insight to create.
    #
    # @option params [required, Types::AwsSecurityFindingFilters] :filters
    #   One or more attributes used to filter the findings included in the
    #   insight. The insight only includes findings that match the criteria
    #   defined in the filters.
    #
    # @option params [required, String] :group_by_attribute
    #   The attribute used to group the findings for the insight. The grouping
    #   attribute identifies the type of item that the insight applies to. For
    #   example, if an insight is grouped by resource identifier, then the
    #   insight produces a list of resource identifiers.
    #
    # @return [Types::CreateInsightResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInsightResponse#insight_arn #insight_arn} => String
    #
    #
    # @example Example: To create a custom insight
    #
    #   # The following example creates a custom insight in Security Hub. An insight is a collection of findings that relate to a
    #   # security issue.
    #
    #   resp = client.create_insight({
    #     filters: {
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", 
    #           value: "AwsIamRole", 
    #         }, 
    #       ], 
    #       severity_label: [
    #         {
    #           comparison: "EQUALS", 
    #           value: "CRITICAL", 
    #         }, 
    #       ], 
    #     }, 
    #     group_by_attribute: "ResourceId", 
    #     name: "Critical role findings", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     insight_arn: "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_insight({
    #     name: "NonEmptyString", # required
    #     filters: { # required
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       severity_normalized: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       recommendation_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       product_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       malware_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       malware_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       malware_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       malware_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_direction: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       network_source_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_source_mac: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_destination_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       network_destination_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       process_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       process_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       process_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       process_parent_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       process_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       process_terminated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_category: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_source: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       resource_aws_ec2_instance_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v4_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v6_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_key_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_iam_instance_profile_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_vpc_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_subnet_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_principal_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_iam_user_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_image_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       workflow_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       keyword: [
    #         {
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       finding_provider_fields_confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_severity_original: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_types: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       sample: [
    #         {
    #           value: false,
    #         },
    #       ],
    #       compliance_security_control_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_associated_standards_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       vulnerabilities_exploit_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       vulnerabilities_fix_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_security_control_parameters_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_security_control_parameters_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       aws_account_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_application_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_application_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #     },
    #     group_by_attribute: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.insight_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateInsight AWS API Documentation
    #
    # @overload create_insight(params = {})
    # @param [Hash] params ({})
    def create_insight(params = {}, options = {})
      req = build_request(:create_insight, params)
      req.send_request(options)
    end

    # Creates a member association in Security Hub between the specified
    # accounts and the account used to make the request, which is the
    # administrator account. If you are integrated with Organizations, then
    # the administrator account is designated by the organization management
    # account.
    #
    # `CreateMembers` is always used to add accounts that are not
    # organization members.
    #
    # For accounts that are managed using Organizations, `CreateMembers` is
    # only used in the following cases:
    #
    # * Security Hub is not configured to automatically add new organization
    #   accounts.
    #
    # * The account was disassociated or deleted in Security Hub.
    #
    # This action can only be used by an account that has Security Hub
    # enabled. To enable Security Hub, you can use the `EnableSecurityHub`
    # operation.
    #
    # For accounts that are not organization members, you create the account
    # association and then send an invitation to the member account. To send
    # the invitation, you use the `InviteMembers` operation. If the account
    # owner accepts the invitation, the account becomes a member account in
    # Security Hub.
    #
    # Accounts that are managed using Organizations don't receive an
    # invitation. They automatically become a member account in Security
    # Hub.
    #
    # * If the organization account does not have Security Hub enabled, then
    #   Security Hub and the default standards are automatically enabled.
    #   Note that Security Hub cannot be enabled automatically for the
    #   organization management account. The organization management account
    #   must enable Security Hub before the administrator account enables it
    #   as a member account.
    #
    # * For organization accounts that already have Security Hub enabled,
    #   Security Hub does not make any other changes to those accounts. It
    #   does not change their enabled standards or controls.
    #
    # A permissions policy is added that permits the administrator account
    # to view the findings generated in the member account.
    #
    # To remove the association between the administrator and member
    # accounts, use the `DisassociateFromMasterAccount` or
    # `DisassociateMembers` operation.
    #
    # @option params [required, Array<Types::AccountDetails>] :account_details
    #   The list of accounts to associate with the Security Hub administrator
    #   account. For each account, the list includes the account ID and
    #   optionally the email address.
    #
    # @return [Types::CreateMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    #
    # @example Example: To add a member account
    #
    #   # The following example creates a member association between the specified accounts and the administrator account (the
    #   # account that makes the request). This operation is used to add accounts that aren't part of an organization.
    #
    #   resp = client.create_members({
    #     account_details: [
    #       {
    #         account_id: "123456789012", 
    #       }, 
    #       {
    #         account_id: "111122223333", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     unprocessed_accounts: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_members({
    #     account_details: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         email: "NonEmptyString",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].processing_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateMembers AWS API Documentation
    #
    # @overload create_members(params = {})
    # @param [Hash] params ({})
    def create_members(params = {}, options = {})
      req = build_request(:create_members, params)
      req.send_request(options)
    end

    # Grants permission to create a ticket in the chosen ITSM based on
    # finding information for the provided finding metadata UID. This API is
    # in preview release and subject to change.
    #
    # @option params [required, String] :connector_id
    #   The UUID of the connectorV2 to identify connectorV2 resource.
    #
    # @option params [required, String] :finding_metadata_uid
    #   The the unique ID for the finding.
    #
    # @option params [String] :client_token
    #   The client idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateTicketV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTicketV2Response#ticket_id #ticket_id} => String
    #   * {Types::CreateTicketV2Response#ticket_src_url #ticket_src_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ticket_v2({
    #     connector_id: "NonEmptyString", # required
    #     finding_metadata_uid: "NonEmptyString", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ticket_id #=> String
    #   resp.ticket_src_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateTicketV2 AWS API Documentation
    #
    # @overload create_ticket_v2(params = {})
    # @param [Hash] params ({})
    def create_ticket_v2(params = {}, options = {})
      req = build_request(:create_ticket_v2, params)
      req.send_request(options)
    end

    # <note markdown="1"> We recommend using Organizations instead of Security Hub invitations
    # to manage your member accounts. For information, see [Managing
    # Security Hub administrator and member accounts with Organizations][1]
    # in the *Security Hub User Guide*.
    #
    #  </note>
    #
    # Declines invitations to become a Security Hub member account.
    #
    # A prospective member account uses this operation to decline an
    # invitation to become a member.
    #
    # Only member accounts that aren't part of an Amazon Web Services
    # organization should use this operation. Organization accounts don't
    # receive invitations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of prospective member account IDs for which to decline an
    #   invitation.
    #
    # @return [Types::DeclineInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeclineInvitationsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    #
    # @example Example: To decline invitation to become a member account
    #
    #   # The following example declines an invitation from the Security Hub administrator account to become a member account. The
    #   # invited account makes the request.
    #
    #   resp = client.decline_invitations({
    #     account_ids: [
    #       "123456789012", 
    #       "111122223333", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     unprocessed_accounts: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decline_invitations({
    #     account_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].processing_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeclineInvitations AWS API Documentation
    #
    # @overload decline_invitations(params = {})
    # @param [Hash] params ({})
    def decline_invitations(params = {}, options = {})
      req = build_request(:decline_invitations, params)
      req.send_request(options)
    end

    # Deletes a custom action target from Security Hub.
    #
    # Deleting a custom action target does not affect any findings or
    # insights that were already sent to Amazon CloudWatch Events using the
    # custom action.
    #
    # @option params [required, String] :action_target_arn
    #   The Amazon Resource Name (ARN) of the custom action target to delete.
    #
    # @return [Types::DeleteActionTargetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteActionTargetResponse#action_target_arn #action_target_arn} => String
    #
    #
    # @example Example: To delete a custom action target
    #
    #   # The following example deletes a custom action target that triggers target actions in Amazon CloudWatch Events. Deleting
    #   # a custom action target doesn't affect findings or insights that were already sent to CloudWatch Events based on the
    #   # custom action.
    #
    #   resp = client.delete_action_target({
    #     action_target_arn: "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     action_target_arn: "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_action_target({
    #     action_target_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action_target_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteActionTarget AWS API Documentation
    #
    # @overload delete_action_target(params = {})
    # @param [Hash] params ({})
    def delete_action_target(params = {}, options = {})
      req = build_request(:delete_action_target, params)
      req.send_request(options)
    end

    # Deletes the Aggregator V2. This API is in public preview and subject
    # to change.
    #
    # @option params [required, String] :aggregator_v2_arn
    #   The ARN of the Aggregator V2.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_aggregator_v2({
    #     aggregator_v2_arn: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteAggregatorV2 AWS API Documentation
    #
    # @overload delete_aggregator_v2(params = {})
    # @param [Hash] params ({})
    def delete_aggregator_v2(params = {}, options = {})
      req = build_request(:delete_aggregator_v2, params)
      req.send_request(options)
    end

    # Deletes a V2 automation rule. This API is in public preview and
    # subject to change.
    #
    # @option params [required, String] :identifier
    #   The ARN of the V2 automation rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_automation_rule_v2({
    #     identifier: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteAutomationRuleV2 AWS API Documentation
    #
    # @overload delete_automation_rule_v2(params = {})
    # @param [Hash] params ({})
    def delete_automation_rule_v2(params = {}, options = {})
      req = build_request(:delete_automation_rule_v2, params)
      req.send_request(options)
    end

    # Deletes a configuration policy. Only the Security Hub delegated
    # administrator can invoke this operation from the home Region. For the
    # deletion to succeed, you must first disassociate a configuration
    # policy from target accounts, organizational units, or the root by
    # invoking the `StartConfigurationPolicyDisassociation` operation.
    #
    # @option params [required, String] :identifier
    #   The Amazon Resource Name (ARN) or universally unique identifier (UUID)
    #   of the configuration policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a configuration policy
    #
    #   # This operation deletes the specified configuration policy.
    #
    #   resp = client.delete_configuration_policy({
    #     identifier: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_policy({
    #     identifier: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteConfigurationPolicy AWS API Documentation
    #
    # @overload delete_configuration_policy(params = {})
    # @param [Hash] params ({})
    def delete_configuration_policy(params = {}, options = {})
      req = build_request(:delete_configuration_policy, params)
      req.send_request(options)
    end

    # Grants permission to delete a connectorV2. This API is in preview
    # release and subject to change.
    #
    # @option params [required, String] :connector_id
    #   The UUID of the connectorV2 to identify connectorV2 resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connector_v2({
    #     connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteConnectorV2 AWS API Documentation
    #
    # @overload delete_connector_v2(params = {})
    # @param [Hash] params ({})
    def delete_connector_v2(params = {}, options = {})
      req = build_request(:delete_connector_v2, params)
      req.send_request(options)
    end

    # <note markdown="1"> The *aggregation Region* is now called the *home Region*.
    #
    #  </note>
    #
    # Deletes a finding aggregator. When you delete the finding aggregator,
    # you stop cross-Region aggregation. Finding replication stops occurring
    # from the linked Regions to the home Region.
    #
    # When you stop cross-Region aggregation, findings that were already
    # replicated and sent to the home Region are still visible from the home
    # Region. However, new findings and finding updates are no longer
    # replicated and sent to the home Region.
    #
    # @option params [required, String] :finding_aggregator_arn
    #   The ARN of the finding aggregator to delete. To obtain the ARN, use
    #   `ListFindingAggregators`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a finding aggregator
    #
    #   # The following example deletes a finding aggregator in Security Hub. Deleting the finding aggregator stops cross-Region
    #   # aggregation. This operation produces no output.
    #
    #   resp = client.delete_finding_aggregator({
    #     finding_aggregator_arn: "arn:aws:securityhub:us-east-1:123456789012:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_finding_aggregator({
    #     finding_aggregator_arn: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteFindingAggregator AWS API Documentation
    #
    # @overload delete_finding_aggregator(params = {})
    # @param [Hash] params ({})
    def delete_finding_aggregator(params = {}, options = {})
      req = build_request(:delete_finding_aggregator, params)
      req.send_request(options)
    end

    # Deletes the insight specified by the `InsightArn`.
    #
    # @option params [required, String] :insight_arn
    #   The ARN of the insight to delete.
    #
    # @return [Types::DeleteInsightResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInsightResponse#insight_arn #insight_arn} => String
    #
    #
    # @example Example: To delete a custom insight
    #
    #   # The following example deletes a custom insight in Security Hub.
    #
    #   resp = client.delete_insight({
    #     insight_arn: "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     insight_arn: "arn:aws:securityhub:eu-central-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_insight({
    #     insight_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.insight_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInsight AWS API Documentation
    #
    # @overload delete_insight(params = {})
    # @param [Hash] params ({})
    def delete_insight(params = {}, options = {})
      req = build_request(:delete_insight, params)
      req.send_request(options)
    end

    # <note markdown="1"> We recommend using Organizations instead of Security Hub invitations
    # to manage your member accounts. For information, see [Managing
    # Security Hub administrator and member accounts with Organizations][1]
    # in the *Security Hub User Guide*.
    #
    #  </note>
    #
    # Deletes invitations to become a Security Hub member account.
    #
    # A Security Hub administrator account can use this operation to delete
    # invitations sent to one or more prospective member accounts.
    #
    # This operation is only used to delete invitations that are sent to
    # prospective member accounts that aren't part of an Amazon Web
    # Services organization. Organization accounts don't receive
    # invitations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of member account IDs that received the invitations you want
    #   to delete.
    #
    # @return [Types::DeleteInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInvitationsResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    #
    # @example Example: To delete a custom insight
    #
    #   # The following example deletes an invitation sent by the Security Hub administrator account to a prospective member
    #   # account. This operation is used only for invitations sent to accounts that aren't part of an organization. Organization
    #   # accounts don't receive invitations.
    #
    #   resp = client.delete_invitations({
    #     account_ids: [
    #       "123456789012", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     unprocessed_accounts: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_invitations({
    #     account_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].processing_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInvitations AWS API Documentation
    #
    # @overload delete_invitations(params = {})
    # @param [Hash] params ({})
    def delete_invitations(params = {}, options = {})
      req = build_request(:delete_invitations, params)
      req.send_request(options)
    end

    # Deletes the specified member accounts from Security Hub.
    #
    # You can invoke this API only to delete accounts that became members
    # through invitation. You can't invoke this API to delete accounts that
    # belong to an Organizations organization.
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of account IDs for the member accounts to delete.
    #
    # @return [Types::DeleteMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    #
    # @example Example: To delete a member account
    #
    #   # The following example deletes the specified member account from Security Hub. This operation can be used to delete
    #   # member accounts that are part of an organization or that were invited manually.
    #
    #   resp = client.delete_members({
    #     account_ids: [
    #       "123456789111", 
    #       "123456789222", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     unprocessed_accounts: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_members({
    #     account_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].processing_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteMembers AWS API Documentation
    #
    # @overload delete_members(params = {})
    # @param [Hash] params ({})
    def delete_members(params = {}, options = {})
      req = build_request(:delete_members, params)
      req.send_request(options)
    end

    # Returns a list of the custom action targets in Security Hub in your
    # account.
    #
    # @option params [Array<String>] :action_target_arns
    #   A list of custom action target ARNs for the custom action targets to
    #   retrieve.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeActionTargets` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::DescribeActionTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeActionTargetsResponse#action_targets #action_targets} => Array&lt;Types::ActionTarget&gt;
    #   * {Types::DescribeActionTargetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To return custom action targets
    #
    #   # The following example returns a list of custom action targets. You use custom actions on findings and insights in
    #   # Security Hub to trigger target actions in Amazon CloudWatch Events.
    #
    #   resp = client.describe_action_targets({
    #     action_target_arns: [
    #       "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     action_targets: [
    #       {
    #         action_target_arn: "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation", 
    #         description: "Action to send the finding for remediation tracking", 
    #         name: "Send to remediation", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_action_targets({
    #     action_target_arns: ["NonEmptyString"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.action_targets #=> Array
    #   resp.action_targets[0].action_target_arn #=> String
    #   resp.action_targets[0].name #=> String
    #   resp.action_targets[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeActionTargets AWS API Documentation
    #
    # @overload describe_action_targets(params = {})
    # @param [Hash] params ({})
    def describe_action_targets(params = {}, options = {})
      req = build_request(:describe_action_targets, params)
      req.send_request(options)
    end

    # Returns details about the Hub resource in your account, including the
    # `HubArn` and the time when you enabled Security Hub.
    #
    # @option params [String] :hub_arn
    #   The ARN of the Hub resource to retrieve.
    #
    # @return [Types::DescribeHubResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHubResponse#hub_arn #hub_arn} => String
    #   * {Types::DescribeHubResponse#subscribed_at #subscribed_at} => String
    #   * {Types::DescribeHubResponse#auto_enable_controls #auto_enable_controls} => Boolean
    #   * {Types::DescribeHubResponse#control_finding_generator #control_finding_generator} => String
    #
    #
    # @example Example: To return details about Hub resource
    #
    #   # The following example returns details about the Hub resource in the calling account. The Hub resource represents the
    #   # implementation of  the AWS Security Hub service in the calling account.
    #
    #   resp = client.describe_hub({
    #     hub_arn: "arn:aws:securityhub:us-west-1:123456789012:hub/default", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     auto_enable_controls: true, 
    #     control_finding_generator: "SECURITY_CONTROL", 
    #     hub_arn: "arn:aws:securityhub:us-west-1:123456789012:hub/default", 
    #     subscribed_at: "2019-11-19T23:15:10.046Z", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hub({
    #     hub_arn: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.hub_arn #=> String
    #   resp.subscribed_at #=> String
    #   resp.auto_enable_controls #=> Boolean
    #   resp.control_finding_generator #=> String, one of "STANDARD_CONTROL", "SECURITY_CONTROL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeHub AWS API Documentation
    #
    # @overload describe_hub(params = {})
    # @param [Hash] params ({})
    def describe_hub(params = {}, options = {})
      req = build_request(:describe_hub, params)
      req.send_request(options)
    end

    # Returns information about the way your organization is configured in
    # Security Hub. Only the Security Hub administrator account can invoke
    # this operation.
    #
    # @return [Types::DescribeOrganizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationConfigurationResponse#auto_enable #auto_enable} => Boolean
    #   * {Types::DescribeOrganizationConfigurationResponse#member_account_limit_reached #member_account_limit_reached} => Boolean
    #   * {Types::DescribeOrganizationConfigurationResponse#auto_enable_standards #auto_enable_standards} => String
    #   * {Types::DescribeOrganizationConfigurationResponse#organization_configuration #organization_configuration} => Types::OrganizationConfiguration
    #
    #
    # @example Example: To get information about organization configuration
    #
    #   # This operation provides information about the way your organization is configured in Security Hub. Only a Security Hub
    #   # administrator account can invoke this operation.
    #
    #   resp = client.describe_organization_configuration({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     auto_enable: false, 
    #     auto_enable_standards: "NONE", 
    #     member_account_limit_reached: false, 
    #     organization_configuration: {
    #       configuration_type: "CENTRAL", 
    #       status: "ENABLED", 
    #     }, 
    #   }
    #
    # @example Response structure
    #
    #   resp.auto_enable #=> Boolean
    #   resp.member_account_limit_reached #=> Boolean
    #   resp.auto_enable_standards #=> String, one of "NONE", "DEFAULT"
    #   resp.organization_configuration.configuration_type #=> String, one of "CENTRAL", "LOCAL"
    #   resp.organization_configuration.status #=> String, one of "PENDING", "ENABLED", "FAILED"
    #   resp.organization_configuration.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeOrganizationConfiguration AWS API Documentation
    #
    # @overload describe_organization_configuration(params = {})
    # @param [Hash] params ({})
    def describe_organization_configuration(params = {}, options = {})
      req = build_request(:describe_organization_configuration, params)
      req.send_request(options)
    end

    # Returns information about product integrations in Security Hub.
    #
    # You can optionally provide an integration ARN. If you provide an
    # integration ARN, then the results only include that integration.
    #
    # If you don't provide an integration ARN, then the results include all
    # of the available product integrations.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeProducts` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :product_arn
    #   The ARN of the integration to return.
    #
    # @return [Types::DescribeProductsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProductsResponse#products #products} => Array&lt;Types::Product&gt;
    #   * {Types::DescribeProductsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about Security Hub integrations
    #
    #   # The following example returns details about AWS services and third-party products that Security Hub integrates with.
    #
    #   resp = client.describe_products({
    #     max_results: 1, 
    #     next_token: "NULL", 
    #     product_arn: "arn:aws:securityhub:us-east-1:517716713836:product/crowdstrike/crowdstrike-falcon", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "U2FsdGVkX18vvPlOqb7RDrWRWVFBJI46MOIAb+nZmRJmR15NoRi2gm13sdQEn3O/pq/78dGs+bKpgA+7HMPHO0qX33/zoRI+uIG/F9yLNhcOrOWzFUdy36JcXLQji3Rpnn/cD1SVkGA98qI3zPOSDg==", 
    #     products: [
    #       {
    #         activation_url: "https://falcon.crowdstrike.com/support/documentation", 
    #         categories: [
    #           "Endpoint Detection and Response (EDR)", 
    #           "AV Scanning and Sandboxing", 
    #           "Threat Intelligence Feeds and Reports", 
    #           "Endpoint Forensics", 
    #           "Network Forensics", 
    #         ], 
    #         company_name: "CrowdStrike", 
    #         description: "CrowdStrike Falcon's single lightweight sensor unifies next-gen antivirus, endpoint detection and response, and 24/7 managed hunting, via the cloud.", 
    #         integration_types: [
    #           "SEND_FINDINGS_TO_SECURITY_HUB", 
    #         ], 
    #         marketplace_url: "https://aws.amazon.com/marketplace/seller-profile?id=a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         product_arn: "arn:aws:securityhub:us-east-1:517716713836:product/crowdstrike/crowdstrike-falcon", 
    #         product_name: "CrowdStrike Falcon", 
    #         product_subscription_resource_policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"123456789333\"},\"Action\":[\"securityhub:BatchImportFindings\"],\"Resource\":\"arn:aws:securityhub:us-west-1:123456789012:product-subscription/crowdstrike/crowdstrike-falcon\",\"Condition\":{\"StringEquals\":{\"securityhub:TargetAccount\":\"123456789012\"}}},{\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"123456789012\"},\"Action\":[\"securityhub:BatchImportFindings\"],\"Resource\":\"arn:aws:securityhub:us-west-1:123456789333:product/crowdstrike/crowdstrike-falcon\",\"Condition\":{\"StringEquals\":{\"securityhub:TargetAccount\":\"123456789012\"}}}]}", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_products({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     product_arn: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.products #=> Array
    #   resp.products[0].product_arn #=> String
    #   resp.products[0].product_name #=> String
    #   resp.products[0].company_name #=> String
    #   resp.products[0].description #=> String
    #   resp.products[0].categories #=> Array
    #   resp.products[0].categories[0] #=> String
    #   resp.products[0].integration_types #=> Array
    #   resp.products[0].integration_types[0] #=> String, one of "SEND_FINDINGS_TO_SECURITY_HUB", "RECEIVE_FINDINGS_FROM_SECURITY_HUB", "UPDATE_FINDINGS_IN_SECURITY_HUB"
    #   resp.products[0].marketplace_url #=> String
    #   resp.products[0].activation_url #=> String
    #   resp.products[0].product_subscription_resource_policy #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeProducts AWS API Documentation
    #
    # @overload describe_products(params = {})
    # @param [Hash] params ({})
    def describe_products(params = {}, options = {})
      req = build_request(:describe_products, params)
      req.send_request(options)
    end

    # Gets information about the product integration. This API is in public
    # preview and subject to change.
    #
    # @option params [String] :next_token
    #   The token required for pagination. On your first call, set the value
    #   of this parameter to `NULL`. For subsequent calls, to continue listing
    #   data, set the value of this parameter to the value returned in the
    #   previous response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::DescribeProductsV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProductsV2Response#products_v2 #products_v2} => Array&lt;Types::ProductV2&gt;
    #   * {Types::DescribeProductsV2Response#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_products_v2({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.products_v2 #=> Array
    #   resp.products_v2[0].product_v2_name #=> String
    #   resp.products_v2[0].company_name #=> String
    #   resp.products_v2[0].description #=> String
    #   resp.products_v2[0].categories #=> Array
    #   resp.products_v2[0].categories[0] #=> String
    #   resp.products_v2[0].integration_v2_types #=> Array
    #   resp.products_v2[0].integration_v2_types[0] #=> String, one of "SEND_FINDINGS_TO_SECURITY_HUB", "RECEIVE_FINDINGS_FROM_SECURITY_HUB", "UPDATE_FINDINGS_IN_SECURITY_HUB"
    #   resp.products_v2[0].marketplace_url #=> String
    #   resp.products_v2[0].activation_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeProductsV2 AWS API Documentation
    #
    # @overload describe_products_v2(params = {})
    # @param [Hash] params ({})
    def describe_products_v2(params = {}, options = {})
      req = build_request(:describe_products_v2, params)
      req.send_request(options)
    end

    # Returns details about the service resource in your account. This API
    # is in public preview and subject to change.
    #
    # @return [Types::DescribeSecurityHubV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSecurityHubV2Response#hub_v2_arn #hub_v2_arn} => String
    #   * {Types::DescribeSecurityHubV2Response#subscribed_at #subscribed_at} => String
    #
    # @example Response structure
    #
    #   resp.hub_v2_arn #=> String
    #   resp.subscribed_at #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeSecurityHubV2 AWS API Documentation
    #
    # @overload describe_security_hub_v2(params = {})
    # @param [Hash] params ({})
    def describe_security_hub_v2(params = {}, options = {})
      req = build_request(:describe_security_hub_v2, params)
      req.send_request(options)
    end

    # Returns a list of the available standards in Security Hub.
    #
    # For each standard, the results include the standard ARN, the name, and
    # a description.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeStandards` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of standards to return.
    #
    # @return [Types::DescribeStandardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStandardsResponse#standards #standards} => Array&lt;Types::Standard&gt;
    #   * {Types::DescribeStandardsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get available Security Hub standards
    #
    #   # The following example returns a list of available security standards in Security Hub.
    #
    #   resp = client.describe_standards({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     standards: [
    #       {
    #         description: "The AWS Foundational Security Best Practices standard is a set of automated security checks that detect when AWS accounts and deployed resources do not align to security best practices. The standard is defined by AWS security experts. This curated set of controls helps improve your security posture in AWS, and cover AWS's most popular and foundational services.", 
    #         enabled_by_default: true, 
    #         name: "AWS Foundational Security Best Practices v1.0.0", 
    #         standards_arn: "arn:aws:securityhub:us-west-1::standards/aws-foundational-security-best-practices/v/1.0.0", 
    #       }, 
    #       {
    #         description: "The Center for Internet Security (CIS) AWS Foundations Benchmark v1.2.0 is a set of security configuration best practices for AWS. This Security Hub standard automatically checks for your compliance readiness against a subset of CIS requirements.", 
    #         enabled_by_default: true, 
    #         name: "CIS AWS Foundations Benchmark v1.2.0", 
    #         standards_arn: "arn:aws:securityhub:us-west-1::ruleset/cis-aws-foundations-benchmark/v/1.2.0", 
    #       }, 
    #       {
    #         description: "The Center for Internet Security (CIS) AWS Foundations Benchmark v1.4.0 is a set of security configuration best practices for AWS. This Security Hub standard automatically checks for your compliance readiness against a subset of CIS requirements.", 
    #         enabled_by_default: false, 
    #         name: "CIS AWS Foundations Benchmark v1.4.0", 
    #         standards_arn: "arn:aws::securityhub:us-west-1::standards/cis-aws-foundations-benchmark/v/1.4.0", 
    #       }, 
    #       {
    #         description: "The Payment Card Industry Data Security Standard (PCI DSS) v3.2.1 is an information security standard for entities that store, process, and/or transmit cardholder data. This Security Hub standard automatically checks for your compliance readiness against a subset of PCI DSS requirements.", 
    #         enabled_by_default: false, 
    #         name: "PCI DSS v3.2.1", 
    #         standards_arn: "arn:aws:securityhub:us-west-1::standards/pci-dss/v/3.2.1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_standards({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.standards #=> Array
    #   resp.standards[0].standards_arn #=> String
    #   resp.standards[0].name #=> String
    #   resp.standards[0].description #=> String
    #   resp.standards[0].enabled_by_default #=> Boolean
    #   resp.standards[0].standards_managed_by.company #=> String
    #   resp.standards[0].standards_managed_by.product #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandards AWS API Documentation
    #
    # @overload describe_standards(params = {})
    # @param [Hash] params ({})
    def describe_standards(params = {}, options = {})
      req = build_request(:describe_standards, params)
      req.send_request(options)
    end

    # Returns a list of security standards controls.
    #
    # For each control, the results include information about whether it is
    # currently enabled, the severity, and a link to remediation
    # information.
    #
    # This operation returns an empty list for standard subscriptions where
    # `StandardsControlsUpdatable` has value `NOT_READY_FOR_UPDATES`.
    #
    # @option params [required, String] :standards_subscription_arn
    #   The ARN of a resource that represents your subscription to a supported
    #   standard. To get the subscription ARNs of the standards you have
    #   enabled, use the `GetEnabledStandards` operation.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeStandardsControls` operation, set the value of this parameter
    #   to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of security standard controls to return.
    #
    # @return [Types::DescribeStandardsControlsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStandardsControlsResponse#controls #controls} => Array&lt;Types::StandardsControl&gt;
    #   * {Types::DescribeStandardsControlsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get a list of controls for a security standard
    #
    #   # The following example returns a list of security controls and control details that apply to a specified security
    #   # standard. The list includes controls that are enabled and disabled in the standard.
    #
    #   resp = client.describe_standards_controls({
    #     max_results: 2, 
    #     next_token: "NULL", 
    #     standards_subscription_arn: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     controls: [
    #       {
    #         control_id: "PCI.AutoScaling.1", 
    #         control_status: "ENABLED", 
    #         control_status_updated_at: Time.parse("2020-05-15T18:49:04.473000+00:00"), 
    #         description: "This AWS control checks whether your Auto Scaling groups that are associated with a load balancer are using Elastic Load Balancing health checks.", 
    #         related_requirements: [
    #           "PCI DSS 2.2", 
    #         ], 
    #         remediation_url: "https://docs.aws.amazon.com/console/securityhub/PCI.AutoScaling.1/remediation", 
    #         severity_rating: "LOW", 
    #         standards_control_arn: "arn:aws:securityhub:us-west-1:123456789012:control/pci-dss/v/3.2.1/PCI.AutoScaling.1", 
    #         title: "Auto scaling groups associated with a load balancer should use health checks", 
    #       }, 
    #       {
    #         control_id: "PCI.CW.1", 
    #         control_status: "ENABLED", 
    #         control_status_updated_at: Time.parse("2020-05-15T18:49:04.498000+00:00"), 
    #         description: "This control checks for the CloudWatch metric filters using the following pattern { $.userIdentity.type = \"Root\" && $.userIdentity.invokedBy NOT EXISTS && $.eventType != \"AwsServiceEvent\" } It checks that the log group name is configured for use with active multi-region CloudTrail, that there is at least one Event Selector for a Trail with IncludeManagementEvents set to true and ReadWriteType set to All, and that there is at least one active subscriber to an SNS topic associated with the alarm.", 
    #         related_requirements: [
    #           "PCI DSS 7.2.1", 
    #         ], 
    #         remediation_url: "https://docs.aws.amazon.com/console/securityhub/PCI.CW.1/remediation", 
    #         severity_rating: "MEDIUM", 
    #         standards_control_arn: "arn:aws:securityhub:us-west-1:123456789012:control/pci-dss/v/3.2.1/PCI.CW.1", 
    #         title: "A log metric filter and alarm should exist for usage of the \"root\" user", 
    #       }, 
    #     ], 
    #     next_token: "U2FsdGVkX1+eNkPoZHVl11ip5HUYQPWSWZGmftcmJiHL8JoKEsCDuaKayiPDyLK+LiTkShveoOdvfxXCkOBaGhohIXhsIedN+LSjQV/l7kfCfJcq4PziNC1N9xe9aq2pjlLVZnznTfSImrodT5bRNHe4fELCQq/z+5ka+5Lzmc11axcwTd5lKgQyQqmUVoeriHZhyIiBgWKf7oNYdBVG8OEortVWvSkoUTt+B2ThcnC7l43kI0UNxlkZ6sc64AsW", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_standards_controls({
    #     standards_subscription_arn: "NonEmptyString", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.controls #=> Array
    #   resp.controls[0].standards_control_arn #=> String
    #   resp.controls[0].control_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.controls[0].disabled_reason #=> String
    #   resp.controls[0].control_status_updated_at #=> Time
    #   resp.controls[0].control_id #=> String
    #   resp.controls[0].title #=> String
    #   resp.controls[0].description #=> String
    #   resp.controls[0].remediation_url #=> String
    #   resp.controls[0].severity_rating #=> String, one of "LOW", "MEDIUM", "HIGH", "CRITICAL"
    #   resp.controls[0].related_requirements #=> Array
    #   resp.controls[0].related_requirements[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsControls AWS API Documentation
    #
    # @overload describe_standards_controls(params = {})
    # @param [Hash] params ({})
    def describe_standards_controls(params = {}, options = {})
      req = build_request(:describe_standards_controls, params)
      req.send_request(options)
    end

    # Disables the integration of the specified product with Security Hub.
    # After the integration is disabled, findings from that product are no
    # longer sent to Security Hub.
    #
    # @option params [required, String] :product_subscription_arn
    #   The ARN of the integrated product to disable the integration for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To end a Security Hub integration
    #
    #   # The following example ends an integration between Security Hub and the specified product that sends findings to Security
    #   # Hub. After the integration ends, the product no longer sends findings to Security  Hub.
    #
    #   resp = client.disable_import_findings_for_product({
    #     product_subscription_arn: "arn:aws:securityhub:us-east-1:517716713836:product/crowdstrike/crowdstrike-falcon", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_import_findings_for_product({
    #     product_subscription_arn: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableImportFindingsForProduct AWS API Documentation
    #
    # @overload disable_import_findings_for_product(params = {})
    # @param [Hash] params ({})
    def disable_import_findings_for_product(params = {}, options = {})
      req = build_request(:disable_import_findings_for_product, params)
      req.send_request(options)
    end

    # Disables a Security Hub administrator account. Can only be called by
    # the organization management account.
    #
    # @option params [required, String] :admin_account_id
    #   The Amazon Web Services account identifier of the Security Hub
    #   administrator account.
    #
    # @option params [String] :feature
    #   The feature for which the delegated admin account is disabled.
    #   Defaults to Security Hub if not specified.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove a Security Hub administrator account
    #
    #   # The following example removes the Security Hub administrator account in the Region from which the operation was
    #   # executed. This operation doesn't remove the delegated administrator account in AWS Organizations.
    #
    #   resp = client.disable_organization_admin_account({
    #     admin_account_id: "123456789012", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_organization_admin_account({
    #     admin_account_id: "NonEmptyString", # required
    #     feature: "SecurityHub", # accepts SecurityHub, SecurityHubV2
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableOrganizationAdminAccount AWS API Documentation
    #
    # @overload disable_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def disable_organization_admin_account(params = {}, options = {})
      req = build_request(:disable_organization_admin_account, params)
      req.send_request(options)
    end

    # Disables Security Hub in your account only in the current Amazon Web
    # Services Region. To disable Security Hub in all Regions, you must
    # submit one request per Region where you have enabled Security Hub.
    #
    # You can't disable Security Hub in an account that is currently the
    # Security Hub administrator.
    #
    # When you disable Security Hub, your existing findings and insights and
    # any Security Hub configuration settings are deleted after 90 days and
    # cannot be recovered. Any standards that were enabled are disabled, and
    # your administrator and member account associations are removed.
    #
    # If you want to save your existing findings, you must export them
    # before you disable Security Hub.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To deactivate Security Hub
    #
    #   # The following example deactivates Security Hub for the current account and Region.
    #
    #   resp = client.disable_security_hub({
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableSecurityHub AWS API Documentation
    #
    # @overload disable_security_hub(params = {})
    # @param [Hash] params ({})
    def disable_security_hub(params = {}, options = {})
      req = build_request(:disable_security_hub, params)
      req.send_request(options)
    end

    # Disable the service for the current Amazon Web Services Region or
    # specified Amazon Web Services Region. This API is in public preview
    # and subject to change.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableSecurityHubV2 AWS API Documentation
    #
    # @overload disable_security_hub_v2(params = {})
    # @param [Hash] params ({})
    def disable_security_hub_v2(params = {}, options = {})
      req = build_request(:disable_security_hub_v2, params)
      req.send_request(options)
    end

    # Disassociates the current Security Hub member account from the
    # associated administrator account.
    #
    # This operation is only used by accounts that are not part of an
    # organization. For organization accounts, only the administrator
    # account can disassociate a member account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disassociate requesting account from administrator account
    #
    #   # The following example dissociates the requesting account from its associated administrator account.
    #
    #   resp = client.disassociate_from_administrator_account({
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromAdministratorAccount AWS API Documentation
    #
    # @overload disassociate_from_administrator_account(params = {})
    # @param [Hash] params ({})
    def disassociate_from_administrator_account(params = {}, options = {})
      req = build_request(:disassociate_from_administrator_account, params)
      req.send_request(options)
    end

    # This method is deprecated. Instead, use
    # `DisassociateFromAdministratorAccount`.
    #
    # The Security Hub console continues to use
    # `DisassociateFromMasterAccount`. It will eventually change to use
    # `DisassociateFromAdministratorAccount`. Any IAM policies that
    # specifically control access to this function must continue to use
    # `DisassociateFromMasterAccount`. You should also add
    # `DisassociateFromAdministratorAccount` to your policies to ensure that
    # the correct permissions are in place after the console begins to use
    # `DisassociateFromAdministratorAccount`.
    #
    # Disassociates the current Security Hub member account from the
    # associated administrator account.
    #
    # This operation is only used by accounts that are not part of an
    # organization. For organization accounts, only the administrator
    # account can disassociate a member account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromMasterAccount AWS API Documentation
    #
    # @overload disassociate_from_master_account(params = {})
    # @param [Hash] params ({})
    def disassociate_from_master_account(params = {}, options = {})
      req = build_request(:disassociate_from_master_account, params)
      req.send_request(options)
    end

    # Disassociates the specified member accounts from the associated
    # administrator account.
    #
    # Can be used to disassociate both accounts that are managed using
    # Organizations and accounts that were invited manually.
    #
    # @option params [required, Array<String>] :account_ids
    #   The account IDs of the member accounts to disassociate from the
    #   administrator account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disassociate member accounts from administrator account
    #
    #   # The following example dissociates the specified member accounts from the associated administrator account.
    #
    #   resp = client.disassociate_members({
    #     account_ids: [
    #       "123456789012", 
    #       "111122223333", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_members({
    #     account_ids: ["NonEmptyString"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateMembers AWS API Documentation
    #
    # @overload disassociate_members(params = {})
    # @param [Hash] params ({})
    def disassociate_members(params = {}, options = {})
      req = build_request(:disassociate_members, params)
      req.send_request(options)
    end

    # Enables the integration of a partner product with Security Hub.
    # Integrated products send findings to Security Hub.
    #
    # When you enable a product integration, a permissions policy that
    # grants permission for the product to send findings to Security Hub is
    # applied.
    #
    # @option params [required, String] :product_arn
    #   The ARN of the product to enable the integration for.
    #
    # @return [Types::EnableImportFindingsForProductResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableImportFindingsForProductResponse#product_subscription_arn #product_subscription_arn} => String
    #
    #
    # @example Example: To activate an integration
    #
    #   # The following example activates an integration between Security Hub and a third party partner product that sends
    #   # findings to Security Hub.
    #
    #   resp = client.enable_import_findings_for_product({
    #     product_arn: "arn:aws:securityhub:us-east-1:517716713836:product/crowdstrike/crowdstrike-falcon", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     product_subscription_arn: "arn:aws:securityhub:us-east-1:517716713836:product-subscription/crowdstrike/crowdstrike-falcon", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_import_findings_for_product({
    #     product_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.product_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableImportFindingsForProduct AWS API Documentation
    #
    # @overload enable_import_findings_for_product(params = {})
    # @param [Hash] params ({})
    def enable_import_findings_for_product(params = {}, options = {})
      req = build_request(:enable_import_findings_for_product, params)
      req.send_request(options)
    end

    # Designates the Security Hub administrator account for an organization.
    # Can only be called by the organization management account.
    #
    # @option params [required, String] :admin_account_id
    #   The Amazon Web Services account identifier of the account to designate
    #   as the Security Hub administrator account.
    #
    # @option params [String] :feature
    #   The feature for which the delegated admin account is enabled. Defaults
    #   to Security Hub if not specified.
    #
    # @return [Types::EnableOrganizationAdminAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableOrganizationAdminAccountResponse#admin_account_id #admin_account_id} => String
    #   * {Types::EnableOrganizationAdminAccountResponse#feature #feature} => String
    #
    #
    # @example Example: To designate a Security Hub administrator
    #
    #   # The following example designates the specified account as the Security Hub administrator account. The requesting account
    #   # must be the organization management account.
    #
    #   resp = client.enable_organization_admin_account({
    #     admin_account_id: "123456789012", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_organization_admin_account({
    #     admin_account_id: "NonEmptyString", # required
    #     feature: "SecurityHub", # accepts SecurityHub, SecurityHubV2
    #   })
    #
    # @example Response structure
    #
    #   resp.admin_account_id #=> String
    #   resp.feature #=> String, one of "SecurityHub", "SecurityHubV2"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableOrganizationAdminAccount AWS API Documentation
    #
    # @overload enable_organization_admin_account(params = {})
    # @param [Hash] params ({})
    def enable_organization_admin_account(params = {}, options = {})
      req = build_request(:enable_organization_admin_account, params)
      req.send_request(options)
    end

    # Enables Security Hub for your account in the current Region or the
    # Region you specify in the request.
    #
    # When you enable Security Hub, you grant to Security Hub the
    # permissions necessary to gather findings from other services that are
    # integrated with Security Hub.
    #
    # When you use the `EnableSecurityHub` operation to enable Security Hub,
    # you also automatically enable the following standards:
    #
    # * Center for Internet Security (CIS) Amazon Web Services Foundations
    #   Benchmark v1.2.0
    #
    # * Amazon Web Services Foundational Security Best Practices
    #
    # Other standards are not automatically enabled.
    #
    # To opt out of automatically enabled standards, set
    # `EnableDefaultStandards` to `false`.
    #
    # After you enable Security Hub, to enable a standard, use the
    # `BatchEnableStandards` operation. To disable a standard, use the
    # `BatchDisableStandards` operation.
    #
    # To learn more, see the [setup information][1] in the *Security Hub
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-settingup.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the hub resource when you enable Security Hub.
    #
    # @option params [Boolean] :enable_default_standards
    #   Whether to enable the security standards that Security Hub has
    #   designated as automatically enabled. If you don't provide a value for
    #   `EnableDefaultStandards`, it is set to `true`. To not enable the
    #   automatically enabled standards, set `EnableDefaultStandards` to
    #   `false`.
    #
    # @option params [String] :control_finding_generator
    #   This field, used when enabling Security Hub, specifies whether the
    #   calling account has consolidated control findings turned on. If the
    #   value for this field is set to `SECURITY_CONTROL`, Security Hub
    #   generates a single finding for a control check even when the check
    #   applies to multiple enabled standards.
    #
    #   If the value for this field is set to `STANDARD_CONTROL`, Security Hub
    #   generates separate findings for a control check when the check applies
    #   to multiple enabled standards.
    #
    #   The value for this field in a member account matches the value in the
    #   administrator account. For accounts that aren't part of an
    #   organization, the default value of this field is `SECURITY_CONTROL` if
    #   you enabled Security Hub on or after February 23, 2023.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To activate Security Hub
    #
    #   # The following example activates the Security Hub service in the requesting AWS account. The service is activated in the
    #   # current AWS Region or the Region that you specify in the request. Some standards are automatically turned on in your
    #   # account unless you opt out. To determine which standards are automatically turned on, see the Security Hub
    #   # documentation.
    #
    #   resp = client.enable_security_hub({
    #     enable_default_standards: true, 
    #     tags: {
    #       "Department" => "Security", 
    #     }, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_security_hub({
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     enable_default_standards: false,
    #     control_finding_generator: "STANDARD_CONTROL", # accepts STANDARD_CONTROL, SECURITY_CONTROL
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableSecurityHub AWS API Documentation
    #
    # @overload enable_security_hub(params = {})
    # @param [Hash] params ({})
    def enable_security_hub(params = {}, options = {})
      req = build_request(:enable_security_hub, params)
      req.send_request(options)
    end

    # Enables the service in account for the current Amazon Web Services
    # Region or specified Amazon Web Services Region. This API is in public
    # preview and subject to change.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the hub V2 resource when you enable Security Hub.
    #
    # @return [Types::EnableSecurityHubV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableSecurityHubV2Response#hub_v2_arn #hub_v2_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_security_hub_v2({
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.hub_v2_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableSecurityHubV2 AWS API Documentation
    #
    # @overload enable_security_hub_v2(params = {})
    # @param [Hash] params ({})
    def enable_security_hub_v2(params = {}, options = {})
      req = build_request(:enable_security_hub_v2, params)
      req.send_request(options)
    end

    # Provides the details for the Security Hub administrator account for
    # the current member account.
    #
    # Can be used by both member accounts that are managed using
    # Organizations and accounts that were invited manually.
    #
    # @return [Types::GetAdministratorAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAdministratorAccountResponse#administrator #administrator} => Types::Invitation
    #
    #
    # @example Example: To get details about the Security Hub administrator account
    #
    #   # The following example provides details about the Security Hub administrator account for the requesting member account.
    #
    #   resp = client.get_administrator_account({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     administrator: {
    #       account_id: "123456789012", 
    #       invitation_id: "7ab938c5d52d7904ad09f9e7c20cc4eb", 
    #       invited_at: Time.parse("2020-06-01T20:21:18.042000+00:00"), 
    #       member_status: "ASSOCIATED", 
    #     }, 
    #   }
    #
    # @example Response structure
    #
    #   resp.administrator.account_id #=> String
    #   resp.administrator.invitation_id #=> String
    #   resp.administrator.invited_at #=> Time
    #   resp.administrator.member_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetAdministratorAccount AWS API Documentation
    #
    # @overload get_administrator_account(params = {})
    # @param [Hash] params ({})
    def get_administrator_account(params = {}, options = {})
      req = build_request(:get_administrator_account, params)
      req.send_request(options)
    end

    # Returns the configuration of the specified Aggregator V2. This API is
    # in public preview and subject to change.
    #
    # @option params [required, String] :aggregator_v2_arn
    #   The ARN of the Aggregator V2.
    #
    # @return [Types::GetAggregatorV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAggregatorV2Response#aggregator_v2_arn #aggregator_v2_arn} => String
    #   * {Types::GetAggregatorV2Response#aggregation_region #aggregation_region} => String
    #   * {Types::GetAggregatorV2Response#region_linking_mode #region_linking_mode} => String
    #   * {Types::GetAggregatorV2Response#linked_regions #linked_regions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_aggregator_v2({
    #     aggregator_v2_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregator_v2_arn #=> String
    #   resp.aggregation_region #=> String
    #   resp.region_linking_mode #=> String
    #   resp.linked_regions #=> Array
    #   resp.linked_regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetAggregatorV2 AWS API Documentation
    #
    # @overload get_aggregator_v2(params = {})
    # @param [Hash] params ({})
    def get_aggregator_v2(params = {}, options = {})
      req = build_request(:get_aggregator_v2, params)
      req.send_request(options)
    end

    # Returns an automation rule for the V2 service. This API is in public
    # preview and subject to change.
    #
    # @option params [required, String] :identifier
    #   The ARN of the V2 automation rule.
    #
    # @return [Types::GetAutomationRuleV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutomationRuleV2Response#rule_arn #rule_arn} => String
    #   * {Types::GetAutomationRuleV2Response#rule_id #rule_id} => String
    #   * {Types::GetAutomationRuleV2Response#rule_order #rule_order} => Float
    #   * {Types::GetAutomationRuleV2Response#rule_name #rule_name} => String
    #   * {Types::GetAutomationRuleV2Response#rule_status #rule_status} => String
    #   * {Types::GetAutomationRuleV2Response#description #description} => String
    #   * {Types::GetAutomationRuleV2Response#criteria #criteria} => Types::Criteria
    #   * {Types::GetAutomationRuleV2Response#actions #actions} => Array&lt;Types::AutomationRulesActionV2&gt;
    #   * {Types::GetAutomationRuleV2Response#created_at #created_at} => Time
    #   * {Types::GetAutomationRuleV2Response#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_automation_rule_v2({
    #     identifier: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_arn #=> String
    #   resp.rule_id #=> String
    #   resp.rule_order #=> Float
    #   resp.rule_name #=> String
    #   resp.rule_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.description #=> String
    #   resp.criteria.ocsf_finding_criteria.composite_filters #=> Array
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].string_filters #=> Array
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].string_filters[0].field_name #=> String, one of "metadata.uid", "activity_name", "cloud.account.uid", "cloud.provider", "cloud.region", "compliance.assessments.category", "compliance.assessments.name", "compliance.control", "compliance.status", "compliance.standards", "finding_info.desc", "finding_info.src_url", "finding_info.title", "finding_info.types", "finding_info.uid", "finding_info.related_events.uid", "finding_info.related_events.product.uid", "finding_info.related_events.title", "metadata.product.name", "metadata.product.uid", "metadata.product.vendor_name", "remediation.desc", "remediation.references", "resources.cloud_partition", "resources.region", "resources.type", "resources.uid", "severity", "status", "comment", "vulnerabilities.fix_coverage", "class_name", "databucket.encryption_details.algorithm", "databucket.encryption_details.key_uid", "databucket.file.data_classifications.classifier_details.type", "evidences.actor.user.account.uid", "evidences.api.operation", "evidences.api.response.error_message", "evidences.api.service.name", "evidences.connection_info.direction", "evidences.connection_info.protocol_name", "evidences.dst_endpoint.autonomous_system.name", "evidences.dst_endpoint.location.city", "evidences.dst_endpoint.location.country", "evidences.src_endpoint.autonomous_system.name", "evidences.src_endpoint.hostname", "evidences.src_endpoint.location.city", "evidences.src_endpoint.location.country", "finding_info.analytic.name", "malware.name", "malware_scan_info.uid", "malware.severity", "resources.cloud_function.layers.uid_alt", "resources.cloud_function.runtime", "resources.cloud_function.user.uid", "resources.device.encryption_details.key_uid", "resources.device.image.uid", "resources.image.architecture", "resources.image.registry_uid", "resources.image.repository_name", "resources.image.uid", "resources.subnet_info.uid", "resources.vpc_uid", "vulnerabilities.affected_code.file.path", "vulnerabilities.affected_packages.name", "vulnerabilities.cve.epss.score", "vulnerabilities.cve.uid", "vulnerabilities.related_vulnerabilities", "cloud.account.name"
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].string_filters[0].filter.value #=> String
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].string_filters[0].filter.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].date_filters #=> Array
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].date_filters[0].field_name #=> String, one of "finding_info.created_time_dt", "finding_info.first_seen_time_dt", "finding_info.last_seen_time_dt", "finding_info.modified_time_dt", "resources.image.created_time_dt", "resources.image.last_used_time_dt", "resources.modified_time_dt"
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].date_filters[0].filter.start #=> String
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].date_filters[0].filter.end #=> String
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].date_filters[0].filter.date_range.value #=> Integer
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].date_filters[0].filter.date_range.unit #=> String, one of "DAYS"
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].boolean_filters #=> Array
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].boolean_filters[0].field_name #=> String, one of "compliance.assessments.meets_criteria", "vulnerabilities.is_exploit_available", "vulnerabilities.is_fix_available"
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].boolean_filters[0].filter.value #=> Boolean
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].number_filters #=> Array
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].number_filters[0].field_name #=> String, one of "activity_id", "compliance.status_id", "confidence_score", "severity_id", "status_id", "finding_info.related_events_count", "evidences.api.response.code", "evidences.dst_endpoint.autonomous_system.number", "evidences.dst_endpoint.port", "evidences.src_endpoint.autonomous_system.number", "evidences.src_endpoint.port", "resources.image.in_use_count"
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].number_filters[0].filter.gte #=> Float
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].number_filters[0].filter.lte #=> Float
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].number_filters[0].filter.eq #=> Float
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].number_filters[0].filter.gt #=> Float
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].number_filters[0].filter.lt #=> Float
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].map_filters #=> Array
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].map_filters[0].field_name #=> String, one of "resources.tags", "compliance.control_parameters", "databucket.tags", "finding_info.tags"
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].map_filters[0].filter.key #=> String
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].map_filters[0].filter.value #=> String
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].map_filters[0].filter.comparison #=> String, one of "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].ip_filters #=> Array
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].ip_filters[0].field_name #=> String, one of "evidences.dst_endpoint.ip", "evidences.src_endpoint.ip"
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].ip_filters[0].filter.cidr #=> String
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].nested_composite_filters #=> Types::CompositeFilterList
    #   resp.criteria.ocsf_finding_criteria.composite_filters[0].operator #=> String, one of "AND", "OR"
    #   resp.criteria.ocsf_finding_criteria.composite_operator #=> String, one of "AND", "OR"
    #   resp.actions #=> Array
    #   resp.actions[0].type #=> String, one of "FINDING_FIELDS_UPDATE", "EXTERNAL_INTEGRATION"
    #   resp.actions[0].finding_fields_update.severity_id #=> Integer
    #   resp.actions[0].finding_fields_update.comment #=> String
    #   resp.actions[0].finding_fields_update.status_id #=> Integer
    #   resp.actions[0].external_integration_configuration.connector_arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetAutomationRuleV2 AWS API Documentation
    #
    # @overload get_automation_rule_v2(params = {})
    # @param [Hash] params ({})
    def get_automation_rule_v2(params = {}, options = {})
      req = build_request(:get_automation_rule_v2, params)
      req.send_request(options)
    end

    # Provides information about a configuration policy. Only the Security
    # Hub delegated administrator can invoke this operation from the home
    # Region.
    #
    # @option params [required, String] :identifier
    #   The Amazon Resource Name (ARN) or universally unique identifier (UUID)
    #   of the configuration policy.
    #
    # @return [Types::GetConfigurationPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationPolicyResponse#arn #arn} => String
    #   * {Types::GetConfigurationPolicyResponse#id #id} => String
    #   * {Types::GetConfigurationPolicyResponse#name #name} => String
    #   * {Types::GetConfigurationPolicyResponse#description #description} => String
    #   * {Types::GetConfigurationPolicyResponse#updated_at #updated_at} => Time
    #   * {Types::GetConfigurationPolicyResponse#created_at #created_at} => Time
    #   * {Types::GetConfigurationPolicyResponse#configuration_policy #configuration_policy} => Types::Policy
    #
    #
    # @example Example: To get details about a configuration policy
    #
    #   # This operation provides details about the specified configuration policy.
    #
    #   resp = client.get_configuration_policy({
    #     identifier: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     configuration_policy: {
    #       security_hub: {
    #         enabled_standard_identifiers: [
    #           "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0", 
    #           "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0", 
    #         ], 
    #         security_controls_configuration: {
    #           disabled_security_control_identifiers: [
    #             "CloudWatch.1", 
    #           ], 
    #           security_control_custom_parameters: [
    #             {
    #               parameters: {
    #                 "daysToExpiration" => {
    #                   value: {
    #                     integer: 14, 
    #                   }, 
    #                   value_type: "CUSTOM", 
    #                 }, 
    #               }, 
    #               security_control_id: "ACM.1", 
    #             }, 
    #           ], 
    #         }, 
    #         service_enabled: true, 
    #       }, 
    #     }, 
    #     created_at: Time.parse("2023-01-11T06:17:17.154Z"), 
    #     description: "Configuration policy for testing FSBP and CIS", 
    #     id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     name: "TestConfigurationPolicy", 
    #     updated_at: Time.parse("2023-01-11T06:17:17.154Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_policy({
    #     identifier: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.updated_at #=> Time
    #   resp.created_at #=> Time
    #   resp.configuration_policy.security_hub.service_enabled #=> Boolean
    #   resp.configuration_policy.security_hub.enabled_standard_identifiers #=> Array
    #   resp.configuration_policy.security_hub.enabled_standard_identifiers[0] #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.enabled_security_control_identifiers #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.enabled_security_control_identifiers[0] #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.disabled_security_control_identifiers #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.disabled_security_control_identifiers[0] #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].security_control_id #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters #=> Hash
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.integer #=> Integer
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.integer_list #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.integer_list[0] #=> Integer
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.double #=> Float
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.string #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.string_list #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.string_list[0] #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.boolean #=> Boolean
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.enum #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.enum_list #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.enum_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetConfigurationPolicy AWS API Documentation
    #
    # @overload get_configuration_policy(params = {})
    # @param [Hash] params ({})
    def get_configuration_policy(params = {}, options = {})
      req = build_request(:get_configuration_policy, params)
      req.send_request(options)
    end

    # Returns the association between a configuration and a target account,
    # organizational unit, or the root. The configuration can be a
    # configuration policy or self-managed behavior. Only the Security Hub
    # delegated administrator can invoke this operation from the home
    # Region.
    #
    # @option params [required, Types::Target] :target
    #   The target account ID, organizational unit ID, or the root ID to
    #   retrieve the association for.
    #
    # @return [Types::GetConfigurationPolicyAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationPolicyAssociationResponse#configuration_policy_id #configuration_policy_id} => String
    #   * {Types::GetConfigurationPolicyAssociationResponse#target_id #target_id} => String
    #   * {Types::GetConfigurationPolicyAssociationResponse#target_type #target_type} => String
    #   * {Types::GetConfigurationPolicyAssociationResponse#association_type #association_type} => String
    #   * {Types::GetConfigurationPolicyAssociationResponse#updated_at #updated_at} => Time
    #   * {Types::GetConfigurationPolicyAssociationResponse#association_status #association_status} => String
    #   * {Types::GetConfigurationPolicyAssociationResponse#association_status_message #association_status_message} => String
    #
    #
    # @example Example: To get details about a configuration association
    #
    #   # This operation provides details about configuration associations for a specific target account, organizational unit, or
    #   # the root.
    #
    #   resp = client.get_configuration_policy_association({
    #     target: {
    #       account_id: "111122223333", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     association_status: "FAILED", 
    #     association_status_message: "Configuration Policy a1b2c3d4-5678-90ab-cdef-EXAMPLE11111 couldn't be applied to account 111122223333 in us-east-1 Region. Retry your request.", 
    #     association_type: "INHERITED", 
    #     configuration_policy_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     target_id: "111122223333", 
    #     target_type: "ACCOUNT", 
    #     updated_at: Time.parse("2023-01-11T06:17:17.154Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_policy_association({
    #     target: { # required
    #       account_id: "NonEmptyString",
    #       organizational_unit_id: "NonEmptyString",
    #       root_id: "NonEmptyString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_policy_id #=> String
    #   resp.target_id #=> String
    #   resp.target_type #=> String, one of "ACCOUNT", "ORGANIZATIONAL_UNIT", "ROOT"
    #   resp.association_type #=> String, one of "INHERITED", "APPLIED"
    #   resp.updated_at #=> Time
    #   resp.association_status #=> String, one of "PENDING", "SUCCESS", "FAILED"
    #   resp.association_status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetConfigurationPolicyAssociation AWS API Documentation
    #
    # @overload get_configuration_policy_association(params = {})
    # @param [Hash] params ({})
    def get_configuration_policy_association(params = {}, options = {})
      req = build_request(:get_configuration_policy_association, params)
      req.send_request(options)
    end

    # Grants permission to retrieve details for a connectorV2 based on
    # connector id. This API is in preview release and subject to change.
    #
    # @option params [required, String] :connector_id
    #   The UUID of the connectorV2 to identify connectorV2 resource.
    #
    # @return [Types::GetConnectorV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectorV2Response#connector_arn #connector_arn} => String
    #   * {Types::GetConnectorV2Response#connector_id #connector_id} => String
    #   * {Types::GetConnectorV2Response#name #name} => String
    #   * {Types::GetConnectorV2Response#description #description} => String
    #   * {Types::GetConnectorV2Response#kms_key_arn #kms_key_arn} => String
    #   * {Types::GetConnectorV2Response#created_at #created_at} => Time
    #   * {Types::GetConnectorV2Response#last_updated_at #last_updated_at} => Time
    #   * {Types::GetConnectorV2Response#health #health} => Types::HealthCheck
    #   * {Types::GetConnectorV2Response#provider_detail #provider_detail} => Types::ProviderDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connector_v2({
    #     connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.connector_arn #=> String
    #   resp.connector_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.kms_key_arn #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.health.connector_status #=> String, one of "CONNECTED", "FAILED_TO_CONNECT", "PENDING_CONFIGURATION", "PENDING_AUTHORIZATION"
    #   resp.health.message #=> String
    #   resp.health.last_checked_at #=> Time
    #   resp.provider_detail.jira_cloud.cloud_id #=> String
    #   resp.provider_detail.jira_cloud.project_key #=> String
    #   resp.provider_detail.jira_cloud.domain #=> String
    #   resp.provider_detail.jira_cloud.auth_url #=> String
    #   resp.provider_detail.jira_cloud.auth_status #=> String, one of "ACTIVE", "FAILED"
    #   resp.provider_detail.service_now.instance_name #=> String
    #   resp.provider_detail.service_now.client_id #=> String
    #   resp.provider_detail.service_now.auth_status #=> String, one of "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetConnectorV2 AWS API Documentation
    #
    # @overload get_connector_v2(params = {})
    # @param [Hash] params ({})
    def get_connector_v2(params = {}, options = {})
      req = build_request(:get_connector_v2, params)
      req.send_request(options)
    end

    # Returns a list of the standards that are currently enabled.
    #
    # @option params [Array<String>] :standards_subscription_arns
    #   The list of the standards subscription ARNs for the standards to
    #   retrieve.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetEnabledStandards` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @return [Types::GetEnabledStandardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnabledStandardsResponse#standards_subscriptions #standards_subscriptions} => Array&lt;Types::StandardsSubscription&gt;
    #   * {Types::GetEnabledStandardsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To return a list of enabled standards
    #
    #   # The following example returns a list of Security Hub standards that are currently enabled in your account.  
    #
    #   resp = client.get_enabled_standards({
    #     standards_subscription_arns: [
    #       "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     standards_subscriptions: [
    #       {
    #         standards_arn: "arn:aws:securityhub:us-west-1::standards/pci-dss/v/3.2.1", 
    #         standards_input: {
    #         }, 
    #         standards_status: "READY", 
    #         standards_subscription_arn: "arn:aws:securityhub:us-west-1:123456789012:subscription/pci-dss/v/3.2.1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_enabled_standards({
    #     standards_subscription_arns: ["NonEmptyString"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.standards_subscriptions #=> Array
    #   resp.standards_subscriptions[0].standards_subscription_arn #=> String
    #   resp.standards_subscriptions[0].standards_arn #=> String
    #   resp.standards_subscriptions[0].standards_input #=> Hash
    #   resp.standards_subscriptions[0].standards_input["NonEmptyString"] #=> String
    #   resp.standards_subscriptions[0].standards_status #=> String, one of "PENDING", "READY", "FAILED", "DELETING", "INCOMPLETE"
    #   resp.standards_subscriptions[0].standards_controls_updatable #=> String, one of "READY_FOR_UPDATES", "NOT_READY_FOR_UPDATES"
    #   resp.standards_subscriptions[0].standards_status_reason.status_reason_code #=> String, one of "NO_AVAILABLE_CONFIGURATION_RECORDER", "MAXIMUM_NUMBER_OF_CONFIG_RULES_EXCEEDED", "INTERNAL_ERROR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetEnabledStandards AWS API Documentation
    #
    # @overload get_enabled_standards(params = {})
    # @param [Hash] params ({})
    def get_enabled_standards(params = {}, options = {})
      req = build_request(:get_enabled_standards, params)
      req.send_request(options)
    end

    # <note markdown="1"> The *aggregation Region* is now called the *home Region*.
    #
    #  </note>
    #
    # Returns the current configuration in the calling account for
    # cross-Region aggregation. A finding aggregator is a resource that
    # establishes the home Region and any linked Regions.
    #
    # @option params [required, String] :finding_aggregator_arn
    #   The ARN of the finding aggregator to return details for. To obtain the
    #   ARN, use `ListFindingAggregators`.
    #
    # @return [Types::GetFindingAggregatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingAggregatorResponse#finding_aggregator_arn #finding_aggregator_arn} => String
    #   * {Types::GetFindingAggregatorResponse#finding_aggregation_region #finding_aggregation_region} => String
    #   * {Types::GetFindingAggregatorResponse#region_linking_mode #region_linking_mode} => String
    #   * {Types::GetFindingAggregatorResponse#regions #regions} => Array&lt;String&gt;
    #
    #
    # @example Example: To get cross-Region aggregation details
    #
    #   # The following example returns cross-Region aggregation details for the requesting account. 
    #
    #   resp = client.get_finding_aggregator({
    #     finding_aggregator_arn: "arn:aws:securityhub:us-east-1:123456789012:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     finding_aggregation_region: "us-east-1", 
    #     finding_aggregator_arn: "arn:aws:securityhub:us-east-1:123456789012:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     region_linking_mode: "SPECIFIED_REGIONS", 
    #     regions: [
    #       "us-west-1", 
    #       "us-west-2", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_finding_aggregator({
    #     finding_aggregator_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_aggregator_arn #=> String
    #   resp.finding_aggregation_region #=> String
    #   resp.region_linking_mode #=> String
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingAggregator AWS API Documentation
    #
    # @overload get_finding_aggregator(params = {})
    # @param [Hash] params ({})
    def get_finding_aggregator(params = {}, options = {})
      req = build_request(:get_finding_aggregator, params)
      req.send_request(options)
    end

    # Returns the history of a Security Hub finding. The history includes
    # changes made to any fields in the Amazon Web Services Security Finding
    # Format (ASFF) except top-level timestamp fields, such as the
    # `CreatedAt` and `UpdatedAt` fields.
    #
    # This operation might return fewer results than the maximum number of
    # results (`MaxResults`) specified in a request, even when more results
    # are available. If this occurs, the response includes a `NextToken`
    # value, which you should use to retrieve the next set of results in the
    # response. The presence of a `NextToken` value in a response doesn't
    # necessarily indicate that the results are incomplete. However, you
    # should continue to specify a `NextToken` value until you receive a
    # response that doesn't include this value.
    #
    # @option params [required, Types::AwsSecurityFindingIdentifier] :finding_identifier
    #   Identifies which finding to get the finding history for.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   A timestamp that indicates the start time of the requested finding
    #   history.
    #
    #   If you provide values for both `StartTime` and `EndTime`, Security Hub
    #   returns finding history for the specified time period. If you provide
    #   a value for `StartTime` but not for `EndTime`, Security Hub returns
    #   finding history from the `StartTime` to the time at which the API is
    #   called. If you provide a value for `EndTime` but not for `StartTime`,
    #   Security Hub returns finding history from the [CreatedAt][1] timestamp
    #   of the finding to the `EndTime`. If you provide neither `StartTime`
    #   nor `EndTime`, Security Hub returns finding history from the
    #   `CreatedAt` timestamp of the finding to the time at which the API is
    #   called. In all of these scenarios, the response is limited to 100
    #   results.
    #
    #   For more information about the validation and formatting of timestamp
    #   fields in Security Hub, see [Timestamps][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_AwsSecurityFindingFilters.html#securityhub-Type-AwsSecurityFindingFilters-CreatedAt
    #   [2]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   An ISO 8601-formatted timestamp that indicates the end time of the
    #   requested finding history.
    #
    #   If you provide values for both `StartTime` and `EndTime`, Security Hub
    #   returns finding history for the specified time period. If you provide
    #   a value for `StartTime` but not for `EndTime`, Security Hub returns
    #   finding history from the `StartTime` to the time at which the API is
    #   called. If you provide a value for `EndTime` but not for `StartTime`,
    #   Security Hub returns finding history from the [CreatedAt][1] timestamp
    #   of the finding to the `EndTime`. If you provide neither `StartTime`
    #   nor `EndTime`, Security Hub returns finding history from the
    #   `CreatedAt` timestamp of the finding to the time at which the API is
    #   called. In all of these scenarios, the response is limited to 100
    #   results.
    #
    #   For more information about the validation and formatting of timestamp
    #   fields in Security Hub, see [Timestamps][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_AwsSecurityFindingFilters.html#securityhub-Type-AwsSecurityFindingFilters-CreatedAt
    #   [2]: https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps
    #
    # @option params [String] :next_token
    #   A token for pagination purposes. Provide `NULL` as the initial value.
    #   In subsequent requests, provide the token included in the response to
    #   get up to an additional 100 results of finding history. If you don’t
    #   provide `NextToken`, Security Hub returns up to 100 results of finding
    #   history for each request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned. If you don’t provide it,
    #   Security Hub returns up to 100 results of finding history.
    #
    # @return [Types::GetFindingHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingHistoryResponse#records #records} => Array&lt;Types::FindingHistoryRecord&gt;
    #   * {Types::GetFindingHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get finding history
    #
    #   # The following example retrieves the history of the specified finding during the specified time frame. If the time frame
    #   # permits, Security Hub returns finding history for the last 90 days.
    #
    #   resp = client.get_finding_history({
    #     end_time: Time.parse("2021-09-31T15:53:35.573Z"), 
    #     finding_identifier: {
    #       id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #       product_arn: "arn:aws:securityhub:us-west-2:123456789012:product/123456789012/default", 
    #     }, 
    #     max_results: 2, 
    #     start_time: Time.parse("2021-09-30T15:53:35.573Z"), 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     records: [
    #       {
    #         finding_created: false, 
    #         finding_identifier: {
    #           id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #           product_arn: "arn:aws:securityhub:us-west-2:123456789012:product/123456789012/default", 
    #         }, 
    #         update_source: {
    #           identity: "arn:aws:iam::444455556666:role/Admin", 
    #           type: "BATCH_UPDATE_FINDINGS", 
    #         }, 
    #         update_time: Time.parse("2021-09-31T15:52:25.573Z"), 
    #         updates: [
    #           {
    #             new_value: "MEDIUM", 
    #             old_value: "HIGH", 
    #             updated_field: "Severity", 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_finding_history({
    #     finding_identifier: { # required
    #       id: "NonEmptyString", # required
    #       product_arn: "NonEmptyString", # required
    #     },
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.records #=> Array
    #   resp.records[0].finding_identifier.id #=> String
    #   resp.records[0].finding_identifier.product_arn #=> String
    #   resp.records[0].update_time #=> Time
    #   resp.records[0].finding_created #=> Boolean
    #   resp.records[0].update_source.type #=> String, one of "BATCH_UPDATE_FINDINGS", "BATCH_IMPORT_FINDINGS"
    #   resp.records[0].update_source.identity #=> String
    #   resp.records[0].updates #=> Array
    #   resp.records[0].updates[0].updated_field #=> String
    #   resp.records[0].updates[0].old_value #=> String
    #   resp.records[0].updates[0].new_value #=> String
    #   resp.records[0].next_token #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingHistory AWS API Documentation
    #
    # @overload get_finding_history(params = {})
    # @param [Hash] params ({})
    def get_finding_history(params = {}, options = {})
      req = build_request(:get_finding_history, params)
      req.send_request(options)
    end

    # Returns aggregated statistical data about findings.
    # `GetFindingStatisticsV2` use `securityhub:GetAdhocInsightResults` in
    # the `Action` element of an IAM policy statement. You must have
    # permission to perform the `s` action. This API is in public preview
    # and subject to change.
    #
    # @option params [required, Array<Types::GroupByRule>] :group_by_rules
    #   Specifies how security findings should be aggregated and organized in
    #   the statistical analysis. It can accept up to 5 `groupBy` fields in a
    #   single call.
    #
    # @option params [String] :sort_order
    #   Orders the aggregation count in descending or ascending order.
    #   Descending order is the default.
    #
    # @option params [Integer] :max_statistic_results
    #   The maximum number of results to be returned.
    #
    # @return [Types::GetFindingStatisticsV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingStatisticsV2Response#group_by_results #group_by_results} => Array&lt;Types::GroupByResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_finding_statistics_v2({
    #     group_by_rules: [ # required
    #       {
    #         filters: {
    #           composite_filters: [
    #             {
    #               string_filters: [
    #                 {
    #                   field_name: "metadata.uid", # accepts metadata.uid, activity_name, cloud.account.uid, cloud.provider, cloud.region, compliance.assessments.category, compliance.assessments.name, compliance.control, compliance.status, compliance.standards, finding_info.desc, finding_info.src_url, finding_info.title, finding_info.types, finding_info.uid, finding_info.related_events.uid, finding_info.related_events.product.uid, finding_info.related_events.title, metadata.product.name, metadata.product.uid, metadata.product.vendor_name, remediation.desc, remediation.references, resources.cloud_partition, resources.region, resources.type, resources.uid, severity, status, comment, vulnerabilities.fix_coverage, class_name, databucket.encryption_details.algorithm, databucket.encryption_details.key_uid, databucket.file.data_classifications.classifier_details.type, evidences.actor.user.account.uid, evidences.api.operation, evidences.api.response.error_message, evidences.api.service.name, evidences.connection_info.direction, evidences.connection_info.protocol_name, evidences.dst_endpoint.autonomous_system.name, evidences.dst_endpoint.location.city, evidences.dst_endpoint.location.country, evidences.src_endpoint.autonomous_system.name, evidences.src_endpoint.hostname, evidences.src_endpoint.location.city, evidences.src_endpoint.location.country, finding_info.analytic.name, malware.name, malware_scan_info.uid, malware.severity, resources.cloud_function.layers.uid_alt, resources.cloud_function.runtime, resources.cloud_function.user.uid, resources.device.encryption_details.key_uid, resources.device.image.uid, resources.image.architecture, resources.image.registry_uid, resources.image.repository_name, resources.image.uid, resources.subnet_info.uid, resources.vpc_uid, vulnerabilities.affected_code.file.path, vulnerabilities.affected_packages.name, vulnerabilities.cve.epss.score, vulnerabilities.cve.uid, vulnerabilities.related_vulnerabilities, cloud.account.name
    #                   filter: {
    #                     value: "NonEmptyString",
    #                     comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #                   },
    #                 },
    #               ],
    #               date_filters: [
    #                 {
    #                   field_name: "finding_info.created_time_dt", # accepts finding_info.created_time_dt, finding_info.first_seen_time_dt, finding_info.last_seen_time_dt, finding_info.modified_time_dt, resources.image.created_time_dt, resources.image.last_used_time_dt, resources.modified_time_dt
    #                   filter: {
    #                     start: "NonEmptyString",
    #                     end: "NonEmptyString",
    #                     date_range: {
    #                       value: 1,
    #                       unit: "DAYS", # accepts DAYS
    #                     },
    #                   },
    #                 },
    #               ],
    #               boolean_filters: [
    #                 {
    #                   field_name: "compliance.assessments.meets_criteria", # accepts compliance.assessments.meets_criteria, vulnerabilities.is_exploit_available, vulnerabilities.is_fix_available
    #                   filter: {
    #                     value: false,
    #                   },
    #                 },
    #               ],
    #               number_filters: [
    #                 {
    #                   field_name: "activity_id", # accepts activity_id, compliance.status_id, confidence_score, severity_id, status_id, finding_info.related_events_count, evidences.api.response.code, evidences.dst_endpoint.autonomous_system.number, evidences.dst_endpoint.port, evidences.src_endpoint.autonomous_system.number, evidences.src_endpoint.port, resources.image.in_use_count
    #                   filter: {
    #                     gte: 1.0,
    #                     lte: 1.0,
    #                     eq: 1.0,
    #                     gt: 1.0,
    #                     lt: 1.0,
    #                   },
    #                 },
    #               ],
    #               map_filters: [
    #                 {
    #                   field_name: "resources.tags", # accepts resources.tags, compliance.control_parameters, databucket.tags, finding_info.tags
    #                   filter: {
    #                     key: "NonEmptyString",
    #                     value: "NonEmptyString",
    #                     comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #                   },
    #                 },
    #               ],
    #               ip_filters: [
    #                 {
    #                   field_name: "evidences.dst_endpoint.ip", # accepts evidences.dst_endpoint.ip, evidences.src_endpoint.ip
    #                   filter: {
    #                     cidr: "NonEmptyString",
    #                   },
    #                 },
    #               ],
    #               nested_composite_filters: {
    #                 # recursive CompositeFilterList
    #               },
    #               operator: "AND", # accepts AND, OR
    #             },
    #           ],
    #           composite_operator: "AND", # accepts AND, OR
    #         },
    #         group_by_field: "activity_name", # required, accepts activity_name, cloud.account.uid, cloud.provider, cloud.region, compliance.assessments.name, compliance.status, compliance.control, finding_info.title, finding_info.types, metadata.product.name, metadata.product.uid, resources.type, resources.uid, severity, status, vulnerabilities.fix_coverage, class_name, vulnerabilities.affected_packages.name, finding_info.analytic.name, compliance.standards, cloud.account.name
    #       },
    #     ],
    #     sort_order: "asc", # accepts asc, desc
    #     max_statistic_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group_by_results #=> Array
    #   resp.group_by_results[0].group_by_field #=> String
    #   resp.group_by_results[0].group_by_values #=> Array
    #   resp.group_by_results[0].group_by_values[0].field_value #=> String
    #   resp.group_by_results[0].group_by_values[0].count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingStatisticsV2 AWS API Documentation
    #
    # @overload get_finding_statistics_v2(params = {})
    # @param [Hash] params ({})
    def get_finding_statistics_v2(params = {}, options = {})
      req = build_request(:get_finding_statistics_v2, params)
      req.send_request(options)
    end

    # Returns a list of findings that match the specified criteria.
    #
    # If cross-Region aggregation is enabled, then when you call
    # `GetFindings` from the home Region, the results include all of the
    # matching findings from both the home Region and linked Regions.
    #
    # @option params [Types::AwsSecurityFindingFilters] :filters
    #   The finding attributes used to define a condition to filter the
    #   returned findings.
    #
    #   You can filter by up to 10 finding attributes. For each attribute, you
    #   can provide up to 20 filter values.
    #
    #   Note that in the available filter fields, `WorkflowState` is
    #   deprecated. To search for a finding based on its workflow status, use
    #   `WorkflowStatus`.
    #
    # @option params [Array<Types::SortCriterion>] :sort_criteria
    #   The finding attributes used to sort the list of returned findings.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetFindings` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of findings to return.
    #
    # @return [Types::GetFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsResponse#findings #findings} => Array&lt;Types::AwsSecurityFinding&gt;
    #   * {Types::GetFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get a list of findings
    #
    #   # The following example returns a filtered and sorted list of Security Hub findings.
    #
    #   resp = client.get_findings({
    #     filters: {
    #       aws_account_id: [
    #         {
    #           comparison: "PREFIX", 
    #           value: "123456789012", 
    #         }, 
    #       ], 
    #     }, 
    #     max_results: 1, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     findings: [
    #       {
    #         aws_account_id: "123456789012", 
    #         company_name: "AWS", 
    #         compliance: {
    #           associated_standards: [
    #             {
    #               standards_id: "standards/aws-foundational-security-best-practices/v/1.0.0", 
    #             }, 
    #             {
    #               standards_id: "standards/pci-dss/v/3.2.1", 
    #             }, 
    #             {
    #               standards_id: "ruleset/cis-aws-foundations-benchmark/v/1.2.0", 
    #             }, 
    #             {
    #               standards_id: "standards/cis-aws-foundations-benchmark/v/1.4.0", 
    #             }, 
    #             {
    #               standards_id: "standards/service-managed-aws-control-tower/v/1.0.0", 
    #             }, 
    #           ], 
    #           related_requirements: [
    #             "PCI DSS v3.2.1/3.4", 
    #             "CIS AWS Foundations Benchmark v1.2.0/2.7", 
    #             "CIS AWS Foundations Benchmark v1.4.0/3.7", 
    #           ], 
    #           security_control_id: "CloudTrail.2", 
    #           status: "FAILED", 
    #         }, 
    #         created_at: "2022-10-06T02:18:23.076Z", 
    #         description: "This AWS control checks whether AWS CloudTrail is configured to use the server side encryption (SSE) AWS Key Management Service (AWS KMS) customer master key (CMK) encryption. The check will pass if the KmsKeyId is defined.", 
    #         finding_provider_fields: {
    #           severity: {
    #             label: "MEDIUM", 
    #             original: "MEDIUM", 
    #           }, 
    #           types: [
    #             "Software and Configuration Checks/Industry and Regulatory Standards", 
    #           ], 
    #         }, 
    #         first_observed_at: "2022-10-06T02:18:23.076Z", 
    #         generator_id: "security-control/CloudTrail.2", 
    #         id: "arn:aws:securityhub:us-east-2:123456789012:security-control/CloudTrail.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         last_observed_at: "2022-10-28T16:10:06.956Z", 
    #         product_arn: "arn:aws:securityhub:us-east-2::product/aws/securityhub", 
    #         product_fields: {
    #           "RelatedAWSResources:0/name" => "securityhub-cloud-trail-encryption-enabled-fe95bf3f", 
    #           "RelatedAWSResources:0/type" => "AWS::Config::ConfigRule", 
    #           "Resources:0/Id" => "arn:aws:cloudtrail:us-east-2:123456789012:trail/AWSMacieTrail-DO-NOT-EDIT", 
    #           "aws/securityhub/CompanyName" => "AWS", 
    #           "aws/securityhub/FindingId" => "arn:aws:securityhub:us-east-2::product/aws/securityhub/arn:aws:securityhub:us-east-2:123456789012:security-control/CloudTrail.2/finding/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #           "aws/securityhub/ProductName" => "Security Hub", 
    #         }, 
    #         product_name: "Security Hub", 
    #         record_state: "ACTIVE", 
    #         region: "us-east-2", 
    #         remediation: {
    #           recommendation: {
    #             text: "For directions on how to correct this issue, consult the AWS Security Hub controls documentation.", 
    #             url: "https://docs.aws.amazon.com/console/securityhub/CloudTrail.2/remediation", 
    #           }, 
    #         }, 
    #         resources: [
    #           {
    #             id: "arn:aws:cloudtrail:us-east-2:123456789012:trail/AWSMacieTrail-DO-NOT-EDIT", 
    #             partition: "aws", 
    #             region: "us-east-2", 
    #             type: "AwsCloudTrailTrail", 
    #           }, 
    #         ], 
    #         schema_version: "2018-10-08", 
    #         severity: {
    #           label: "MEDIUM", 
    #           normalized: 40, 
    #           original: "MEDIUM", 
    #         }, 
    #         title: "CloudTrail should have encryption at-rest enabled", 
    #         types: [
    #           "Software and Configuration Checks/Industry and Regulatory Standards", 
    #         ], 
    #         updated_at: "2022-10-28T16:10:00.093Z", 
    #         workflow: {
    #           status: "NEW", 
    #         }, 
    #         workflow_state: "NEW", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings({
    #     filters: {
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       severity_normalized: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       recommendation_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       product_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       malware_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       malware_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       malware_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       malware_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_direction: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       network_source_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_source_mac: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_destination_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       network_destination_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       process_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       process_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       process_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       process_parent_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       process_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       process_terminated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_category: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_source: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       resource_aws_ec2_instance_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v4_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v6_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_key_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_iam_instance_profile_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_vpc_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_subnet_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_principal_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_iam_user_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_image_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       workflow_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       keyword: [
    #         {
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       finding_provider_fields_confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_severity_original: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_types: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       sample: [
    #         {
    #           value: false,
    #         },
    #       ],
    #       compliance_security_control_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_associated_standards_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       vulnerabilities_exploit_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       vulnerabilities_fix_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_security_control_parameters_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_security_control_parameters_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       aws_account_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_application_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_application_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #     },
    #     sort_criteria: [
    #       {
    #         field: "NonEmptyString",
    #         sort_order: "asc", # accepts asc, desc
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindings AWS API Documentation
    #
    # @overload get_findings(params = {})
    # @param [Hash] params ({})
    def get_findings(params = {}, options = {})
      req = build_request(:get_findings, params)
      req.send_request(options)
    end

    # Return a list of findings that match the specified criteria.
    # `GetFindings` and `GetFindingsV2` both use `securityhub:GetFindings`
    # in the `Action` element of an IAM policy statement. You must have
    # permission to perform the `securityhub:GetFindings` action. This API
    # is in public preview and subject to change.
    #
    # @option params [Types::OcsfFindingFilters] :filters
    #   The finding attributes used to define a condition to filter the
    #   returned OCSF findings. You can filter up to 10 composite filters. For
    #   each filter type inside of a composite filter, you can provide up to
    #   20 filters.
    #
    # @option params [Array<Types::SortCriterion>] :sort_criteria
    #   The finding attributes used to sort the list of returned findings.
    #
    # @option params [String] :next_token
    #   The token required for pagination. On your first call, set the value
    #   of this parameter to `NULL`. For subsequent calls, to continue listing
    #   data, set the value of this parameter to the value returned in the
    #   previous response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::GetFindingsV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsV2Response#findings #findings} => Array&lt;Hash,Array,String,Numeric,Boolean&gt;
    #   * {Types::GetFindingsV2Response#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings_v2({
    #     filters: {
    #       composite_filters: [
    #         {
    #           string_filters: [
    #             {
    #               field_name: "metadata.uid", # accepts metadata.uid, activity_name, cloud.account.uid, cloud.provider, cloud.region, compliance.assessments.category, compliance.assessments.name, compliance.control, compliance.status, compliance.standards, finding_info.desc, finding_info.src_url, finding_info.title, finding_info.types, finding_info.uid, finding_info.related_events.uid, finding_info.related_events.product.uid, finding_info.related_events.title, metadata.product.name, metadata.product.uid, metadata.product.vendor_name, remediation.desc, remediation.references, resources.cloud_partition, resources.region, resources.type, resources.uid, severity, status, comment, vulnerabilities.fix_coverage, class_name, databucket.encryption_details.algorithm, databucket.encryption_details.key_uid, databucket.file.data_classifications.classifier_details.type, evidences.actor.user.account.uid, evidences.api.operation, evidences.api.response.error_message, evidences.api.service.name, evidences.connection_info.direction, evidences.connection_info.protocol_name, evidences.dst_endpoint.autonomous_system.name, evidences.dst_endpoint.location.city, evidences.dst_endpoint.location.country, evidences.src_endpoint.autonomous_system.name, evidences.src_endpoint.hostname, evidences.src_endpoint.location.city, evidences.src_endpoint.location.country, finding_info.analytic.name, malware.name, malware_scan_info.uid, malware.severity, resources.cloud_function.layers.uid_alt, resources.cloud_function.runtime, resources.cloud_function.user.uid, resources.device.encryption_details.key_uid, resources.device.image.uid, resources.image.architecture, resources.image.registry_uid, resources.image.repository_name, resources.image.uid, resources.subnet_info.uid, resources.vpc_uid, vulnerabilities.affected_code.file.path, vulnerabilities.affected_packages.name, vulnerabilities.cve.epss.score, vulnerabilities.cve.uid, vulnerabilities.related_vulnerabilities, cloud.account.name
    #               filter: {
    #                 value: "NonEmptyString",
    #                 comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #               },
    #             },
    #           ],
    #           date_filters: [
    #             {
    #               field_name: "finding_info.created_time_dt", # accepts finding_info.created_time_dt, finding_info.first_seen_time_dt, finding_info.last_seen_time_dt, finding_info.modified_time_dt, resources.image.created_time_dt, resources.image.last_used_time_dt, resources.modified_time_dt
    #               filter: {
    #                 start: "NonEmptyString",
    #                 end: "NonEmptyString",
    #                 date_range: {
    #                   value: 1,
    #                   unit: "DAYS", # accepts DAYS
    #                 },
    #               },
    #             },
    #           ],
    #           boolean_filters: [
    #             {
    #               field_name: "compliance.assessments.meets_criteria", # accepts compliance.assessments.meets_criteria, vulnerabilities.is_exploit_available, vulnerabilities.is_fix_available
    #               filter: {
    #                 value: false,
    #               },
    #             },
    #           ],
    #           number_filters: [
    #             {
    #               field_name: "activity_id", # accepts activity_id, compliance.status_id, confidence_score, severity_id, status_id, finding_info.related_events_count, evidences.api.response.code, evidences.dst_endpoint.autonomous_system.number, evidences.dst_endpoint.port, evidences.src_endpoint.autonomous_system.number, evidences.src_endpoint.port, resources.image.in_use_count
    #               filter: {
    #                 gte: 1.0,
    #                 lte: 1.0,
    #                 eq: 1.0,
    #                 gt: 1.0,
    #                 lt: 1.0,
    #               },
    #             },
    #           ],
    #           map_filters: [
    #             {
    #               field_name: "resources.tags", # accepts resources.tags, compliance.control_parameters, databucket.tags, finding_info.tags
    #               filter: {
    #                 key: "NonEmptyString",
    #                 value: "NonEmptyString",
    #                 comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #               },
    #             },
    #           ],
    #           ip_filters: [
    #             {
    #               field_name: "evidences.dst_endpoint.ip", # accepts evidences.dst_endpoint.ip, evidences.src_endpoint.ip
    #               filter: {
    #                 cidr: "NonEmptyString",
    #               },
    #             },
    #           ],
    #           nested_composite_filters: {
    #             # recursive CompositeFilterList
    #           },
    #           operator: "AND", # accepts AND, OR
    #         },
    #       ],
    #       composite_operator: "AND", # accepts AND, OR
    #     },
    #     sort_criteria: [
    #       {
    #         field: "NonEmptyString",
    #         sort_order: "asc", # accepts asc, desc
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingsV2 AWS API Documentation
    #
    # @overload get_findings_v2(params = {})
    # @param [Hash] params ({})
    def get_findings_v2(params = {}, options = {})
      req = build_request(:get_findings_v2, params)
      req.send_request(options)
    end

    # Lists the results of the Security Hub insight specified by the insight
    # ARN.
    #
    # @option params [required, String] :insight_arn
    #   The ARN of the insight for which to return results.
    #
    # @return [Types::GetInsightResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightResultsResponse#insight_results #insight_results} => Types::InsightResults
    #
    #
    # @example Example: To get the results of a Security Hub insight
    #
    #   # The following example returns the results of the Security Hub insight specified by the insight ARN.
    #
    #   resp = client.get_insight_results({
    #     insight_arn: "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     insight_results: {
    #       group_by_attribute: "ResourceId", 
    #       insight_arn: "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #       result_values: [
    #         {
    #           count: 10, 
    #           group_by_attribute_value: "AWS::::Account:111122223333", 
    #         }, 
    #         {
    #           count: 3, 
    #           group_by_attribute_value: "AWS::::Account:444455556666", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insight_results({
    #     insight_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.insight_results.insight_arn #=> String
    #   resp.insight_results.group_by_attribute #=> String
    #   resp.insight_results.result_values #=> Array
    #   resp.insight_results.result_values[0].group_by_attribute_value #=> String
    #   resp.insight_results.result_values[0].count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightResults AWS API Documentation
    #
    # @overload get_insight_results(params = {})
    # @param [Hash] params ({})
    def get_insight_results(params = {}, options = {})
      req = build_request(:get_insight_results, params)
      req.send_request(options)
    end

    # Lists and describes insights for the specified insight ARNs.
    #
    # @option params [Array<String>] :insight_arns
    #   The ARNs of the insights to describe. If you don't provide any
    #   insight ARNs, then `GetInsights` returns all of your custom insights.
    #   It does not return any managed insights.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetInsights` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response.
    #
    # @return [Types::GetInsightsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInsightsResponse#insights #insights} => Array&lt;Types::Insight&gt;
    #   * {Types::GetInsightsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get details of a Security Hub insight
    #
    #   # The following example returns details of the Security Hub insight with the specified ARN.
    #
    #   resp = client.get_insights({
    #     insight_arns: [
    #       "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     insights: [
    #       {
    #         filters: {
    #           resource_type: [
    #             {
    #               comparison: "EQUALS", 
    #               value: "AwsIamRole", 
    #             }, 
    #           ], 
    #           severity_label: [
    #             {
    #               comparison: "EQUALS", 
    #               value: "CRITICAL", 
    #             }, 
    #           ], 
    #         }, 
    #         group_by_attribute: "ResourceId", 
    #         insight_arn: "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         name: "Critical role findings", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_insights({
    #     insight_arns: ["NonEmptyString"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.insights #=> Array
    #   resp.insights[0].insight_arn #=> String
    #   resp.insights[0].name #=> String
    #   resp.insights[0].filters.product_arn #=> Array
    #   resp.insights[0].filters.product_arn[0].value #=> String
    #   resp.insights[0].filters.product_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.aws_account_id #=> Array
    #   resp.insights[0].filters.aws_account_id[0].value #=> String
    #   resp.insights[0].filters.aws_account_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.id #=> Array
    #   resp.insights[0].filters.id[0].value #=> String
    #   resp.insights[0].filters.id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.generator_id #=> Array
    #   resp.insights[0].filters.generator_id[0].value #=> String
    #   resp.insights[0].filters.generator_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.region #=> Array
    #   resp.insights[0].filters.region[0].value #=> String
    #   resp.insights[0].filters.region[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.type #=> Array
    #   resp.insights[0].filters.type[0].value #=> String
    #   resp.insights[0].filters.type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.first_observed_at #=> Array
    #   resp.insights[0].filters.first_observed_at[0].start #=> String
    #   resp.insights[0].filters.first_observed_at[0].end #=> String
    #   resp.insights[0].filters.first_observed_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.first_observed_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.last_observed_at #=> Array
    #   resp.insights[0].filters.last_observed_at[0].start #=> String
    #   resp.insights[0].filters.last_observed_at[0].end #=> String
    #   resp.insights[0].filters.last_observed_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.last_observed_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.created_at #=> Array
    #   resp.insights[0].filters.created_at[0].start #=> String
    #   resp.insights[0].filters.created_at[0].end #=> String
    #   resp.insights[0].filters.created_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.created_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.updated_at #=> Array
    #   resp.insights[0].filters.updated_at[0].start #=> String
    #   resp.insights[0].filters.updated_at[0].end #=> String
    #   resp.insights[0].filters.updated_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.updated_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.severity_product #=> Array
    #   resp.insights[0].filters.severity_product[0].gte #=> Float
    #   resp.insights[0].filters.severity_product[0].lte #=> Float
    #   resp.insights[0].filters.severity_product[0].eq #=> Float
    #   resp.insights[0].filters.severity_product[0].gt #=> Float
    #   resp.insights[0].filters.severity_product[0].lt #=> Float
    #   resp.insights[0].filters.severity_normalized #=> Array
    #   resp.insights[0].filters.severity_normalized[0].gte #=> Float
    #   resp.insights[0].filters.severity_normalized[0].lte #=> Float
    #   resp.insights[0].filters.severity_normalized[0].eq #=> Float
    #   resp.insights[0].filters.severity_normalized[0].gt #=> Float
    #   resp.insights[0].filters.severity_normalized[0].lt #=> Float
    #   resp.insights[0].filters.severity_label #=> Array
    #   resp.insights[0].filters.severity_label[0].value #=> String
    #   resp.insights[0].filters.severity_label[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.confidence #=> Array
    #   resp.insights[0].filters.confidence[0].gte #=> Float
    #   resp.insights[0].filters.confidence[0].lte #=> Float
    #   resp.insights[0].filters.confidence[0].eq #=> Float
    #   resp.insights[0].filters.confidence[0].gt #=> Float
    #   resp.insights[0].filters.confidence[0].lt #=> Float
    #   resp.insights[0].filters.criticality #=> Array
    #   resp.insights[0].filters.criticality[0].gte #=> Float
    #   resp.insights[0].filters.criticality[0].lte #=> Float
    #   resp.insights[0].filters.criticality[0].eq #=> Float
    #   resp.insights[0].filters.criticality[0].gt #=> Float
    #   resp.insights[0].filters.criticality[0].lt #=> Float
    #   resp.insights[0].filters.title #=> Array
    #   resp.insights[0].filters.title[0].value #=> String
    #   resp.insights[0].filters.title[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.description #=> Array
    #   resp.insights[0].filters.description[0].value #=> String
    #   resp.insights[0].filters.description[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.recommendation_text #=> Array
    #   resp.insights[0].filters.recommendation_text[0].value #=> String
    #   resp.insights[0].filters.recommendation_text[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.source_url #=> Array
    #   resp.insights[0].filters.source_url[0].value #=> String
    #   resp.insights[0].filters.source_url[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.product_fields #=> Array
    #   resp.insights[0].filters.product_fields[0].key #=> String
    #   resp.insights[0].filters.product_fields[0].value #=> String
    #   resp.insights[0].filters.product_fields[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"
    #   resp.insights[0].filters.product_name #=> Array
    #   resp.insights[0].filters.product_name[0].value #=> String
    #   resp.insights[0].filters.product_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.company_name #=> Array
    #   resp.insights[0].filters.company_name[0].value #=> String
    #   resp.insights[0].filters.company_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.user_defined_fields #=> Array
    #   resp.insights[0].filters.user_defined_fields[0].key #=> String
    #   resp.insights[0].filters.user_defined_fields[0].value #=> String
    #   resp.insights[0].filters.user_defined_fields[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"
    #   resp.insights[0].filters.malware_name #=> Array
    #   resp.insights[0].filters.malware_name[0].value #=> String
    #   resp.insights[0].filters.malware_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.malware_type #=> Array
    #   resp.insights[0].filters.malware_type[0].value #=> String
    #   resp.insights[0].filters.malware_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.malware_path #=> Array
    #   resp.insights[0].filters.malware_path[0].value #=> String
    #   resp.insights[0].filters.malware_path[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.malware_state #=> Array
    #   resp.insights[0].filters.malware_state[0].value #=> String
    #   resp.insights[0].filters.malware_state[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.network_direction #=> Array
    #   resp.insights[0].filters.network_direction[0].value #=> String
    #   resp.insights[0].filters.network_direction[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.network_protocol #=> Array
    #   resp.insights[0].filters.network_protocol[0].value #=> String
    #   resp.insights[0].filters.network_protocol[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.network_source_ip_v4 #=> Array
    #   resp.insights[0].filters.network_source_ip_v4[0].cidr #=> String
    #   resp.insights[0].filters.network_source_ip_v6 #=> Array
    #   resp.insights[0].filters.network_source_ip_v6[0].cidr #=> String
    #   resp.insights[0].filters.network_source_port #=> Array
    #   resp.insights[0].filters.network_source_port[0].gte #=> Float
    #   resp.insights[0].filters.network_source_port[0].lte #=> Float
    #   resp.insights[0].filters.network_source_port[0].eq #=> Float
    #   resp.insights[0].filters.network_source_port[0].gt #=> Float
    #   resp.insights[0].filters.network_source_port[0].lt #=> Float
    #   resp.insights[0].filters.network_source_domain #=> Array
    #   resp.insights[0].filters.network_source_domain[0].value #=> String
    #   resp.insights[0].filters.network_source_domain[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.network_source_mac #=> Array
    #   resp.insights[0].filters.network_source_mac[0].value #=> String
    #   resp.insights[0].filters.network_source_mac[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.network_destination_ip_v4 #=> Array
    #   resp.insights[0].filters.network_destination_ip_v4[0].cidr #=> String
    #   resp.insights[0].filters.network_destination_ip_v6 #=> Array
    #   resp.insights[0].filters.network_destination_ip_v6[0].cidr #=> String
    #   resp.insights[0].filters.network_destination_port #=> Array
    #   resp.insights[0].filters.network_destination_port[0].gte #=> Float
    #   resp.insights[0].filters.network_destination_port[0].lte #=> Float
    #   resp.insights[0].filters.network_destination_port[0].eq #=> Float
    #   resp.insights[0].filters.network_destination_port[0].gt #=> Float
    #   resp.insights[0].filters.network_destination_port[0].lt #=> Float
    #   resp.insights[0].filters.network_destination_domain #=> Array
    #   resp.insights[0].filters.network_destination_domain[0].value #=> String
    #   resp.insights[0].filters.network_destination_domain[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.process_name #=> Array
    #   resp.insights[0].filters.process_name[0].value #=> String
    #   resp.insights[0].filters.process_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.process_path #=> Array
    #   resp.insights[0].filters.process_path[0].value #=> String
    #   resp.insights[0].filters.process_path[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.process_pid #=> Array
    #   resp.insights[0].filters.process_pid[0].gte #=> Float
    #   resp.insights[0].filters.process_pid[0].lte #=> Float
    #   resp.insights[0].filters.process_pid[0].eq #=> Float
    #   resp.insights[0].filters.process_pid[0].gt #=> Float
    #   resp.insights[0].filters.process_pid[0].lt #=> Float
    #   resp.insights[0].filters.process_parent_pid #=> Array
    #   resp.insights[0].filters.process_parent_pid[0].gte #=> Float
    #   resp.insights[0].filters.process_parent_pid[0].lte #=> Float
    #   resp.insights[0].filters.process_parent_pid[0].eq #=> Float
    #   resp.insights[0].filters.process_parent_pid[0].gt #=> Float
    #   resp.insights[0].filters.process_parent_pid[0].lt #=> Float
    #   resp.insights[0].filters.process_launched_at #=> Array
    #   resp.insights[0].filters.process_launched_at[0].start #=> String
    #   resp.insights[0].filters.process_launched_at[0].end #=> String
    #   resp.insights[0].filters.process_launched_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.process_launched_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.process_terminated_at #=> Array
    #   resp.insights[0].filters.process_terminated_at[0].start #=> String
    #   resp.insights[0].filters.process_terminated_at[0].end #=> String
    #   resp.insights[0].filters.process_terminated_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.process_terminated_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.threat_intel_indicator_type #=> Array
    #   resp.insights[0].filters.threat_intel_indicator_type[0].value #=> String
    #   resp.insights[0].filters.threat_intel_indicator_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.threat_intel_indicator_value #=> Array
    #   resp.insights[0].filters.threat_intel_indicator_value[0].value #=> String
    #   resp.insights[0].filters.threat_intel_indicator_value[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.threat_intel_indicator_category #=> Array
    #   resp.insights[0].filters.threat_intel_indicator_category[0].value #=> String
    #   resp.insights[0].filters.threat_intel_indicator_category[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.threat_intel_indicator_last_observed_at #=> Array
    #   resp.insights[0].filters.threat_intel_indicator_last_observed_at[0].start #=> String
    #   resp.insights[0].filters.threat_intel_indicator_last_observed_at[0].end #=> String
    #   resp.insights[0].filters.threat_intel_indicator_last_observed_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.threat_intel_indicator_last_observed_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.threat_intel_indicator_source #=> Array
    #   resp.insights[0].filters.threat_intel_indicator_source[0].value #=> String
    #   resp.insights[0].filters.threat_intel_indicator_source[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.threat_intel_indicator_source_url #=> Array
    #   resp.insights[0].filters.threat_intel_indicator_source_url[0].value #=> String
    #   resp.insights[0].filters.threat_intel_indicator_source_url[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_type #=> Array
    #   resp.insights[0].filters.resource_type[0].value #=> String
    #   resp.insights[0].filters.resource_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_id #=> Array
    #   resp.insights[0].filters.resource_id[0].value #=> String
    #   resp.insights[0].filters.resource_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_partition #=> Array
    #   resp.insights[0].filters.resource_partition[0].value #=> String
    #   resp.insights[0].filters.resource_partition[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_region #=> Array
    #   resp.insights[0].filters.resource_region[0].value #=> String
    #   resp.insights[0].filters.resource_region[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_tags #=> Array
    #   resp.insights[0].filters.resource_tags[0].key #=> String
    #   resp.insights[0].filters.resource_tags[0].value #=> String
    #   resp.insights[0].filters.resource_tags[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"
    #   resp.insights[0].filters.resource_aws_ec2_instance_type #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_type[0].value #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_aws_ec2_instance_image_id #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_image_id[0].value #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_image_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_aws_ec2_instance_ip_v4_addresses #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_ip_v4_addresses[0].cidr #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_ip_v6_addresses #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_ip_v6_addresses[0].cidr #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_key_name #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_key_name[0].value #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_key_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_aws_ec2_instance_iam_instance_profile_arn #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_iam_instance_profile_arn[0].value #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_iam_instance_profile_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_aws_ec2_instance_vpc_id #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_vpc_id[0].value #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_vpc_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_aws_ec2_instance_subnet_id #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_subnet_id[0].value #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_subnet_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_aws_ec2_instance_launched_at #=> Array
    #   resp.insights[0].filters.resource_aws_ec2_instance_launched_at[0].start #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_launched_at[0].end #=> String
    #   resp.insights[0].filters.resource_aws_ec2_instance_launched_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.resource_aws_ec2_instance_launched_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.resource_aws_s3_bucket_owner_id #=> Array
    #   resp.insights[0].filters.resource_aws_s3_bucket_owner_id[0].value #=> String
    #   resp.insights[0].filters.resource_aws_s3_bucket_owner_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_aws_s3_bucket_owner_name #=> Array
    #   resp.insights[0].filters.resource_aws_s3_bucket_owner_name[0].value #=> String
    #   resp.insights[0].filters.resource_aws_s3_bucket_owner_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_aws_iam_access_key_user_name #=> Array
    #   resp.insights[0].filters.resource_aws_iam_access_key_user_name[0].value #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_user_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_aws_iam_access_key_principal_name #=> Array
    #   resp.insights[0].filters.resource_aws_iam_access_key_principal_name[0].value #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_principal_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_aws_iam_access_key_status #=> Array
    #   resp.insights[0].filters.resource_aws_iam_access_key_status[0].value #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at #=> Array
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at[0].start #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at[0].end #=> String
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.resource_aws_iam_access_key_created_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.resource_aws_iam_user_user_name #=> Array
    #   resp.insights[0].filters.resource_aws_iam_user_user_name[0].value #=> String
    #   resp.insights[0].filters.resource_aws_iam_user_user_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_container_name #=> Array
    #   resp.insights[0].filters.resource_container_name[0].value #=> String
    #   resp.insights[0].filters.resource_container_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_container_image_id #=> Array
    #   resp.insights[0].filters.resource_container_image_id[0].value #=> String
    #   resp.insights[0].filters.resource_container_image_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_container_image_name #=> Array
    #   resp.insights[0].filters.resource_container_image_name[0].value #=> String
    #   resp.insights[0].filters.resource_container_image_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_container_launched_at #=> Array
    #   resp.insights[0].filters.resource_container_launched_at[0].start #=> String
    #   resp.insights[0].filters.resource_container_launched_at[0].end #=> String
    #   resp.insights[0].filters.resource_container_launched_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.resource_container_launched_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.resource_details_other #=> Array
    #   resp.insights[0].filters.resource_details_other[0].key #=> String
    #   resp.insights[0].filters.resource_details_other[0].value #=> String
    #   resp.insights[0].filters.resource_details_other[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS", "CONTAINS", "NOT_CONTAINS"
    #   resp.insights[0].filters.compliance_status #=> Array
    #   resp.insights[0].filters.compliance_status[0].value #=> String
    #   resp.insights[0].filters.compliance_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.verification_state #=> Array
    #   resp.insights[0].filters.verification_state[0].value #=> String
    #   resp.insights[0].filters.verification_state[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.workflow_state #=> Array
    #   resp.insights[0].filters.workflow_state[0].value #=> String
    #   resp.insights[0].filters.workflow_state[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.workflow_status #=> Array
    #   resp.insights[0].filters.workflow_status[0].value #=> String
    #   resp.insights[0].filters.workflow_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.record_state #=> Array
    #   resp.insights[0].filters.record_state[0].value #=> String
    #   resp.insights[0].filters.record_state[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.related_findings_product_arn #=> Array
    #   resp.insights[0].filters.related_findings_product_arn[0].value #=> String
    #   resp.insights[0].filters.related_findings_product_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.related_findings_id #=> Array
    #   resp.insights[0].filters.related_findings_id[0].value #=> String
    #   resp.insights[0].filters.related_findings_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.note_text #=> Array
    #   resp.insights[0].filters.note_text[0].value #=> String
    #   resp.insights[0].filters.note_text[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.note_updated_at #=> Array
    #   resp.insights[0].filters.note_updated_at[0].start #=> String
    #   resp.insights[0].filters.note_updated_at[0].end #=> String
    #   resp.insights[0].filters.note_updated_at[0].date_range.value #=> Integer
    #   resp.insights[0].filters.note_updated_at[0].date_range.unit #=> String, one of "DAYS"
    #   resp.insights[0].filters.note_updated_by #=> Array
    #   resp.insights[0].filters.note_updated_by[0].value #=> String
    #   resp.insights[0].filters.note_updated_by[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.keyword #=> Array
    #   resp.insights[0].filters.keyword[0].value #=> String
    #   resp.insights[0].filters.finding_provider_fields_confidence #=> Array
    #   resp.insights[0].filters.finding_provider_fields_confidence[0].gte #=> Float
    #   resp.insights[0].filters.finding_provider_fields_confidence[0].lte #=> Float
    #   resp.insights[0].filters.finding_provider_fields_confidence[0].eq #=> Float
    #   resp.insights[0].filters.finding_provider_fields_confidence[0].gt #=> Float
    #   resp.insights[0].filters.finding_provider_fields_confidence[0].lt #=> Float
    #   resp.insights[0].filters.finding_provider_fields_criticality #=> Array
    #   resp.insights[0].filters.finding_provider_fields_criticality[0].gte #=> Float
    #   resp.insights[0].filters.finding_provider_fields_criticality[0].lte #=> Float
    #   resp.insights[0].filters.finding_provider_fields_criticality[0].eq #=> Float
    #   resp.insights[0].filters.finding_provider_fields_criticality[0].gt #=> Float
    #   resp.insights[0].filters.finding_provider_fields_criticality[0].lt #=> Float
    #   resp.insights[0].filters.finding_provider_fields_related_findings_id #=> Array
    #   resp.insights[0].filters.finding_provider_fields_related_findings_id[0].value #=> String
    #   resp.insights[0].filters.finding_provider_fields_related_findings_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.finding_provider_fields_related_findings_product_arn #=> Array
    #   resp.insights[0].filters.finding_provider_fields_related_findings_product_arn[0].value #=> String
    #   resp.insights[0].filters.finding_provider_fields_related_findings_product_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.finding_provider_fields_severity_label #=> Array
    #   resp.insights[0].filters.finding_provider_fields_severity_label[0].value #=> String
    #   resp.insights[0].filters.finding_provider_fields_severity_label[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.finding_provider_fields_severity_original #=> Array
    #   resp.insights[0].filters.finding_provider_fields_severity_original[0].value #=> String
    #   resp.insights[0].filters.finding_provider_fields_severity_original[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.finding_provider_fields_types #=> Array
    #   resp.insights[0].filters.finding_provider_fields_types[0].value #=> String
    #   resp.insights[0].filters.finding_provider_fields_types[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.sample #=> Array
    #   resp.insights[0].filters.sample[0].value #=> Boolean
    #   resp.insights[0].filters.compliance_security_control_id #=> Array
    #   resp.insights[0].filters.compliance_security_control_id[0].value #=> String
    #   resp.insights[0].filters.compliance_security_control_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.compliance_associated_standards_id #=> Array
    #   resp.insights[0].filters.compliance_associated_standards_id[0].value #=> String
    #   resp.insights[0].filters.compliance_associated_standards_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.vulnerabilities_exploit_available #=> Array
    #   resp.insights[0].filters.vulnerabilities_exploit_available[0].value #=> String
    #   resp.insights[0].filters.vulnerabilities_exploit_available[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.vulnerabilities_fix_available #=> Array
    #   resp.insights[0].filters.vulnerabilities_fix_available[0].value #=> String
    #   resp.insights[0].filters.vulnerabilities_fix_available[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.compliance_security_control_parameters_name #=> Array
    #   resp.insights[0].filters.compliance_security_control_parameters_name[0].value #=> String
    #   resp.insights[0].filters.compliance_security_control_parameters_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.compliance_security_control_parameters_value #=> Array
    #   resp.insights[0].filters.compliance_security_control_parameters_value[0].value #=> String
    #   resp.insights[0].filters.compliance_security_control_parameters_value[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.aws_account_name #=> Array
    #   resp.insights[0].filters.aws_account_name[0].value #=> String
    #   resp.insights[0].filters.aws_account_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_application_name #=> Array
    #   resp.insights[0].filters.resource_application_name[0].value #=> String
    #   resp.insights[0].filters.resource_application_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].filters.resource_application_arn #=> Array
    #   resp.insights[0].filters.resource_application_arn[0].value #=> String
    #   resp.insights[0].filters.resource_application_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS", "PREFIX_NOT_EQUALS", "CONTAINS", "NOT_CONTAINS", "CONTAINS_WORD"
    #   resp.insights[0].group_by_attribute #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsights AWS API Documentation
    #
    # @overload get_insights(params = {})
    # @param [Hash] params ({})
    def get_insights(params = {}, options = {})
      req = build_request(:get_insights, params)
      req.send_request(options)
    end

    # <note markdown="1"> We recommend using Organizations instead of Security Hub invitations
    # to manage your member accounts. For information, see [Managing
    # Security Hub administrator and member accounts with Organizations][1]
    # in the *Security Hub User Guide*.
    #
    #  </note>
    #
    # Returns the count of all Security Hub membership invitations that were
    # sent to the calling member account, not including the currently
    # accepted invitation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html
    #
    # @return [Types::GetInvitationsCountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInvitationsCountResponse#invitations_count #invitations_count} => Integer
    #
    #
    # @example Example: To get a count of membership invitations
    #
    #   # The following example returns a count of invitations that the Security Hub administrator sent to the current member
    #   # account, not including the currently accepted invitation.
    #
    #   resp = client.get_invitations_count({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invitations_count: 3, 
    #   }
    #
    # @example Response structure
    #
    #   resp.invitations_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInvitationsCount AWS API Documentation
    #
    # @overload get_invitations_count(params = {})
    # @param [Hash] params ({})
    def get_invitations_count(params = {}, options = {})
      req = build_request(:get_invitations_count, params)
      req.send_request(options)
    end

    # This method is deprecated. Instead, use `GetAdministratorAccount`.
    #
    # The Security Hub console continues to use `GetMasterAccount`. It will
    # eventually change to use `GetAdministratorAccount`. Any IAM policies
    # that specifically control access to this function must continue to use
    # `GetMasterAccount`. You should also add `GetAdministratorAccount` to
    # your policies to ensure that the correct permissions are in place
    # after the console begins to use `GetAdministratorAccount`.
    #
    # Provides the details for the Security Hub administrator account for
    # the current member account.
    #
    # Can be used by both member accounts that are managed using
    # Organizations and accounts that were invited manually.
    #
    # @return [Types::GetMasterAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMasterAccountResponse#master #master} => Types::Invitation
    #
    # @example Response structure
    #
    #   resp.master.account_id #=> String
    #   resp.master.invitation_id #=> String
    #   resp.master.invited_at #=> Time
    #   resp.master.member_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMasterAccount AWS API Documentation
    #
    # @overload get_master_account(params = {})
    # @param [Hash] params ({})
    def get_master_account(params = {}, options = {})
      req = build_request(:get_master_account, params)
      req.send_request(options)
    end

    # Returns the details for the Security Hub member accounts for the
    # specified account IDs.
    #
    # An administrator account can be either the delegated Security Hub
    # administrator account for an organization or an administrator account
    # that enabled Security Hub manually.
    #
    # The results include both member accounts that are managed using
    # Organizations and accounts that were invited manually.
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of account IDs for the Security Hub member accounts to return
    #   the details for.
    #
    # @return [Types::GetMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMembersResponse#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::GetMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    #
    # @example Example: To get member account details
    #
    #   # The following example returns details for the Security Hub member accounts with the specified AWS account IDs. An
    #   # administrator account may be the delegated Security Hub administrator account for an organization or an administrator
    #   # account that enabled Security Hub manually. The Security Hub administrator must call this operation.
    #
    #   resp = client.get_members({
    #     account_ids: [
    #       "444455556666", 
    #       "777788889999", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     members: [
    #       {
    #         account_id: "444455556666", 
    #         administrator_id: "123456789012", 
    #         invited_at: Time.parse("2020-06-01T20:15:15.289000+00:00"), 
    #         master_id: "123456789012", 
    #         member_status: "ASSOCIATED", 
    #         updated_at: Time.parse("2020-06-01T20:15:15.289000+00:00"), 
    #       }, 
    #       {
    #         account_id: "777788889999", 
    #         administrator_id: "123456789012", 
    #         invited_at: Time.parse("2020-06-01T20:15:15.289000+00:00"), 
    #         master_id: "123456789012", 
    #         member_status: "ASSOCIATED", 
    #         updated_at: Time.parse("2020-06-01T20:15:15.289000+00:00"), 
    #       }, 
    #     ], 
    #     unprocessed_accounts: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_members({
    #     account_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].account_id #=> String
    #   resp.members[0].email #=> String
    #   resp.members[0].master_id #=> String
    #   resp.members[0].administrator_id #=> String
    #   resp.members[0].member_status #=> String
    #   resp.members[0].invited_at #=> Time
    #   resp.members[0].updated_at #=> Time
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].processing_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMembers AWS API Documentation
    #
    # @overload get_members(params = {})
    # @param [Hash] params ({})
    def get_members(params = {}, options = {})
      req = build_request(:get_members, params)
      req.send_request(options)
    end

    # Retrieves statistical information about Amazon Web Services resources
    # and their associated security findings. This API is in public preview
    # and subject to change.
    #
    # @option params [required, Array<Types::ResourceGroupByRule>] :group_by_rules
    #   How resource statistics should be aggregated and organized in the
    #   response.
    #
    # @option params [String] :sort_order
    #   Sorts aggregated statistics.
    #
    # @option params [Integer] :max_statistic_results
    #   The maximum number of results to be returned.
    #
    # @return [Types::GetResourcesStatisticsV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcesStatisticsV2Response#group_by_results #group_by_results} => Array&lt;Types::GroupByResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resources_statistics_v2({
    #     group_by_rules: [ # required
    #       {
    #         group_by_field: "AccountId", # required, accepts AccountId, Region, ResourceCategory, ResourceType, ResourceName, FindingsSummary.FindingType
    #         filters: {
    #           composite_filters: [
    #             {
    #               string_filters: [
    #                 {
    #                   field_name: "ResourceGuid", # accepts ResourceGuid, ResourceId, AccountId, Region, ResourceCategory, ResourceType, ResourceName, FindingsSummary.FindingType, FindingsSummary.ProductName
    #                   filter: {
    #                     value: "NonEmptyString",
    #                     comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #                   },
    #                 },
    #               ],
    #               date_filters: [
    #                 {
    #                   field_name: "ResourceDetailCaptureTime", # accepts ResourceDetailCaptureTime, ResourceCreationTime
    #                   filter: {
    #                     start: "NonEmptyString",
    #                     end: "NonEmptyString",
    #                     date_range: {
    #                       value: 1,
    #                       unit: "DAYS", # accepts DAYS
    #                     },
    #                   },
    #                 },
    #               ],
    #               number_filters: [
    #                 {
    #                   field_name: "FindingsSummary.TotalFindings", # accepts FindingsSummary.TotalFindings, FindingsSummary.Severities.Other, FindingsSummary.Severities.Fatal, FindingsSummary.Severities.Critical, FindingsSummary.Severities.High, FindingsSummary.Severities.Medium, FindingsSummary.Severities.Low, FindingsSummary.Severities.Informational, FindingsSummary.Severities.Unknown
    #                   filter: {
    #                     gte: 1.0,
    #                     lte: 1.0,
    #                     eq: 1.0,
    #                     gt: 1.0,
    #                     lt: 1.0,
    #                   },
    #                 },
    #               ],
    #               map_filters: [
    #                 {
    #                   field_name: "ResourceTags", # accepts ResourceTags
    #                   filter: {
    #                     key: "NonEmptyString",
    #                     value: "NonEmptyString",
    #                     comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #                   },
    #                 },
    #               ],
    #               nested_composite_filters: {
    #                 # recursive ResourcesCompositeFilterList
    #               },
    #               operator: "AND", # accepts AND, OR
    #             },
    #           ],
    #           composite_operator: "AND", # accepts AND, OR
    #         },
    #       },
    #     ],
    #     sort_order: "asc", # accepts asc, desc
    #     max_statistic_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.group_by_results #=> Array
    #   resp.group_by_results[0].group_by_field #=> String
    #   resp.group_by_results[0].group_by_values #=> Array
    #   resp.group_by_results[0].group_by_values[0].field_value #=> String
    #   resp.group_by_results[0].group_by_values[0].count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetResourcesStatisticsV2 AWS API Documentation
    #
    # @overload get_resources_statistics_v2(params = {})
    # @param [Hash] params ({})
    def get_resources_statistics_v2(params = {}, options = {})
      req = build_request(:get_resources_statistics_v2, params)
      req.send_request(options)
    end

    # Returns a list of resources. This API is in public preview and subject
    # to change.
    #
    # @option params [Types::ResourcesFilters] :filters
    #   Filters resources based on a set of criteria.
    #
    # @option params [Array<Types::SortCriterion>] :sort_criteria
    #   The finding attributes used to sort the list of returned findings.
    #
    # @option params [String] :next_token
    #   The token required for pagination. On your first call, set the value
    #   of this parameter to `NULL`. For subsequent calls, to continue listing
    #   data, set the value of this parameter to the value returned in the
    #   previous response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::GetResourcesV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcesV2Response#resources #resources} => Array&lt;Types::ResourceResult&gt;
    #   * {Types::GetResourcesV2Response#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resources_v2({
    #     filters: {
    #       composite_filters: [
    #         {
    #           string_filters: [
    #             {
    #               field_name: "ResourceGuid", # accepts ResourceGuid, ResourceId, AccountId, Region, ResourceCategory, ResourceType, ResourceName, FindingsSummary.FindingType, FindingsSummary.ProductName
    #               filter: {
    #                 value: "NonEmptyString",
    #                 comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #               },
    #             },
    #           ],
    #           date_filters: [
    #             {
    #               field_name: "ResourceDetailCaptureTime", # accepts ResourceDetailCaptureTime, ResourceCreationTime
    #               filter: {
    #                 start: "NonEmptyString",
    #                 end: "NonEmptyString",
    #                 date_range: {
    #                   value: 1,
    #                   unit: "DAYS", # accepts DAYS
    #                 },
    #               },
    #             },
    #           ],
    #           number_filters: [
    #             {
    #               field_name: "FindingsSummary.TotalFindings", # accepts FindingsSummary.TotalFindings, FindingsSummary.Severities.Other, FindingsSummary.Severities.Fatal, FindingsSummary.Severities.Critical, FindingsSummary.Severities.High, FindingsSummary.Severities.Medium, FindingsSummary.Severities.Low, FindingsSummary.Severities.Informational, FindingsSummary.Severities.Unknown
    #               filter: {
    #                 gte: 1.0,
    #                 lte: 1.0,
    #                 eq: 1.0,
    #                 gt: 1.0,
    #                 lt: 1.0,
    #               },
    #             },
    #           ],
    #           map_filters: [
    #             {
    #               field_name: "ResourceTags", # accepts ResourceTags
    #               filter: {
    #                 key: "NonEmptyString",
    #                 value: "NonEmptyString",
    #                 comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #               },
    #             },
    #           ],
    #           nested_composite_filters: {
    #             # recursive ResourcesCompositeFilterList
    #           },
    #           operator: "AND", # accepts AND, OR
    #         },
    #       ],
    #       composite_operator: "AND", # accepts AND, OR
    #     },
    #     sort_criteria: [
    #       {
    #         field: "NonEmptyString",
    #         sort_order: "asc", # accepts asc, desc
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resources #=> Array
    #   resp.resources[0].resource_guid #=> String
    #   resp.resources[0].resource_id #=> String
    #   resp.resources[0].account_id #=> String
    #   resp.resources[0].region #=> String
    #   resp.resources[0].resource_category #=> String, one of "Compute", "Database", "Storage", "Code", "AI/ML", "Identity", "Network", "Other"
    #   resp.resources[0].resource_type #=> String
    #   resp.resources[0].resource_name #=> String
    #   resp.resources[0].resource_creation_time_dt #=> String
    #   resp.resources[0].resource_detail_capture_time_dt #=> String
    #   resp.resources[0].findings_summary #=> Array
    #   resp.resources[0].findings_summary[0].finding_type #=> String
    #   resp.resources[0].findings_summary[0].product_name #=> String
    #   resp.resources[0].findings_summary[0].total_findings #=> Integer
    #   resp.resources[0].findings_summary[0].severities.other #=> Integer
    #   resp.resources[0].findings_summary[0].severities.fatal #=> Integer
    #   resp.resources[0].findings_summary[0].severities.critical #=> Integer
    #   resp.resources[0].findings_summary[0].severities.high #=> Integer
    #   resp.resources[0].findings_summary[0].severities.medium #=> Integer
    #   resp.resources[0].findings_summary[0].severities.low #=> Integer
    #   resp.resources[0].findings_summary[0].severities.informational #=> Integer
    #   resp.resources[0].findings_summary[0].severities.unknown #=> Integer
    #   resp.resources[0].resource_tags #=> Array
    #   resp.resources[0].resource_tags[0].key #=> String
    #   resp.resources[0].resource_tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetResourcesV2 AWS API Documentation
    #
    # @overload get_resources_v2(params = {})
    # @param [Hash] params ({})
    def get_resources_v2(params = {}, options = {})
      req = build_request(:get_resources_v2, params)
      req.send_request(options)
    end

    # Retrieves the definition of a security control. The definition
    # includes the control title, description, Region availability,
    # parameter definitions, and other details.
    #
    # @option params [required, String] :security_control_id
    #   The ID of the security control to retrieve the definition for. This
    #   field doesn’t accept an Amazon Resource Name (ARN).
    #
    # @return [Types::GetSecurityControlDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSecurityControlDefinitionResponse#security_control_definition #security_control_definition} => Types::SecurityControlDefinition
    #
    #
    # @example Example: To get the definition of a security control.
    #
    #   # The following example retrieves definition details for the specified security control.
    #
    #   resp = client.get_security_control_definition({
    #     security_control_id: "EC2.4", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     security_control_definition: {
    #       current_region_availability: "AVAILABLE", 
    #       description: "This control checks whether an Amazon EC2 instance has been stopped for longer than the allowed number of days. The control fails if an EC2 instance is stopped for longer than the maximum allowed time period. Unless you provide a custom parameter value for the maximum allowed time period, Security Hub uses a default value of 30 days.", 
    #       parameter_definitions: {
    #         "AllowedDays" => {
    #           configuration_options: {
    #             integer: {
    #               default_value: 30, 
    #               max: 365, 
    #               min: 1, 
    #             }, 
    #           }, 
    #           description: "Number of days the EC2 instance is allowed to be in a stopped state before generating a failed finding", 
    #         }, 
    #       }, 
    #       remediation_url: "https://docs.aws.amazon.com/console/securityhub/EC2.4/remediation", 
    #       security_control_id: "EC2.4", 
    #       severity_rating: "MEDIUM", 
    #       title: "Stopped Amazon EC2 instances should be removed after a specified time period", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_security_control_definition({
    #     security_control_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_control_definition.security_control_id #=> String
    #   resp.security_control_definition.title #=> String
    #   resp.security_control_definition.description #=> String
    #   resp.security_control_definition.remediation_url #=> String
    #   resp.security_control_definition.severity_rating #=> String, one of "LOW", "MEDIUM", "HIGH", "CRITICAL"
    #   resp.security_control_definition.current_region_availability #=> String, one of "AVAILABLE", "UNAVAILABLE"
    #   resp.security_control_definition.customizable_properties #=> Array
    #   resp.security_control_definition.customizable_properties[0] #=> String, one of "Parameters"
    #   resp.security_control_definition.parameter_definitions #=> Hash
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].description #=> String
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.integer.default_value #=> Integer
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.integer.min #=> Integer
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.integer.max #=> Integer
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.integer_list.default_value #=> Array
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.integer_list.default_value[0] #=> Integer
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.integer_list.min #=> Integer
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.integer_list.max #=> Integer
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.integer_list.max_items #=> Integer
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.double.default_value #=> Float
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.double.min #=> Float
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.double.max #=> Float
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.string.default_value #=> String
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.string.re_2_expression #=> String
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.string.expression_description #=> String
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.string_list.default_value #=> Array
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.string_list.default_value[0] #=> String
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.string_list.re_2_expression #=> String
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.string_list.max_items #=> Integer
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.string_list.expression_description #=> String
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.boolean.default_value #=> Boolean
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.enum.default_value #=> String
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.enum.allowed_values #=> Array
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.enum.allowed_values[0] #=> String
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.enum_list.default_value #=> Array
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.enum_list.default_value[0] #=> String
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.enum_list.max_items #=> Integer
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.enum_list.allowed_values #=> Array
    #   resp.security_control_definition.parameter_definitions["NonEmptyString"].configuration_options.enum_list.allowed_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetSecurityControlDefinition AWS API Documentation
    #
    # @overload get_security_control_definition(params = {})
    # @param [Hash] params ({})
    def get_security_control_definition(params = {}, options = {})
      req = build_request(:get_security_control_definition, params)
      req.send_request(options)
    end

    # <note markdown="1"> We recommend using Organizations instead of Security Hub invitations
    # to manage your member accounts. For information, see [Managing
    # Security Hub administrator and member accounts with Organizations][1]
    # in the *Security Hub User Guide*.
    #
    #  </note>
    #
    # Invites other Amazon Web Services accounts to become member accounts
    # for the Security Hub administrator account that the invitation is sent
    # from.
    #
    # This operation is only used to invite accounts that don't belong to
    # an Amazon Web Services organization. Organization accounts don't
    # receive invitations.
    #
    # Before you can use this action to invite a member, you must first use
    # the `CreateMembers` action to create the member account in Security
    # Hub.
    #
    # When the account owner enables Security Hub and accepts the invitation
    # to become a member account, the administrator account can view the
    # findings generated in the member account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html
    #
    # @option params [required, Array<String>] :account_ids
    #   The list of account IDs of the Amazon Web Services accounts to invite
    #   to Security Hub as members.
    #
    # @return [Types::InviteMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InviteMembersResponse#unprocessed_accounts #unprocessed_accounts} => Array&lt;Types::Result&gt;
    #
    #
    # @example Example: To invite accounts to become members
    #
    #   # The following example invites the specified AWS accounts to become member accounts associated with the calling Security
    #   # Hub administrator account. You only use this operation to invite accounts that don't belong to an AWS Organizations
    #   # organization.
    #
    #   resp = client.invite_members({
    #     account_ids: [
    #       "111122223333", 
    #       "444455556666", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     unprocessed_accounts: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_members({
    #     account_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_accounts #=> Array
    #   resp.unprocessed_accounts[0].account_id #=> String
    #   resp.unprocessed_accounts[0].processing_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InviteMembers AWS API Documentation
    #
    # @overload invite_members(params = {})
    # @param [Hash] params ({})
    def invite_members(params = {}, options = {})
      req = build_request(:invite_members, params)
      req.send_request(options)
    end

    # Retrieves a list of V2 aggregators. This API is in public preview and
    # subject to change.
    #
    # @option params [String] :next_token
    #   The token required for pagination. On your first call, set the value
    #   of this parameter to `NULL`. For subsequent calls, to continue listing
    #   data, set the value of this parameter to the value returned in the
    #   previous response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListAggregatorsV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAggregatorsV2Response#aggregators_v2 #aggregators_v2} => Array&lt;Types::AggregatorV2&gt;
    #   * {Types::ListAggregatorsV2Response#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aggregators_v2({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregators_v2 #=> Array
    #   resp.aggregators_v2[0].aggregator_v2_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListAggregatorsV2 AWS API Documentation
    #
    # @overload list_aggregators_v2(params = {})
    # @param [Hash] params ({})
    def list_aggregators_v2(params = {}, options = {})
      req = build_request(:list_aggregators_v2, params)
      req.send_request(options)
    end

    # A list of automation rules and their metadata for the calling account.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating the response. This is the
    #   `NextToken` from a previously truncated response. On your first call
    #   to the `ListAutomationRules` API, set the value of this parameter to
    #   `NULL`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of rules to return in the response. This currently
    #   ranges from 1 to 100.
    #
    # @return [Types::ListAutomationRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutomationRulesResponse#automation_rules_metadata #automation_rules_metadata} => Array&lt;Types::AutomationRulesMetadata&gt;
    #   * {Types::ListAutomationRulesResponse#next_token #next_token} => String
    #
    #
    # @example Example: To list automation rules
    #
    #   # The following example lists automation rules and rule metadata in the calling account.
    #
    #   resp = client.list_automation_rules({
    #     max_results: 2, 
    #     next_token: "example-token", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     automation_rules_metadata: [
    #       {
    #         created_at: Time.parse("2022-08-31T01:52:33.250Z"), 
    #         created_by: "AROAJURBUYQQNL5OL2TIM:TEST-16MJ75L9VBK14", 
    #         description: "IAM.8 is a known issue and can be resolved", 
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         rule_name: "sample-rule-name-1", 
    #         rule_order: 1, 
    #         rule_status: "ENABLED", 
    #         updated_at: Time.parse("2022-08-31T01:52:33.250Z"), 
    #       }, 
    #       {
    #         created_at: Time.parse("2022-08-31T01:52:33.250Z"), 
    #         created_by: "AROAJURBUYQQNL5OL2TIM:TEST-16MJ75L9VBK14", 
    #         description: "Lambda.2 is a known issue and can be resolved", 
    #         rule_arn: "arn:aws:securityhub:us-east-1:123456789012:automation-rule/a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #         rule_name: "sample-rule-name-2", 
    #         rule_order: 2, 
    #         rule_status: "ENABLED", 
    #         updated_at: Time.parse("2022-08-31T01:52:33.250Z"), 
    #       }, 
    #     ], 
    #     next_token: "example-token", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_automation_rules({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.automation_rules_metadata #=> Array
    #   resp.automation_rules_metadata[0].rule_arn #=> String
    #   resp.automation_rules_metadata[0].rule_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.automation_rules_metadata[0].rule_order #=> Integer
    #   resp.automation_rules_metadata[0].rule_name #=> String
    #   resp.automation_rules_metadata[0].description #=> String
    #   resp.automation_rules_metadata[0].is_terminal #=> Boolean
    #   resp.automation_rules_metadata[0].created_at #=> Time
    #   resp.automation_rules_metadata[0].updated_at #=> Time
    #   resp.automation_rules_metadata[0].created_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListAutomationRules AWS API Documentation
    #
    # @overload list_automation_rules(params = {})
    # @param [Hash] params ({})
    def list_automation_rules(params = {}, options = {})
      req = build_request(:list_automation_rules, params)
      req.send_request(options)
    end

    # Returns a list of automation rules and metadata for the calling
    # account. This API is in public preview and subject to change.
    #
    # @option params [String] :next_token
    #   The token required for pagination. On your first call, set the value
    #   of this parameter to `NULL`. For subsequent calls, to continue listing
    #   data, set the value of this parameter to the value returned in the
    #   previous response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::ListAutomationRulesV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutomationRulesV2Response#rules #rules} => Array&lt;Types::AutomationRulesMetadataV2&gt;
    #   * {Types::ListAutomationRulesV2Response#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_automation_rules_v2({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].rule_id #=> String
    #   resp.rules[0].rule_order #=> Float
    #   resp.rules[0].rule_name #=> String
    #   resp.rules[0].rule_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.rules[0].description #=> String
    #   resp.rules[0].actions #=> Array
    #   resp.rules[0].actions[0].type #=> String, one of "FINDING_FIELDS_UPDATE", "EXTERNAL_INTEGRATION"
    #   resp.rules[0].created_at #=> Time
    #   resp.rules[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListAutomationRulesV2 AWS API Documentation
    #
    # @overload list_automation_rules_v2(params = {})
    # @param [Hash] params ({})
    def list_automation_rules_v2(params = {}, options = {})
      req = build_request(:list_automation_rules_v2, params)
      req.send_request(options)
    end

    # Lists the configuration policies that the Security Hub delegated
    # administrator has created for your organization. Only the delegated
    # administrator can invoke this operation from the home Region.
    #
    # @option params [String] :next_token
    #   The NextToken value that's returned from a previous paginated
    #   `ListConfigurationPolicies` request where `MaxResults` was used but
    #   the results exceeded the value of that parameter. Pagination continues
    #   from the `MaxResults` was used but the results exceeded the value of
    #   that parameter. Pagination continues from the end of the previous
    #   response that returned the `NextToken` value. This value is `null`
    #   when there are no more results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that's returned by
    #   `ListConfigurationPolicies` in each page of the response. When this
    #   parameter is used, `ListConfigurationPolicies` returns the specified
    #   number of results in a single page and a `NextToken` response element.
    #   You can see the remaining results of the initial request by sending
    #   another `ListConfigurationPolicies` request with the returned
    #   `NextToken` value. A valid range for `MaxResults` is between 1 and
    #   100.
    #
    # @return [Types::ListConfigurationPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationPoliciesResponse#configuration_policy_summaries #configuration_policy_summaries} => Array&lt;Types::ConfigurationPolicySummary&gt;
    #   * {Types::ListConfigurationPoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To view a list of configuration policies
    #
    #   # This operation provides a list of your configuration policies, including metadata for each policy.
    #
    #   resp = client.list_configuration_policies({
    #     max_results: 1, 
    #     next_token: "U1FsdGVkX19nBV2zoh+Gou9NgnulLJHWpn9xnG4hqSOhvw3o2JqjI86QDxdf", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     configuration_policy_summaries: [
    #       {
    #         arn: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         description: "Configuration policy for testing FSBP and CIS", 
    #         id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         name: "TestConfigurationPolicy", 
    #         service_enabled: true, 
    #         updated_at: Time.parse("2023-01-11T06:17:17.154Z"), 
    #       }, 
    #     ], 
    #     next_token: "U1FsdGVkX19nBV2zoh+Gou9NgnulLJHWpn9xnG4hqSOfvw3o2JqjI86QDxef", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_policies({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_policy_summaries #=> Array
    #   resp.configuration_policy_summaries[0].arn #=> String
    #   resp.configuration_policy_summaries[0].id #=> String
    #   resp.configuration_policy_summaries[0].name #=> String
    #   resp.configuration_policy_summaries[0].description #=> String
    #   resp.configuration_policy_summaries[0].updated_at #=> Time
    #   resp.configuration_policy_summaries[0].service_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListConfigurationPolicies AWS API Documentation
    #
    # @overload list_configuration_policies(params = {})
    # @param [Hash] params ({})
    def list_configuration_policies(params = {}, options = {})
      req = build_request(:list_configuration_policies, params)
      req.send_request(options)
    end

    # Provides information about the associations for your configuration
    # policies and self-managed behavior. Only the Security Hub delegated
    # administrator can invoke this operation from the home Region.
    #
    # @option params [String] :next_token
    #   The `NextToken` value that's returned from a previous paginated
    #   `ListConfigurationPolicyAssociations` request where `MaxResults` was
    #   used but the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous response that returned the
    #   `NextToken` value. This value is `null` when there are no more results
    #   to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that's returned by
    #   `ListConfigurationPolicies` in each page of the response. When this
    #   parameter is used, `ListConfigurationPolicyAssociations` returns the
    #   specified number of results in a single page and a `NextToken`
    #   response element. You can see the remaining results of the initial
    #   request by sending another `ListConfigurationPolicyAssociations`
    #   request with the returned `NextToken` value. A valid range for
    #   `MaxResults` is between 1 and 100.
    #
    # @option params [Types::AssociationFilters] :filters
    #   Options for filtering the `ListConfigurationPolicyAssociations`
    #   response. You can filter by the Amazon Resource Name (ARN) or
    #   universally unique identifier (UUID) of a configuration,
    #   `AssociationType`, or `AssociationStatus`.
    #
    # @return [Types::ListConfigurationPolicyAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationPolicyAssociationsResponse#configuration_policy_association_summaries #configuration_policy_association_summaries} => Array&lt;Types::ConfigurationPolicyAssociationSummary&gt;
    #   * {Types::ListConfigurationPolicyAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list configuration associations
    #
    #   # This operation lists all of the associations between targets and configuration policies or self-managed behavior.
    #   # Targets can include accounts, organizational units, or the root.
    #
    #   resp = client.list_configuration_policy_associations({
    #     filters: {
    #       association_type: "APPLIED", 
    #     }, 
    #     max_results: 1, 
    #     next_token: "U1FsdGVkX19nBV2zoh+Gou9NgnulLJHWpn9xnG4hqSOhvw3o2JqjI86QDxdf", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     configuration_policy_association_summaries: [
    #       {
    #         association_status: "PENDING", 
    #         association_type: "APPLIED", 
    #         configuration_policy_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #         target_id: "123456789012", 
    #         target_type: "ACCOUNT", 
    #         updated_at: Time.parse("2023-01-11T06:17:17.154Z"), 
    #       }, 
    #     ], 
    #     next_token: "U1FsdGVkX19nBV2zoh+Gou9NgnulLJHWpn9xnG4hqSOfvw3o2JqjI86QDxef", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_policy_associations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: {
    #       configuration_policy_id: "NonEmptyString",
    #       association_type: "INHERITED", # accepts INHERITED, APPLIED
    #       association_status: "PENDING", # accepts PENDING, SUCCESS, FAILED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_policy_association_summaries #=> Array
    #   resp.configuration_policy_association_summaries[0].configuration_policy_id #=> String
    #   resp.configuration_policy_association_summaries[0].target_id #=> String
    #   resp.configuration_policy_association_summaries[0].target_type #=> String, one of "ACCOUNT", "ORGANIZATIONAL_UNIT", "ROOT"
    #   resp.configuration_policy_association_summaries[0].association_type #=> String, one of "INHERITED", "APPLIED"
    #   resp.configuration_policy_association_summaries[0].updated_at #=> Time
    #   resp.configuration_policy_association_summaries[0].association_status #=> String, one of "PENDING", "SUCCESS", "FAILED"
    #   resp.configuration_policy_association_summaries[0].association_status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListConfigurationPolicyAssociations AWS API Documentation
    #
    # @overload list_configuration_policy_associations(params = {})
    # @param [Hash] params ({})
    def list_configuration_policy_associations(params = {}, options = {})
      req = build_request(:list_configuration_policy_associations, params)
      req.send_request(options)
    end

    # Grants permission to retrieve a list of connectorsV2 and their
    # metadata for the calling account. This API is in preview release and
    # subject to change.
    #
    # @option params [String] :next_token
    #   The pagination token per the Amazon Web Services Pagination standard
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned.
    #
    # @option params [String] :provider_name
    #   The name of the third-party provider.
    #
    # @option params [String] :connector_status
    #   The status for the connectorV2.
    #
    # @return [Types::ListConnectorsV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectorsV2Response#next_token #next_token} => String
    #   * {Types::ListConnectorsV2Response#connectors #connectors} => Array&lt;Types::ConnectorSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connectors_v2({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     provider_name: "JIRA_CLOUD", # accepts JIRA_CLOUD, SERVICENOW
    #     connector_status: "CONNECTED", # accepts CONNECTED, FAILED_TO_CONNECT, PENDING_CONFIGURATION, PENDING_AUTHORIZATION
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.connectors #=> Array
    #   resp.connectors[0].connector_arn #=> String
    #   resp.connectors[0].connector_id #=> String
    #   resp.connectors[0].name #=> String
    #   resp.connectors[0].description #=> String
    #   resp.connectors[0].provider_summary.provider_name #=> String, one of "JIRA_CLOUD", "SERVICENOW"
    #   resp.connectors[0].provider_summary.connector_status #=> String, one of "CONNECTED", "FAILED_TO_CONNECT", "PENDING_CONFIGURATION", "PENDING_AUTHORIZATION"
    #   resp.connectors[0].created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListConnectorsV2 AWS API Documentation
    #
    # @overload list_connectors_v2(params = {})
    # @param [Hash] params ({})
    def list_connectors_v2(params = {}, options = {})
      req = build_request(:list_connectors_v2, params)
      req.send_request(options)
    end

    # Lists all findings-generating solutions (products) that you are
    # subscribed to receive findings from in Security Hub.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListEnabledProductsForImport` operation, set the value of this
    #   parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response.
    #
    # @return [Types::ListEnabledProductsForImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnabledProductsForImportResponse#product_subscriptions #product_subscriptions} => Array&lt;String&gt;
    #   * {Types::ListEnabledProductsForImportResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list ARNs for enabled integrations
    #
    #   # The following example returns a list of subscription Amazon Resource Names (ARNs) for the product integrations that you
    #   # have currently enabled in Security Hub.
    #
    #   resp = client.list_enabled_products_for_import({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     product_subscriptions: [
    #       "arn:aws:securityhub:us-east-1:517716713836:product-subscription/crowdstrike/crowdstrike-falcon", 
    #       "arn:aws:securityhub:us-east-1::product/3coresec/3coresec", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_enabled_products_for_import({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.product_subscriptions #=> Array
    #   resp.product_subscriptions[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListEnabledProductsForImport AWS API Documentation
    #
    # @overload list_enabled_products_for_import(params = {})
    # @param [Hash] params ({})
    def list_enabled_products_for_import(params = {}, options = {})
      req = build_request(:list_enabled_products_for_import, params)
      req.send_request(options)
    end

    # If cross-Region aggregation is enabled, then `ListFindingAggregators`
    # returns the Amazon Resource Name (ARN) of the finding aggregator. You
    # can run this operation from any Amazon Web Services Region.
    #
    # @option params [String] :next_token
    #   The token returned with the previous set of results. Identifies the
    #   next set of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. This operation currently only
    #   returns a single result.
    #
    # @return [Types::ListFindingAggregatorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingAggregatorsResponse#finding_aggregators #finding_aggregators} => Array&lt;Types::FindingAggregator&gt;
    #   * {Types::ListFindingAggregatorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To update the enablement status of a standard control
    #
    #   # The following example disables the specified control in the specified security standard.
    #
    #   resp = client.list_finding_aggregators({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     finding_aggregators: [
    #       {
    #         finding_aggregator_arn: "arn:aws:securityhub:us-east-1:222222222222:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_finding_aggregators({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_aggregators #=> Array
    #   resp.finding_aggregators[0].finding_aggregator_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListFindingAggregators AWS API Documentation
    #
    # @overload list_finding_aggregators(params = {})
    # @param [Hash] params ({})
    def list_finding_aggregators(params = {}, options = {})
      req = build_request(:list_finding_aggregators, params)
      req.send_request(options)
    end

    # <note markdown="1"> We recommend using Organizations instead of Security Hub invitations
    # to manage your member accounts. For information, see [Managing
    # Security Hub administrator and member accounts with Organizations][1]
    # in the *Security Hub User Guide*.
    #
    #  </note>
    #
    # Lists all Security Hub membership invitations that were sent to the
    # calling account.
    #
    # Only accounts that are managed by invitation can use this operation.
    # Accounts that are managed using the integration with Organizations
    # don't receive invitations.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts-orgs.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListInvitations` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @return [Types::ListInvitationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvitationsResponse#invitations #invitations} => Array&lt;Types::Invitation&gt;
    #   * {Types::ListInvitationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list membership invitations to calling account
    #
    #   # The following example returns a list of Security Hub member invitations sent to the calling AWS account. Only accounts
    #   # that are invited manually use this operation. It's not for use by accounts that are managed through AWS Organizations.
    #
    #   resp = client.list_invitations({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invitations: [
    #       {
    #         account_id: "123456789012", 
    #         invitation_id: "7ab938c5d52d7904ad09f9e7c20cc4eb", 
    #         invited_at: Time.parse("2020-06-01T20:21:18.042000+00:00"), 
    #         member_status: "ASSOCIATED", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invitations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.invitations #=> Array
    #   resp.invitations[0].account_id #=> String
    #   resp.invitations[0].invitation_id #=> String
    #   resp.invitations[0].invited_at #=> Time
    #   resp.invitations[0].member_status #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListInvitations AWS API Documentation
    #
    # @overload list_invitations(params = {})
    # @param [Hash] params ({})
    def list_invitations(params = {}, options = {})
      req = build_request(:list_invitations, params)
      req.send_request(options)
    end

    # Lists details about all member accounts for the current Security Hub
    # administrator account.
    #
    # The results include both member accounts that belong to an
    # organization and member accounts that were invited manually.
    #
    # @option params [Boolean] :only_associated
    #   Specifies which member accounts to include in the response based on
    #   their relationship status with the administrator account. The default
    #   value is `TRUE`.
    #
    #   If `OnlyAssociated` is set to `TRUE`, the response includes member
    #   accounts whose relationship status with the administrator account is
    #   set to `ENABLED`.
    #
    #   If `OnlyAssociated` is set to `FALSE`, the response includes all
    #   existing member accounts.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListMembers` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #
    # @return [Types::ListMembersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMembersResponse#members #members} => Array&lt;Types::Member&gt;
    #   * {Types::ListMembersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list member account details
    #
    #   # The following example returns details about member accounts for the calling Security Hub administrator account. The
    #   # response includes member accounts that are managed through AWS Organizations and those that were invited manually.
    #
    #   resp = client.list_members({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     members: [
    #       {
    #         account_id: "111122223333", 
    #         administrator_id: "123456789012", 
    #         invited_at: Time.parse("2020-06-01T20:15:15.289000+00:00"), 
    #         master_id: "123456789012", 
    #         member_status: "ASSOCIATED", 
    #         updated_at: Time.parse("2020-06-01T20:15:15.289000+00:00"), 
    #       }, 
    #       {
    #         account_id: "444455556666", 
    #         administrator_id: "123456789012", 
    #         invited_at: Time.parse("2020-06-01T20:15:15.289000+00:00"), 
    #         master_id: "123456789012", 
    #         member_status: "ASSOCIATED", 
    #         updated_at: Time.parse("2020-06-01T20:15:15.289000+00:00"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members({
    #     only_associated: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].account_id #=> String
    #   resp.members[0].email #=> String
    #   resp.members[0].master_id #=> String
    #   resp.members[0].administrator_id #=> String
    #   resp.members[0].member_status #=> String
    #   resp.members[0].invited_at #=> Time
    #   resp.members[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListMembers AWS API Documentation
    #
    # @overload list_members(params = {})
    # @param [Hash] params ({})
    def list_members(params = {}, options = {})
      req = build_request(:list_members, params)
      req.send_request(options)
    end

    # Lists the Security Hub administrator accounts. Can only be called by
    # the organization management account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return in the response.
    #
    # @option params [String] :next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListOrganizationAdminAccounts` operation, set the value of this
    #   parameter to `NULL`. For subsequent calls to the operation, to
    #   continue listing data, set the value of this parameter to the value
    #   returned from the previous response.
    #
    # @option params [String] :feature
    #   The feature where the delegated administrator account is listed.
    #   Defaults to Security Hub if not specified.
    #
    # @return [Types::ListOrganizationAdminAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationAdminAccountsResponse#admin_accounts #admin_accounts} => Array&lt;Types::AdminAccount&gt;
    #   * {Types::ListOrganizationAdminAccountsResponse#next_token #next_token} => String
    #   * {Types::ListOrganizationAdminAccountsResponse#feature #feature} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list administrator acccounts for an organization
    #
    #   # The following example lists the Security  Hub administrator accounts for an organization. Only the organization
    #   # management account can call this operation.
    #
    #   resp = client.list_organization_admin_accounts({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     admin_accounts: [
    #       {
    #         account_id: "777788889999", 
    #       }, 
    #       {
    #         status: "ENABLED", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_admin_accounts({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     feature: "SecurityHub", # accepts SecurityHub, SecurityHubV2
    #   })
    #
    # @example Response structure
    #
    #   resp.admin_accounts #=> Array
    #   resp.admin_accounts[0].account_id #=> String
    #   resp.admin_accounts[0].status #=> String, one of "ENABLED", "DISABLE_IN_PROGRESS"
    #   resp.next_token #=> String
    #   resp.feature #=> String, one of "SecurityHub", "SecurityHubV2"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListOrganizationAdminAccounts AWS API Documentation
    #
    # @overload list_organization_admin_accounts(params = {})
    # @param [Hash] params ({})
    def list_organization_admin_accounts(params = {}, options = {})
      req = build_request(:list_organization_admin_accounts, params)
      req.send_request(options)
    end

    # Lists all of the security controls that apply to a specified standard.
    #
    # @option params [String] :standards_arn
    #   The Amazon Resource Name (ARN) of the standard that you want to view
    #   controls for.
    #
    # @option params [String] :next_token
    #   Optional pagination parameter.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that limits the total results of the API
    #   response to the specified number. If this parameter isn't provided in
    #   the request, the results include the first 25 security controls that
    #   apply to the specified standard. The results also include a
    #   `NextToken` parameter that you can use in a subsequent API call to get
    #   the next 25 controls. This repeats until all controls for the standard
    #   are returned.
    #
    # @return [Types::ListSecurityControlDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityControlDefinitionsResponse#security_control_definitions #security_control_definitions} => Array&lt;Types::SecurityControlDefinition&gt;
    #   * {Types::ListSecurityControlDefinitionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list security controls that apply to a standard
    #
    #   # The following example lists security controls that apply to a specified Security Hub standard. 
    #
    #   resp = client.list_security_control_definitions({
    #     max_results: 3, 
    #     next_token: "NULL", 
    #     standards_arn: "arn:aws:securityhub:::standards/aws-foundational-security-best-practices/v/1.0.0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "U2FsdGVkX1...", 
    #     security_control_definitions: [
    #       {
    #         current_region_availability: "AVAILABLE", 
    #         customizable_properties: [
    #           "Parameters", 
    #         ], 
    #         description: "This AWS control checks whether ACM Certificates in your account are marked for expiration within a specified time period. Certificates provided by ACM are automatically renewed. ACM does not automatically renew certificates that you import.", 
    #         remediation_url: "https://docs.aws.amazon.com/console/securityhub/ACM.1/remediation", 
    #         security_control_id: "ACM.1", 
    #         severity_rating: "MEDIUM", 
    #         title: "Imported and ACM-issued certificates should be renewed after a specified time period", 
    #       }, 
    #       {
    #         current_region_availability: "AVAILABLE", 
    #         customizable_properties: [
    #           "Parameters", 
    #         ], 
    #         description: "This control checks whether all stages of Amazon API Gateway REST and WebSocket APIs have logging enabled. The control fails if logging is not enabled for all methods of a stage or if loggingLevel is neither ERROR nor INFO.", 
    #         remediation_url: "https://docs.aws.amazon.com/console/securityhub/APIGateway.1/remediation", 
    #         security_control_id: "APIGateway.1", 
    #         severity_rating: "MEDIUM", 
    #         title: "API Gateway REST and WebSocket API execution logging should be enabled", 
    #       }, 
    #       {
    #         current_region_availability: "AVAILABLE", 
    #         description: "This control checks whether Amazon API Gateway REST API stages have SSL certificates configured that backend systems can use to authenticate that incoming requests are from the API Gateway.", 
    #         remediation_url: "https://docs.aws.amazon.com/console/securityhub/APIGateway.2/remediation", 
    #         security_control_id: "APIGateway.2", 
    #         severity_rating: "MEDIUM", 
    #         title: "API Gateway REST API stages should be configured to use SSL certificates for backend authentication", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_control_definitions({
    #     standards_arn: "NonEmptyString",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_control_definitions #=> Array
    #   resp.security_control_definitions[0].security_control_id #=> String
    #   resp.security_control_definitions[0].title #=> String
    #   resp.security_control_definitions[0].description #=> String
    #   resp.security_control_definitions[0].remediation_url #=> String
    #   resp.security_control_definitions[0].severity_rating #=> String, one of "LOW", "MEDIUM", "HIGH", "CRITICAL"
    #   resp.security_control_definitions[0].current_region_availability #=> String, one of "AVAILABLE", "UNAVAILABLE"
    #   resp.security_control_definitions[0].customizable_properties #=> Array
    #   resp.security_control_definitions[0].customizable_properties[0] #=> String, one of "Parameters"
    #   resp.security_control_definitions[0].parameter_definitions #=> Hash
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].description #=> String
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.integer.default_value #=> Integer
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.integer.min #=> Integer
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.integer.max #=> Integer
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.integer_list.default_value #=> Array
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.integer_list.default_value[0] #=> Integer
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.integer_list.min #=> Integer
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.integer_list.max #=> Integer
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.integer_list.max_items #=> Integer
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.double.default_value #=> Float
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.double.min #=> Float
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.double.max #=> Float
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.string.default_value #=> String
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.string.re_2_expression #=> String
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.string.expression_description #=> String
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.string_list.default_value #=> Array
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.string_list.default_value[0] #=> String
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.string_list.re_2_expression #=> String
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.string_list.max_items #=> Integer
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.string_list.expression_description #=> String
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.boolean.default_value #=> Boolean
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.enum.default_value #=> String
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.enum.allowed_values #=> Array
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.enum.allowed_values[0] #=> String
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.enum_list.default_value #=> Array
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.enum_list.default_value[0] #=> String
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.enum_list.max_items #=> Integer
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.enum_list.allowed_values #=> Array
    #   resp.security_control_definitions[0].parameter_definitions["NonEmptyString"].configuration_options.enum_list.allowed_values[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListSecurityControlDefinitions AWS API Documentation
    #
    # @overload list_security_control_definitions(params = {})
    # @param [Hash] params ({})
    def list_security_control_definitions(params = {}, options = {})
      req = build_request(:list_security_control_definitions, params)
      req.send_request(options)
    end

    # Specifies whether a control is currently enabled or disabled in each
    # enabled standard in the calling account.
    #
    # This operation omits standards control associations for standard
    # subscriptions where `StandardsControlsUpdatable` has value
    # `NOT_READY_FOR_UPDATES`.
    #
    # @option params [required, String] :security_control_id
    #   The identifier of the control (identified with `SecurityControlId`,
    #   `SecurityControlArn`, or a mix of both parameters) that you want to
    #   determine the enablement status of in each enabled standard.
    #
    # @option params [String] :next_token
    #   Optional pagination parameter.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that limits the total results of the API
    #   response to the specified number. If this parameter isn't provided in
    #   the request, the results include the first 25 standard and control
    #   associations. The results also include a `NextToken` parameter that
    #   you can use in a subsequent API call to get the next 25 associations.
    #   This repeats until all associations for the specified control are
    #   returned. The number of results is limited by the number of supported
    #   Security Hub standards that you've enabled in the calling account.
    #
    # @return [Types::ListStandardsControlAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStandardsControlAssociationsResponse#standards_control_association_summaries #standards_control_association_summaries} => Array&lt;Types::StandardsControlAssociationSummary&gt;
    #   * {Types::ListStandardsControlAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To say whether standard
    #
    #   # The following example specifies whether a control is currently enabled or disabled in each enabled standard in the
    #   # calling account. The response also provides other details about the control.
    #
    #   resp = client.list_standards_control_associations({
    #     security_control_id: "S3.1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     standards_control_association_summaries: [
    #       {
    #         association_status: "ENABLED", 
    #         related_requirements: [
    #           "PCI DSS 1.2.1", 
    #           "PCI DSS 1.3.1", 
    #           "PCI DSS 1.3.2", 
    #           "PCI DSS 1.3.4", 
    #           "PCI DSS 1.3.6", 
    #         ], 
    #         security_control_arn: "arn:aws:securityhub:us-west-2:110479873537:security-control/S3.1", 
    #         security_control_id: "S3.1", 
    #         standards_arn: "arn:aws:securityhub:us-west-2::standards/pci-dss/v/3.2.1", 
    #         standards_control_description: "This AWS control checks whether the following public access block settings are configured from account level: ignorePublicAcls: True, blockPublicPolicy: True, blockPublicAcls: True, restrictPublicBuckets: True.", 
    #         standards_control_title: "S3 Block Public Access setting should be enabled", 
    #         updated_at: Time.parse("2022-01-13T23:03:46.648000+00:00"), 
    #       }, 
    #       {
    #         association_status: "DISABLED", 
    #         related_requirements: [
    #         ], 
    #         security_control_arn: "arn:aws:securityhub:us-west-2:110479873537:security-control/S3.1", 
    #         security_control_id: "S3.1", 
    #         standards_arn: "arn:aws:securityhub:us-west-2::standards/aws-foundational-security-best-practices/v/1.0.0", 
    #         standards_control_description: "This AWS control checks whether the following public access block settings are configured from account level: ignorePublicAcls: True, blockPublicPolicy: True, blockPublicAcls: True, restrictPublicBuckets: True.", 
    #         standards_control_title: "S3 Block Public Access setting should be enabled", 
    #         updated_at: Time.parse("2022-08-12T22:59:04.924000+00:00"), 
    #         updated_reason: "Not relevant to environment", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_standards_control_associations({
    #     security_control_id: "NonEmptyString", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.standards_control_association_summaries #=> Array
    #   resp.standards_control_association_summaries[0].standards_arn #=> String
    #   resp.standards_control_association_summaries[0].security_control_id #=> String
    #   resp.standards_control_association_summaries[0].security_control_arn #=> String
    #   resp.standards_control_association_summaries[0].association_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.standards_control_association_summaries[0].related_requirements #=> Array
    #   resp.standards_control_association_summaries[0].related_requirements[0] #=> String
    #   resp.standards_control_association_summaries[0].updated_at #=> Time
    #   resp.standards_control_association_summaries[0].updated_reason #=> String
    #   resp.standards_control_association_summaries[0].standards_control_title #=> String
    #   resp.standards_control_association_summaries[0].standards_control_description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListStandardsControlAssociations AWS API Documentation
    #
    # @overload list_standards_control_associations(params = {})
    # @param [Hash] params ({})
    def list_standards_control_associations(params = {}, options = {})
      req = build_request(:list_standards_control_associations, params)
      req.send_request(options)
    end

    # Returns a list of tags associated with a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to retrieve tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: To get a list of tags for a resource
    #
    #   # The following example returns a list of tags associated with the specified resource.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:securityhub:us-west-1:123456789012:hub/default", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "Area" => "USMidwest", 
    #       "Department" => "Operations", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Associates a target account, organizational unit, or the root with a
    # specified configuration. The target can be associated with a
    # configuration policy or self-managed behavior. Only the Security Hub
    # delegated administrator can invoke this operation from the home
    # Region.
    #
    # @option params [required, String] :configuration_policy_identifier
    #   The Amazon Resource Name (ARN) of a configuration policy, the
    #   universally unique identifier (UUID) of a configuration policy, or a
    #   value of `SELF_MANAGED_SECURITY_HUB` for a self-managed configuration.
    #
    # @option params [required, Types::Target] :target
    #   The identifier of the target account, organizational unit, or the root
    #   to associate with the specified configuration.
    #
    # @return [Types::StartConfigurationPolicyAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartConfigurationPolicyAssociationResponse#configuration_policy_id #configuration_policy_id} => String
    #   * {Types::StartConfigurationPolicyAssociationResponse#target_id #target_id} => String
    #   * {Types::StartConfigurationPolicyAssociationResponse#target_type #target_type} => String
    #   * {Types::StartConfigurationPolicyAssociationResponse#association_type #association_type} => String
    #   * {Types::StartConfigurationPolicyAssociationResponse#updated_at #updated_at} => Time
    #   * {Types::StartConfigurationPolicyAssociationResponse#association_status #association_status} => String
    #   * {Types::StartConfigurationPolicyAssociationResponse#association_status_message #association_status_message} => String
    #
    #
    # @example Example: To associate a configuration with a target
    #
    #   # This operation associates a configuration policy or self-managed behavior with the target account, organizational unit,
    #   # or the root.
    #
    #   resp = client.start_configuration_policy_association({
    #     configuration_policy_identifier: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     target: {
    #       account_id: "111122223333", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     association_status: "SUCCESS", 
    #     association_status_message: "This field is populated only if the association fails", 
    #     association_type: "APPLIED", 
    #     configuration_policy_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     target_id: "111122223333", 
    #     target_type: "ACCOUNT", 
    #     updated_at: Time.parse("2023-01-11T06:17:17.154Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_configuration_policy_association({
    #     configuration_policy_identifier: "NonEmptyString", # required
    #     target: { # required
    #       account_id: "NonEmptyString",
    #       organizational_unit_id: "NonEmptyString",
    #       root_id: "NonEmptyString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_policy_id #=> String
    #   resp.target_id #=> String
    #   resp.target_type #=> String, one of "ACCOUNT", "ORGANIZATIONAL_UNIT", "ROOT"
    #   resp.association_type #=> String, one of "INHERITED", "APPLIED"
    #   resp.updated_at #=> Time
    #   resp.association_status #=> String, one of "PENDING", "SUCCESS", "FAILED"
    #   resp.association_status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StartConfigurationPolicyAssociation AWS API Documentation
    #
    # @overload start_configuration_policy_association(params = {})
    # @param [Hash] params ({})
    def start_configuration_policy_association(params = {}, options = {})
      req = build_request(:start_configuration_policy_association, params)
      req.send_request(options)
    end

    # Disassociates a target account, organizational unit, or the root from
    # a specified configuration. When you disassociate a configuration from
    # its target, the target inherits the configuration of the closest
    # parent. If there’s no configuration to inherit, the target retains its
    # settings but becomes a self-managed account. A target can be
    # disassociated from a configuration policy or self-managed behavior.
    # Only the Security Hub delegated administrator can invoke this
    # operation from the home Region.
    #
    # @option params [Types::Target] :target
    #   The identifier of the target account, organizational unit, or the root
    #   to disassociate from the specified configuration.
    #
    # @option params [required, String] :configuration_policy_identifier
    #   The Amazon Resource Name (ARN) of a configuration policy, the
    #   universally unique identifier (UUID) of a configuration policy, or a
    #   value of `SELF_MANAGED_SECURITY_HUB` for a self-managed configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disassociate a configuration from a target
    #
    #   # This operation disassociates a configuration policy or self-managed behavior from the target account, organizational
    #   # unit, or the root.
    #
    #   resp = client.start_configuration_policy_disassociation({
    #     configuration_policy_identifier: "SELF_MANAGED_SECURITY_HUB", 
    #     target: {
    #       root_id: "r-f6g7h8i9j0example", 
    #     }, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_configuration_policy_disassociation({
    #     target: {
    #       account_id: "NonEmptyString",
    #       organizational_unit_id: "NonEmptyString",
    #       root_id: "NonEmptyString",
    #     },
    #     configuration_policy_identifier: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StartConfigurationPolicyDisassociation AWS API Documentation
    #
    # @overload start_configuration_policy_disassociation(params = {})
    # @param [Hash] params ({})
    def start_configuration_policy_disassociation(params = {}, options = {})
      req = build_request(:start_configuration_policy_disassociation, params)
      req.send_request(options)
    end

    # Adds one or more tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to apply the tags to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource. You can add up to 50 tags at a time.
    #   The tag keys can be no longer than 128 characters. The tag values can
    #   be no longer than 256 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To tag a resource
    #
    #   # The following example adds the 'Department' and 'Area' tags to the specified resource.
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:securityhub:us-west-1:123456789012:hub/default", 
    #     tags: {
    #       "Area" => "USMidwest", 
    #       "Department" => "Operations", 
    #     }, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to remove the tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys associated with the tags to remove from the resource. You
    #   can remove up to 50 tags at a time.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove tags from a resource
    #
    #   # The following example removes the 'Department' tag from the specified resource.
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:securityhub:us-west-1:123456789012:hub/default", 
    #     tag_keys: [
    #       "Department", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the name and description of a custom action target in Security
    # Hub.
    #
    # @option params [required, String] :action_target_arn
    #   The ARN of the custom action target to update.
    #
    # @option params [String] :name
    #   The updated name of the custom action target.
    #
    # @option params [String] :description
    #   The updated description for the custom action target.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update the name and description of a custom action target
    #
    #   # The following example updates the name and description of a custom action target in Security Hub. You can create custom
    #   # actions to automatically respond to Security Hub findings using Amazon EventBridge. 
    #
    #   resp = client.update_action_target({
    #     action_target_arn: "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation", 
    #     description: "Sends specified findings to customer service chat", 
    #     name: "Chat custom action", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_action_target({
    #     action_target_arn: "NonEmptyString", # required
    #     name: "NonEmptyString",
    #     description: "NonEmptyString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateActionTarget AWS API Documentation
    #
    # @overload update_action_target(params = {})
    # @param [Hash] params ({})
    def update_action_target(params = {}, options = {})
      req = build_request(:update_action_target, params)
      req.send_request(options)
    end

    # Udpates the configuration for the Aggregator V2. This API is in public
    # preview and subject to change.
    #
    # @option params [required, String] :aggregator_v2_arn
    #   The ARN of the Aggregator V2.
    #
    # @option params [required, String] :region_linking_mode
    #   Determines how Amazon Web Services Regions should be linked to the
    #   Aggregator V2.
    #
    # @option params [Array<String>] :linked_regions
    #   A list of Amazon Web Services Regions linked to the aggegation Region.
    #
    # @return [Types::UpdateAggregatorV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAggregatorV2Response#aggregator_v2_arn #aggregator_v2_arn} => String
    #   * {Types::UpdateAggregatorV2Response#aggregation_region #aggregation_region} => String
    #   * {Types::UpdateAggregatorV2Response#region_linking_mode #region_linking_mode} => String
    #   * {Types::UpdateAggregatorV2Response#linked_regions #linked_regions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_aggregator_v2({
    #     aggregator_v2_arn: "NonEmptyString", # required
    #     region_linking_mode: "NonEmptyString", # required
    #     linked_regions: ["NonEmptyString"],
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregator_v2_arn #=> String
    #   resp.aggregation_region #=> String
    #   resp.region_linking_mode #=> String
    #   resp.linked_regions #=> Array
    #   resp.linked_regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateAggregatorV2 AWS API Documentation
    #
    # @overload update_aggregator_v2(params = {})
    # @param [Hash] params ({})
    def update_aggregator_v2(params = {}, options = {})
      req = build_request(:update_aggregator_v2, params)
      req.send_request(options)
    end

    # Updates a V2 automation rule. This API is in public preview and
    # subject to change.
    #
    # @option params [required, String] :identifier
    #   The ARN of the automation rule.
    #
    # @option params [String] :rule_status
    #   The status of the automation rule.
    #
    # @option params [Float] :rule_order
    #   Represents a value for the rule priority.
    #
    # @option params [String] :description
    #   A description of the automation rule.
    #
    # @option params [String] :rule_name
    #   The name of the automation rule.
    #
    # @option params [Types::Criteria] :criteria
    #   The filtering type and configuration of the automation rule.
    #
    # @option params [Array<Types::AutomationRulesActionV2>] :actions
    #   A list of actions to be performed when the rule criteria is met.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_automation_rule_v2({
    #     identifier: "NonEmptyString", # required
    #     rule_status: "ENABLED", # accepts ENABLED, DISABLED
    #     rule_order: 1.0,
    #     description: "NonEmptyString",
    #     rule_name: "NonEmptyString",
    #     criteria: {
    #       ocsf_finding_criteria: {
    #         composite_filters: [
    #           {
    #             string_filters: [
    #               {
    #                 field_name: "metadata.uid", # accepts metadata.uid, activity_name, cloud.account.uid, cloud.provider, cloud.region, compliance.assessments.category, compliance.assessments.name, compliance.control, compliance.status, compliance.standards, finding_info.desc, finding_info.src_url, finding_info.title, finding_info.types, finding_info.uid, finding_info.related_events.uid, finding_info.related_events.product.uid, finding_info.related_events.title, metadata.product.name, metadata.product.uid, metadata.product.vendor_name, remediation.desc, remediation.references, resources.cloud_partition, resources.region, resources.type, resources.uid, severity, status, comment, vulnerabilities.fix_coverage, class_name, databucket.encryption_details.algorithm, databucket.encryption_details.key_uid, databucket.file.data_classifications.classifier_details.type, evidences.actor.user.account.uid, evidences.api.operation, evidences.api.response.error_message, evidences.api.service.name, evidences.connection_info.direction, evidences.connection_info.protocol_name, evidences.dst_endpoint.autonomous_system.name, evidences.dst_endpoint.location.city, evidences.dst_endpoint.location.country, evidences.src_endpoint.autonomous_system.name, evidences.src_endpoint.hostname, evidences.src_endpoint.location.city, evidences.src_endpoint.location.country, finding_info.analytic.name, malware.name, malware_scan_info.uid, malware.severity, resources.cloud_function.layers.uid_alt, resources.cloud_function.runtime, resources.cloud_function.user.uid, resources.device.encryption_details.key_uid, resources.device.image.uid, resources.image.architecture, resources.image.registry_uid, resources.image.repository_name, resources.image.uid, resources.subnet_info.uid, resources.vpc_uid, vulnerabilities.affected_code.file.path, vulnerabilities.affected_packages.name, vulnerabilities.cve.epss.score, vulnerabilities.cve.uid, vulnerabilities.related_vulnerabilities, cloud.account.name
    #                 filter: {
    #                   value: "NonEmptyString",
    #                   comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #                 },
    #               },
    #             ],
    #             date_filters: [
    #               {
    #                 field_name: "finding_info.created_time_dt", # accepts finding_info.created_time_dt, finding_info.first_seen_time_dt, finding_info.last_seen_time_dt, finding_info.modified_time_dt, resources.image.created_time_dt, resources.image.last_used_time_dt, resources.modified_time_dt
    #                 filter: {
    #                   start: "NonEmptyString",
    #                   end: "NonEmptyString",
    #                   date_range: {
    #                     value: 1,
    #                     unit: "DAYS", # accepts DAYS
    #                   },
    #                 },
    #               },
    #             ],
    #             boolean_filters: [
    #               {
    #                 field_name: "compliance.assessments.meets_criteria", # accepts compliance.assessments.meets_criteria, vulnerabilities.is_exploit_available, vulnerabilities.is_fix_available
    #                 filter: {
    #                   value: false,
    #                 },
    #               },
    #             ],
    #             number_filters: [
    #               {
    #                 field_name: "activity_id", # accepts activity_id, compliance.status_id, confidence_score, severity_id, status_id, finding_info.related_events_count, evidences.api.response.code, evidences.dst_endpoint.autonomous_system.number, evidences.dst_endpoint.port, evidences.src_endpoint.autonomous_system.number, evidences.src_endpoint.port, resources.image.in_use_count
    #                 filter: {
    #                   gte: 1.0,
    #                   lte: 1.0,
    #                   eq: 1.0,
    #                   gt: 1.0,
    #                   lt: 1.0,
    #                 },
    #               },
    #             ],
    #             map_filters: [
    #               {
    #                 field_name: "resources.tags", # accepts resources.tags, compliance.control_parameters, databucket.tags, finding_info.tags
    #                 filter: {
    #                   key: "NonEmptyString",
    #                   value: "NonEmptyString",
    #                   comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #                 },
    #               },
    #             ],
    #             ip_filters: [
    #               {
    #                 field_name: "evidences.dst_endpoint.ip", # accepts evidences.dst_endpoint.ip, evidences.src_endpoint.ip
    #                 filter: {
    #                   cidr: "NonEmptyString",
    #                 },
    #               },
    #             ],
    #             nested_composite_filters: {
    #               # recursive CompositeFilterList
    #             },
    #             operator: "AND", # accepts AND, OR
    #           },
    #         ],
    #         composite_operator: "AND", # accepts AND, OR
    #       },
    #     },
    #     actions: [
    #       {
    #         type: "FINDING_FIELDS_UPDATE", # required, accepts FINDING_FIELDS_UPDATE, EXTERNAL_INTEGRATION
    #         finding_fields_update: {
    #           severity_id: 1,
    #           comment: "NonEmptyString",
    #           status_id: 1,
    #         },
    #         external_integration_configuration: {
    #           connector_arn: "NonEmptyString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateAutomationRuleV2 AWS API Documentation
    #
    # @overload update_automation_rule_v2(params = {})
    # @param [Hash] params ({})
    def update_automation_rule_v2(params = {}, options = {})
      req = build_request(:update_automation_rule_v2, params)
      req.send_request(options)
    end

    # Updates a configuration policy. Only the Security Hub delegated
    # administrator can invoke this operation from the home Region.
    #
    # @option params [required, String] :identifier
    #   The Amazon Resource Name (ARN) or universally unique identifier (UUID)
    #   of the configuration policy.
    #
    # @option params [String] :name
    #   The name of the configuration policy. Alphanumeric characters and the
    #   following ASCII characters are permitted: `-, ., !, *, /`.
    #
    # @option params [String] :description
    #   The description of the configuration policy.
    #
    # @option params [String] :updated_reason
    #   The reason for updating the configuration policy.
    #
    # @option params [Types::Policy] :configuration_policy
    #   An object that defines how Security Hub is configured. It includes
    #   whether Security Hub is enabled or disabled, a list of enabled
    #   security standards, a list of enabled or disabled security controls,
    #   and a list of custom parameter values for specified controls. If you
    #   provide a list of security controls that are enabled in the
    #   configuration policy, Security Hub disables all other controls
    #   (including newly released controls). If you provide a list of security
    #   controls that are disabled in the configuration policy, Security Hub
    #   enables all other controls (including newly released controls).
    #
    #   When updating a configuration policy, provide a complete list of
    #   standards that you want to enable and a complete list of controls that
    #   you want to enable or disable. The updated configuration replaces the
    #   current configuration.
    #
    # @return [Types::UpdateConfigurationPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConfigurationPolicyResponse#arn #arn} => String
    #   * {Types::UpdateConfigurationPolicyResponse#id #id} => String
    #   * {Types::UpdateConfigurationPolicyResponse#name #name} => String
    #   * {Types::UpdateConfigurationPolicyResponse#description #description} => String
    #   * {Types::UpdateConfigurationPolicyResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateConfigurationPolicyResponse#created_at #created_at} => Time
    #   * {Types::UpdateConfigurationPolicyResponse#configuration_policy #configuration_policy} => Types::Policy
    #
    #
    # @example Example: To update a configuration policy
    #
    #   # This operation updates the specified configuration policy.
    #
    #   resp = client.update_configuration_policy({
    #     configuration_policy: {
    #       security_hub: {
    #         enabled_standard_identifiers: [
    #           "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0", 
    #           "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0", 
    #         ], 
    #         security_controls_configuration: {
    #           disabled_security_control_identifiers: [
    #             "CloudWatch.1", 
    #             "CloudWatch.2", 
    #           ], 
    #           security_control_custom_parameters: [
    #             {
    #               parameters: {
    #                 "daysToExpiration" => {
    #                   value: {
    #                     integer: 21, 
    #                   }, 
    #                   value_type: "CUSTOM", 
    #                 }, 
    #               }, 
    #               security_control_id: "ACM.1", 
    #             }, 
    #           ], 
    #         }, 
    #         service_enabled: true, 
    #       }, 
    #     }, 
    #     description: "Updated configuration policy for testing FSBP and CIS", 
    #     identifier: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     name: "TestConfigurationPolicy", 
    #     updated_reason: "Enabling ACM.2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:securityhub:us-east-1:123456789012:configuration-policy/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     configuration_policy: {
    #       security_hub: {
    #         enabled_standard_identifiers: [
    #           "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0", 
    #           "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0", 
    #         ], 
    #         security_controls_configuration: {
    #           disabled_security_control_identifiers: [
    #             "CloudWatch.1", 
    #             "CloudWatch.2", 
    #           ], 
    #           security_control_custom_parameters: [
    #             {
    #               parameters: {
    #                 "daysToExpiration" => {
    #                   value: {
    #                     integer: 21, 
    #                   }, 
    #                   value_type: "CUSTOM", 
    #                 }, 
    #               }, 
    #               security_control_id: "ACM.1", 
    #             }, 
    #           ], 
    #         }, 
    #         service_enabled: true, 
    #       }, 
    #     }, 
    #     created_at: Time.parse("2023-01-11T06:17:17.154Z"), 
    #     description: "Updated configuration policy for testing FSBP and CIS", 
    #     id: "a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     name: "TestConfigurationPolicy", 
    #     updated_at: Time.parse("2023-01-12T06:17:17.154Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_policy({
    #     identifier: "NonEmptyString", # required
    #     name: "NonEmptyString",
    #     description: "NonEmptyString",
    #     updated_reason: "NonEmptyString",
    #     configuration_policy: {
    #       security_hub: {
    #         service_enabled: false,
    #         enabled_standard_identifiers: ["NonEmptyString"],
    #         security_controls_configuration: {
    #           enabled_security_control_identifiers: ["NonEmptyString"],
    #           disabled_security_control_identifiers: ["NonEmptyString"],
    #           security_control_custom_parameters: [
    #             {
    #               security_control_id: "NonEmptyString",
    #               parameters: {
    #                 "NonEmptyString" => {
    #                   value_type: "DEFAULT", # required, accepts DEFAULT, CUSTOM
    #                   value: {
    #                     integer: 1,
    #                     integer_list: [1],
    #                     double: 1.0,
    #                     string: "NonEmptyString",
    #                     string_list: ["NonEmptyString"],
    #                     boolean: false,
    #                     enum: "NonEmptyString",
    #                     enum_list: ["NonEmptyString"],
    #                   },
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.updated_at #=> Time
    #   resp.created_at #=> Time
    #   resp.configuration_policy.security_hub.service_enabled #=> Boolean
    #   resp.configuration_policy.security_hub.enabled_standard_identifiers #=> Array
    #   resp.configuration_policy.security_hub.enabled_standard_identifiers[0] #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.enabled_security_control_identifiers #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.enabled_security_control_identifiers[0] #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.disabled_security_control_identifiers #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.disabled_security_control_identifiers[0] #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].security_control_id #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters #=> Hash
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value_type #=> String, one of "DEFAULT", "CUSTOM"
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.integer #=> Integer
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.integer_list #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.integer_list[0] #=> Integer
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.double #=> Float
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.string #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.string_list #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.string_list[0] #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.boolean #=> Boolean
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.enum #=> String
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.enum_list #=> Array
    #   resp.configuration_policy.security_hub.security_controls_configuration.security_control_custom_parameters[0].parameters["NonEmptyString"].value.enum_list[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateConfigurationPolicy AWS API Documentation
    #
    # @overload update_configuration_policy(params = {})
    # @param [Hash] params ({})
    def update_configuration_policy(params = {}, options = {})
      req = build_request(:update_configuration_policy, params)
      req.send_request(options)
    end

    # Grants permission to update a connectorV2 based on its id and input
    # parameters. This API is in preview release and subject to change.
    #
    # @option params [required, String] :connector_id
    #   The UUID of the connectorV2 to identify connectorV2 resource.
    #
    # @option params [String] :client_secret
    #   The clientSecret of ServiceNow.
    #
    # @option params [String] :description
    #   The description of the connectorV2.
    #
    # @option params [Types::ProviderUpdateConfiguration] :provider
    #   The third-party provider’s service configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connector_v2({
    #     connector_id: "NonEmptyString", # required
    #     client_secret: "SensitiveNonEmptyString",
    #     description: "NonEmptyString",
    #     provider: {
    #       jira_cloud: {
    #         project_key: "NonEmptyString", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateConnectorV2 AWS API Documentation
    #
    # @overload update_connector_v2(params = {})
    # @param [Hash] params ({})
    def update_connector_v2(params = {}, options = {})
      req = build_request(:update_connector_v2, params)
      req.send_request(options)
    end

    # <note markdown="1"> The *aggregation Region* is now called the *home Region*.
    #
    #  </note>
    #
    # Updates cross-Region aggregation settings. You can use this operation
    # to update the Region linking mode and the list of included or excluded
    # Amazon Web Services Regions. However, you can't use this operation to
    # change the home Region.
    #
    # You can invoke this operation from the current home Region only.
    #
    # @option params [required, String] :finding_aggregator_arn
    #   The ARN of the finding aggregator. To obtain the ARN, use
    #   `ListFindingAggregators`.
    #
    # @option params [required, String] :region_linking_mode
    #   Indicates whether to aggregate findings from all of the available
    #   Regions in the current partition. Also determines whether to
    #   automatically aggregate findings from new Regions as Security Hub
    #   supports them and you opt into them.
    #
    #   The selected option also determines how to use the Regions provided in
    #   the Regions list.
    #
    #   The options are as follows:
    #
    #   * `ALL_REGIONS` - Aggregates findings from all of the Regions where
    #     Security Hub is enabled. When you choose this option, Security Hub
    #     also automatically aggregates findings from new Regions as Security
    #     Hub supports them and you opt into them.
    #
    #   * `ALL_REGIONS_EXCEPT_SPECIFIED` - Aggregates findings from all of the
    #     Regions where Security Hub is enabled, except for the Regions listed
    #     in the `Regions` parameter. When you choose this option, Security
    #     Hub also automatically aggregates findings from new Regions as
    #     Security Hub supports them and you opt into them.
    #
    #   * `SPECIFIED_REGIONS` - Aggregates findings only from the Regions
    #     listed in the `Regions` parameter. Security Hub does not
    #     automatically aggregate findings from new Regions.
    #
    #   * `NO_REGIONS` - Aggregates no data because no Regions are selected as
    #     linked Regions.
    #
    # @option params [Array<String>] :regions
    #   If `RegionLinkingMode` is `ALL_REGIONS_EXCEPT_SPECIFIED`, then this is
    #   a space-separated list of Regions that don't replicate and send
    #   findings to the home Region.
    #
    #   If `RegionLinkingMode` is `SPECIFIED_REGIONS`, then this is a
    #   space-separated list of Regions that do replicate and send findings to
    #   the home Region.
    #
    #   An `InvalidInputException` error results if you populate this field
    #   while `RegionLinkingMode` is `NO_REGIONS`.
    #
    # @return [Types::UpdateFindingAggregatorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFindingAggregatorResponse#finding_aggregator_arn #finding_aggregator_arn} => String
    #   * {Types::UpdateFindingAggregatorResponse#finding_aggregation_region #finding_aggregation_region} => String
    #   * {Types::UpdateFindingAggregatorResponse#region_linking_mode #region_linking_mode} => String
    #   * {Types::UpdateFindingAggregatorResponse#regions #regions} => Array&lt;String&gt;
    #
    #
    # @example Example: To update cross-Region aggregation settings
    #
    #   # The following example updates the cross-Region aggregation configuration. You use this operation to change the list of
    #   # linked Regions and the treatment of new Regions. However, you cannot use this operation to change the aggregation
    #   # Region.
    #
    #   resp = client.update_finding_aggregator({
    #     finding_aggregator_arn: "arn:aws:securityhub:us-east-1:123456789012:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     region_linking_mode: "SPECIFIED_REGIONS", 
    #     regions: [
    #       "us-west-1", 
    #       "us-west-2", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     finding_aggregation_region: "us-east-1", 
    #     finding_aggregator_arn: "arn:aws:securityhub:us-east-1:123456789012:finding-aggregator/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     region_linking_mode: "SPECIFIED_REGIONS", 
    #     regions: [
    #       "us-west-1", 
    #       "us-west-2", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_finding_aggregator({
    #     finding_aggregator_arn: "NonEmptyString", # required
    #     region_linking_mode: "NonEmptyString", # required
    #     regions: ["NonEmptyString"],
    #   })
    #
    # @example Response structure
    #
    #   resp.finding_aggregator_arn #=> String
    #   resp.finding_aggregation_region #=> String
    #   resp.region_linking_mode #=> String
    #   resp.regions #=> Array
    #   resp.regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindingAggregator AWS API Documentation
    #
    # @overload update_finding_aggregator(params = {})
    # @param [Hash] params ({})
    def update_finding_aggregator(params = {}, options = {})
      req = build_request(:update_finding_aggregator, params)
      req.send_request(options)
    end

    # `UpdateFindings` is a deprecated operation. Instead of
    # `UpdateFindings`, use the `BatchUpdateFindings` operation.
    #
    # The `UpdateFindings` operation updates the `Note` and `RecordState` of
    # the Security Hub aggregated findings that the filter attributes
    # specify. Any member account that can view the finding can also see the
    # update to the finding.
    #
    # Finding updates made with `UpdateFindings` aren't persisted if the
    # same finding is later updated by the finding provider through the
    # `BatchImportFindings` operation. In addition, Security Hub doesn't
    # record updates made with `UpdateFindings` in the finding history.
    #
    # @option params [required, Types::AwsSecurityFindingFilters] :filters
    #   A collection of attributes that specify which findings you want to
    #   update.
    #
    # @option params [Types::NoteUpdate] :note
    #   The updated note for the finding.
    #
    # @option params [String] :record_state
    #   The updated record state for the finding.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_findings({
    #     filters: { # required
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       severity_normalized: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       recommendation_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       product_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       malware_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       malware_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       malware_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       malware_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_direction: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       network_source_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_source_mac: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_destination_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       network_destination_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       process_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       process_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       process_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       process_parent_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       process_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       process_terminated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_category: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_source: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       resource_aws_ec2_instance_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v4_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v6_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_key_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_iam_instance_profile_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_vpc_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_subnet_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_principal_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_iam_user_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_image_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       workflow_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       keyword: [
    #         {
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       finding_provider_fields_confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_severity_original: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_types: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       sample: [
    #         {
    #           value: false,
    #         },
    #       ],
    #       compliance_security_control_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_associated_standards_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       vulnerabilities_exploit_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       vulnerabilities_fix_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_security_control_parameters_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_security_control_parameters_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       aws_account_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_application_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_application_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #     },
    #     note: {
    #       text: "NonEmptyString", # required
    #       updated_by: "NonEmptyString", # required
    #     },
    #     record_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindings AWS API Documentation
    #
    # @overload update_findings(params = {})
    # @param [Hash] params ({})
    def update_findings(params = {}, options = {})
      req = build_request(:update_findings, params)
      req.send_request(options)
    end

    # Updates the Security Hub insight identified by the specified insight
    # ARN.
    #
    # @option params [required, String] :insight_arn
    #   The ARN of the insight that you want to update.
    #
    # @option params [String] :name
    #   The updated name for the insight.
    #
    # @option params [Types::AwsSecurityFindingFilters] :filters
    #   The updated filters that define this insight.
    #
    # @option params [String] :group_by_attribute
    #   The updated `GroupBy` attribute that defines this insight.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update an insight
    #
    #   # The following example updates the specified Security Hub insight.
    #
    #   resp = client.update_insight({
    #     filters: {
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", 
    #           value: "AwsIamRole", 
    #         }, 
    #       ], 
    #       severity_label: [
    #         {
    #           comparison: "EQUALS", 
    #           value: "HIGH", 
    #         }, 
    #       ], 
    #     }, 
    #     insight_arn: "arn:aws:securityhub:us-west-1:123456789012:insight/123456789012/custom/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #     name: "High severity role findings", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_insight({
    #     insight_arn: "NonEmptyString", # required
    #     name: "NonEmptyString",
    #     filters: {
    #       product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       aws_account_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       generator_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       severity_product: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       severity_normalized: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       title: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       description: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       recommendation_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       product_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       product_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       company_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       user_defined_fields: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       malware_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       malware_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       malware_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       malware_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_direction: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_source_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_source_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       network_source_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_source_mac: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       network_destination_ip_v4: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_ip_v6: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       network_destination_port: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       network_destination_domain: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       process_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       process_path: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       process_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       process_parent_pid: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       process_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       process_terminated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_category: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_last_observed_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       threat_intel_indicator_source: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       threat_intel_indicator_source_url: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_partition: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_region: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       resource_aws_ec2_instance_type: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v4_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_ip_v6_addresses: [
    #         {
    #           cidr: "NonEmptyString",
    #         },
    #       ],
    #       resource_aws_ec2_instance_key_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_iam_instance_profile_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_vpc_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_subnet_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_ec2_instance_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_s3_bucket_owner_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_principal_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_aws_iam_access_key_created_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_aws_iam_user_user_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_image_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_image_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_container_launched_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       resource_details_other: [
    #         {
    #           key: "NonEmptyString",
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS
    #         },
    #       ],
    #       compliance_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       verification_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       workflow_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       workflow_status: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       record_state: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       note_text: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       note_updated_at: [
    #         {
    #           start: "NonEmptyString",
    #           end: "NonEmptyString",
    #           date_range: {
    #             value: 1,
    #             unit: "DAYS", # accepts DAYS
    #           },
    #         },
    #       ],
    #       note_updated_by: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       keyword: [
    #         {
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       finding_provider_fields_confidence: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_criticality: [
    #         {
    #           gte: 1.0,
    #           lte: 1.0,
    #           eq: 1.0,
    #           gt: 1.0,
    #           lt: 1.0,
    #         },
    #       ],
    #       finding_provider_fields_related_findings_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_related_findings_product_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_severity_label: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_severity_original: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       finding_provider_fields_types: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       sample: [
    #         {
    #           value: false,
    #         },
    #       ],
    #       compliance_security_control_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_associated_standards_id: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       vulnerabilities_exploit_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       vulnerabilities_fix_available: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_security_control_parameters_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       compliance_security_control_parameters_value: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       aws_account_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_application_name: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #       resource_application_arn: [
    #         {
    #           value: "NonEmptyString",
    #           comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS, CONTAINS_WORD
    #         },
    #       ],
    #     },
    #     group_by_attribute: "NonEmptyString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateInsight AWS API Documentation
    #
    # @overload update_insight(params = {})
    # @param [Hash] params ({})
    def update_insight(params = {}, options = {})
      req = build_request(:update_insight, params)
      req.send_request(options)
    end

    # Updates the configuration of your organization in Security Hub. Only
    # the Security Hub administrator account can invoke this operation.
    #
    # @option params [required, Boolean] :auto_enable
    #   Whether to automatically enable Security Hub in new member accounts
    #   when they join the organization.
    #
    #   If set to `true`, then Security Hub is automatically enabled in new
    #   accounts. If set to `false`, then Security Hub isn't enabled in new
    #   accounts automatically. The default value is `false`.
    #
    #   If the `ConfigurationType` of your organization is set to `CENTRAL`,
    #   then this field is set to `false` and can't be changed in the home
    #   Region and linked Regions. However, in that case, the delegated
    #   administrator can create a configuration policy in which Security Hub
    #   is enabled and associate the policy with new organization accounts.
    #
    # @option params [String] :auto_enable_standards
    #   Whether to automatically enable Security Hub [default standards][1] in
    #   new member accounts when they join the organization.
    #
    #   The default value of this parameter is equal to `DEFAULT`.
    #
    #   If equal to `DEFAULT`, then Security Hub default standards are
    #   automatically enabled for new member accounts. If equal to `NONE`,
    #   then default standards are not automatically enabled for new member
    #   accounts.
    #
    #   If the `ConfigurationType` of your organization is set to `CENTRAL`,
    #   then this field is set to `NONE` and can't be changed in the home
    #   Region and linked Regions. However, in that case, the delegated
    #   administrator can create a configuration policy in which specific
    #   security standards are enabled and associate the policy with new
    #   organization accounts.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-enable-disable.html
    #
    # @option params [Types::OrganizationConfiguration] :organization_configuration
    #   Provides information about the way an organization is configured in
    #   Security Hub.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update organization configuration
    #
    #   # This operation updates the way your organization is configured in Security Hub. Only a Security Hub administrator
    #   # account can invoke this operation.
    #
    #   resp = client.update_organization_configuration({
    #     auto_enable: false, 
    #     auto_enable_standards: "NONE", 
    #     organization_configuration: {
    #       configuration_type: "CENTRAL", 
    #     }, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration({
    #     auto_enable: false, # required
    #     auto_enable_standards: "NONE", # accepts NONE, DEFAULT
    #     organization_configuration: {
    #       configuration_type: "CENTRAL", # accepts CENTRAL, LOCAL
    #       status: "PENDING", # accepts PENDING, ENABLED, FAILED
    #       status_message: "NonEmptyString",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateOrganizationConfiguration AWS API Documentation
    #
    # @overload update_organization_configuration(params = {})
    # @param [Hash] params ({})
    def update_organization_configuration(params = {}, options = {})
      req = build_request(:update_organization_configuration, params)
      req.send_request(options)
    end

    # Updates the properties of a security control.
    #
    # @option params [required, String] :security_control_id
    #   The Amazon Resource Name (ARN) or ID of the control to update.
    #
    # @option params [required, Hash<String,Types::ParameterConfiguration>] :parameters
    #   An object that specifies which security control parameters to update.
    #
    # @option params [String] :last_update_reason
    #   The most recent reason for updating the properties of the security
    #   control. This field accepts alphanumeric characters in addition to
    #   white spaces, dashes, and underscores.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update security control properties
    #
    #   # The following example updates the specified security control. Specifically, this example updates control parameters.
    #
    #   resp = client.update_security_control({
    #     last_update_reason: "Comply with internal requirements", 
    #     parameters: {
    #       "maxCredentialUsageAge" => {
    #         value: {
    #           integer: 15, 
    #         }, 
    #         value_type: "CUSTOM", 
    #       }, 
    #     }, 
    #     security_control_id: "ACM.1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_control({
    #     security_control_id: "NonEmptyString", # required
    #     parameters: { # required
    #       "NonEmptyString" => {
    #         value_type: "DEFAULT", # required, accepts DEFAULT, CUSTOM
    #         value: {
    #           integer: 1,
    #           integer_list: [1],
    #           double: 1.0,
    #           string: "NonEmptyString",
    #           string_list: ["NonEmptyString"],
    #           boolean: false,
    #           enum: "NonEmptyString",
    #           enum_list: ["NonEmptyString"],
    #         },
    #       },
    #     },
    #     last_update_reason: "AlphaNumericNonEmptyString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateSecurityControl AWS API Documentation
    #
    # @overload update_security_control(params = {})
    # @param [Hash] params ({})
    def update_security_control(params = {}, options = {})
      req = build_request(:update_security_control, params)
      req.send_request(options)
    end

    # Updates configuration options for Security Hub.
    #
    # @option params [Boolean] :auto_enable_controls
    #   Whether to automatically enable new controls when they are added to
    #   standards that are enabled.
    #
    #   By default, this is set to `true`, and new controls are enabled
    #   automatically. To not automatically enable new controls, set this to
    #   `false`.
    #
    #   When you automatically enable new controls, you can interact with the
    #   controls in the console and programmatically immediately after
    #   release. However, automatically enabled controls have a temporary
    #   default status of `DISABLED`. It can take up to several days for
    #   Security Hub to process the control release and designate the control
    #   as `ENABLED` in your account. During the processing period, you can
    #   manually enable or disable a control, and Security Hub will maintain
    #   that designation regardless of whether you have `AutoEnableControls`
    #   set to `true`.
    #
    # @option params [String] :control_finding_generator
    #   Updates whether the calling account has consolidated control findings
    #   turned on. If the value for this field is set to `SECURITY_CONTROL`,
    #   Security Hub generates a single finding for a control check even when
    #   the check applies to multiple enabled standards.
    #
    #   If the value for this field is set to `STANDARD_CONTROL`, Security Hub
    #   generates separate findings for a control check when the check applies
    #   to multiple enabled standards.
    #
    #   For accounts that are part of an organization, this value can only be
    #   updated in the administrator account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update Security Hub settings
    #
    #   # The following example updates Security Hub settings to turn on consolidated control findings, and to automatically
    #   # enable new controls in enabled standards.
    #
    #   resp = client.update_security_hub_configuration({
    #     auto_enable_controls: true, 
    #     control_finding_generator: "SECURITY_CONTROL", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_hub_configuration({
    #     auto_enable_controls: false,
    #     control_finding_generator: "STANDARD_CONTROL", # accepts STANDARD_CONTROL, SECURITY_CONTROL
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateSecurityHubConfiguration AWS API Documentation
    #
    # @overload update_security_hub_configuration(params = {})
    # @param [Hash] params ({})
    def update_security_hub_configuration(params = {}, options = {})
      req = build_request(:update_security_hub_configuration, params)
      req.send_request(options)
    end

    # Used to control whether an individual security standard control is
    # enabled or disabled.
    #
    # Calls to this operation return a `RESOURCE_NOT_FOUND_EXCEPTION` error
    # when the standard subscription for the control has
    # `StandardsControlsUpdatable` value `NOT_READY_FOR_UPDATES`.
    #
    # @option params [required, String] :standards_control_arn
    #   The ARN of the security standard control to enable or disable.
    #
    # @option params [String] :control_status
    #   The updated status of the security standard control.
    #
    # @option params [String] :disabled_reason
    #   A description of the reason why you are disabling a security standard
    #   control. If you are disabling a control, then this is required.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update the enablement status of a standard control
    #
    #   # The following example disables the specified control in the specified security standard.
    #
    #   resp = client.update_standards_control({
    #     control_status: "DISABLED", 
    #     disabled_reason: "Not applicable to my service", 
    #     standards_control_arn: "arn:aws:securityhub:us-west-1:123456789012:control/pci-dss/v/3.2.1/PCI.AutoScaling.1", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_standards_control({
    #     standards_control_arn: "NonEmptyString", # required
    #     control_status: "ENABLED", # accepts ENABLED, DISABLED
    #     disabled_reason: "NonEmptyString",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateStandardsControl AWS API Documentation
    #
    # @overload update_standards_control(params = {})
    # @param [Hash] params ({})
    def update_standards_control(params = {}, options = {})
      req = build_request(:update_standards_control, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SecurityHub')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-securityhub'
      context[:gem_version] = '1.145.0'
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
