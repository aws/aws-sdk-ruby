# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:inspector2)

module Aws::Inspector2
  # An API client for Inspector2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Inspector2::Client.new(
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

    @identifier = :inspector2

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
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Inspector2::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
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
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
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
    #   @option options [Aws::Inspector2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Inspector2::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Associates an Amazon Web Services account with an Amazon Inspector
    # delegated administrator. An HTTP 200 response indicates the
    # association was successfully started, but doesn’t indicate whether it
    # was completed. You can check if the association completed by using
    # [ListMembers][1] for multiple accounts or [GetMembers][2] for a single
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/inspector/v2/APIReference/API_ListMembers.html
    # [2]: https://docs.aws.amazon.com/inspector/v2/APIReference/API_GetMember.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID of the member account to be
    #   associated.
    #
    # @return [Types::AssociateMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateMemberResponse#account_id #account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_member({
    #     account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/AssociateMember AWS API Documentation
    #
    # @overload associate_member(params = {})
    # @param [Hash] params ({})
    def associate_member(params = {}, options = {})
      req = build_request(:associate_member, params)
      req.send_request(options)
    end

    # Retrieves the Amazon Inspector status of multiple Amazon Web Services
    # accounts within your environment.
    #
    # @option params [Array<String>] :account_ids
    #   The 12-digit Amazon Web Services account IDs of the accounts to
    #   retrieve Amazon Inspector status for.
    #
    # @return [Types::BatchGetAccountStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetAccountStatusResponse#accounts #accounts} => Array&lt;Types::AccountState&gt;
    #   * {Types::BatchGetAccountStatusResponse#failed_accounts #failed_accounts} => Array&lt;Types::FailedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_account_status({
    #     account_ids: ["AccountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].resource_state.ec2.error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED"
    #   resp.accounts[0].resource_state.ec2.error_message #=> String
    #   resp.accounts[0].resource_state.ec2.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_state.ecr.error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED"
    #   resp.accounts[0].resource_state.ecr.error_message #=> String
    #   resp.accounts[0].resource_state.ecr.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_state.lambda.error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED"
    #   resp.accounts[0].resource_state.lambda.error_message #=> String
    #   resp.accounts[0].resource_state.lambda.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_state.lambda_code.error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED"
    #   resp.accounts[0].resource_state.lambda_code.error_message #=> String
    #   resp.accounts[0].resource_state.lambda_code.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].state.error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED"
    #   resp.accounts[0].state.error_message #=> String
    #   resp.accounts[0].state.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts #=> Array
    #   resp.failed_accounts[0].account_id #=> String
    #   resp.failed_accounts[0].error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED"
    #   resp.failed_accounts[0].error_message #=> String
    #   resp.failed_accounts[0].resource_status.ec2 #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.ecr #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.lambda #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.lambda_code #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetAccountStatus AWS API Documentation
    #
    # @overload batch_get_account_status(params = {})
    # @param [Hash] params ({})
    def batch_get_account_status(params = {}, options = {})
      req = build_request(:batch_get_account_status, params)
      req.send_request(options)
    end

    # Retrieves code snippets from findings that Amazon Inspector detected
    # code vulnerabilities in.
    #
    # @option params [required, Array<String>] :finding_arns
    #   An array of finding ARNs for the findings you want to retrieve code
    #   snippets from.
    #
    # @return [Types::BatchGetCodeSnippetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCodeSnippetResponse#code_snippet_results #code_snippet_results} => Array&lt;Types::CodeSnippetResult&gt;
    #   * {Types::BatchGetCodeSnippetResponse#errors #errors} => Array&lt;Types::CodeSnippetError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_code_snippet({
    #     finding_arns: ["FindingArn"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_snippet_results #=> Array
    #   resp.code_snippet_results[0].code_snippet #=> Array
    #   resp.code_snippet_results[0].code_snippet[0].content #=> String
    #   resp.code_snippet_results[0].code_snippet[0].line_number #=> Integer
    #   resp.code_snippet_results[0].end_line #=> Integer
    #   resp.code_snippet_results[0].finding_arn #=> String
    #   resp.code_snippet_results[0].start_line #=> Integer
    #   resp.code_snippet_results[0].suggested_fixes #=> Array
    #   resp.code_snippet_results[0].suggested_fixes[0].code #=> String
    #   resp.code_snippet_results[0].suggested_fixes[0].description #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].error_code #=> String, one of "INTERNAL_ERROR", "ACCESS_DENIED", "CODE_SNIPPET_NOT_FOUND", "INVALID_INPUT"
    #   resp.errors[0].error_message #=> String
    #   resp.errors[0].finding_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetCodeSnippet AWS API Documentation
    #
    # @overload batch_get_code_snippet(params = {})
    # @param [Hash] params ({})
    def batch_get_code_snippet(params = {}, options = {})
      req = build_request(:batch_get_code_snippet, params)
      req.send_request(options)
    end

    # Gets free trial status for multiple Amazon Web Services accounts.
    #
    # @option params [required, Array<String>] :account_ids
    #   The account IDs to get free trial status for.
    #
    # @return [Types::BatchGetFreeTrialInfoResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetFreeTrialInfoResponse#accounts #accounts} => Array&lt;Types::FreeTrialAccountInfo&gt;
    #   * {Types::BatchGetFreeTrialInfoResponse#failed_accounts #failed_accounts} => Array&lt;Types::FreeTrialInfoError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_free_trial_info({
    #     account_ids: ["MeteringAccountId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].free_trial_info #=> Array
    #   resp.accounts[0].free_trial_info[0].end #=> Time
    #   resp.accounts[0].free_trial_info[0].start #=> Time
    #   resp.accounts[0].free_trial_info[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.accounts[0].free_trial_info[0].type #=> String, one of "EC2", "ECR", "LAMBDA", "LAMBDA_CODE"
    #   resp.failed_accounts #=> Array
    #   resp.failed_accounts[0].account_id #=> String
    #   resp.failed_accounts[0].code #=> String, one of "ACCESS_DENIED", "INTERNAL_ERROR"
    #   resp.failed_accounts[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetFreeTrialInfo AWS API Documentation
    #
    # @overload batch_get_free_trial_info(params = {})
    # @param [Hash] params ({})
    def batch_get_free_trial_info(params = {}, options = {})
      req = build_request(:batch_get_free_trial_info, params)
      req.send_request(options)
    end

    # Retrieves Amazon Inspector deep inspection activation status of
    # multiple member accounts within your organization. You must be the
    # delegated administrator of an organization in Amazon Inspector to use
    # this API.
    #
    # @option params [Array<String>] :account_ids
    #   The unique identifiers for the Amazon Web Services accounts to
    #   retrieve Amazon Inspector deep inspection activation status for.
    #   </p>
    #
    # @return [Types::BatchGetMemberEc2DeepInspectionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetMemberEc2DeepInspectionStatusResponse#account_ids #account_ids} => Array&lt;Types::MemberAccountEc2DeepInspectionStatusState&gt;
    #   * {Types::BatchGetMemberEc2DeepInspectionStatusResponse#failed_account_ids #failed_account_ids} => Array&lt;Types::FailedMemberAccountEc2DeepInspectionStatusState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_member_ec2_deep_inspection_status({
    #     account_ids: ["AccountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0].account_id #=> String
    #   resp.account_ids[0].error_message #=> String
    #   resp.account_ids[0].status #=> String, one of "ACTIVATED", "DEACTIVATED", "PENDING", "FAILED"
    #   resp.failed_account_ids #=> Array
    #   resp.failed_account_ids[0].account_id #=> String
    #   resp.failed_account_ids[0].ec2_scan_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_account_ids[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchGetMemberEc2DeepInspectionStatus AWS API Documentation
    #
    # @overload batch_get_member_ec2_deep_inspection_status(params = {})
    # @param [Hash] params ({})
    def batch_get_member_ec2_deep_inspection_status(params = {}, options = {})
      req = build_request(:batch_get_member_ec2_deep_inspection_status, params)
      req.send_request(options)
    end

    # Activates or deactivates Amazon Inspector deep inspection for the
    # provided member accounts in your organization. You must be the
    # delegated administrator of an organization in Amazon Inspector to use
    # this API.
    #
    # @option params [required, Array<Types::MemberAccountEc2DeepInspectionStatus>] :account_ids
    #   The unique identifiers for the Amazon Web Services accounts to change
    #   Amazon Inspector deep inspection status for.
    #
    # @return [Types::BatchUpdateMemberEc2DeepInspectionStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateMemberEc2DeepInspectionStatusResponse#account_ids #account_ids} => Array&lt;Types::MemberAccountEc2DeepInspectionStatusState&gt;
    #   * {Types::BatchUpdateMemberEc2DeepInspectionStatusResponse#failed_account_ids #failed_account_ids} => Array&lt;Types::FailedMemberAccountEc2DeepInspectionStatusState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_member_ec2_deep_inspection_status({
    #     account_ids: [ # required
    #       {
    #         account_id: "AccountId", # required
    #         activate_deep_inspection: false, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0].account_id #=> String
    #   resp.account_ids[0].error_message #=> String
    #   resp.account_ids[0].status #=> String, one of "ACTIVATED", "DEACTIVATED", "PENDING", "FAILED"
    #   resp.failed_account_ids #=> Array
    #   resp.failed_account_ids[0].account_id #=> String
    #   resp.failed_account_ids[0].ec2_scan_status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_account_ids[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/BatchUpdateMemberEc2DeepInspectionStatus AWS API Documentation
    #
    # @overload batch_update_member_ec2_deep_inspection_status(params = {})
    # @param [Hash] params ({})
    def batch_update_member_ec2_deep_inspection_status(params = {}, options = {})
      req = build_request(:batch_update_member_ec2_deep_inspection_status, params)
      req.send_request(options)
    end

    # Cancels the given findings report.
    #
    # @option params [required, String] :report_id
    #   The ID of the report to be canceled.
    #
    # @return [Types::CancelFindingsReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelFindingsReportResponse#report_id #report_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_findings_report({
    #     report_id: "ReportId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.report_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CancelFindingsReport AWS API Documentation
    #
    # @overload cancel_findings_report(params = {})
    # @param [Hash] params ({})
    def cancel_findings_report(params = {}, options = {})
      req = build_request(:cancel_findings_report, params)
      req.send_request(options)
    end

    # Cancels a software bill of materials (SBOM) report.
    #
    # @option params [required, String] :report_id
    #   The report ID of the SBOM export to cancel.
    #
    # @return [Types::CancelSbomExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelSbomExportResponse#report_id #report_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_sbom_export({
    #     report_id: "ReportId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.report_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CancelSbomExport AWS API Documentation
    #
    # @overload cancel_sbom_export(params = {})
    # @param [Hash] params ({})
    def cancel_sbom_export(params = {}, options = {})
      req = build_request(:cancel_sbom_export, params)
      req.send_request(options)
    end

    # Creates a filter resource using specified filter criteria.
    #
    # @option params [required, String] :action
    #   Defines the action that is to be applied to the findings that match
    #   the filter.
    #
    # @option params [String] :description
    #   A description of the filter.
    #
    # @option params [required, Types::FilterCriteria] :filter_criteria
    #   Defines the criteria to be used in the filter for querying findings.
    #
    # @option params [required, String] :name
    #   The name of the filter. Minimum length of 3. Maximum length of 64.
    #   Valid characters include alphanumeric characters, dot (.), underscore
    #   (\_), and dash (-). Spaces are not allowed.
    #
    # @option params [String] :reason
    #   The reason for creating the filter.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags for the filter.
    #
    # @return [Types::CreateFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFilterResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_filter({
    #     action: "NONE", # required, accepts NONE, SUPPRESS
    #     description: "FilterDescription",
    #     filter_criteria: { # required
    #       aws_account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       epss_score: [
    #         {
    #           lower_inclusive: 1.0,
    #           upper_inclusive: 1.0,
    #         },
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       inspector_score: [
    #         {
    #           lower_inclusive: 1.0,
    #           upper_inclusive: 1.0,
    #         },
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1,
    #         },
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "MapKey", # required
    #           value: "MapValue",
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       title: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerable_packages: [
    #         {
    #           architecture: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             lower_inclusive: 1.0,
    #             upper_inclusive: 1.0,
    #           },
    #           name: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           release: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         },
    #       ],
    #     },
    #     name: "FilterName", # required
    #     reason: "FilterReason",
    #     tags: {
    #       "MapKey" => "MapValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateFilter AWS API Documentation
    #
    # @overload create_filter(params = {})
    # @param [Hash] params ({})
    def create_filter(params = {}, options = {})
      req = build_request(:create_filter, params)
      req.send_request(options)
    end

    # Creates a finding report. By default only `ACTIVE` findings are
    # returned in the report. To see `SUPRESSED` or `CLOSED` findings you
    # must specify a value for the `findingStatus` filter criteria.
    #
    # @option params [Types::FilterCriteria] :filter_criteria
    #   The filter criteria to apply to the results of the finding report.
    #
    # @option params [required, String] :report_format
    #   The format to generate the report in.
    #
    # @option params [required, Types::Destination] :s3_destination
    #   The Amazon S3 export destination for the report.
    #
    # @return [Types::CreateFindingsReportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFindingsReportResponse#report_id #report_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_findings_report({
    #     filter_criteria: {
    #       aws_account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       epss_score: [
    #         {
    #           lower_inclusive: 1.0,
    #           upper_inclusive: 1.0,
    #         },
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       inspector_score: [
    #         {
    #           lower_inclusive: 1.0,
    #           upper_inclusive: 1.0,
    #         },
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1,
    #         },
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "MapKey", # required
    #           value: "MapValue",
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       title: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerable_packages: [
    #         {
    #           architecture: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             lower_inclusive: 1.0,
    #             upper_inclusive: 1.0,
    #           },
    #           name: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           release: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         },
    #       ],
    #     },
    #     report_format: "CSV", # required, accepts CSV, JSON
    #     s3_destination: { # required
    #       bucket_name: "String", # required
    #       key_prefix: "String",
    #       kms_key_arn: "String", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.report_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateFindingsReport AWS API Documentation
    #
    # @overload create_findings_report(params = {})
    # @param [Hash] params ({})
    def create_findings_report(params = {}, options = {})
      req = build_request(:create_findings_report, params)
      req.send_request(options)
    end

    # Creates a software bill of materials (SBOM) report.
    #
    # @option params [required, String] :report_format
    #   The output format for the software bill of materials (SBOM) report.
    #
    # @option params [Types::ResourceFilterCriteria] :resource_filter_criteria
    #   The resource filter criteria for the software bill of materials (SBOM)
    #   report.
    #
    # @option params [required, Types::Destination] :s3_destination
    #   Contains details of the Amazon S3 bucket and KMS key used to export
    #   findings.
    #
    # @return [Types::CreateSbomExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSbomExportResponse#report_id #report_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sbom_export({
    #     report_format: "CYCLONEDX_1_4", # required, accepts CYCLONEDX_1_4, SPDX_2_3
    #     resource_filter_criteria: {
    #       account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "ResourceStringInput", # required
    #         },
    #       ],
    #       ec2_instance_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "ResourceStringInput", # required
    #         },
    #       ],
    #       ecr_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "ResourceStringInput", # required
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "ResourceStringInput", # required
    #         },
    #       ],
    #       lambda_function_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "ResourceStringInput", # required
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "ResourceStringInput", # required
    #         },
    #       ],
    #     },
    #     s3_destination: { # required
    #       bucket_name: "String", # required
    #       key_prefix: "String",
    #       kms_key_arn: "String", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.report_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/CreateSbomExport AWS API Documentation
    #
    # @overload create_sbom_export(params = {})
    # @param [Hash] params ({})
    def create_sbom_export(params = {}, options = {})
      req = build_request(:create_sbom_export, params)
      req.send_request(options)
    end

    # Deletes a filter resource.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Number (ARN) of the filter to be deleted.
    #
    # @return [Types::DeleteFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFilterResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_filter({
    #     arn: "FilterArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DeleteFilter AWS API Documentation
    #
    # @overload delete_filter(params = {})
    # @param [Hash] params ({})
    def delete_filter(params = {}, options = {})
      req = build_request(:delete_filter, params)
      req.send_request(options)
    end

    # Describe Amazon Inspector configuration settings for an Amazon Web
    # Services organization.
    #
    # @return [Types::DescribeOrganizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOrganizationConfigurationResponse#auto_enable #auto_enable} => Types::AutoEnable
    #   * {Types::DescribeOrganizationConfigurationResponse#max_account_limit_reached #max_account_limit_reached} => Boolean
    #
    # @example Response structure
    #
    #   resp.auto_enable.ec2 #=> Boolean
    #   resp.auto_enable.ecr #=> Boolean
    #   resp.auto_enable.lambda #=> Boolean
    #   resp.auto_enable.lambda_code #=> Boolean
    #   resp.max_account_limit_reached #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DescribeOrganizationConfiguration AWS API Documentation
    #
    # @overload describe_organization_configuration(params = {})
    # @param [Hash] params ({})
    def describe_organization_configuration(params = {}, options = {})
      req = build_request(:describe_organization_configuration, params)
      req.send_request(options)
    end

    # Disables Amazon Inspector scans for one or more Amazon Web Services
    # accounts. Disabling all scan types in an account disables the Amazon
    # Inspector service.
    #
    # @option params [Array<String>] :account_ids
    #   An array of account IDs you want to disable Amazon Inspector scans
    #   for.
    #
    # @option params [Array<String>] :resource_types
    #   The resource scan types you want to disable.
    #
    # @return [Types::DisableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableResponse#accounts #accounts} => Array&lt;Types::Account&gt;
    #   * {Types::DisableResponse#failed_accounts #failed_accounts} => Array&lt;Types::FailedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable({
    #     account_ids: ["AccountId"],
    #     resource_types: ["EC2"], # accepts EC2, ECR, LAMBDA, LAMBDA_CODE
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].resource_status.ec2 #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.ecr #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.lambda #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.lambda_code #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts #=> Array
    #   resp.failed_accounts[0].account_id #=> String
    #   resp.failed_accounts[0].error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED"
    #   resp.failed_accounts[0].error_message #=> String
    #   resp.failed_accounts[0].resource_status.ec2 #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.ecr #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.lambda #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.lambda_code #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Disable AWS API Documentation
    #
    # @overload disable(params = {})
    # @param [Hash] params ({})
    def disable(params = {}, options = {})
      req = build_request(:disable, params)
      req.send_request(options)
    end

    # Disables the Amazon Inspector delegated administrator for your
    # organization.
    #
    # @option params [required, String] :delegated_admin_account_id
    #   The Amazon Web Services account ID of the current Amazon Inspector
    #   delegated administrator.
    #
    # @return [Types::DisableDelegatedAdminAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableDelegatedAdminAccountResponse#delegated_admin_account_id #delegated_admin_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_delegated_admin_account({
    #     delegated_admin_account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.delegated_admin_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DisableDelegatedAdminAccount AWS API Documentation
    #
    # @overload disable_delegated_admin_account(params = {})
    # @param [Hash] params ({})
    def disable_delegated_admin_account(params = {}, options = {})
      req = build_request(:disable_delegated_admin_account, params)
      req.send_request(options)
    end

    # Disassociates a member account from an Amazon Inspector delegated
    # administrator.
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID of the member account to
    #   disassociate.
    #
    # @return [Types::DisassociateMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateMemberResponse#account_id #account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member({
    #     account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/DisassociateMember AWS API Documentation
    #
    # @overload disassociate_member(params = {})
    # @param [Hash] params ({})
    def disassociate_member(params = {}, options = {})
      req = build_request(:disassociate_member, params)
      req.send_request(options)
    end

    # Enables Amazon Inspector scans for one or more Amazon Web Services
    # accounts.
    #
    # @option params [Array<String>] :account_ids
    #   A list of account IDs you want to enable Amazon Inspector scans for.
    #
    # @option params [String] :client_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Array<String>] :resource_types
    #   The resource scan types you want to enable.
    #
    # @return [Types::EnableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableResponse#accounts #accounts} => Array&lt;Types::Account&gt;
    #   * {Types::EnableResponse#failed_accounts #failed_accounts} => Array&lt;Types::FailedAccount&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable({
    #     account_ids: ["AccountId"],
    #     client_token: "ClientToken",
    #     resource_types: ["EC2"], # required, accepts EC2, ECR, LAMBDA, LAMBDA_CODE
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].resource_status.ec2 #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.ecr #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.lambda #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].resource_status.lambda_code #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.accounts[0].status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts #=> Array
    #   resp.failed_accounts[0].account_id #=> String
    #   resp.failed_accounts[0].error_code #=> String, one of "ALREADY_ENABLED", "ENABLE_IN_PROGRESS", "DISABLE_IN_PROGRESS", "SUSPEND_IN_PROGRESS", "RESOURCE_NOT_FOUND", "ACCESS_DENIED", "INTERNAL_ERROR", "SSM_UNAVAILABLE", "SSM_THROTTLED", "EVENTBRIDGE_UNAVAILABLE", "EVENTBRIDGE_THROTTLED", "RESOURCE_SCAN_NOT_DISABLED", "DISASSOCIATE_ALL_MEMBERS", "ACCOUNT_IS_ISOLATED"
    #   resp.failed_accounts[0].error_message #=> String
    #   resp.failed_accounts[0].resource_status.ec2 #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.ecr #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.lambda #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].resource_status.lambda_code #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #   resp.failed_accounts[0].status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED", "SUSPENDING", "SUSPENDED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/Enable AWS API Documentation
    #
    # @overload enable(params = {})
    # @param [Hash] params ({})
    def enable(params = {}, options = {})
      req = build_request(:enable, params)
      req.send_request(options)
    end

    # Enables the Amazon Inspector delegated administrator for your
    # Organizations organization.
    #
    # @option params [String] :client_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :delegated_admin_account_id
    #   The Amazon Web Services account ID of the Amazon Inspector delegated
    #   administrator.
    #
    # @return [Types::EnableDelegatedAdminAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableDelegatedAdminAccountResponse#delegated_admin_account_id #delegated_admin_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_delegated_admin_account({
    #     client_token: "ClientToken",
    #     delegated_admin_account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.delegated_admin_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/EnableDelegatedAdminAccount AWS API Documentation
    #
    # @overload enable_delegated_admin_account(params = {})
    # @param [Hash] params ({})
    def enable_delegated_admin_account(params = {}, options = {})
      req = build_request(:enable_delegated_admin_account, params)
      req.send_request(options)
    end

    # Retrieves setting configurations for Inspector scans.
    #
    # @return [Types::GetConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigurationResponse#ecr_configuration #ecr_configuration} => Types::EcrConfigurationState
    #
    # @example Response structure
    #
    #   resp.ecr_configuration.rescan_duration_state.rescan_duration #=> String, one of "LIFETIME", "DAYS_30", "DAYS_180"
    #   resp.ecr_configuration.rescan_duration_state.status #=> String, one of "SUCCESS", "PENDING", "FAILED"
    #   resp.ecr_configuration.rescan_duration_state.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetConfiguration AWS API Documentation
    #
    # @overload get_configuration(params = {})
    # @param [Hash] params ({})
    def get_configuration(params = {}, options = {})
      req = build_request(:get_configuration, params)
      req.send_request(options)
    end

    # Retrieves information about the Amazon Inspector delegated
    # administrator for your organization.
    #
    # @return [Types::GetDelegatedAdminAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDelegatedAdminAccountResponse#delegated_admin #delegated_admin} => Types::DelegatedAdmin
    #
    # @example Response structure
    #
    #   resp.delegated_admin.account_id #=> String
    #   resp.delegated_admin.relationship_status #=> String, one of "CREATED", "INVITED", "DISABLED", "ENABLED", "REMOVED", "RESIGNED", "DELETED", "EMAIL_VERIFICATION_IN_PROGRESS", "EMAIL_VERIFICATION_FAILED", "REGION_DISABLED", "ACCOUNT_SUSPENDED", "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetDelegatedAdminAccount AWS API Documentation
    #
    # @overload get_delegated_admin_account(params = {})
    # @param [Hash] params ({})
    def get_delegated_admin_account(params = {}, options = {})
      req = build_request(:get_delegated_admin_account, params)
      req.send_request(options)
    end

    # Retrieves the activation status of Amazon Inspector deep inspection
    # and custom paths associated with your account.
    #
    # @return [Types::GetEc2DeepInspectionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEc2DeepInspectionConfigurationResponse#error_message #error_message} => String
    #   * {Types::GetEc2DeepInspectionConfigurationResponse#org_package_paths #org_package_paths} => Array&lt;String&gt;
    #   * {Types::GetEc2DeepInspectionConfigurationResponse#package_paths #package_paths} => Array&lt;String&gt;
    #   * {Types::GetEc2DeepInspectionConfigurationResponse#status #status} => String
    #
    # @example Response structure
    #
    #   resp.error_message #=> String
    #   resp.org_package_paths #=> Array
    #   resp.org_package_paths[0] #=> String
    #   resp.package_paths #=> Array
    #   resp.package_paths[0] #=> String
    #   resp.status #=> String, one of "ACTIVATED", "DEACTIVATED", "PENDING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetEc2DeepInspectionConfiguration AWS API Documentation
    #
    # @overload get_ec2_deep_inspection_configuration(params = {})
    # @param [Hash] params ({})
    def get_ec2_deep_inspection_configuration(params = {}, options = {})
      req = build_request(:get_ec2_deep_inspection_configuration, params)
      req.send_request(options)
    end

    # Gets an encryption key.
    #
    # @option params [required, String] :resource_type
    #   The resource type the key encrypts.
    #
    # @option params [required, String] :scan_type
    #   The scan type the key encrypts.
    #
    # @return [Types::GetEncryptionKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEncryptionKeyResponse#kms_key_id #kms_key_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_encryption_key({
    #     resource_type: "AWS_EC2_INSTANCE", # required, accepts AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_ECR_REPOSITORY, AWS_LAMBDA_FUNCTION
    #     scan_type: "NETWORK", # required, accepts NETWORK, PACKAGE, CODE
    #   })
    #
    # @example Response structure
    #
    #   resp.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetEncryptionKey AWS API Documentation
    #
    # @overload get_encryption_key(params = {})
    # @param [Hash] params ({})
    def get_encryption_key(params = {}, options = {})
      req = build_request(:get_encryption_key, params)
      req.send_request(options)
    end

    # Gets the status of a findings report.
    #
    # @option params [String] :report_id
    #   The ID of the report to retrieve the status of.
    #
    # @return [Types::GetFindingsReportStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsReportStatusResponse#destination #destination} => Types::Destination
    #   * {Types::GetFindingsReportStatusResponse#error_code #error_code} => String
    #   * {Types::GetFindingsReportStatusResponse#error_message #error_message} => String
    #   * {Types::GetFindingsReportStatusResponse#filter_criteria #filter_criteria} => Types::FilterCriteria
    #   * {Types::GetFindingsReportStatusResponse#report_id #report_id} => String
    #   * {Types::GetFindingsReportStatusResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings_report_status({
    #     report_id: "ReportId",
    #   })
    #
    # @example Response structure
    #
    #   resp.destination.bucket_name #=> String
    #   resp.destination.key_prefix #=> String
    #   resp.destination.kms_key_arn #=> String
    #   resp.error_code #=> String, one of "INTERNAL_ERROR", "INVALID_PERMISSIONS", "NO_FINDINGS_FOUND", "BUCKET_NOT_FOUND", "INCOMPATIBLE_BUCKET_REGION", "MALFORMED_KMS_KEY"
    #   resp.error_message #=> String
    #   resp.filter_criteria.aws_account_id #=> Array
    #   resp.filter_criteria.aws_account_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.aws_account_id[0].value #=> String
    #   resp.filter_criteria.code_vulnerability_detector_name #=> Array
    #   resp.filter_criteria.code_vulnerability_detector_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.code_vulnerability_detector_name[0].value #=> String
    #   resp.filter_criteria.code_vulnerability_detector_tags #=> Array
    #   resp.filter_criteria.code_vulnerability_detector_tags[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.code_vulnerability_detector_tags[0].value #=> String
    #   resp.filter_criteria.code_vulnerability_file_path #=> Array
    #   resp.filter_criteria.code_vulnerability_file_path[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.code_vulnerability_file_path[0].value #=> String
    #   resp.filter_criteria.component_id #=> Array
    #   resp.filter_criteria.component_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.component_id[0].value #=> String
    #   resp.filter_criteria.component_type #=> Array
    #   resp.filter_criteria.component_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.component_type[0].value #=> String
    #   resp.filter_criteria.ec2_instance_image_id #=> Array
    #   resp.filter_criteria.ec2_instance_image_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ec2_instance_image_id[0].value #=> String
    #   resp.filter_criteria.ec2_instance_subnet_id #=> Array
    #   resp.filter_criteria.ec2_instance_subnet_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ec2_instance_subnet_id[0].value #=> String
    #   resp.filter_criteria.ec2_instance_vpc_id #=> Array
    #   resp.filter_criteria.ec2_instance_vpc_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ec2_instance_vpc_id[0].value #=> String
    #   resp.filter_criteria.ecr_image_architecture #=> Array
    #   resp.filter_criteria.ecr_image_architecture[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_image_architecture[0].value #=> String
    #   resp.filter_criteria.ecr_image_hash #=> Array
    #   resp.filter_criteria.ecr_image_hash[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_image_hash[0].value #=> String
    #   resp.filter_criteria.ecr_image_pushed_at #=> Array
    #   resp.filter_criteria.ecr_image_pushed_at[0].end_inclusive #=> Time
    #   resp.filter_criteria.ecr_image_pushed_at[0].start_inclusive #=> Time
    #   resp.filter_criteria.ecr_image_registry #=> Array
    #   resp.filter_criteria.ecr_image_registry[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_image_registry[0].value #=> String
    #   resp.filter_criteria.ecr_image_repository_name #=> Array
    #   resp.filter_criteria.ecr_image_repository_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_image_repository_name[0].value #=> String
    #   resp.filter_criteria.ecr_image_tags #=> Array
    #   resp.filter_criteria.ecr_image_tags[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_image_tags[0].value #=> String
    #   resp.filter_criteria.epss_score #=> Array
    #   resp.filter_criteria.epss_score[0].lower_inclusive #=> Float
    #   resp.filter_criteria.epss_score[0].upper_inclusive #=> Float
    #   resp.filter_criteria.exploit_available #=> Array
    #   resp.filter_criteria.exploit_available[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.exploit_available[0].value #=> String
    #   resp.filter_criteria.finding_arn #=> Array
    #   resp.filter_criteria.finding_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.finding_arn[0].value #=> String
    #   resp.filter_criteria.finding_status #=> Array
    #   resp.filter_criteria.finding_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.finding_status[0].value #=> String
    #   resp.filter_criteria.finding_type #=> Array
    #   resp.filter_criteria.finding_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.finding_type[0].value #=> String
    #   resp.filter_criteria.first_observed_at #=> Array
    #   resp.filter_criteria.first_observed_at[0].end_inclusive #=> Time
    #   resp.filter_criteria.first_observed_at[0].start_inclusive #=> Time
    #   resp.filter_criteria.fix_available #=> Array
    #   resp.filter_criteria.fix_available[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.fix_available[0].value #=> String
    #   resp.filter_criteria.inspector_score #=> Array
    #   resp.filter_criteria.inspector_score[0].lower_inclusive #=> Float
    #   resp.filter_criteria.inspector_score[0].upper_inclusive #=> Float
    #   resp.filter_criteria.lambda_function_execution_role_arn #=> Array
    #   resp.filter_criteria.lambda_function_execution_role_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.lambda_function_execution_role_arn[0].value #=> String
    #   resp.filter_criteria.lambda_function_last_modified_at #=> Array
    #   resp.filter_criteria.lambda_function_last_modified_at[0].end_inclusive #=> Time
    #   resp.filter_criteria.lambda_function_last_modified_at[0].start_inclusive #=> Time
    #   resp.filter_criteria.lambda_function_layers #=> Array
    #   resp.filter_criteria.lambda_function_layers[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.lambda_function_layers[0].value #=> String
    #   resp.filter_criteria.lambda_function_name #=> Array
    #   resp.filter_criteria.lambda_function_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.lambda_function_name[0].value #=> String
    #   resp.filter_criteria.lambda_function_runtime #=> Array
    #   resp.filter_criteria.lambda_function_runtime[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.lambda_function_runtime[0].value #=> String
    #   resp.filter_criteria.last_observed_at #=> Array
    #   resp.filter_criteria.last_observed_at[0].end_inclusive #=> Time
    #   resp.filter_criteria.last_observed_at[0].start_inclusive #=> Time
    #   resp.filter_criteria.network_protocol #=> Array
    #   resp.filter_criteria.network_protocol[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.network_protocol[0].value #=> String
    #   resp.filter_criteria.port_range #=> Array
    #   resp.filter_criteria.port_range[0].begin_inclusive #=> Integer
    #   resp.filter_criteria.port_range[0].end_inclusive #=> Integer
    #   resp.filter_criteria.related_vulnerabilities #=> Array
    #   resp.filter_criteria.related_vulnerabilities[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.related_vulnerabilities[0].value #=> String
    #   resp.filter_criteria.resource_id #=> Array
    #   resp.filter_criteria.resource_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.resource_id[0].value #=> String
    #   resp.filter_criteria.resource_tags #=> Array
    #   resp.filter_criteria.resource_tags[0].comparison #=> String, one of "EQUALS"
    #   resp.filter_criteria.resource_tags[0].key #=> String
    #   resp.filter_criteria.resource_tags[0].value #=> String
    #   resp.filter_criteria.resource_type #=> Array
    #   resp.filter_criteria.resource_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.resource_type[0].value #=> String
    #   resp.filter_criteria.severity #=> Array
    #   resp.filter_criteria.severity[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.severity[0].value #=> String
    #   resp.filter_criteria.title #=> Array
    #   resp.filter_criteria.title[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.title[0].value #=> String
    #   resp.filter_criteria.updated_at #=> Array
    #   resp.filter_criteria.updated_at[0].end_inclusive #=> Time
    #   resp.filter_criteria.updated_at[0].start_inclusive #=> Time
    #   resp.filter_criteria.vendor_severity #=> Array
    #   resp.filter_criteria.vendor_severity[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vendor_severity[0].value #=> String
    #   resp.filter_criteria.vulnerability_id #=> Array
    #   resp.filter_criteria.vulnerability_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerability_id[0].value #=> String
    #   resp.filter_criteria.vulnerability_source #=> Array
    #   resp.filter_criteria.vulnerability_source[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerability_source[0].value #=> String
    #   resp.filter_criteria.vulnerable_packages #=> Array
    #   resp.filter_criteria.vulnerable_packages[0].architecture.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].architecture.value #=> String
    #   resp.filter_criteria.vulnerable_packages[0].epoch.lower_inclusive #=> Float
    #   resp.filter_criteria.vulnerable_packages[0].epoch.upper_inclusive #=> Float
    #   resp.filter_criteria.vulnerable_packages[0].name.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].name.value #=> String
    #   resp.filter_criteria.vulnerable_packages[0].release.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].release.value #=> String
    #   resp.filter_criteria.vulnerable_packages[0].source_lambda_layer_arn.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].source_lambda_layer_arn.value #=> String
    #   resp.filter_criteria.vulnerable_packages[0].source_layer_hash.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].source_layer_hash.value #=> String
    #   resp.filter_criteria.vulnerable_packages[0].version.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filter_criteria.vulnerable_packages[0].version.value #=> String
    #   resp.report_id #=> String
    #   resp.status #=> String, one of "SUCCEEDED", "IN_PROGRESS", "CANCELLED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetFindingsReportStatus AWS API Documentation
    #
    # @overload get_findings_report_status(params = {})
    # @param [Hash] params ({})
    def get_findings_report_status(params = {}, options = {})
      req = build_request(:get_findings_report_status, params)
      req.send_request(options)
    end

    # Gets member information for your organization.
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID of the member account to retrieve
    #   information on.
    #
    # @return [Types::GetMemberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMemberResponse#member #member} => Types::Member
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_member({
    #     account_id: "AccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.member.account_id #=> String
    #   resp.member.delegated_admin_account_id #=> String
    #   resp.member.relationship_status #=> String, one of "CREATED", "INVITED", "DISABLED", "ENABLED", "REMOVED", "RESIGNED", "DELETED", "EMAIL_VERIFICATION_IN_PROGRESS", "EMAIL_VERIFICATION_FAILED", "REGION_DISABLED", "ACCOUNT_SUSPENDED", "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"
    #   resp.member.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetMember AWS API Documentation
    #
    # @overload get_member(params = {})
    # @param [Hash] params ({})
    def get_member(params = {}, options = {})
      req = build_request(:get_member, params)
      req.send_request(options)
    end

    # Gets details of a software bill of materials (SBOM) report.
    #
    # @option params [required, String] :report_id
    #   The report ID of the SBOM export to get details for.
    #
    # @return [Types::GetSbomExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSbomExportResponse#error_code #error_code} => String
    #   * {Types::GetSbomExportResponse#error_message #error_message} => String
    #   * {Types::GetSbomExportResponse#filter_criteria #filter_criteria} => Types::ResourceFilterCriteria
    #   * {Types::GetSbomExportResponse#format #format} => String
    #   * {Types::GetSbomExportResponse#report_id #report_id} => String
    #   * {Types::GetSbomExportResponse#s3_destination #s3_destination} => Types::Destination
    #   * {Types::GetSbomExportResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sbom_export({
    #     report_id: "ReportId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.error_code #=> String, one of "INTERNAL_ERROR", "INVALID_PERMISSIONS", "NO_FINDINGS_FOUND", "BUCKET_NOT_FOUND", "INCOMPATIBLE_BUCKET_REGION", "MALFORMED_KMS_KEY"
    #   resp.error_message #=> String
    #   resp.filter_criteria.account_id #=> Array
    #   resp.filter_criteria.account_id[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.filter_criteria.account_id[0].value #=> String
    #   resp.filter_criteria.ec2_instance_tags #=> Array
    #   resp.filter_criteria.ec2_instance_tags[0].comparison #=> String, one of "EQUALS"
    #   resp.filter_criteria.ec2_instance_tags[0].key #=> String
    #   resp.filter_criteria.ec2_instance_tags[0].value #=> String
    #   resp.filter_criteria.ecr_image_tags #=> Array
    #   resp.filter_criteria.ecr_image_tags[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_image_tags[0].value #=> String
    #   resp.filter_criteria.ecr_repository_name #=> Array
    #   resp.filter_criteria.ecr_repository_name[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.filter_criteria.ecr_repository_name[0].value #=> String
    #   resp.filter_criteria.lambda_function_name #=> Array
    #   resp.filter_criteria.lambda_function_name[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.filter_criteria.lambda_function_name[0].value #=> String
    #   resp.filter_criteria.lambda_function_tags #=> Array
    #   resp.filter_criteria.lambda_function_tags[0].comparison #=> String, one of "EQUALS"
    #   resp.filter_criteria.lambda_function_tags[0].key #=> String
    #   resp.filter_criteria.lambda_function_tags[0].value #=> String
    #   resp.filter_criteria.resource_id #=> Array
    #   resp.filter_criteria.resource_id[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.filter_criteria.resource_id[0].value #=> String
    #   resp.filter_criteria.resource_type #=> Array
    #   resp.filter_criteria.resource_type[0].comparison #=> String, one of "EQUALS", "NOT_EQUALS"
    #   resp.filter_criteria.resource_type[0].value #=> String
    #   resp.format #=> String, one of "CYCLONEDX_1_4", "SPDX_2_3"
    #   resp.report_id #=> String
    #   resp.s3_destination.bucket_name #=> String
    #   resp.s3_destination.key_prefix #=> String
    #   resp.s3_destination.kms_key_arn #=> String
    #   resp.status #=> String, one of "SUCCEEDED", "IN_PROGRESS", "CANCELLED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/GetSbomExport AWS API Documentation
    #
    # @overload get_sbom_export(params = {})
    # @param [Hash] params ({})
    def get_sbom_export(params = {}, options = {})
      req = build_request(:get_sbom_export, params)
      req.send_request(options)
    end

    # Lists the permissions an account has to configure Amazon Inspector.
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
    # @option params [String] :service
    #   The service scan type to check permissions for.
    #
    # @return [Types::ListAccountPermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountPermissionsResponse#next_token #next_token} => String
    #   * {Types::ListAccountPermissionsResponse#permissions #permissions} => Array&lt;Types::Permission&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_permissions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     service: "EC2", # accepts EC2, ECR, LAMBDA
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.permissions #=> Array
    #   resp.permissions[0].operation #=> String, one of "ENABLE_SCANNING", "DISABLE_SCANNING", "ENABLE_REPOSITORY", "DISABLE_REPOSITORY"
    #   resp.permissions[0].service #=> String, one of "EC2", "ECR", "LAMBDA"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListAccountPermissions AWS API Documentation
    #
    # @overload list_account_permissions(params = {})
    # @param [Hash] params ({})
    def list_account_permissions(params = {}, options = {})
      req = build_request(:list_account_permissions, params)
      req.send_request(options)
    end

    # Lists coverage details for you environment.
    #
    # @option params [Types::CoverageFilterCriteria] :filter_criteria
    #   An object that contains details on the filters to apply to the
    #   coverage data for your environment.
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
    # @return [Types::ListCoverageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCoverageResponse#covered_resources #covered_resources} => Array&lt;Types::CoveredResource&gt;
    #   * {Types::ListCoverageResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_coverage({
    #     filter_criteria: {
    #       account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       ec2_instance_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       ecr_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       lambda_function_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       last_scanned_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       scan_status_code: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       scan_status_reason: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       scan_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.covered_resources #=> Array
    #   resp.covered_resources[0].account_id #=> String
    #   resp.covered_resources[0].last_scanned_at #=> Time
    #   resp.covered_resources[0].resource_id #=> String
    #   resp.covered_resources[0].resource_metadata.ec2.ami_id #=> String
    #   resp.covered_resources[0].resource_metadata.ec2.platform #=> String, one of "WINDOWS", "LINUX", "UNKNOWN"
    #   resp.covered_resources[0].resource_metadata.ec2.tags #=> Hash
    #   resp.covered_resources[0].resource_metadata.ec2.tags["MapKey"] #=> String
    #   resp.covered_resources[0].resource_metadata.ecr_image.tags #=> Array
    #   resp.covered_resources[0].resource_metadata.ecr_image.tags[0] #=> String
    #   resp.covered_resources[0].resource_metadata.ecr_repository.name #=> String
    #   resp.covered_resources[0].resource_metadata.ecr_repository.scan_frequency #=> String, one of "MANUAL", "SCAN_ON_PUSH", "CONTINUOUS_SCAN"
    #   resp.covered_resources[0].resource_metadata.lambda_function.function_name #=> String
    #   resp.covered_resources[0].resource_metadata.lambda_function.function_tags #=> Hash
    #   resp.covered_resources[0].resource_metadata.lambda_function.function_tags["MapKey"] #=> String
    #   resp.covered_resources[0].resource_metadata.lambda_function.layers #=> Array
    #   resp.covered_resources[0].resource_metadata.lambda_function.layers[0] #=> String
    #   resp.covered_resources[0].resource_metadata.lambda_function.runtime #=> String, one of "NODEJS", "NODEJS_12_X", "NODEJS_14_X", "NODEJS_16_X", "JAVA_8", "JAVA_8_AL2", "JAVA_11", "PYTHON_3_7", "PYTHON_3_8", "PYTHON_3_9", "UNSUPPORTED", "NODEJS_18_X", "GO_1_X", "JAVA_17", "PYTHON_3_10"
    #   resp.covered_resources[0].resource_type #=> String, one of "AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE", "AWS_ECR_REPOSITORY", "AWS_LAMBDA_FUNCTION"
    #   resp.covered_resources[0].scan_status.reason #=> String, one of "PENDING_INITIAL_SCAN", "ACCESS_DENIED", "INTERNAL_ERROR", "UNMANAGED_EC2_INSTANCE", "UNSUPPORTED_OS", "SCAN_ELIGIBILITY_EXPIRED", "RESOURCE_TERMINATED", "SUCCESSFUL", "NO_RESOURCES_FOUND", "IMAGE_SIZE_EXCEEDED", "SCAN_FREQUENCY_MANUAL", "SCAN_FREQUENCY_SCAN_ON_PUSH", "EC2_INSTANCE_STOPPED", "PENDING_DISABLE", "NO_INVENTORY", "STALE_INVENTORY", "EXCLUDED_BY_TAG", "UNSUPPORTED_RUNTIME", "UNSUPPORTED_MEDIA_TYPE", "UNSUPPORTED_CONFIG_FILE", "DEEP_INSPECTION_PACKAGE_COLLECTION_LIMIT_EXCEEDED", "DEEP_INSPECTION_DAILY_SSM_INVENTORY_LIMIT_EXCEEDED", "DEEP_INSPECTION_COLLECTION_TIME_LIMIT_EXCEEDED", "DEEP_INSPECTION_NO_INVENTORY"
    #   resp.covered_resources[0].scan_status.status_code #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.covered_resources[0].scan_type #=> String, one of "NETWORK", "PACKAGE", "CODE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCoverage AWS API Documentation
    #
    # @overload list_coverage(params = {})
    # @param [Hash] params ({})
    def list_coverage(params = {}, options = {})
      req = build_request(:list_coverage, params)
      req.send_request(options)
    end

    # Lists Amazon Inspector coverage statistics for your environment.
    #
    # @option params [Types::CoverageFilterCriteria] :filter_criteria
    #   An object that contains details on the filters to apply to the
    #   coverage data for your environment.
    #
    # @option params [String] :group_by
    #   The value to group the results by.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #
    # @return [Types::ListCoverageStatisticsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCoverageStatisticsResponse#counts_by_group #counts_by_group} => Array&lt;Types::Counts&gt;
    #   * {Types::ListCoverageStatisticsResponse#next_token #next_token} => String
    #   * {Types::ListCoverageStatisticsResponse#total_counts #total_counts} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_coverage_statistics({
    #     filter_criteria: {
    #       account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       ec2_instance_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       ecr_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       lambda_function_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "NonEmptyString", # required
    #           value: "NonEmptyString",
    #         },
    #       ],
    #       last_scanned_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       scan_status_code: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       scan_status_reason: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #       scan_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, NOT_EQUALS
    #           value: "CoverageStringInput", # required
    #         },
    #       ],
    #     },
    #     group_by: "SCAN_STATUS_CODE", # accepts SCAN_STATUS_CODE, SCAN_STATUS_REASON, ACCOUNT_ID, RESOURCE_TYPE, ECR_REPOSITORY_NAME
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.counts_by_group #=> Array
    #   resp.counts_by_group[0].count #=> Integer
    #   resp.counts_by_group[0].group_key #=> String, one of "SCAN_STATUS_CODE", "SCAN_STATUS_REASON", "ACCOUNT_ID", "RESOURCE_TYPE", "ECR_REPOSITORY_NAME"
    #   resp.next_token #=> String
    #   resp.total_counts #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListCoverageStatistics AWS API Documentation
    #
    # @overload list_coverage_statistics(params = {})
    # @param [Hash] params ({})
    def list_coverage_statistics(params = {}, options = {})
      req = build_request(:list_coverage_statistics, params)
      req.send_request(options)
    end

    # Lists information about the Amazon Inspector delegated administrator
    # of your organization.
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
    # @return [Types::ListDelegatedAdminAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDelegatedAdminAccountsResponse#delegated_admin_accounts #delegated_admin_accounts} => Array&lt;Types::DelegatedAdminAccount&gt;
    #   * {Types::ListDelegatedAdminAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_delegated_admin_accounts({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.delegated_admin_accounts #=> Array
    #   resp.delegated_admin_accounts[0].account_id #=> String
    #   resp.delegated_admin_accounts[0].status #=> String, one of "ENABLED", "DISABLE_IN_PROGRESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListDelegatedAdminAccounts AWS API Documentation
    #
    # @overload list_delegated_admin_accounts(params = {})
    # @param [Hash] params ({})
    def list_delegated_admin_accounts(params = {}, options = {})
      req = build_request(:list_delegated_admin_accounts, params)
      req.send_request(options)
    end

    # Lists the filters associated with your account.
    #
    # @option params [String] :action
    #   The action the filter applies to matched findings.
    #
    # @option params [Array<String>] :arns
    #   The Amazon resource number (ARN) of the filter.
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
    # @return [Types::ListFiltersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFiltersResponse#filters #filters} => Array&lt;Types::Filter&gt;
    #   * {Types::ListFiltersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_filters({
    #     action: "NONE", # accepts NONE, SUPPRESS
    #     arns: ["FilterArn"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.filters #=> Array
    #   resp.filters[0].action #=> String, one of "NONE", "SUPPRESS"
    #   resp.filters[0].arn #=> String
    #   resp.filters[0].created_at #=> Time
    #   resp.filters[0].criteria.aws_account_id #=> Array
    #   resp.filters[0].criteria.aws_account_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.aws_account_id[0].value #=> String
    #   resp.filters[0].criteria.code_vulnerability_detector_name #=> Array
    #   resp.filters[0].criteria.code_vulnerability_detector_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.code_vulnerability_detector_name[0].value #=> String
    #   resp.filters[0].criteria.code_vulnerability_detector_tags #=> Array
    #   resp.filters[0].criteria.code_vulnerability_detector_tags[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.code_vulnerability_detector_tags[0].value #=> String
    #   resp.filters[0].criteria.code_vulnerability_file_path #=> Array
    #   resp.filters[0].criteria.code_vulnerability_file_path[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.code_vulnerability_file_path[0].value #=> String
    #   resp.filters[0].criteria.component_id #=> Array
    #   resp.filters[0].criteria.component_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.component_id[0].value #=> String
    #   resp.filters[0].criteria.component_type #=> Array
    #   resp.filters[0].criteria.component_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.component_type[0].value #=> String
    #   resp.filters[0].criteria.ec2_instance_image_id #=> Array
    #   resp.filters[0].criteria.ec2_instance_image_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ec2_instance_image_id[0].value #=> String
    #   resp.filters[0].criteria.ec2_instance_subnet_id #=> Array
    #   resp.filters[0].criteria.ec2_instance_subnet_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ec2_instance_subnet_id[0].value #=> String
    #   resp.filters[0].criteria.ec2_instance_vpc_id #=> Array
    #   resp.filters[0].criteria.ec2_instance_vpc_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ec2_instance_vpc_id[0].value #=> String
    #   resp.filters[0].criteria.ecr_image_architecture #=> Array
    #   resp.filters[0].criteria.ecr_image_architecture[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ecr_image_architecture[0].value #=> String
    #   resp.filters[0].criteria.ecr_image_hash #=> Array
    #   resp.filters[0].criteria.ecr_image_hash[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ecr_image_hash[0].value #=> String
    #   resp.filters[0].criteria.ecr_image_pushed_at #=> Array
    #   resp.filters[0].criteria.ecr_image_pushed_at[0].end_inclusive #=> Time
    #   resp.filters[0].criteria.ecr_image_pushed_at[0].start_inclusive #=> Time
    #   resp.filters[0].criteria.ecr_image_registry #=> Array
    #   resp.filters[0].criteria.ecr_image_registry[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ecr_image_registry[0].value #=> String
    #   resp.filters[0].criteria.ecr_image_repository_name #=> Array
    #   resp.filters[0].criteria.ecr_image_repository_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ecr_image_repository_name[0].value #=> String
    #   resp.filters[0].criteria.ecr_image_tags #=> Array
    #   resp.filters[0].criteria.ecr_image_tags[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.ecr_image_tags[0].value #=> String
    #   resp.filters[0].criteria.epss_score #=> Array
    #   resp.filters[0].criteria.epss_score[0].lower_inclusive #=> Float
    #   resp.filters[0].criteria.epss_score[0].upper_inclusive #=> Float
    #   resp.filters[0].criteria.exploit_available #=> Array
    #   resp.filters[0].criteria.exploit_available[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.exploit_available[0].value #=> String
    #   resp.filters[0].criteria.finding_arn #=> Array
    #   resp.filters[0].criteria.finding_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.finding_arn[0].value #=> String
    #   resp.filters[0].criteria.finding_status #=> Array
    #   resp.filters[0].criteria.finding_status[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.finding_status[0].value #=> String
    #   resp.filters[0].criteria.finding_type #=> Array
    #   resp.filters[0].criteria.finding_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.finding_type[0].value #=> String
    #   resp.filters[0].criteria.first_observed_at #=> Array
    #   resp.filters[0].criteria.first_observed_at[0].end_inclusive #=> Time
    #   resp.filters[0].criteria.first_observed_at[0].start_inclusive #=> Time
    #   resp.filters[0].criteria.fix_available #=> Array
    #   resp.filters[0].criteria.fix_available[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.fix_available[0].value #=> String
    #   resp.filters[0].criteria.inspector_score #=> Array
    #   resp.filters[0].criteria.inspector_score[0].lower_inclusive #=> Float
    #   resp.filters[0].criteria.inspector_score[0].upper_inclusive #=> Float
    #   resp.filters[0].criteria.lambda_function_execution_role_arn #=> Array
    #   resp.filters[0].criteria.lambda_function_execution_role_arn[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.lambda_function_execution_role_arn[0].value #=> String
    #   resp.filters[0].criteria.lambda_function_last_modified_at #=> Array
    #   resp.filters[0].criteria.lambda_function_last_modified_at[0].end_inclusive #=> Time
    #   resp.filters[0].criteria.lambda_function_last_modified_at[0].start_inclusive #=> Time
    #   resp.filters[0].criteria.lambda_function_layers #=> Array
    #   resp.filters[0].criteria.lambda_function_layers[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.lambda_function_layers[0].value #=> String
    #   resp.filters[0].criteria.lambda_function_name #=> Array
    #   resp.filters[0].criteria.lambda_function_name[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.lambda_function_name[0].value #=> String
    #   resp.filters[0].criteria.lambda_function_runtime #=> Array
    #   resp.filters[0].criteria.lambda_function_runtime[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.lambda_function_runtime[0].value #=> String
    #   resp.filters[0].criteria.last_observed_at #=> Array
    #   resp.filters[0].criteria.last_observed_at[0].end_inclusive #=> Time
    #   resp.filters[0].criteria.last_observed_at[0].start_inclusive #=> Time
    #   resp.filters[0].criteria.network_protocol #=> Array
    #   resp.filters[0].criteria.network_protocol[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.network_protocol[0].value #=> String
    #   resp.filters[0].criteria.port_range #=> Array
    #   resp.filters[0].criteria.port_range[0].begin_inclusive #=> Integer
    #   resp.filters[0].criteria.port_range[0].end_inclusive #=> Integer
    #   resp.filters[0].criteria.related_vulnerabilities #=> Array
    #   resp.filters[0].criteria.related_vulnerabilities[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.related_vulnerabilities[0].value #=> String
    #   resp.filters[0].criteria.resource_id #=> Array
    #   resp.filters[0].criteria.resource_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.resource_id[0].value #=> String
    #   resp.filters[0].criteria.resource_tags #=> Array
    #   resp.filters[0].criteria.resource_tags[0].comparison #=> String, one of "EQUALS"
    #   resp.filters[0].criteria.resource_tags[0].key #=> String
    #   resp.filters[0].criteria.resource_tags[0].value #=> String
    #   resp.filters[0].criteria.resource_type #=> Array
    #   resp.filters[0].criteria.resource_type[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.resource_type[0].value #=> String
    #   resp.filters[0].criteria.severity #=> Array
    #   resp.filters[0].criteria.severity[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.severity[0].value #=> String
    #   resp.filters[0].criteria.title #=> Array
    #   resp.filters[0].criteria.title[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.title[0].value #=> String
    #   resp.filters[0].criteria.updated_at #=> Array
    #   resp.filters[0].criteria.updated_at[0].end_inclusive #=> Time
    #   resp.filters[0].criteria.updated_at[0].start_inclusive #=> Time
    #   resp.filters[0].criteria.vendor_severity #=> Array
    #   resp.filters[0].criteria.vendor_severity[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vendor_severity[0].value #=> String
    #   resp.filters[0].criteria.vulnerability_id #=> Array
    #   resp.filters[0].criteria.vulnerability_id[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerability_id[0].value #=> String
    #   resp.filters[0].criteria.vulnerability_source #=> Array
    #   resp.filters[0].criteria.vulnerability_source[0].comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerability_source[0].value #=> String
    #   resp.filters[0].criteria.vulnerable_packages #=> Array
    #   resp.filters[0].criteria.vulnerable_packages[0].architecture.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].architecture.value #=> String
    #   resp.filters[0].criteria.vulnerable_packages[0].epoch.lower_inclusive #=> Float
    #   resp.filters[0].criteria.vulnerable_packages[0].epoch.upper_inclusive #=> Float
    #   resp.filters[0].criteria.vulnerable_packages[0].name.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].name.value #=> String
    #   resp.filters[0].criteria.vulnerable_packages[0].release.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].release.value #=> String
    #   resp.filters[0].criteria.vulnerable_packages[0].source_lambda_layer_arn.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].source_lambda_layer_arn.value #=> String
    #   resp.filters[0].criteria.vulnerable_packages[0].source_layer_hash.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].source_layer_hash.value #=> String
    #   resp.filters[0].criteria.vulnerable_packages[0].version.comparison #=> String, one of "EQUALS", "PREFIX", "NOT_EQUALS"
    #   resp.filters[0].criteria.vulnerable_packages[0].version.value #=> String
    #   resp.filters[0].description #=> String
    #   resp.filters[0].name #=> String
    #   resp.filters[0].owner_id #=> String
    #   resp.filters[0].reason #=> String
    #   resp.filters[0].tags #=> Hash
    #   resp.filters[0].tags["MapKey"] #=> String
    #   resp.filters[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFilters AWS API Documentation
    #
    # @overload list_filters(params = {})
    # @param [Hash] params ({})
    def list_filters(params = {}, options = {})
      req = build_request(:list_filters, params)
      req.send_request(options)
    end

    # Lists aggregated finding data for your environment based on specific
    # criteria.
    #
    # @option params [Array<Types::StringFilter>] :account_ids
    #   The Amazon Web Services account IDs to retrieve finding aggregation
    #   data for.
    #
    # @option params [Types::AggregationRequest] :aggregation_request
    #   Details of the aggregation request that is used to filter your
    #   aggregation results.
    #
    # @option params [required, String] :aggregation_type
    #   The type of the aggregation request.
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
    # @return [Types::ListFindingAggregationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingAggregationsResponse#aggregation_type #aggregation_type} => String
    #   * {Types::ListFindingAggregationsResponse#next_token #next_token} => String
    #   * {Types::ListFindingAggregationsResponse#responses #responses} => Array&lt;Types::AggregationResponse&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_finding_aggregations({
    #     account_ids: [
    #       {
    #         comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #         value: "StringInput", # required
    #       },
    #     ],
    #     aggregation_request: {
    #       account_aggregation: {
    #         finding_type: "NETWORK_REACHABILITY", # accepts NETWORK_REACHABILITY, PACKAGE_VULNERABILITY, CODE_VULNERABILITY
    #         resource_type: "AWS_EC2_INSTANCE", # accepts AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_LAMBDA_FUNCTION
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #         sort_order: "ASC", # accepts ASC, DESC
    #       },
    #       ami_aggregation: {
    #         amis: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL, AFFECTED_INSTANCES
    #         sort_order: "ASC", # accepts ASC, DESC
    #       },
    #       aws_ecr_container_aggregation: {
    #         architectures: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         image_shas: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         image_tags: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         repositories: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         resource_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #         sort_order: "ASC", # accepts ASC, DESC
    #       },
    #       ec2_instance_aggregation: {
    #         amis: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         instance_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         instance_tags: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS
    #             key: "MapKey", # required
    #             value: "MapValue",
    #           },
    #         ],
    #         operating_systems: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_by: "NETWORK_FINDINGS", # accepts NETWORK_FINDINGS, CRITICAL, HIGH, ALL
    #         sort_order: "ASC", # accepts ASC, DESC
    #       },
    #       finding_type_aggregation: {
    #         finding_type: "NETWORK_REACHABILITY", # accepts NETWORK_REACHABILITY, PACKAGE_VULNERABILITY, CODE_VULNERABILITY
    #         resource_type: "AWS_EC2_INSTANCE", # accepts AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_LAMBDA_FUNCTION
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #         sort_order: "ASC", # accepts ASC, DESC
    #       },
    #       image_layer_aggregation: {
    #         layer_hashes: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         repositories: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         resource_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #         sort_order: "ASC", # accepts ASC, DESC
    #       },
    #       lambda_function_aggregation: {
    #         function_names: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         function_tags: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS
    #             key: "MapKey", # required
    #             value: "MapValue",
    #           },
    #         ],
    #         resource_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         runtimes: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #         sort_order: "ASC", # accepts ASC, DESC
    #       },
    #       lambda_layer_aggregation: {
    #         function_names: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         layer_arns: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         resource_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #         sort_order: "ASC", # accepts ASC, DESC
    #       },
    #       package_aggregation: {
    #         package_names: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #         sort_order: "ASC", # accepts ASC, DESC
    #       },
    #       repository_aggregation: {
    #         repositories: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL, AFFECTED_IMAGES
    #         sort_order: "ASC", # accepts ASC, DESC
    #       },
    #       title_aggregation: {
    #         finding_type: "NETWORK_REACHABILITY", # accepts NETWORK_REACHABILITY, PACKAGE_VULNERABILITY, CODE_VULNERABILITY
    #         resource_type: "AWS_EC2_INSTANCE", # accepts AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_LAMBDA_FUNCTION
    #         sort_by: "CRITICAL", # accepts CRITICAL, HIGH, ALL
    #         sort_order: "ASC", # accepts ASC, DESC
    #         titles: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #         vulnerability_ids: [
    #           {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         ],
    #       },
    #     },
    #     aggregation_type: "FINDING_TYPE", # required, accepts FINDING_TYPE, PACKAGE, TITLE, REPOSITORY, AMI, AWS_EC2_INSTANCE, AWS_ECR_CONTAINER, IMAGE_LAYER, ACCOUNT, AWS_LAMBDA_FUNCTION, LAMBDA_LAYER
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregation_type #=> String, one of "FINDING_TYPE", "PACKAGE", "TITLE", "REPOSITORY", "AMI", "AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER", "IMAGE_LAYER", "ACCOUNT", "AWS_LAMBDA_FUNCTION", "LAMBDA_LAYER"
    #   resp.next_token #=> String
    #   resp.responses #=> Array
    #   resp.responses[0].account_aggregation.account_id #=> String
    #   resp.responses[0].account_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].account_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].account_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].account_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].ami_aggregation.account_id #=> String
    #   resp.responses[0].ami_aggregation.affected_instances #=> Integer
    #   resp.responses[0].ami_aggregation.ami #=> String
    #   resp.responses[0].ami_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].ami_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].ami_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].ami_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].aws_ecr_container_aggregation.account_id #=> String
    #   resp.responses[0].aws_ecr_container_aggregation.architecture #=> String
    #   resp.responses[0].aws_ecr_container_aggregation.image_sha #=> String
    #   resp.responses[0].aws_ecr_container_aggregation.image_tags #=> Array
    #   resp.responses[0].aws_ecr_container_aggregation.image_tags[0] #=> String
    #   resp.responses[0].aws_ecr_container_aggregation.repository #=> String
    #   resp.responses[0].aws_ecr_container_aggregation.resource_id #=> String
    #   resp.responses[0].aws_ecr_container_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].aws_ecr_container_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].aws_ecr_container_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].aws_ecr_container_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].ec2_instance_aggregation.account_id #=> String
    #   resp.responses[0].ec2_instance_aggregation.ami #=> String
    #   resp.responses[0].ec2_instance_aggregation.instance_id #=> String
    #   resp.responses[0].ec2_instance_aggregation.instance_tags #=> Hash
    #   resp.responses[0].ec2_instance_aggregation.instance_tags["MapKey"] #=> String
    #   resp.responses[0].ec2_instance_aggregation.network_findings #=> Integer
    #   resp.responses[0].ec2_instance_aggregation.operating_system #=> String
    #   resp.responses[0].ec2_instance_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].ec2_instance_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].ec2_instance_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].ec2_instance_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].finding_type_aggregation.account_id #=> String
    #   resp.responses[0].finding_type_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].finding_type_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].finding_type_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].finding_type_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].image_layer_aggregation.account_id #=> String
    #   resp.responses[0].image_layer_aggregation.layer_hash #=> String
    #   resp.responses[0].image_layer_aggregation.repository #=> String
    #   resp.responses[0].image_layer_aggregation.resource_id #=> String
    #   resp.responses[0].image_layer_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].image_layer_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].image_layer_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].image_layer_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].lambda_function_aggregation.account_id #=> String
    #   resp.responses[0].lambda_function_aggregation.function_name #=> String
    #   resp.responses[0].lambda_function_aggregation.lambda_tags #=> Hash
    #   resp.responses[0].lambda_function_aggregation.lambda_tags["MapKey"] #=> String
    #   resp.responses[0].lambda_function_aggregation.last_modified_at #=> Time
    #   resp.responses[0].lambda_function_aggregation.resource_id #=> String
    #   resp.responses[0].lambda_function_aggregation.runtime #=> String
    #   resp.responses[0].lambda_function_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].lambda_function_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].lambda_function_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].lambda_function_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].lambda_layer_aggregation.account_id #=> String
    #   resp.responses[0].lambda_layer_aggregation.function_name #=> String
    #   resp.responses[0].lambda_layer_aggregation.layer_arn #=> String
    #   resp.responses[0].lambda_layer_aggregation.resource_id #=> String
    #   resp.responses[0].lambda_layer_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].lambda_layer_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].lambda_layer_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].lambda_layer_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].package_aggregation.account_id #=> String
    #   resp.responses[0].package_aggregation.package_name #=> String
    #   resp.responses[0].package_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].package_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].package_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].package_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].repository_aggregation.account_id #=> String
    #   resp.responses[0].repository_aggregation.affected_images #=> Integer
    #   resp.responses[0].repository_aggregation.repository #=> String
    #   resp.responses[0].repository_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].repository_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].repository_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].repository_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].title_aggregation.account_id #=> String
    #   resp.responses[0].title_aggregation.severity_counts.all #=> Integer
    #   resp.responses[0].title_aggregation.severity_counts.critical #=> Integer
    #   resp.responses[0].title_aggregation.severity_counts.high #=> Integer
    #   resp.responses[0].title_aggregation.severity_counts.medium #=> Integer
    #   resp.responses[0].title_aggregation.title #=> String
    #   resp.responses[0].title_aggregation.vulnerability_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFindingAggregations AWS API Documentation
    #
    # @overload list_finding_aggregations(params = {})
    # @param [Hash] params ({})
    def list_finding_aggregations(params = {}, options = {})
      req = build_request(:list_finding_aggregations, params)
      req.send_request(options)
    end

    # Lists findings for your environment.
    #
    # @option params [Types::FilterCriteria] :filter_criteria
    #   Details on the filters to apply to your finding results.
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
    # @option params [Types::SortCriteria] :sort_criteria
    #   Details on the sort criteria to apply to your finding results.
    #
    # @return [Types::ListFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingsResponse#findings #findings} => Array&lt;Types::Finding&gt;
    #   * {Types::ListFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings({
    #     filter_criteria: {
    #       aws_account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       epss_score: [
    #         {
    #           lower_inclusive: 1.0,
    #           upper_inclusive: 1.0,
    #         },
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       inspector_score: [
    #         {
    #           lower_inclusive: 1.0,
    #           upper_inclusive: 1.0,
    #         },
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1,
    #         },
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "MapKey", # required
    #           value: "MapValue",
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       title: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerable_packages: [
    #         {
    #           architecture: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             lower_inclusive: 1.0,
    #             upper_inclusive: 1.0,
    #           },
    #           name: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           release: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         },
    #       ],
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_criteria: {
    #       field: "AWS_ACCOUNT_ID", # required, accepts AWS_ACCOUNT_ID, FINDING_TYPE, SEVERITY, FIRST_OBSERVED_AT, LAST_OBSERVED_AT, FINDING_STATUS, RESOURCE_TYPE, ECR_IMAGE_PUSHED_AT, ECR_IMAGE_REPOSITORY_NAME, ECR_IMAGE_REGISTRY, NETWORK_PROTOCOL, COMPONENT_TYPE, VULNERABILITY_ID, VULNERABILITY_SOURCE, INSPECTOR_SCORE, VENDOR_SEVERITY, EPSS_SCORE
    #       sort_order: "ASC", # required, accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.findings[0].aws_account_id #=> String
    #   resp.findings[0].code_vulnerability_details.cwes #=> Array
    #   resp.findings[0].code_vulnerability_details.cwes[0] #=> String
    #   resp.findings[0].code_vulnerability_details.detector_id #=> String
    #   resp.findings[0].code_vulnerability_details.detector_name #=> String
    #   resp.findings[0].code_vulnerability_details.detector_tags #=> Array
    #   resp.findings[0].code_vulnerability_details.detector_tags[0] #=> String
    #   resp.findings[0].code_vulnerability_details.file_path.end_line #=> Integer
    #   resp.findings[0].code_vulnerability_details.file_path.file_name #=> String
    #   resp.findings[0].code_vulnerability_details.file_path.file_path #=> String
    #   resp.findings[0].code_vulnerability_details.file_path.start_line #=> Integer
    #   resp.findings[0].code_vulnerability_details.reference_urls #=> Array
    #   resp.findings[0].code_vulnerability_details.reference_urls[0] #=> String
    #   resp.findings[0].code_vulnerability_details.rule_id #=> String
    #   resp.findings[0].code_vulnerability_details.source_lambda_layer_arn #=> String
    #   resp.findings[0].description #=> String
    #   resp.findings[0].epss.score #=> Float
    #   resp.findings[0].exploit_available #=> String, one of "YES", "NO"
    #   resp.findings[0].exploitability_details.last_known_exploit_at #=> Time
    #   resp.findings[0].finding_arn #=> String
    #   resp.findings[0].first_observed_at #=> Time
    #   resp.findings[0].fix_available #=> String, one of "YES", "NO", "PARTIAL"
    #   resp.findings[0].inspector_score #=> Float
    #   resp.findings[0].inspector_score_details.adjusted_cvss.adjustments #=> Array
    #   resp.findings[0].inspector_score_details.adjusted_cvss.adjustments[0].metric #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.adjustments[0].reason #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.cvss_source #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.score #=> Float
    #   resp.findings[0].inspector_score_details.adjusted_cvss.score_source #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.scoring_vector #=> String
    #   resp.findings[0].inspector_score_details.adjusted_cvss.version #=> String
    #   resp.findings[0].last_observed_at #=> Time
    #   resp.findings[0].network_reachability_details.network_path.steps #=> Array
    #   resp.findings[0].network_reachability_details.network_path.steps[0].component_id #=> String
    #   resp.findings[0].network_reachability_details.network_path.steps[0].component_type #=> String
    #   resp.findings[0].network_reachability_details.open_port_range.begin #=> Integer
    #   resp.findings[0].network_reachability_details.open_port_range.end #=> Integer
    #   resp.findings[0].network_reachability_details.protocol #=> String, one of "TCP", "UDP"
    #   resp.findings[0].package_vulnerability_details.cvss #=> Array
    #   resp.findings[0].package_vulnerability_details.cvss[0].base_score #=> Float
    #   resp.findings[0].package_vulnerability_details.cvss[0].scoring_vector #=> String
    #   resp.findings[0].package_vulnerability_details.cvss[0].source #=> String
    #   resp.findings[0].package_vulnerability_details.cvss[0].version #=> String
    #   resp.findings[0].package_vulnerability_details.reference_urls #=> Array
    #   resp.findings[0].package_vulnerability_details.reference_urls[0] #=> String
    #   resp.findings[0].package_vulnerability_details.related_vulnerabilities #=> Array
    #   resp.findings[0].package_vulnerability_details.related_vulnerabilities[0] #=> String
    #   resp.findings[0].package_vulnerability_details.source #=> String
    #   resp.findings[0].package_vulnerability_details.source_url #=> String
    #   resp.findings[0].package_vulnerability_details.vendor_created_at #=> Time
    #   resp.findings[0].package_vulnerability_details.vendor_severity #=> String
    #   resp.findings[0].package_vulnerability_details.vendor_updated_at #=> Time
    #   resp.findings[0].package_vulnerability_details.vulnerability_id #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages #=> Array
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].arch #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].epoch #=> Integer
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].file_path #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].fixed_in_version #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].name #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].package_manager #=> String, one of "BUNDLER", "CARGO", "COMPOSER", "NPM", "NUGET", "PIPENV", "POETRY", "YARN", "GOBINARY", "GOMOD", "JAR", "OS", "PIP", "PYTHONPKG", "NODEPKG", "POM", "GEMSPEC"
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].release #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].remediation #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].source_lambda_layer_arn #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].source_layer_hash #=> String
    #   resp.findings[0].package_vulnerability_details.vulnerable_packages[0].version #=> String
    #   resp.findings[0].remediation.recommendation.url #=> String
    #   resp.findings[0].remediation.recommendation.text #=> String
    #   resp.findings[0].resources #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_instance.iam_instance_profile_arn #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.image_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.ip_v4_addresses #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_instance.ip_v4_addresses[0] #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.ip_v6_addresses #=> Array
    #   resp.findings[0].resources[0].details.aws_ec2_instance.ip_v6_addresses[0] #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.key_name #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.launched_at #=> Time
    #   resp.findings[0].resources[0].details.aws_ec2_instance.platform #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.subnet_id #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.type #=> String
    #   resp.findings[0].resources[0].details.aws_ec2_instance.vpc_id #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.architecture #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.author #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.image_hash #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.image_tags #=> Array
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.image_tags[0] #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.platform #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.pushed_at #=> Time
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.registry #=> String
    #   resp.findings[0].resources[0].details.aws_ecr_container_image.repository_name #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.architectures #=> Array
    #   resp.findings[0].resources[0].details.aws_lambda_function.architectures[0] #=> String, one of "X86_64", "ARM64"
    #   resp.findings[0].resources[0].details.aws_lambda_function.code_sha_256 #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.execution_role_arn #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.function_name #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.last_modified_at #=> Time
    #   resp.findings[0].resources[0].details.aws_lambda_function.layers #=> Array
    #   resp.findings[0].resources[0].details.aws_lambda_function.layers[0] #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.package_type #=> String, one of "IMAGE", "ZIP"
    #   resp.findings[0].resources[0].details.aws_lambda_function.runtime #=> String, one of "NODEJS", "NODEJS_12_X", "NODEJS_14_X", "NODEJS_16_X", "JAVA_8", "JAVA_8_AL2", "JAVA_11", "PYTHON_3_7", "PYTHON_3_8", "PYTHON_3_9", "UNSUPPORTED", "NODEJS_18_X", "GO_1_X", "JAVA_17", "PYTHON_3_10"
    #   resp.findings[0].resources[0].details.aws_lambda_function.version #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.security_group_ids #=> Array
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.security_group_ids[0] #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.subnet_ids #=> Array
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.subnet_ids[0] #=> String
    #   resp.findings[0].resources[0].details.aws_lambda_function.vpc_config.vpc_id #=> String
    #   resp.findings[0].resources[0].id #=> String
    #   resp.findings[0].resources[0].partition #=> String
    #   resp.findings[0].resources[0].region #=> String
    #   resp.findings[0].resources[0].tags #=> Hash
    #   resp.findings[0].resources[0].tags["MapKey"] #=> String
    #   resp.findings[0].resources[0].type #=> String, one of "AWS_EC2_INSTANCE", "AWS_ECR_CONTAINER_IMAGE", "AWS_ECR_REPOSITORY", "AWS_LAMBDA_FUNCTION"
    #   resp.findings[0].severity #=> String, one of "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL", "UNTRIAGED"
    #   resp.findings[0].status #=> String, one of "ACTIVE", "SUPPRESSED", "CLOSED"
    #   resp.findings[0].title #=> String
    #   resp.findings[0].type #=> String, one of "NETWORK_REACHABILITY", "PACKAGE_VULNERABILITY", "CODE_VULNERABILITY"
    #   resp.findings[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListFindings AWS API Documentation
    #
    # @overload list_findings(params = {})
    # @param [Hash] params ({})
    def list_findings(params = {}, options = {})
      req = build_request(:list_findings, params)
      req.send_request(options)
    end

    # List members associated with the Amazon Inspector delegated
    # administrator for your organization.
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
    # @option params [Boolean] :only_associated
    #   Specifies whether to list only currently associated members if `True`
    #   or to list all members within the organization if `False`.
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
    #     max_results: 1,
    #     next_token: "NextToken",
    #     only_associated: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].account_id #=> String
    #   resp.members[0].delegated_admin_account_id #=> String
    #   resp.members[0].relationship_status #=> String, one of "CREATED", "INVITED", "DISABLED", "ENABLED", "REMOVED", "RESIGNED", "DELETED", "EMAIL_VERIFICATION_IN_PROGRESS", "EMAIL_VERIFICATION_FAILED", "REGION_DISABLED", "ACCOUNT_SUSPENDED", "CANNOT_CREATE_DETECTOR_IN_ORG_MASTER"
    #   resp.members[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListMembers AWS API Documentation
    #
    # @overload list_members(params = {})
    # @param [Hash] params ({})
    def list_members(params = {}, options = {})
      req = build_request(:list_members, params)
      req.send_request(options)
    end

    # Lists all tags attached to a given resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon resource number (ARN) of the resource to list tags of.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["MapKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the Amazon Inspector usage totals over the last 30 days.
    #
    # @option params [Array<String>] :account_ids
    #   The Amazon Web Services account IDs to retrieve usage totals for.
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
    # @return [Types::ListUsageTotalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsageTotalsResponse#next_token #next_token} => String
    #   * {Types::ListUsageTotalsResponse#totals #totals} => Array&lt;Types::UsageTotal&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_usage_totals({
    #     account_ids: ["UsageAccountId"],
    #     max_results: 1,
    #     next_token: "ListUsageTotalsNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.totals #=> Array
    #   resp.totals[0].account_id #=> String
    #   resp.totals[0].usage #=> Array
    #   resp.totals[0].usage[0].currency #=> String, one of "USD"
    #   resp.totals[0].usage[0].estimated_monthly_cost #=> Float
    #   resp.totals[0].usage[0].total #=> Float
    #   resp.totals[0].usage[0].type #=> String, one of "EC2_INSTANCE_HOURS", "ECR_INITIAL_SCAN", "ECR_RESCAN", "LAMBDA_FUNCTION_HOURS", "LAMBDA_FUNCTION_CODE_HOURS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ListUsageTotals AWS API Documentation
    #
    # @overload list_usage_totals(params = {})
    # @param [Hash] params ({})
    def list_usage_totals(params = {}, options = {})
      req = build_request(:list_usage_totals, params)
      req.send_request(options)
    end

    # Resets an encryption key. After the key is reset your resources will
    # be encrypted by an Amazon Web Services owned key.
    #
    # @option params [required, String] :resource_type
    #   The resource type the key encrypts.
    #
    # @option params [required, String] :scan_type
    #   The scan type the key encrypts.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_encryption_key({
    #     resource_type: "AWS_EC2_INSTANCE", # required, accepts AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_ECR_REPOSITORY, AWS_LAMBDA_FUNCTION
    #     scan_type: "NETWORK", # required, accepts NETWORK, PACKAGE, CODE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/ResetEncryptionKey AWS API Documentation
    #
    # @overload reset_encryption_key(params = {})
    # @param [Hash] params ({})
    def reset_encryption_key(params = {}, options = {})
      req = build_request(:reset_encryption_key, params)
      req.send_request(options)
    end

    # Lists Amazon Inspector coverage details for a specific vulnerability.
    #
    # @option params [required, Types::SearchVulnerabilitiesFilterCriteria] :filter_criteria
    #   The criteria used to filter the results of a vulnerability search.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request to a list action. For subsequent calls, use the `NextToken`
    #   value returned from the previous request to continue listing results
    #   after the first page.
    #
    # @return [Types::SearchVulnerabilitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchVulnerabilitiesResponse#next_token #next_token} => String
    #   * {Types::SearchVulnerabilitiesResponse#vulnerabilities #vulnerabilities} => Array&lt;Types::Vulnerability&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_vulnerabilities({
    #     filter_criteria: { # required
    #       vulnerability_ids: ["VulnId"], # required
    #     },
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.vulnerabilities #=> Array
    #   resp.vulnerabilities[0].atig_data.first_seen #=> Time
    #   resp.vulnerabilities[0].atig_data.last_seen #=> Time
    #   resp.vulnerabilities[0].atig_data.targets #=> Array
    #   resp.vulnerabilities[0].atig_data.targets[0] #=> String
    #   resp.vulnerabilities[0].atig_data.ttps #=> Array
    #   resp.vulnerabilities[0].atig_data.ttps[0] #=> String
    #   resp.vulnerabilities[0].cisa_data.action #=> String
    #   resp.vulnerabilities[0].cisa_data.date_added #=> Time
    #   resp.vulnerabilities[0].cisa_data.date_due #=> Time
    #   resp.vulnerabilities[0].cvss2.base_score #=> Float
    #   resp.vulnerabilities[0].cvss2.scoring_vector #=> String
    #   resp.vulnerabilities[0].cvss3.base_score #=> Float
    #   resp.vulnerabilities[0].cvss3.scoring_vector #=> String
    #   resp.vulnerabilities[0].cwes #=> Array
    #   resp.vulnerabilities[0].cwes[0] #=> String
    #   resp.vulnerabilities[0].description #=> String
    #   resp.vulnerabilities[0].detection_platforms #=> Array
    #   resp.vulnerabilities[0].detection_platforms[0] #=> String
    #   resp.vulnerabilities[0].epss.score #=> Float
    #   resp.vulnerabilities[0].exploit_observed.first_seen #=> Time
    #   resp.vulnerabilities[0].exploit_observed.last_seen #=> Time
    #   resp.vulnerabilities[0].id #=> String
    #   resp.vulnerabilities[0].reference_urls #=> Array
    #   resp.vulnerabilities[0].reference_urls[0] #=> String
    #   resp.vulnerabilities[0].related_vulnerabilities #=> Array
    #   resp.vulnerabilities[0].related_vulnerabilities[0] #=> String
    #   resp.vulnerabilities[0].source #=> String, one of "NVD"
    #   resp.vulnerabilities[0].source_url #=> String
    #   resp.vulnerabilities[0].vendor_created_at #=> Time
    #   resp.vulnerabilities[0].vendor_severity #=> String
    #   resp.vulnerabilities[0].vendor_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/SearchVulnerabilities AWS API Documentation
    #
    # @overload search_vulnerabilities(params = {})
    # @param [Hash] params ({})
    def search_vulnerabilities(params = {}, options = {})
      req = build_request(:search_vulnerabilities, params)
      req.send_request(options)
    end

    # Adds tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to apply a tag to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to be added to a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "MapKey" => "MapValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
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
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates setting configurations for your Amazon Inspector account. When
    # you use this API as an Amazon Inspector delegated administrator this
    # updates the setting for all accounts you manage. Member accounts in an
    # organization cannot update this setting.
    #
    # @option params [required, Types::EcrConfiguration] :ecr_configuration
    #   Specifies how the ECR automated re-scan will be updated for your
    #   environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration({
    #     ecr_configuration: { # required
    #       rescan_duration: "LIFETIME", # required, accepts LIFETIME, DAYS_30, DAYS_180
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateConfiguration AWS API Documentation
    #
    # @overload update_configuration(params = {})
    # @param [Hash] params ({})
    def update_configuration(params = {}, options = {})
      req = build_request(:update_configuration, params)
      req.send_request(options)
    end

    # Activates, deactivates Amazon Inspector deep inspection, or updates
    # custom paths for your account.
    #
    # @option params [Boolean] :activate_deep_inspection
    #   Specify `TRUE` to activate Amazon Inspector deep inspection in your
    #   account, or `FALSE` to deactivate. Member accounts in an organization
    #   cannot deactivate deep inspection, instead the delegated administrator
    #   for the organization can deactivate a member account using
    #   [BatchUpdateMemberEc2DeepInspectionStatus][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/inspector/v2/APIReference/API_BatchUpdateMemberEc2DeepInspectionStatus.html
    #
    # @option params [Array<String>] :package_paths
    #   The Amazon Inspector deep inspection custom paths you are adding for
    #   your account.
    #
    # @return [Types::UpdateEc2DeepInspectionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEc2DeepInspectionConfigurationResponse#error_message #error_message} => String
    #   * {Types::UpdateEc2DeepInspectionConfigurationResponse#org_package_paths #org_package_paths} => Array&lt;String&gt;
    #   * {Types::UpdateEc2DeepInspectionConfigurationResponse#package_paths #package_paths} => Array&lt;String&gt;
    #   * {Types::UpdateEc2DeepInspectionConfigurationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ec2_deep_inspection_configuration({
    #     activate_deep_inspection: false,
    #     package_paths: ["Path"],
    #   })
    #
    # @example Response structure
    #
    #   resp.error_message #=> String
    #   resp.org_package_paths #=> Array
    #   resp.org_package_paths[0] #=> String
    #   resp.package_paths #=> Array
    #   resp.package_paths[0] #=> String
    #   resp.status #=> String, one of "ACTIVATED", "DEACTIVATED", "PENDING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateEc2DeepInspectionConfiguration AWS API Documentation
    #
    # @overload update_ec2_deep_inspection_configuration(params = {})
    # @param [Hash] params ({})
    def update_ec2_deep_inspection_configuration(params = {}, options = {})
      req = build_request(:update_ec2_deep_inspection_configuration, params)
      req.send_request(options)
    end

    # Updates an encryption key. A `ResourceNotFoundException` means that an
    # AWS owned key is being used for encryption.
    #
    # @option params [required, String] :kms_key_id
    #   A KMS key ID for the encryption key.
    #
    # @option params [required, String] :resource_type
    #   The resource type for the encryption key.
    #
    # @option params [required, String] :scan_type
    #   The scan type for the encryption key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_encryption_key({
    #     kms_key_id: "KmsKeyArn", # required
    #     resource_type: "AWS_EC2_INSTANCE", # required, accepts AWS_EC2_INSTANCE, AWS_ECR_CONTAINER_IMAGE, AWS_ECR_REPOSITORY, AWS_LAMBDA_FUNCTION
    #     scan_type: "NETWORK", # required, accepts NETWORK, PACKAGE, CODE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateEncryptionKey AWS API Documentation
    #
    # @overload update_encryption_key(params = {})
    # @param [Hash] params ({})
    def update_encryption_key(params = {}, options = {})
      req = build_request(:update_encryption_key, params)
      req.send_request(options)
    end

    # Specifies the action that is to be applied to the findings that match
    # the filter.
    #
    # @option params [String] :action
    #   Specifies the action that is to be applied to the findings that match
    #   the filter.
    #
    # @option params [String] :description
    #   A description of the filter.
    #
    # @option params [required, String] :filter_arn
    #   The Amazon Resource Number (ARN) of the filter to update.
    #
    # @option params [Types::FilterCriteria] :filter_criteria
    #   Defines the criteria to be update in the filter.
    #
    # @option params [String] :name
    #   The name of the filter.
    #
    # @option params [String] :reason
    #   The reason the filter was updated.
    #
    # @return [Types::UpdateFilterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFilterResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_filter({
    #     action: "NONE", # accepts NONE, SUPPRESS
    #     description: "FilterDescription",
    #     filter_arn: "FilterArn", # required
    #     filter_criteria: {
    #       aws_account_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_detector_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       code_vulnerability_file_path: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       component_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_image_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_subnet_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ec2_instance_vpc_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_architecture: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_hash: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_pushed_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       ecr_image_registry: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_repository_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       ecr_image_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       epss_score: [
    #         {
    #           lower_inclusive: 1.0,
    #           upper_inclusive: 1.0,
    #         },
    #       ],
    #       exploit_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_status: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       finding_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       first_observed_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       fix_available: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       inspector_score: [
    #         {
    #           lower_inclusive: 1.0,
    #           upper_inclusive: 1.0,
    #         },
    #       ],
    #       lambda_function_execution_role_arn: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_last_modified_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       lambda_function_layers: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_name: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       lambda_function_runtime: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       last_observed_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       network_protocol: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       port_range: [
    #         {
    #           begin_inclusive: 1,
    #           end_inclusive: 1,
    #         },
    #       ],
    #       related_vulnerabilities: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       resource_tags: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS
    #           key: "MapKey", # required
    #           value: "MapValue",
    #         },
    #       ],
    #       resource_type: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       title: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       updated_at: [
    #         {
    #           end_inclusive: Time.now,
    #           start_inclusive: Time.now,
    #         },
    #       ],
    #       vendor_severity: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_id: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerability_source: [
    #         {
    #           comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #           value: "StringInput", # required
    #         },
    #       ],
    #       vulnerable_packages: [
    #         {
    #           architecture: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           epoch: {
    #             lower_inclusive: 1.0,
    #             upper_inclusive: 1.0,
    #           },
    #           name: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           release: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_lambda_layer_arn: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           source_layer_hash: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #           version: {
    #             comparison: "EQUALS", # required, accepts EQUALS, PREFIX, NOT_EQUALS
    #             value: "StringInput", # required
    #           },
    #         },
    #       ],
    #     },
    #     name: "FilterName",
    #     reason: "FilterReason",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateFilter AWS API Documentation
    #
    # @overload update_filter(params = {})
    # @param [Hash] params ({})
    def update_filter(params = {}, options = {})
      req = build_request(:update_filter, params)
      req.send_request(options)
    end

    # Updates the Amazon Inspector deep inspection custom paths for your
    # organization. You must be an Amazon Inspector delegated administrator
    # to use this API.
    #
    # @option params [required, Array<String>] :org_package_paths
    #   The Amazon Inspector deep inspection custom paths you are adding for
    #   your organization.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_org_ec2_deep_inspection_configuration({
    #     org_package_paths: ["Path"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateOrgEc2DeepInspectionConfiguration AWS API Documentation
    #
    # @overload update_org_ec2_deep_inspection_configuration(params = {})
    # @param [Hash] params ({})
    def update_org_ec2_deep_inspection_configuration(params = {}, options = {})
      req = build_request(:update_org_ec2_deep_inspection_configuration, params)
      req.send_request(options)
    end

    # Updates the configurations for your Amazon Inspector organization.
    #
    # @option params [required, Types::AutoEnable] :auto_enable
    #   Defines which scan types are enabled automatically for new members of
    #   your Amazon Inspector organization.
    #
    # @return [Types::UpdateOrganizationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateOrganizationConfigurationResponse#auto_enable #auto_enable} => Types::AutoEnable
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration({
    #     auto_enable: { # required
    #       ec2: false, # required
    #       ecr: false, # required
    #       lambda: false,
    #       lambda_code: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_enable.ec2 #=> Boolean
    #   resp.auto_enable.ecr #=> Boolean
    #   resp.auto_enable.lambda #=> Boolean
    #   resp.auto_enable.lambda_code #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/inspector2-2020-06-08/UpdateOrganizationConfiguration AWS API Documentation
    #
    # @overload update_organization_configuration(params = {})
    # @param [Hash] params ({})
    def update_organization_configuration(params = {}, options = {})
      req = build_request(:update_organization_configuration, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-inspector2'
      context[:gem_version] = '1.19.0'
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
