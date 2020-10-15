# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:accessanalyzer)

module Aws::AccessAnalyzer
  # An API client for AccessAnalyzer.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AccessAnalyzer::Client.new(
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

    @identifier = :accessanalyzer

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # Retroactively applies the archive rule to existing findings that meet
    # the archive rule criteria.
    #
    # @option params [required, String] :analyzer_arn
    #   The Amazon resource name (ARN) of the analyzer.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :rule_name
    #   The name of the rule to apply.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_archive_rule({
    #     analyzer_arn: "AnalyzerArn", # required
    #     client_token: "String",
    #     rule_name: "Name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ApplyArchiveRule AWS API Documentation
    #
    # @overload apply_archive_rule(params = {})
    # @param [Hash] params ({})
    def apply_archive_rule(params = {}, options = {})
      req = build_request(:apply_archive_rule, params)
      req.send_request(options)
    end

    # Creates an analyzer for your account.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer to create.
    #
    # @option params [Array<Types::InlineArchiveRule>] :archive_rules
    #   Specifies the archive rules to add for the analyzer. Archive rules
    #   automatically archive findings that meet the criteria you define for
    #   the rule.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the analyzer.
    #
    # @option params [required, String] :type
    #   The type of analyzer to create. Only ACCOUNT analyzers are supported.
    #   You can create only one analyzer per account per Region.
    #
    # @return [Types::CreateAnalyzerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAnalyzerResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_analyzer({
    #     analyzer_name: "Name", # required
    #     archive_rules: [
    #       {
    #         filter: { # required
    #           "String" => {
    #             contains: ["String"],
    #             eq: ["String"],
    #             exists: false,
    #             neq: ["String"],
    #           },
    #         },
    #         rule_name: "Name", # required
    #       },
    #     ],
    #     client_token: "String",
    #     tags: {
    #       "String" => "String",
    #     },
    #     type: "ACCOUNT", # required, accepts ACCOUNT, ORGANIZATION
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/CreateAnalyzer AWS API Documentation
    #
    # @overload create_analyzer(params = {})
    # @param [Hash] params ({})
    def create_analyzer(params = {}, options = {})
      req = build_request(:create_analyzer, params)
      req.send_request(options)
    end

    # Creates an archive rule for the specified analyzer. Archive rules
    # automatically archive new findings that meet the criteria you define
    # when you create the rule.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the created analyzer.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Hash<String,Types::Criterion>] :filter
    #   The criteria for the rule.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule to create.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_archive_rule({
    #     analyzer_name: "Name", # required
    #     client_token: "String",
    #     filter: { # required
    #       "String" => {
    #         contains: ["String"],
    #         eq: ["String"],
    #         exists: false,
    #         neq: ["String"],
    #       },
    #     },
    #     rule_name: "Name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/CreateArchiveRule AWS API Documentation
    #
    # @overload create_archive_rule(params = {})
    # @param [Hash] params ({})
    def create_archive_rule(params = {}, options = {})
      req = build_request(:create_archive_rule, params)
      req.send_request(options)
    end

    # Deletes the specified analyzer. When you delete an analyzer, Access
    # Analyzer is disabled for the account in the current or specific
    # Region. All findings that were generated by the analyzer are deleted.
    # You cannot undo this action.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer to delete.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_analyzer({
    #     analyzer_name: "Name", # required
    #     client_token: "String",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/DeleteAnalyzer AWS API Documentation
    #
    # @overload delete_analyzer(params = {})
    # @param [Hash] params ({})
    def delete_analyzer(params = {}, options = {})
      req = build_request(:delete_analyzer, params)
      req.send_request(options)
    end

    # Deletes the specified archive rule.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer that associated with the archive rule to
    #   delete.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :rule_name
    #   The name of the rule to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_archive_rule({
    #     analyzer_name: "Name", # required
    #     client_token: "String",
    #     rule_name: "Name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/DeleteArchiveRule AWS API Documentation
    #
    # @overload delete_archive_rule(params = {})
    # @param [Hash] params ({})
    def delete_archive_rule(params = {}, options = {})
      req = build_request(:delete_archive_rule, params)
      req.send_request(options)
    end

    # Retrieves information about a resource that was analyzed.
    #
    # @option params [required, String] :analyzer_arn
    #   The ARN of the analyzer to retrieve information from.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to retrieve information about.
    #
    # @return [Types::GetAnalyzedResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnalyzedResourceResponse#resource #resource} => Types::AnalyzedResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_analyzed_resource({
    #     analyzer_arn: "AnalyzerArn", # required
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource.actions #=> Array
    #   resp.resource.actions[0] #=> String
    #   resp.resource.analyzed_at #=> Time
    #   resp.resource.created_at #=> Time
    #   resp.resource.error #=> String
    #   resp.resource.is_public #=> Boolean
    #   resp.resource.resource_arn #=> String
    #   resp.resource.resource_owner_account #=> String
    #   resp.resource.resource_type #=> String, one of "AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key"
    #   resp.resource.shared_via #=> Array
    #   resp.resource.shared_via[0] #=> String
    #   resp.resource.status #=> String, one of "ACTIVE", "ARCHIVED", "RESOLVED"
    #   resp.resource.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetAnalyzedResource AWS API Documentation
    #
    # @overload get_analyzed_resource(params = {})
    # @param [Hash] params ({})
    def get_analyzed_resource(params = {}, options = {})
      req = build_request(:get_analyzed_resource, params)
      req.send_request(options)
    end

    # Retrieves information about the specified analyzer.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer retrieved.
    #
    # @return [Types::GetAnalyzerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnalyzerResponse#analyzer #analyzer} => Types::AnalyzerSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_analyzer({
    #     analyzer_name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.analyzer.arn #=> String
    #   resp.analyzer.created_at #=> Time
    #   resp.analyzer.last_resource_analyzed #=> String
    #   resp.analyzer.last_resource_analyzed_at #=> Time
    #   resp.analyzer.name #=> String
    #   resp.analyzer.status #=> String, one of "ACTIVE", "CREATING", "DISABLED", "FAILED"
    #   resp.analyzer.status_reason.code #=> String, one of "AWS_SERVICE_ACCESS_DISABLED", "DELEGATED_ADMINISTRATOR_DEREGISTERED", "ORGANIZATION_DELETED", "SERVICE_LINKED_ROLE_CREATION_FAILED"
    #   resp.analyzer.tags #=> Hash
    #   resp.analyzer.tags["String"] #=> String
    #   resp.analyzer.type #=> String, one of "ACCOUNT", "ORGANIZATION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetAnalyzer AWS API Documentation
    #
    # @overload get_analyzer(params = {})
    # @param [Hash] params ({})
    def get_analyzer(params = {}, options = {})
      req = build_request(:get_analyzer, params)
      req.send_request(options)
    end

    # Retrieves information about an archive rule.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer to retrieve rules from.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule to retrieve.
    #
    # @return [Types::GetArchiveRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetArchiveRuleResponse#archive_rule #archive_rule} => Types::ArchiveRuleSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_archive_rule({
    #     analyzer_name: "Name", # required
    #     rule_name: "Name", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.archive_rule.created_at #=> Time
    #   resp.archive_rule.filter #=> Hash
    #   resp.archive_rule.filter["String"].contains #=> Array
    #   resp.archive_rule.filter["String"].contains[0] #=> String
    #   resp.archive_rule.filter["String"].eq #=> Array
    #   resp.archive_rule.filter["String"].eq[0] #=> String
    #   resp.archive_rule.filter["String"].exists #=> Boolean
    #   resp.archive_rule.filter["String"].neq #=> Array
    #   resp.archive_rule.filter["String"].neq[0] #=> String
    #   resp.archive_rule.rule_name #=> String
    #   resp.archive_rule.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetArchiveRule AWS API Documentation
    #
    # @overload get_archive_rule(params = {})
    # @param [Hash] params ({})
    def get_archive_rule(params = {}, options = {})
      req = build_request(:get_archive_rule, params)
      req.send_request(options)
    end

    # Retrieves information about the specified finding.
    #
    # @option params [required, String] :analyzer_arn
    #   The ARN of the analyzer that generated the finding.
    #
    # @option params [required, String] :id
    #   The ID of the finding to retrieve.
    #
    # @return [Types::GetFindingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingResponse#finding #finding} => Types::Finding
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_finding({
    #     analyzer_arn: "AnalyzerArn", # required
    #     id: "FindingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.finding.action #=> Array
    #   resp.finding.action[0] #=> String
    #   resp.finding.analyzed_at #=> Time
    #   resp.finding.condition #=> Hash
    #   resp.finding.condition["String"] #=> String
    #   resp.finding.created_at #=> Time
    #   resp.finding.error #=> String
    #   resp.finding.id #=> String
    #   resp.finding.is_public #=> Boolean
    #   resp.finding.principal #=> Hash
    #   resp.finding.principal["String"] #=> String
    #   resp.finding.resource #=> String
    #   resp.finding.resource_owner_account #=> String
    #   resp.finding.resource_type #=> String, one of "AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key"
    #   resp.finding.sources #=> Array
    #   resp.finding.sources[0].detail.access_point_arn #=> String
    #   resp.finding.sources[0].type #=> String, one of "POLICY", "BUCKET_ACL", "S3_ACCESS_POINT"
    #   resp.finding.status #=> String, one of "ACTIVE", "ARCHIVED", "RESOLVED"
    #   resp.finding.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/GetFinding AWS API Documentation
    #
    # @overload get_finding(params = {})
    # @param [Hash] params ({})
    def get_finding(params = {}, options = {})
      req = build_request(:get_finding, params)
      req.send_request(options)
    end

    # Retrieves a list of resources of the specified type that have been
    # analyzed by the specified analyzer..
    #
    # @option params [required, String] :analyzer_arn
    #   The ARN of the analyzer to retrieve a list of analyzed resources from.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned.
    #
    # @option params [String] :resource_type
    #   The type of resource.
    #
    # @return [Types::ListAnalyzedResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnalyzedResourcesResponse#analyzed_resources #analyzed_resources} => Array&lt;Types::AnalyzedResourceSummary&gt;
    #   * {Types::ListAnalyzedResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_analyzed_resources({
    #     analyzer_arn: "AnalyzerArn", # required
    #     max_results: 1,
    #     next_token: "Token",
    #     resource_type: "AWS::S3::Bucket", # accepts AWS::S3::Bucket, AWS::IAM::Role, AWS::SQS::Queue, AWS::Lambda::Function, AWS::Lambda::LayerVersion, AWS::KMS::Key
    #   })
    #
    # @example Response structure
    #
    #   resp.analyzed_resources #=> Array
    #   resp.analyzed_resources[0].resource_arn #=> String
    #   resp.analyzed_resources[0].resource_owner_account #=> String
    #   resp.analyzed_resources[0].resource_type #=> String, one of "AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListAnalyzedResources AWS API Documentation
    #
    # @overload list_analyzed_resources(params = {})
    # @param [Hash] params ({})
    def list_analyzed_resources(params = {}, options = {})
      req = build_request(:list_analyzed_resources, params)
      req.send_request(options)
    end

    # Retrieves a list of analyzers.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned.
    #
    # @option params [String] :type
    #   The type of analyzer.
    #
    # @return [Types::ListAnalyzersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnalyzersResponse#analyzers #analyzers} => Array&lt;Types::AnalyzerSummary&gt;
    #   * {Types::ListAnalyzersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_analyzers({
    #     max_results: 1,
    #     next_token: "Token",
    #     type: "ACCOUNT", # accepts ACCOUNT, ORGANIZATION
    #   })
    #
    # @example Response structure
    #
    #   resp.analyzers #=> Array
    #   resp.analyzers[0].arn #=> String
    #   resp.analyzers[0].created_at #=> Time
    #   resp.analyzers[0].last_resource_analyzed #=> String
    #   resp.analyzers[0].last_resource_analyzed_at #=> Time
    #   resp.analyzers[0].name #=> String
    #   resp.analyzers[0].status #=> String, one of "ACTIVE", "CREATING", "DISABLED", "FAILED"
    #   resp.analyzers[0].status_reason.code #=> String, one of "AWS_SERVICE_ACCESS_DISABLED", "DELEGATED_ADMINISTRATOR_DEREGISTERED", "ORGANIZATION_DELETED", "SERVICE_LINKED_ROLE_CREATION_FAILED"
    #   resp.analyzers[0].tags #=> Hash
    #   resp.analyzers[0].tags["String"] #=> String
    #   resp.analyzers[0].type #=> String, one of "ACCOUNT", "ORGANIZATION"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListAnalyzers AWS API Documentation
    #
    # @overload list_analyzers(params = {})
    # @param [Hash] params ({})
    def list_analyzers(params = {}, options = {})
      req = build_request(:list_analyzers, params)
      req.send_request(options)
    end

    # Retrieves a list of archive rules created for the specified analyzer.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer to retrieve rules from.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the request.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned.
    #
    # @return [Types::ListArchiveRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListArchiveRulesResponse#archive_rules #archive_rules} => Array&lt;Types::ArchiveRuleSummary&gt;
    #   * {Types::ListArchiveRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_archive_rules({
    #     analyzer_name: "Name", # required
    #     max_results: 1,
    #     next_token: "Token",
    #   })
    #
    # @example Response structure
    #
    #   resp.archive_rules #=> Array
    #   resp.archive_rules[0].created_at #=> Time
    #   resp.archive_rules[0].filter #=> Hash
    #   resp.archive_rules[0].filter["String"].contains #=> Array
    #   resp.archive_rules[0].filter["String"].contains[0] #=> String
    #   resp.archive_rules[0].filter["String"].eq #=> Array
    #   resp.archive_rules[0].filter["String"].eq[0] #=> String
    #   resp.archive_rules[0].filter["String"].exists #=> Boolean
    #   resp.archive_rules[0].filter["String"].neq #=> Array
    #   resp.archive_rules[0].filter["String"].neq[0] #=> String
    #   resp.archive_rules[0].rule_name #=> String
    #   resp.archive_rules[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListArchiveRules AWS API Documentation
    #
    # @overload list_archive_rules(params = {})
    # @param [Hash] params ({})
    def list_archive_rules(params = {}, options = {})
      req = build_request(:list_archive_rules, params)
      req.send_request(options)
    end

    # Retrieves a list of findings generated by the specified analyzer.
    #
    # @option params [required, String] :analyzer_arn
    #   The ARN of the analyzer to retrieve findings from.
    #
    # @option params [Hash<String,Types::Criterion>] :filter
    #   A filter to match for the findings to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token used for pagination of results returned.
    #
    # @option params [Types::SortCriteria] :sort
    #   The sort order for the findings returned.
    #
    # @return [Types::ListFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingsResponse#findings #findings} => Array&lt;Types::FindingSummary&gt;
    #   * {Types::ListFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings({
    #     analyzer_arn: "AnalyzerArn", # required
    #     filter: {
    #       "String" => {
    #         contains: ["String"],
    #         eq: ["String"],
    #         exists: false,
    #         neq: ["String"],
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "Token",
    #     sort: {
    #       attribute_name: "String",
    #       order_by: "ASC", # accepts ASC, DESC
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.findings[0].action #=> Array
    #   resp.findings[0].action[0] #=> String
    #   resp.findings[0].analyzed_at #=> Time
    #   resp.findings[0].condition #=> Hash
    #   resp.findings[0].condition["String"] #=> String
    #   resp.findings[0].created_at #=> Time
    #   resp.findings[0].error #=> String
    #   resp.findings[0].id #=> String
    #   resp.findings[0].is_public #=> Boolean
    #   resp.findings[0].principal #=> Hash
    #   resp.findings[0].principal["String"] #=> String
    #   resp.findings[0].resource #=> String
    #   resp.findings[0].resource_owner_account #=> String
    #   resp.findings[0].resource_type #=> String, one of "AWS::S3::Bucket", "AWS::IAM::Role", "AWS::SQS::Queue", "AWS::Lambda::Function", "AWS::Lambda::LayerVersion", "AWS::KMS::Key"
    #   resp.findings[0].sources #=> Array
    #   resp.findings[0].sources[0].detail.access_point_arn #=> String
    #   resp.findings[0].sources[0].type #=> String, one of "POLICY", "BUCKET_ACL", "S3_ACCESS_POINT"
    #   resp.findings[0].status #=> String, one of "ACTIVE", "ARCHIVED", "RESOLVED"
    #   resp.findings[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListFindings AWS API Documentation
    #
    # @overload list_findings(params = {})
    # @param [Hash] params ({})
    def list_findings(params = {}, options = {})
      req = build_request(:list_findings, params)
      req.send_request(options)
    end

    # Retrieves a list of tags applied to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to retrieve tags from.
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
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Immediately starts a scan of the policies applied to the specified
    # resource.
    #
    # @option params [required, String] :analyzer_arn
    #   The ARN of the analyzer to use to scan the policies applied to the
    #   specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to scan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_resource_scan({
    #     analyzer_arn: "AnalyzerArn", # required
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/StartResourceScan AWS API Documentation
    #
    # @overload start_resource_scan(params = {})
    # @param [Hash] params ({})
    def start_resource_scan(params = {}, options = {})
      req = build_request(:start_resource_scan, params)
      req.send_request(options)
    end

    # Adds a tag to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to add the tag to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to remove the tag from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The key for the tag to add.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the criteria and values for the specified archive rule.
    #
    # @option params [required, String] :analyzer_name
    #   The name of the analyzer to update the archive rules for.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Hash<String,Types::Criterion>] :filter
    #   A filter to match for the rules to update. Only rules that match the
    #   filter are updated.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_archive_rule({
    #     analyzer_name: "Name", # required
    #     client_token: "String",
    #     filter: { # required
    #       "String" => {
    #         contains: ["String"],
    #         eq: ["String"],
    #         exists: false,
    #         neq: ["String"],
    #       },
    #     },
    #     rule_name: "Name", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/UpdateArchiveRule AWS API Documentation
    #
    # @overload update_archive_rule(params = {})
    # @param [Hash] params ({})
    def update_archive_rule(params = {}, options = {})
      req = build_request(:update_archive_rule, params)
      req.send_request(options)
    end

    # Updates the status for the specified findings.
    #
    # @option params [required, String] :analyzer_arn
    #   The ARN of the analyzer that generated the findings to update.
    #
    # @option params [String] :client_token
    #   A client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<String>] :ids
    #   The IDs of the findings to update.
    #
    # @option params [String] :resource_arn
    #   The ARN of the resource identified in the finding.
    #
    # @option params [required, String] :status
    #   The state represents the action to take to update the finding Status.
    #   Use `ARCHIVE` to change an Active finding to an Archived finding. Use
    #   `ACTIVE` to change an Archived finding to an Active finding.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_findings({
    #     analyzer_arn: "AnalyzerArn", # required
    #     client_token: "String",
    #     ids: ["FindingId"],
    #     resource_arn: "ResourceArn",
    #     status: "ACTIVE", # required, accepts ACTIVE, ARCHIVED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/accessanalyzer-2019-11-01/UpdateFindings AWS API Documentation
    #
    # @overload update_findings(params = {})
    # @param [Hash] params ({})
    def update_findings(params = {}, options = {})
      req = build_request(:update_findings, params)
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
      context[:gem_name] = 'aws-sdk-accessanalyzer'
      context[:gem_version] = '1.13.0'
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
