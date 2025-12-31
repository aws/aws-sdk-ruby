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

module Aws::ComputeOptimizerAutomation
  # An API client for ComputeOptimizerAutomation.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ComputeOptimizerAutomation::Client.new(
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

    @identifier = :computeoptimizerautomation

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
    add_plugin(Aws::ComputeOptimizerAutomation::Plugins::Endpoints)

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
    #   @option options [Aws::ComputeOptimizerAutomation::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ComputeOptimizerAutomation::EndpointParameters`.
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

    # Associates one or more member accounts with your organization's
    # management account, enabling centralized implementation of
    # optimization actions across those accounts. Once associated, the
    # management account (or a delegated administrator) can apply
    # recommended actions to the member account. When you associate a member
    # account, its organization rule mode is automatically set to "Any
    # allowed," which permits the management account to create Automation
    # rules that automatically apply actions to that account. If the member
    # account has not previously enabled the Automation feature, the
    # association process automatically enables it.
    #
    # <note markdown="1"> Only the management account or a delegated administrator can perform
    # this action.
    #
    #  </note>
    #
    # @option params [required, Array<String>] :account_ids
    #   The IDs of the member accounts to associate. You can specify up to 50
    #   account IDs.
    #
    # @option params [String] :client_token
    #   A unique identifier to ensure idempotency of the request. Valid for 24
    #   hours after creation.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::AssociateAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateAccountsResponse#account_ids #account_ids} => Array&lt;String&gt;
    #   * {Types::AssociateAccountsResponse#errors #errors} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_accounts({
    #     account_ids: ["AccountId"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/AssociateAccounts AWS API Documentation
    #
    # @overload associate_accounts(params = {})
    # @param [Hash] params ({})
    def associate_accounts(params = {}, options = {})
      req = build_request(:associate_accounts, params)
      req.send_request(options)
    end

    # Creates a new automation rule to apply recommended actions to
    # resources based on specified criteria.
    #
    # @option params [required, String] :name
    #   The name of the automation rule.
    #
    # @option params [String] :description
    #   A description of the automation rule.
    #
    # @option params [required, String] :rule_type
    #   The type of rule.
    #
    #   <note markdown="1"> Only the management account or a delegated administrator can set the
    #   ruleType to be OrganizationRule.
    #
    #    </note>
    #
    # @option params [Types::OrganizationConfiguration] :organization_configuration
    #   Configuration for organization-level rules. Required for
    #   OrganizationRule type.
    #
    # @option params [String] :priority
    #   A string representation of a decimal number between 0 and 1 (having up
    #   to 30 digits after the decimal point) that determines the priority of
    #   the rule. When multiple rules match the same recommended action,
    #   Compute Optimizer assigns the action to the rule with the lowest
    #   priority value (highest priority), even if that rule is scheduled to
    #   run later than other matching rules.
    #
    # @option params [required, Array<String>] :recommended_action_types
    #   The types of recommended actions this rule will automate.
    #
    # @option params [Types::Criteria] :criteria
    #   A set of conditions that specify which recommended action qualify for
    #   implementation. When a rule is active and a recommended action matches
    #   these criteria, Compute Optimizer implements the action at the
    #   scheduled run time.
    #
    # @option params [required, Types::Schedule] :schedule
    #   The schedule for when the rule should run.
    #
    # @option params [required, String] :status
    #   The status of the rule
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to associate with the rule.
    #
    # @option params [String] :client_token
    #   A unique identifier to ensure idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAutomationRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAutomationRuleResponse#rule_arn #rule_arn} => String
    #   * {Types::CreateAutomationRuleResponse#rule_id #rule_id} => String
    #   * {Types::CreateAutomationRuleResponse#name #name} => String
    #   * {Types::CreateAutomationRuleResponse#description #description} => String
    #   * {Types::CreateAutomationRuleResponse#rule_type #rule_type} => String
    #   * {Types::CreateAutomationRuleResponse#rule_revision #rule_revision} => Integer
    #   * {Types::CreateAutomationRuleResponse#organization_configuration #organization_configuration} => Types::OrganizationConfiguration
    #   * {Types::CreateAutomationRuleResponse#priority #priority} => String
    #   * {Types::CreateAutomationRuleResponse#recommended_action_types #recommended_action_types} => Array&lt;String&gt;
    #   * {Types::CreateAutomationRuleResponse#criteria #criteria} => Types::Criteria
    #   * {Types::CreateAutomationRuleResponse#schedule #schedule} => Types::Schedule
    #   * {Types::CreateAutomationRuleResponse#status #status} => String
    #   * {Types::CreateAutomationRuleResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateAutomationRuleResponse#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_automation_rule({
    #     name: "RuleName", # required
    #     description: "RuleDescription",
    #     rule_type: "OrganizationRule", # required, accepts OrganizationRule, AccountRule
    #     organization_configuration: {
    #       rule_apply_order: "BeforeAccountRules", # accepts BeforeAccountRules, AfterAccountRules
    #       account_ids: ["AccountId"],
    #     },
    #     priority: "String",
    #     recommended_action_types: ["SnapshotAndDeleteUnattachedEbsVolume"], # required, accepts SnapshotAndDeleteUnattachedEbsVolume, UpgradeEbsVolumeType
    #     criteria: {
    #       region: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       resource_arn: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       ebs_volume_type: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       ebs_volume_size_in_gib: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: [1],
    #         },
    #       ],
    #       estimated_monthly_savings: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: [1.0],
    #         },
    #       ],
    #       resource_tag: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           key: "StringCriteriaValue",
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       look_back_period_in_days: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: [1],
    #         },
    #       ],
    #       restart_needed: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #     },
    #     schedule: { # required
    #       schedule_expression: "String",
    #       schedule_expression_timezone: "String",
    #       execution_window_in_minutes: 1,
    #     },
    #     status: "Active", # required, accepts Active, Inactive
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_arn #=> String
    #   resp.rule_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.rule_type #=> String, one of "OrganizationRule", "AccountRule"
    #   resp.rule_revision #=> Integer
    #   resp.organization_configuration.rule_apply_order #=> String, one of "BeforeAccountRules", "AfterAccountRules"
    #   resp.organization_configuration.account_ids #=> Array
    #   resp.organization_configuration.account_ids[0] #=> String
    #   resp.priority #=> String
    #   resp.recommended_action_types #=> Array
    #   resp.recommended_action_types[0] #=> String, one of "SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"
    #   resp.criteria.region #=> Array
    #   resp.criteria.region[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.region[0].values #=> Array
    #   resp.criteria.region[0].values[0] #=> String
    #   resp.criteria.resource_arn #=> Array
    #   resp.criteria.resource_arn[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.resource_arn[0].values #=> Array
    #   resp.criteria.resource_arn[0].values[0] #=> String
    #   resp.criteria.ebs_volume_type #=> Array
    #   resp.criteria.ebs_volume_type[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.ebs_volume_type[0].values #=> Array
    #   resp.criteria.ebs_volume_type[0].values[0] #=> String
    #   resp.criteria.ebs_volume_size_in_gib #=> Array
    #   resp.criteria.ebs_volume_size_in_gib[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.ebs_volume_size_in_gib[0].values #=> Array
    #   resp.criteria.ebs_volume_size_in_gib[0].values[0] #=> Integer
    #   resp.criteria.estimated_monthly_savings #=> Array
    #   resp.criteria.estimated_monthly_savings[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.estimated_monthly_savings[0].values #=> Array
    #   resp.criteria.estimated_monthly_savings[0].values[0] #=> Float
    #   resp.criteria.resource_tag #=> Array
    #   resp.criteria.resource_tag[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.resource_tag[0].key #=> String
    #   resp.criteria.resource_tag[0].values #=> Array
    #   resp.criteria.resource_tag[0].values[0] #=> String
    #   resp.criteria.look_back_period_in_days #=> Array
    #   resp.criteria.look_back_period_in_days[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.look_back_period_in_days[0].values #=> Array
    #   resp.criteria.look_back_period_in_days[0].values[0] #=> Integer
    #   resp.criteria.restart_needed #=> Array
    #   resp.criteria.restart_needed[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.restart_needed[0].values #=> Array
    #   resp.criteria.restart_needed[0].values[0] #=> String
    #   resp.schedule.schedule_expression #=> String
    #   resp.schedule.schedule_expression_timezone #=> String
    #   resp.schedule.execution_window_in_minutes #=> Integer
    #   resp.status #=> String, one of "Active", "Inactive"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/CreateAutomationRule AWS API Documentation
    #
    # @overload create_automation_rule(params = {})
    # @param [Hash] params ({})
    def create_automation_rule(params = {}, options = {})
      req = build_request(:create_automation_rule, params)
      req.send_request(options)
    end

    # Deletes an existing automation rule.
    #
    # @option params [required, String] :rule_arn
    #   The ARN of the rule to delete.
    #
    # @option params [required, Integer] :rule_revision
    #   The revision number of the rule to delete.
    #
    # @option params [String] :client_token
    #   A unique identifier to ensure idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_automation_rule({
    #     rule_arn: "RuleArn", # required
    #     rule_revision: 1, # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/DeleteAutomationRule AWS API Documentation
    #
    # @overload delete_automation_rule(params = {})
    # @param [Hash] params ({})
    def delete_automation_rule(params = {}, options = {})
      req = build_request(:delete_automation_rule, params)
      req.send_request(options)
    end

    # Disassociates member accounts from your organization's management
    # account, removing centralized automation capabilities. Once
    # disassociated, organization rules no longer apply to the member
    # account, and the management account (or delegated administrator)
    # cannot create Automation rules for that account.
    #
    # <note markdown="1"> Only the management account or a delegated administrator can perform
    # this action.
    #
    #  </note>
    #
    # @option params [required, Array<String>] :account_ids
    #   The IDs of the member accounts to disassociate.
    #
    # @option params [String] :client_token
    #   A unique identifier to ensure idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DisassociateAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateAccountsResponse#account_ids #account_ids} => Array&lt;String&gt;
    #   * {Types::DisassociateAccountsResponse#errors #errors} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_accounts({
    #     account_ids: ["AccountId"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0] #=> String
    #   resp.errors #=> Array
    #   resp.errors[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/DisassociateAccounts AWS API Documentation
    #
    # @overload disassociate_accounts(params = {})
    # @param [Hash] params ({})
    def disassociate_accounts(params = {}, options = {})
      req = build_request(:disassociate_accounts, params)
      req.send_request(options)
    end

    # Retrieves details about a specific automation event.
    #
    # @option params [required, String] :event_id
    #   The ID of the automation event to retrieve.
    #
    # @return [Types::GetAutomationEventResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutomationEventResponse#event_id #event_id} => String
    #   * {Types::GetAutomationEventResponse#event_description #event_description} => String
    #   * {Types::GetAutomationEventResponse#event_type #event_type} => String
    #   * {Types::GetAutomationEventResponse#event_status #event_status} => String
    #   * {Types::GetAutomationEventResponse#event_status_reason #event_status_reason} => String
    #   * {Types::GetAutomationEventResponse#resource_arn #resource_arn} => String
    #   * {Types::GetAutomationEventResponse#resource_id #resource_id} => String
    #   * {Types::GetAutomationEventResponse#recommended_action_id #recommended_action_id} => String
    #   * {Types::GetAutomationEventResponse#account_id #account_id} => String
    #   * {Types::GetAutomationEventResponse#region #region} => String
    #   * {Types::GetAutomationEventResponse#rule_id #rule_id} => String
    #   * {Types::GetAutomationEventResponse#resource_type #resource_type} => String
    #   * {Types::GetAutomationEventResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetAutomationEventResponse#completed_timestamp #completed_timestamp} => Time
    #   * {Types::GetAutomationEventResponse#estimated_monthly_savings #estimated_monthly_savings} => Types::EstimatedMonthlySavings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_automation_event({
    #     event_id: "EventId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_id #=> String
    #   resp.event_description #=> String
    #   resp.event_type #=> String, one of "SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"
    #   resp.event_status #=> String, one of "Ready", "InProgress", "Complete", "Failed", "Cancelled", "RollbackReady", "RollbackInProgress", "RollbackComplete", "RollbackFailed"
    #   resp.event_status_reason #=> String
    #   resp.resource_arn #=> String
    #   resp.resource_id #=> String
    #   resp.recommended_action_id #=> String
    #   resp.account_id #=> String
    #   resp.region #=> String
    #   resp.rule_id #=> String
    #   resp.resource_type #=> String, one of "EbsVolume"
    #   resp.created_timestamp #=> Time
    #   resp.completed_timestamp #=> Time
    #   resp.estimated_monthly_savings.currency #=> String
    #   resp.estimated_monthly_savings.before_discount_savings #=> Float
    #   resp.estimated_monthly_savings.after_discount_savings #=> Float
    #   resp.estimated_monthly_savings.savings_estimation_mode #=> String, one of "BeforeDiscount", "AfterDiscount"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/GetAutomationEvent AWS API Documentation
    #
    # @overload get_automation_event(params = {})
    # @param [Hash] params ({})
    def get_automation_event(params = {}, options = {})
      req = build_request(:get_automation_event, params)
      req.send_request(options)
    end

    # Retrieves details about a specific automation rule.
    #
    # @option params [required, String] :rule_arn
    #   The ARN of the rule to retrieve.
    #
    # @return [Types::GetAutomationRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutomationRuleResponse#rule_arn #rule_arn} => String
    #   * {Types::GetAutomationRuleResponse#rule_id #rule_id} => String
    #   * {Types::GetAutomationRuleResponse#name #name} => String
    #   * {Types::GetAutomationRuleResponse#description #description} => String
    #   * {Types::GetAutomationRuleResponse#rule_type #rule_type} => String
    #   * {Types::GetAutomationRuleResponse#rule_revision #rule_revision} => Integer
    #   * {Types::GetAutomationRuleResponse#account_id #account_id} => String
    #   * {Types::GetAutomationRuleResponse#organization_configuration #organization_configuration} => Types::OrganizationConfiguration
    #   * {Types::GetAutomationRuleResponse#priority #priority} => String
    #   * {Types::GetAutomationRuleResponse#recommended_action_types #recommended_action_types} => Array&lt;String&gt;
    #   * {Types::GetAutomationRuleResponse#criteria #criteria} => Types::Criteria
    #   * {Types::GetAutomationRuleResponse#schedule #schedule} => Types::Schedule
    #   * {Types::GetAutomationRuleResponse#status #status} => String
    #   * {Types::GetAutomationRuleResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::GetAutomationRuleResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::GetAutomationRuleResponse#last_updated_timestamp #last_updated_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_automation_rule({
    #     rule_arn: "RuleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_arn #=> String
    #   resp.rule_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.rule_type #=> String, one of "OrganizationRule", "AccountRule"
    #   resp.rule_revision #=> Integer
    #   resp.account_id #=> String
    #   resp.organization_configuration.rule_apply_order #=> String, one of "BeforeAccountRules", "AfterAccountRules"
    #   resp.organization_configuration.account_ids #=> Array
    #   resp.organization_configuration.account_ids[0] #=> String
    #   resp.priority #=> String
    #   resp.recommended_action_types #=> Array
    #   resp.recommended_action_types[0] #=> String, one of "SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"
    #   resp.criteria.region #=> Array
    #   resp.criteria.region[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.region[0].values #=> Array
    #   resp.criteria.region[0].values[0] #=> String
    #   resp.criteria.resource_arn #=> Array
    #   resp.criteria.resource_arn[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.resource_arn[0].values #=> Array
    #   resp.criteria.resource_arn[0].values[0] #=> String
    #   resp.criteria.ebs_volume_type #=> Array
    #   resp.criteria.ebs_volume_type[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.ebs_volume_type[0].values #=> Array
    #   resp.criteria.ebs_volume_type[0].values[0] #=> String
    #   resp.criteria.ebs_volume_size_in_gib #=> Array
    #   resp.criteria.ebs_volume_size_in_gib[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.ebs_volume_size_in_gib[0].values #=> Array
    #   resp.criteria.ebs_volume_size_in_gib[0].values[0] #=> Integer
    #   resp.criteria.estimated_monthly_savings #=> Array
    #   resp.criteria.estimated_monthly_savings[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.estimated_monthly_savings[0].values #=> Array
    #   resp.criteria.estimated_monthly_savings[0].values[0] #=> Float
    #   resp.criteria.resource_tag #=> Array
    #   resp.criteria.resource_tag[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.resource_tag[0].key #=> String
    #   resp.criteria.resource_tag[0].values #=> Array
    #   resp.criteria.resource_tag[0].values[0] #=> String
    #   resp.criteria.look_back_period_in_days #=> Array
    #   resp.criteria.look_back_period_in_days[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.look_back_period_in_days[0].values #=> Array
    #   resp.criteria.look_back_period_in_days[0].values[0] #=> Integer
    #   resp.criteria.restart_needed #=> Array
    #   resp.criteria.restart_needed[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.restart_needed[0].values #=> Array
    #   resp.criteria.restart_needed[0].values[0] #=> String
    #   resp.schedule.schedule_expression #=> String
    #   resp.schedule.schedule_expression_timezone #=> String
    #   resp.schedule.execution_window_in_minutes #=> Integer
    #   resp.status #=> String, one of "Active", "Inactive"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.created_timestamp #=> Time
    #   resp.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/GetAutomationRule AWS API Documentation
    #
    # @overload get_automation_rule(params = {})
    # @param [Hash] params ({})
    def get_automation_rule(params = {}, options = {})
      req = build_request(:get_automation_rule, params)
      req.send_request(options)
    end

    # Retrieves the current enrollment configuration for Compute Optimizer
    # Automation.
    #
    # @return [Types::GetEnrollmentConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnrollmentConfigurationResponse#status #status} => String
    #   * {Types::GetEnrollmentConfigurationResponse#status_reason #status_reason} => String
    #   * {Types::GetEnrollmentConfigurationResponse#organization_rule_mode #organization_rule_mode} => String
    #   * {Types::GetEnrollmentConfigurationResponse#last_updated_timestamp #last_updated_timestamp} => Time
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Active", "Inactive", "Pending", "Failed"
    #   resp.status_reason #=> String
    #   resp.organization_rule_mode #=> String, one of "AnyAllowed", "NoneAllowed"
    #   resp.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/GetEnrollmentConfiguration AWS API Documentation
    #
    # @overload get_enrollment_configuration(params = {})
    # @param [Hash] params ({})
    def get_enrollment_configuration(params = {}, options = {})
      req = build_request(:get_enrollment_configuration, params)
      req.send_request(options)
    end

    # Lists the accounts in your organization that are enrolled in Compute
    # Optimizer and whether they have enabled Automation.
    #
    # <note markdown="1"> Only the management account or a delegated administrator can perform
    # this action.
    #
    #  </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountsResponse#accounts #accounts} => Array&lt;Types::AccountInfo&gt;
    #   * {Types::ListAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].status #=> String, one of "Active", "Inactive", "Pending", "Failed"
    #   resp.accounts[0].organization_rule_mode #=> String, one of "AnyAllowed", "NoneAllowed"
    #   resp.accounts[0].status_reason #=> String
    #   resp.accounts[0].last_updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAccounts AWS API Documentation
    #
    # @overload list_accounts(params = {})
    # @param [Hash] params ({})
    def list_accounts(params = {}, options = {})
      req = build_request(:list_accounts, params)
      req.send_request(options)
    end

    # Lists the steps for a specific automation event. You can only list
    # steps for events created within the past year.
    #
    # @option params [required, String] :event_id
    #   The ID of the automation event.
    #
    # @option params [Integer] :max_results
    #   The maximum number of automation event steps to return in a single
    #   response. Valid range is 1-1000.
    #
    # @option params [String] :next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #
    # @return [Types::ListAutomationEventStepsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutomationEventStepsResponse#automation_event_steps #automation_event_steps} => Array&lt;Types::AutomationEventStep&gt;
    #   * {Types::ListAutomationEventStepsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_automation_event_steps({
    #     event_id: "EventId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.automation_event_steps #=> Array
    #   resp.automation_event_steps[0].event_id #=> String
    #   resp.automation_event_steps[0].step_id #=> String
    #   resp.automation_event_steps[0].step_type #=> String, one of "CreateEbsSnapshot", "DeleteEbsVolume", "ModifyEbsVolume", "CreateEbsVolume"
    #   resp.automation_event_steps[0].step_status #=> String, one of "Ready", "InProgress", "Complete", "Failed"
    #   resp.automation_event_steps[0].resource_id #=> String
    #   resp.automation_event_steps[0].start_timestamp #=> Time
    #   resp.automation_event_steps[0].completed_timestamp #=> Time
    #   resp.automation_event_steps[0].estimated_monthly_savings.currency #=> String
    #   resp.automation_event_steps[0].estimated_monthly_savings.before_discount_savings #=> Float
    #   resp.automation_event_steps[0].estimated_monthly_savings.after_discount_savings #=> Float
    #   resp.automation_event_steps[0].estimated_monthly_savings.savings_estimation_mode #=> String, one of "BeforeDiscount", "AfterDiscount"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationEventSteps AWS API Documentation
    #
    # @overload list_automation_event_steps(params = {})
    # @param [Hash] params ({})
    def list_automation_event_steps(params = {}, options = {})
      req = build_request(:list_automation_event_steps, params)
      req.send_request(options)
    end

    # Provides a summary of automation events based on specified filters.
    # Only events created within the past year will be included in the
    # summary.
    #
    # @option params [Array<Types::AutomationEventFilter>] :filters
    #   The filters to apply to the list of automation event summaries.
    #
    # @option params [String] :start_date_inclusive
    #   The start date for filtering automation event summaries, inclusive.
    #   Events created on or after this date will be included.
    #
    # @option params [String] :end_date_exclusive
    #   The end date for filtering automation event summaries, exclusive.
    #   Events created before this date will be included.
    #
    # @option params [Integer] :max_results
    #   The maximum number of automation event summaries to return in a single
    #   response. Valid range is 1-1000.
    #
    # @option params [String] :next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #
    # @return [Types::ListAutomationEventSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutomationEventSummariesResponse#automation_event_summaries #automation_event_summaries} => Array&lt;Types::AutomationEventSummary&gt;
    #   * {Types::ListAutomationEventSummariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_automation_event_summaries({
    #     filters: [
    #       {
    #         name: "AccountId", # required, accepts AccountId, ResourceType, EventType, EventStatus
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     start_date_inclusive: "String",
    #     end_date_exclusive: "String",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.automation_event_summaries #=> Array
    #   resp.automation_event_summaries[0].key #=> String
    #   resp.automation_event_summaries[0].dimensions #=> Array
    #   resp.automation_event_summaries[0].dimensions[0].key #=> String, one of "EventStatus"
    #   resp.automation_event_summaries[0].dimensions[0].value #=> String
    #   resp.automation_event_summaries[0].time_period.start_time_inclusive #=> Time
    #   resp.automation_event_summaries[0].time_period.end_time_exclusive #=> Time
    #   resp.automation_event_summaries[0].total.automation_event_count #=> Integer
    #   resp.automation_event_summaries[0].total.estimated_monthly_savings.currency #=> String
    #   resp.automation_event_summaries[0].total.estimated_monthly_savings.before_discount_savings #=> Float
    #   resp.automation_event_summaries[0].total.estimated_monthly_savings.after_discount_savings #=> Float
    #   resp.automation_event_summaries[0].total.estimated_monthly_savings.savings_estimation_mode #=> String, one of "BeforeDiscount", "AfterDiscount"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationEventSummaries AWS API Documentation
    #
    # @overload list_automation_event_summaries(params = {})
    # @param [Hash] params ({})
    def list_automation_event_summaries(params = {}, options = {})
      req = build_request(:list_automation_event_summaries, params)
      req.send_request(options)
    end

    # Lists automation events based on specified filters. You can retrieve
    # events that were created within the past year.
    #
    # @option params [Array<Types::AutomationEventFilter>] :filters
    #   The filters to apply to the list of automation events.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time_inclusive
    #   The start of the time range to query for events.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time_exclusive
    #   The end of the time range to query for events.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListAutomationEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutomationEventsResponse#automation_events #automation_events} => Array&lt;Types::AutomationEvent&gt;
    #   * {Types::ListAutomationEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_automation_events({
    #     filters: [
    #       {
    #         name: "AccountId", # required, accepts AccountId, ResourceType, EventType, EventStatus
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     start_time_inclusive: Time.now,
    #     end_time_exclusive: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.automation_events #=> Array
    #   resp.automation_events[0].event_id #=> String
    #   resp.automation_events[0].event_description #=> String
    #   resp.automation_events[0].event_type #=> String, one of "SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"
    #   resp.automation_events[0].event_status #=> String, one of "Ready", "InProgress", "Complete", "Failed", "Cancelled", "RollbackReady", "RollbackInProgress", "RollbackComplete", "RollbackFailed"
    #   resp.automation_events[0].event_status_reason #=> String
    #   resp.automation_events[0].resource_arn #=> String
    #   resp.automation_events[0].resource_id #=> String
    #   resp.automation_events[0].recommended_action_id #=> String
    #   resp.automation_events[0].account_id #=> String
    #   resp.automation_events[0].region #=> String
    #   resp.automation_events[0].rule_id #=> String
    #   resp.automation_events[0].resource_type #=> String, one of "EbsVolume"
    #   resp.automation_events[0].created_timestamp #=> Time
    #   resp.automation_events[0].completed_timestamp #=> Time
    #   resp.automation_events[0].estimated_monthly_savings.currency #=> String
    #   resp.automation_events[0].estimated_monthly_savings.before_discount_savings #=> Float
    #   resp.automation_events[0].estimated_monthly_savings.after_discount_savings #=> Float
    #   resp.automation_events[0].estimated_monthly_savings.savings_estimation_mode #=> String, one of "BeforeDiscount", "AfterDiscount"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationEvents AWS API Documentation
    #
    # @overload list_automation_events(params = {})
    # @param [Hash] params ({})
    def list_automation_events(params = {}, options = {})
      req = build_request(:list_automation_events, params)
      req.send_request(options)
    end

    # Returns a preview of the recommended actions that match your
    # Automation rule's configuration and criteria.
    #
    # @option params [required, String] :rule_type
    #   The type of rule.
    #
    #   <note markdown="1"> Only the management account or a delegated administrator can set the
    #   ruleType to be OrganizationRule.
    #
    #    </note>
    #
    # @option params [Types::OrganizationScope] :organization_scope
    #   The organizational scope for the rule preview.
    #
    # @option params [required, Array<String>] :recommended_action_types
    #   The types of recommended actions to include in the preview.
    #
    # @option params [Types::Criteria] :criteria
    #   A set of conditions that specify which recommended action qualify for
    #   implementation. When a rule is active and a recommended action matches
    #   these criteria, Compute Optimizer implements the action at the
    #   scheduled run time.
    #
    # @option params [Integer] :max_results
    #   The maximum number of automation rule preview results to return in a
    #   single response. Valid range is 1-1000.
    #
    # @option params [String] :next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #
    # @return [Types::ListAutomationRulePreviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutomationRulePreviewResponse#preview_results #preview_results} => Array&lt;Types::PreviewResult&gt;
    #   * {Types::ListAutomationRulePreviewResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_automation_rule_preview({
    #     rule_type: "OrganizationRule", # required, accepts OrganizationRule, AccountRule
    #     organization_scope: {
    #       account_ids: ["AccountId"],
    #     },
    #     recommended_action_types: ["SnapshotAndDeleteUnattachedEbsVolume"], # required, accepts SnapshotAndDeleteUnattachedEbsVolume, UpgradeEbsVolumeType
    #     criteria: {
    #       region: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       resource_arn: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       ebs_volume_type: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       ebs_volume_size_in_gib: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: [1],
    #         },
    #       ],
    #       estimated_monthly_savings: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: [1.0],
    #         },
    #       ],
    #       resource_tag: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           key: "StringCriteriaValue",
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       look_back_period_in_days: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: [1],
    #         },
    #       ],
    #       restart_needed: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.preview_results #=> Array
    #   resp.preview_results[0].recommended_action_id #=> String
    #   resp.preview_results[0].resource_arn #=> String
    #   resp.preview_results[0].resource_id #=> String
    #   resp.preview_results[0].account_id #=> String
    #   resp.preview_results[0].region #=> String
    #   resp.preview_results[0].resource_type #=> String, one of "EbsVolume"
    #   resp.preview_results[0].look_back_period_in_days #=> Integer
    #   resp.preview_results[0].recommended_action_type #=> String, one of "SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"
    #   resp.preview_results[0].current_resource_summary #=> String
    #   resp.preview_results[0].current_resource_details.ebs_volume.configuration.type #=> String
    #   resp.preview_results[0].current_resource_details.ebs_volume.configuration.size_in_gib #=> Integer
    #   resp.preview_results[0].current_resource_details.ebs_volume.configuration.iops #=> Integer
    #   resp.preview_results[0].current_resource_details.ebs_volume.configuration.throughput #=> Integer
    #   resp.preview_results[0].recommended_resource_summary #=> String
    #   resp.preview_results[0].recommended_resource_details.ebs_volume.configuration.type #=> String
    #   resp.preview_results[0].recommended_resource_details.ebs_volume.configuration.size_in_gib #=> Integer
    #   resp.preview_results[0].recommended_resource_details.ebs_volume.configuration.iops #=> Integer
    #   resp.preview_results[0].recommended_resource_details.ebs_volume.configuration.throughput #=> Integer
    #   resp.preview_results[0].restart_needed #=> Boolean
    #   resp.preview_results[0].estimated_monthly_savings.currency #=> String
    #   resp.preview_results[0].estimated_monthly_savings.before_discount_savings #=> Float
    #   resp.preview_results[0].estimated_monthly_savings.after_discount_savings #=> Float
    #   resp.preview_results[0].estimated_monthly_savings.savings_estimation_mode #=> String, one of "BeforeDiscount", "AfterDiscount"
    #   resp.preview_results[0].resource_tags #=> Array
    #   resp.preview_results[0].resource_tags[0].key #=> String
    #   resp.preview_results[0].resource_tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationRulePreview AWS API Documentation
    #
    # @overload list_automation_rule_preview(params = {})
    # @param [Hash] params ({})
    def list_automation_rule_preview(params = {}, options = {})
      req = build_request(:list_automation_rule_preview, params)
      req.send_request(options)
    end

    # Returns a summary of the recommended actions that match your rule
    # preview configuration and criteria.
    #
    # @option params [required, String] :rule_type
    #   The type of rule.
    #
    # @option params [Types::OrganizationScope] :organization_scope
    #   The organizational scope for the rule preview.
    #
    # @option params [required, Array<String>] :recommended_action_types
    #   The types of recommended actions to include in the preview.
    #
    # @option params [Types::Criteria] :criteria
    #   A set of conditions that specify which recommended action qualify for
    #   implementation. When a rule is active and a recommended action matches
    #   these criteria, Compute Optimizer implements the action at the
    #   scheduled run time. You can specify up to 20 conditions per filter
    #   criteria and 20 values per condition.
    #
    # @option params [Integer] :max_results
    #   The maximum number of automation rule preview summaries to return in a
    #   single response. Valid range is 1-1000.
    #
    # @option params [String] :next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #
    # @return [Types::ListAutomationRulePreviewSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutomationRulePreviewSummariesResponse#preview_result_summaries #preview_result_summaries} => Array&lt;Types::PreviewResultSummary&gt;
    #   * {Types::ListAutomationRulePreviewSummariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_automation_rule_preview_summaries({
    #     rule_type: "OrganizationRule", # required, accepts OrganizationRule, AccountRule
    #     organization_scope: {
    #       account_ids: ["AccountId"],
    #     },
    #     recommended_action_types: ["SnapshotAndDeleteUnattachedEbsVolume"], # required, accepts SnapshotAndDeleteUnattachedEbsVolume, UpgradeEbsVolumeType
    #     criteria: {
    #       region: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       resource_arn: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       ebs_volume_type: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       ebs_volume_size_in_gib: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: [1],
    #         },
    #       ],
    #       estimated_monthly_savings: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: [1.0],
    #         },
    #       ],
    #       resource_tag: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           key: "StringCriteriaValue",
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       look_back_period_in_days: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: [1],
    #         },
    #       ],
    #       restart_needed: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.preview_result_summaries #=> Array
    #   resp.preview_result_summaries[0].key #=> String
    #   resp.preview_result_summaries[0].total.recommended_action_count #=> Integer
    #   resp.preview_result_summaries[0].total.estimated_monthly_savings.currency #=> String
    #   resp.preview_result_summaries[0].total.estimated_monthly_savings.before_discount_savings #=> Float
    #   resp.preview_result_summaries[0].total.estimated_monthly_savings.after_discount_savings #=> Float
    #   resp.preview_result_summaries[0].total.estimated_monthly_savings.savings_estimation_mode #=> String, one of "BeforeDiscount", "AfterDiscount"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationRulePreviewSummaries AWS API Documentation
    #
    # @overload list_automation_rule_preview_summaries(params = {})
    # @param [Hash] params ({})
    def list_automation_rule_preview_summaries(params = {}, options = {})
      req = build_request(:list_automation_rule_preview_summaries, params)
      req.send_request(options)
    end

    # Lists the automation rules that match specified filters.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filters to apply to the list of automation rules.
    #
    # @option params [Integer] :max_results
    #   The maximum number of automation rules to return in a single response.
    #   Valid range is 1-1000.
    #
    # @option params [String] :next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #
    # @return [Types::ListAutomationRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAutomationRulesResponse#automation_rules #automation_rules} => Array&lt;Types::AutomationRule&gt;
    #   * {Types::ListAutomationRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_automation_rules({
    #     filters: [
    #       {
    #         name: "Name", # required, accepts Name, RecommendedActionType, Status, RuleType, OrganizationConfigurationRuleApplyOrder, AccountId
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.automation_rules #=> Array
    #   resp.automation_rules[0].rule_arn #=> String
    #   resp.automation_rules[0].rule_id #=> String
    #   resp.automation_rules[0].name #=> String
    #   resp.automation_rules[0].description #=> String
    #   resp.automation_rules[0].rule_type #=> String, one of "OrganizationRule", "AccountRule"
    #   resp.automation_rules[0].rule_revision #=> Integer
    #   resp.automation_rules[0].account_id #=> String
    #   resp.automation_rules[0].organization_configuration.rule_apply_order #=> String, one of "BeforeAccountRules", "AfterAccountRules"
    #   resp.automation_rules[0].organization_configuration.account_ids #=> Array
    #   resp.automation_rules[0].organization_configuration.account_ids[0] #=> String
    #   resp.automation_rules[0].priority #=> String
    #   resp.automation_rules[0].recommended_action_types #=> Array
    #   resp.automation_rules[0].recommended_action_types[0] #=> String, one of "SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"
    #   resp.automation_rules[0].schedule.schedule_expression #=> String
    #   resp.automation_rules[0].schedule.schedule_expression_timezone #=> String
    #   resp.automation_rules[0].schedule.execution_window_in_minutes #=> Integer
    #   resp.automation_rules[0].status #=> String, one of "Active", "Inactive"
    #   resp.automation_rules[0].created_timestamp #=> Time
    #   resp.automation_rules[0].last_updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListAutomationRules AWS API Documentation
    #
    # @overload list_automation_rules(params = {})
    # @param [Hash] params ({})
    def list_automation_rules(params = {}, options = {})
      req = build_request(:list_automation_rules, params)
      req.send_request(options)
    end

    # Provides a summary of recommended actions based on specified filters.
    #
    # <note markdown="1"> Management accounts and delegated administrators can retrieve
    # recommended actions that include associated member accounts. You can
    # associate a member account using `AssociateAccounts`.
    #
    #  </note>
    #
    # @option params [Array<Types::RecommendedActionFilter>] :filters
    #   A list of filters to apply when retrieving recommended action
    #   summaries. Filters can be based on resource type, action type, account
    #   ID, and other criteria.
    #
    # @option params [Integer] :max_results
    #   The maximum number of recommended action summaries to return in a
    #   single response. Valid range is 1-1000.
    #
    # @option params [String] :next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #
    # @return [Types::ListRecommendedActionSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendedActionSummariesResponse#recommended_action_summaries #recommended_action_summaries} => Array&lt;Types::RecommendedActionSummary&gt;
    #   * {Types::ListRecommendedActionSummariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommended_action_summaries({
    #     filters: [
    #       {
    #         name: "ResourceType", # required, accepts ResourceType, RecommendedActionType, ResourceId, LookBackPeriodInDays, CurrentResourceDetailsEbsVolumeType, ResourceTagsKey, ResourceTagsValue, AccountId, RestartNeeded
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.recommended_action_summaries #=> Array
    #   resp.recommended_action_summaries[0].key #=> String
    #   resp.recommended_action_summaries[0].total.recommended_action_count #=> Integer
    #   resp.recommended_action_summaries[0].total.estimated_monthly_savings.currency #=> String
    #   resp.recommended_action_summaries[0].total.estimated_monthly_savings.before_discount_savings #=> Float
    #   resp.recommended_action_summaries[0].total.estimated_monthly_savings.after_discount_savings #=> Float
    #   resp.recommended_action_summaries[0].total.estimated_monthly_savings.savings_estimation_mode #=> String, one of "BeforeDiscount", "AfterDiscount"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListRecommendedActionSummaries AWS API Documentation
    #
    # @overload list_recommended_action_summaries(params = {})
    # @param [Hash] params ({})
    def list_recommended_action_summaries(params = {}, options = {})
      req = build_request(:list_recommended_action_summaries, params)
      req.send_request(options)
    end

    # Lists the recommended actions based that match specified filters.
    #
    # <note markdown="1"> Management accounts and delegated administrators can retrieve
    # recommended actions that include associated member accounts. You can
    # associate a member account using `AssociateAccounts`.
    #
    #  </note>
    #
    # @option params [Array<Types::RecommendedActionFilter>] :filters
    #   The filters to apply to the list of recommended actions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of recommended actions to return in a single
    #   response. Valid range is 1-1000.
    #
    # @option params [String] :next_token
    #   A token used for pagination to retrieve the next set of results when
    #   the response is truncated.
    #
    # @return [Types::ListRecommendedActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendedActionsResponse#recommended_actions #recommended_actions} => Array&lt;Types::RecommendedAction&gt;
    #   * {Types::ListRecommendedActionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommended_actions({
    #     filters: [
    #       {
    #         name: "ResourceType", # required, accepts ResourceType, RecommendedActionType, ResourceId, LookBackPeriodInDays, CurrentResourceDetailsEbsVolumeType, ResourceTagsKey, ResourceTagsValue, AccountId, RestartNeeded
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.recommended_actions #=> Array
    #   resp.recommended_actions[0].recommended_action_id #=> String
    #   resp.recommended_actions[0].resource_arn #=> String
    #   resp.recommended_actions[0].resource_id #=> String
    #   resp.recommended_actions[0].account_id #=> String
    #   resp.recommended_actions[0].region #=> String
    #   resp.recommended_actions[0].resource_type #=> String, one of "EbsVolume"
    #   resp.recommended_actions[0].look_back_period_in_days #=> Integer
    #   resp.recommended_actions[0].recommended_action_type #=> String, one of "SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"
    #   resp.recommended_actions[0].current_resource_summary #=> String
    #   resp.recommended_actions[0].current_resource_details.ebs_volume.configuration.type #=> String
    #   resp.recommended_actions[0].current_resource_details.ebs_volume.configuration.size_in_gib #=> Integer
    #   resp.recommended_actions[0].current_resource_details.ebs_volume.configuration.iops #=> Integer
    #   resp.recommended_actions[0].current_resource_details.ebs_volume.configuration.throughput #=> Integer
    #   resp.recommended_actions[0].recommended_resource_summary #=> String
    #   resp.recommended_actions[0].recommended_resource_details.ebs_volume.configuration.type #=> String
    #   resp.recommended_actions[0].recommended_resource_details.ebs_volume.configuration.size_in_gib #=> Integer
    #   resp.recommended_actions[0].recommended_resource_details.ebs_volume.configuration.iops #=> Integer
    #   resp.recommended_actions[0].recommended_resource_details.ebs_volume.configuration.throughput #=> Integer
    #   resp.recommended_actions[0].restart_needed #=> Boolean
    #   resp.recommended_actions[0].estimated_monthly_savings.currency #=> String
    #   resp.recommended_actions[0].estimated_monthly_savings.before_discount_savings #=> Float
    #   resp.recommended_actions[0].estimated_monthly_savings.after_discount_savings #=> Float
    #   resp.recommended_actions[0].estimated_monthly_savings.savings_estimation_mode #=> String, one of "BeforeDiscount", "AfterDiscount"
    #   resp.recommended_actions[0].resource_tags #=> Array
    #   resp.recommended_actions[0].resource_tags[0].key #=> String
    #   resp.recommended_actions[0].resource_tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListRecommendedActions AWS API Documentation
    #
    # @overload list_recommended_actions(params = {})
    # @param [Hash] params ({})
    def list_recommended_actions(params = {}, options = {})
      req = build_request(:list_recommended_actions, params)
      req.send_request(options)
    end

    # Lists the tags for a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to list tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "RuleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Initiates a rollback for a completed automation event.
    #
    # <note markdown="1"> Management accounts and delegated administrators can only initiate a
    # rollback for events belonging to associated member accounts. You can
    # associate a member account using `AssociateAccounts`.
    #
    #  </note>
    #
    # @option params [required, String] :event_id
    #   The ID of the automation event to roll back.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Must be 1-64 characters long and contain
    #   only alphanumeric characters, underscores, and hyphens.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::RollbackAutomationEventResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RollbackAutomationEventResponse#event_id #event_id} => String
    #   * {Types::RollbackAutomationEventResponse#event_status #event_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rollback_automation_event({
    #     event_id: "EventId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.event_id #=> String
    #   resp.event_status #=> String, one of "Ready", "InProgress", "Complete", "Failed", "Cancelled", "RollbackReady", "RollbackInProgress", "RollbackComplete", "RollbackFailed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/RollbackAutomationEvent AWS API Documentation
    #
    # @overload rollback_automation_event(params = {})
    # @param [Hash] params ({})
    def rollback_automation_event(params = {}, options = {})
      req = build_request(:rollback_automation_event, params)
      req.send_request(options)
    end

    # Initiates a one-time, on-demand automation for the specified
    # recommended action.
    #
    # <note markdown="1"> Management accounts and delegated administrators can only initiate
    # recommended actions for associated member accounts. You can associate
    # a member account using `AssociateAccounts`.
    #
    #  </note>
    #
    # @option params [required, String] :recommended_action_id
    #   The ID of the recommended action to automate.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Must be 1-64 characters long and contain
    #   only alphanumeric characters, underscores, and hyphens.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartAutomationEventResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAutomationEventResponse#recommended_action_id #recommended_action_id} => String
    #   * {Types::StartAutomationEventResponse#event_id #event_id} => String
    #   * {Types::StartAutomationEventResponse#event_status #event_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_automation_event({
    #     recommended_action_id: "RecommendedActionId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.recommended_action_id #=> String
    #   resp.event_id #=> String
    #   resp.event_status #=> String, one of "Ready", "InProgress", "Complete", "Failed", "Cancelled", "RollbackReady", "RollbackInProgress", "RollbackComplete", "RollbackFailed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/StartAutomationEvent AWS API Documentation
    #
    # @overload start_automation_event(params = {})
    # @param [Hash] params ({})
    def start_automation_event(params = {}, options = {})
      req = build_request(:start_automation_event, params)
      req.send_request(options)
    end

    # Adds tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to tag.
    #
    # @option params [required, Integer] :rule_revision
    #   The revision number of the automation rule to tag. This ensures
    #   you're tagging the correct version of the rule.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add to the resource.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Must be 1-64 characters long and contain
    #   only alphanumeric characters, underscores, and hyphens.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "RuleArn", # required
    #     rule_revision: 1, # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to untag.
    #
    # @option params [required, Integer] :rule_revision
    #   The revision number of the automation rule to untag. This ensures
    #   you're untagging the correct version of the rule.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove from the resource.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Must be 1-64 characters long and contain
    #   only alphanumeric characters, underscores, and hyphens.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "RuleArn", # required
    #     rule_revision: 1, # required
    #     tag_keys: ["String"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing automation rule.
    #
    # @option params [required, String] :rule_arn
    #   The ARN of the rule to update.
    #
    # @option params [required, Integer] :rule_revision
    #   The revision number of the rule to update.
    #
    # @option params [String] :name
    #   The updated name of the automation rule. Must be 1-128 characters long
    #   and contain only alphanumeric characters, underscores, and hyphens.
    #
    # @option params [String] :description
    #   The updated description of the automation rule. Can be up to 1024
    #   characters long and contain alphanumeric characters, underscores,
    #   hyphens, spaces, and certain special characters.
    #
    # @option params [String] :rule_type
    #   The updated type of automation rule. Can be either OrganizationRule
    #   for organization-wide rules or AccountRule for account-specific rules.
    #
    # @option params [Types::OrganizationConfiguration] :organization_configuration
    #   Updated configuration settings for organization-wide rules, including
    #   rule application order and target account IDs.
    #
    # @option params [String] :priority
    #   The updated priority level of the automation rule, used to determine
    #   execution order when multiple rules apply to the same resource.
    #
    # @option params [Array<String>] :recommended_action_types
    #   Updated list of recommended action types that this rule can execute,
    #   such as SnapshotAndDeleteUnattachedEbsVolume or UpgradeEbsVolumeType.
    #
    # @option params [Types::Criteria] :criteria
    #   A set of conditions that specify which recommended action qualify for
    #   implementation. When a rule is active and a recommended action matches
    #   these criteria, Compute Optimizer implements the action at the
    #   scheduled run time. You can specify up to 20 conditions per filter
    #   criteria and 20 values per condition.
    #
    # @option params [Types::Schedule] :schedule
    #   The updated schedule configuration for when the automation rule should
    #   execute, including cron expression, timezone, and execution window.
    #
    # @option params [String] :status
    #   The updated status of the automation rule. Can be Active or Inactive.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Must be 1-64 characters long and contain
    #   only alphanumeric characters, underscores, and hyphens.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateAutomationRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAutomationRuleResponse#rule_arn #rule_arn} => String
    #   * {Types::UpdateAutomationRuleResponse#rule_revision #rule_revision} => Integer
    #   * {Types::UpdateAutomationRuleResponse#name #name} => String
    #   * {Types::UpdateAutomationRuleResponse#description #description} => String
    #   * {Types::UpdateAutomationRuleResponse#rule_type #rule_type} => String
    #   * {Types::UpdateAutomationRuleResponse#organization_configuration #organization_configuration} => Types::OrganizationConfiguration
    #   * {Types::UpdateAutomationRuleResponse#priority #priority} => String
    #   * {Types::UpdateAutomationRuleResponse#recommended_action_types #recommended_action_types} => Array&lt;String&gt;
    #   * {Types::UpdateAutomationRuleResponse#criteria #criteria} => Types::Criteria
    #   * {Types::UpdateAutomationRuleResponse#schedule #schedule} => Types::Schedule
    #   * {Types::UpdateAutomationRuleResponse#status #status} => String
    #   * {Types::UpdateAutomationRuleResponse#created_timestamp #created_timestamp} => Time
    #   * {Types::UpdateAutomationRuleResponse#last_updated_timestamp #last_updated_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_automation_rule({
    #     rule_arn: "RuleArn", # required
    #     rule_revision: 1, # required
    #     name: "RuleName",
    #     description: "RuleDescription",
    #     rule_type: "OrganizationRule", # accepts OrganizationRule, AccountRule
    #     organization_configuration: {
    #       rule_apply_order: "BeforeAccountRules", # accepts BeforeAccountRules, AfterAccountRules
    #       account_ids: ["AccountId"],
    #     },
    #     priority: "String",
    #     recommended_action_types: ["SnapshotAndDeleteUnattachedEbsVolume"], # accepts SnapshotAndDeleteUnattachedEbsVolume, UpgradeEbsVolumeType
    #     criteria: {
    #       region: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       resource_arn: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       ebs_volume_type: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       ebs_volume_size_in_gib: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: [1],
    #         },
    #       ],
    #       estimated_monthly_savings: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: [1.0],
    #         },
    #       ],
    #       resource_tag: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           key: "StringCriteriaValue",
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #       look_back_period_in_days: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: [1],
    #         },
    #       ],
    #       restart_needed: [
    #         {
    #           comparison: "StringEquals", # accepts StringEquals, StringNotEquals, StringEqualsIgnoreCase, StringNotEqualsIgnoreCase, StringLike, StringNotLike, NumericEquals, NumericNotEquals, NumericLessThan, NumericLessThanEquals, NumericGreaterThan, NumericGreaterThanEquals
    #           values: ["StringCriteriaValue"],
    #         },
    #       ],
    #     },
    #     schedule: {
    #       schedule_expression: "String",
    #       schedule_expression_timezone: "String",
    #       execution_window_in_minutes: 1,
    #     },
    #     status: "Active", # accepts Active, Inactive
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_arn #=> String
    #   resp.rule_revision #=> Integer
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.rule_type #=> String, one of "OrganizationRule", "AccountRule"
    #   resp.organization_configuration.rule_apply_order #=> String, one of "BeforeAccountRules", "AfterAccountRules"
    #   resp.organization_configuration.account_ids #=> Array
    #   resp.organization_configuration.account_ids[0] #=> String
    #   resp.priority #=> String
    #   resp.recommended_action_types #=> Array
    #   resp.recommended_action_types[0] #=> String, one of "SnapshotAndDeleteUnattachedEbsVolume", "UpgradeEbsVolumeType"
    #   resp.criteria.region #=> Array
    #   resp.criteria.region[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.region[0].values #=> Array
    #   resp.criteria.region[0].values[0] #=> String
    #   resp.criteria.resource_arn #=> Array
    #   resp.criteria.resource_arn[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.resource_arn[0].values #=> Array
    #   resp.criteria.resource_arn[0].values[0] #=> String
    #   resp.criteria.ebs_volume_type #=> Array
    #   resp.criteria.ebs_volume_type[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.ebs_volume_type[0].values #=> Array
    #   resp.criteria.ebs_volume_type[0].values[0] #=> String
    #   resp.criteria.ebs_volume_size_in_gib #=> Array
    #   resp.criteria.ebs_volume_size_in_gib[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.ebs_volume_size_in_gib[0].values #=> Array
    #   resp.criteria.ebs_volume_size_in_gib[0].values[0] #=> Integer
    #   resp.criteria.estimated_monthly_savings #=> Array
    #   resp.criteria.estimated_monthly_savings[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.estimated_monthly_savings[0].values #=> Array
    #   resp.criteria.estimated_monthly_savings[0].values[0] #=> Float
    #   resp.criteria.resource_tag #=> Array
    #   resp.criteria.resource_tag[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.resource_tag[0].key #=> String
    #   resp.criteria.resource_tag[0].values #=> Array
    #   resp.criteria.resource_tag[0].values[0] #=> String
    #   resp.criteria.look_back_period_in_days #=> Array
    #   resp.criteria.look_back_period_in_days[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.look_back_period_in_days[0].values #=> Array
    #   resp.criteria.look_back_period_in_days[0].values[0] #=> Integer
    #   resp.criteria.restart_needed #=> Array
    #   resp.criteria.restart_needed[0].comparison #=> String, one of "StringEquals", "StringNotEquals", "StringEqualsIgnoreCase", "StringNotEqualsIgnoreCase", "StringLike", "StringNotLike", "NumericEquals", "NumericNotEquals", "NumericLessThan", "NumericLessThanEquals", "NumericGreaterThan", "NumericGreaterThanEquals"
    #   resp.criteria.restart_needed[0].values #=> Array
    #   resp.criteria.restart_needed[0].values[0] #=> String
    #   resp.schedule.schedule_expression #=> String
    #   resp.schedule.schedule_expression_timezone #=> String
    #   resp.schedule.execution_window_in_minutes #=> Integer
    #   resp.status #=> String, one of "Active", "Inactive"
    #   resp.created_timestamp #=> Time
    #   resp.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/UpdateAutomationRule AWS API Documentation
    #
    # @overload update_automation_rule(params = {})
    # @param [Hash] params ({})
    def update_automation_rule(params = {}, options = {})
      req = build_request(:update_automation_rule, params)
      req.send_request(options)
    end

    # Updates your account’s Compute Optimizer Automation enrollment
    # configuration.
    #
    # @option params [required, String] :status
    #   The desired enrollment status.
    #
    #   * Active - Enables the Automation feature for your account.
    #
    #   * Inactive - Disables the Automation feature for your account and
    #     stops all of your automation rules. If you opt in again later, all
    #     rules will be inactive, and you must enable the rules you want to
    #     run. You must wait at least 24 hours after opting out to opt in
    #     again.
    #
    #   <note markdown="1"> The `Pending` and `Failed` options cannot be used to update the
    #   enrollment status of an account. They are returned in the response of
    #   a request to update the enrollment status of an account.
    #
    #    If you are a member account, your account must be disassociated from
    #   your organization’s management account before you can disable
    #   Automation. Contact your administrator to make this change.
    #
    #    </note>
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Must be 1-64 characters long and contain
    #   only alphanumeric characters, underscores, and hyphens.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateEnrollmentConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnrollmentConfigurationResponse#status #status} => String
    #   * {Types::UpdateEnrollmentConfigurationResponse#status_reason #status_reason} => String
    #   * {Types::UpdateEnrollmentConfigurationResponse#last_updated_timestamp #last_updated_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_enrollment_configuration({
    #     status: "Active", # required, accepts Active, Inactive, Pending, Failed
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Active", "Inactive", "Pending", "Failed"
    #   resp.status_reason #=> String
    #   resp.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-automation-2025-09-22/UpdateEnrollmentConfiguration AWS API Documentation
    #
    # @overload update_enrollment_configuration(params = {})
    # @param [Hash] params ({})
    def update_enrollment_configuration(params = {}, options = {})
      req = build_request(:update_enrollment_configuration, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ComputeOptimizerAutomation')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-computeoptimizerautomation'
      context[:gem_version] = '1.0.0'
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
