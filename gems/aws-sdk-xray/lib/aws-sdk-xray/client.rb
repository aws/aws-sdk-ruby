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

Aws::Plugins::GlobalConfiguration.add_identifier(:xray)

module Aws::XRay
  # An API client for XRay.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::XRay::Client.new(
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

    @identifier = :xray

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

    # Retrieves a list of traces specified by ID. Each trace is a collection
    # of segment documents that originates from a single request. Use
    # `GetTraceSummaries` to get a list of trace IDs.
    #
    # @option params [required, Array<String>] :trace_ids
    #   Specify the trace IDs of requests for which to retrieve segments.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::BatchGetTracesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetTracesResult#traces #traces} => Array&lt;Types::Trace&gt;
    #   * {Types::BatchGetTracesResult#unprocessed_trace_ids #unprocessed_trace_ids} => Array&lt;String&gt;
    #   * {Types::BatchGetTracesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_traces({
    #     trace_ids: ["TraceId"], # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.traces #=> Array
    #   resp.traces[0].id #=> String
    #   resp.traces[0].duration #=> Float
    #   resp.traces[0].limit_exceeded #=> Boolean
    #   resp.traces[0].segments #=> Array
    #   resp.traces[0].segments[0].id #=> String
    #   resp.traces[0].segments[0].document #=> String
    #   resp.unprocessed_trace_ids #=> Array
    #   resp.unprocessed_trace_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/BatchGetTraces AWS API Documentation
    #
    # @overload batch_get_traces(params = {})
    # @param [Hash] params ({})
    def batch_get_traces(params = {}, options = {})
      req = build_request(:batch_get_traces, params)
      req.send_request(options)
    end

    # Creates a group resource with a name and a filter expression.
    #
    # @option params [required, String] :group_name
    #   The case-sensitive name of the new group. Default is a reserved name
    #   and names must be unique.
    #
    # @option params [String] :filter_expression
    #   The filter expression defining criteria by which to group traces.
    #
    # @option params [Types::InsightsConfiguration] :insights_configuration
    #   The structure containing configurations related to insights.
    #
    #   * The InsightsEnabled boolean can be set to true to enable insights
    #     for the new group or false to disable insights for the new group.
    #
    #   * The NotifcationsEnabled boolean can be set to true to enable
    #     insights notifications for the new group. Notifications may only be
    #     enabled on a group with InsightsEnabled set to true.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map that contains one or more tag keys and tag values to attach to
    #   an X-Ray group. For more information about ways to use tags, see
    #   [Tagging AWS resources][1] in the *AWS General Reference*.
    #
    #   The following restrictions apply to tags:
    #
    #   * Maximum number of user-applied tags per resource: 50
    #
    #   * Maximum tag key length: 128 Unicode characters
    #
    #   * Maximum tag value length: 256 Unicode characters
    #
    #   * Valid values for key and value: a-z, A-Z, 0-9, space, and the
    #     following characters: \_ . : / = + - and @
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Don't use `aws:` as a prefix for keys; it's reserved for AWS use.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupResult#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     group_name: "GroupName", # required
    #     filter_expression: "FilterExpression",
    #     insights_configuration: {
    #       insights_enabled: false,
    #       notifications_enabled: false,
    #     },
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
    #   resp.group.group_name #=> String
    #   resp.group.group_arn #=> String
    #   resp.group.filter_expression #=> String
    #   resp.group.insights_configuration.insights_enabled #=> Boolean
    #   resp.group.insights_configuration.notifications_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Creates a rule to control sampling behavior for instrumented
    # applications. Services retrieve rules with GetSamplingRules, and
    # evaluate each rule in ascending order of *priority* for each request.
    # If a rule matches, the service records a trace, borrowing it from the
    # reservoir size. After 10 seconds, the service reports back to X-Ray
    # with GetSamplingTargets to get updated versions of each in-use rule.
    # The updated rule contains a trace quota that the service can use
    # instead of borrowing from the reservoir.
    #
    # @option params [required, Types::SamplingRule] :sampling_rule
    #   The rule definition.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map that contains one or more tag keys and tag values to attach to
    #   an X-Ray sampling rule. For more information about ways to use tags,
    #   see [Tagging AWS resources][1] in the *AWS General Reference*.
    #
    #   The following restrictions apply to tags:
    #
    #   * Maximum number of user-applied tags per resource: 50
    #
    #   * Maximum tag key length: 128 Unicode characters
    #
    #   * Maximum tag value length: 256 Unicode characters
    #
    #   * Valid values for key and value: a-z, A-Z, 0-9, space, and the
    #     following characters: \_ . : / = + - and @
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Don't use `aws:` as a prefix for keys; it's reserved for AWS use.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateSamplingRuleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSamplingRuleResult#sampling_rule_record #sampling_rule_record} => Types::SamplingRuleRecord
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sampling_rule({
    #     sampling_rule: { # required
    #       rule_name: "RuleName",
    #       rule_arn: "String",
    #       resource_arn: "ResourceARN", # required
    #       priority: 1, # required
    #       fixed_rate: 1.0, # required
    #       reservoir_size: 1, # required
    #       service_name: "ServiceName", # required
    #       service_type: "ServiceType", # required
    #       host: "Host", # required
    #       http_method: "HTTPMethod", # required
    #       url_path: "URLPath", # required
    #       version: 1, # required
    #       attributes: {
    #         "AttributeKey" => "AttributeValue",
    #       },
    #     },
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
    #   resp.sampling_rule_record.sampling_rule.rule_name #=> String
    #   resp.sampling_rule_record.sampling_rule.rule_arn #=> String
    #   resp.sampling_rule_record.sampling_rule.resource_arn #=> String
    #   resp.sampling_rule_record.sampling_rule.priority #=> Integer
    #   resp.sampling_rule_record.sampling_rule.fixed_rate #=> Float
    #   resp.sampling_rule_record.sampling_rule.reservoir_size #=> Integer
    #   resp.sampling_rule_record.sampling_rule.service_name #=> String
    #   resp.sampling_rule_record.sampling_rule.service_type #=> String
    #   resp.sampling_rule_record.sampling_rule.host #=> String
    #   resp.sampling_rule_record.sampling_rule.http_method #=> String
    #   resp.sampling_rule_record.sampling_rule.url_path #=> String
    #   resp.sampling_rule_record.sampling_rule.version #=> Integer
    #   resp.sampling_rule_record.sampling_rule.attributes #=> Hash
    #   resp.sampling_rule_record.sampling_rule.attributes["AttributeKey"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.sampling_rule_record.created_at #=> Time
    #   resp.sampling_rule_record.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/CreateSamplingRule AWS API Documentation
    #
    # @overload create_sampling_rule(params = {})
    # @param [Hash] params ({})
    def create_sampling_rule(params = {}, options = {})
      req = build_request(:create_sampling_rule, params)
      req.send_request(options)
    end

    # Deletes a group resource.
    #
    # @option params [String] :group_name
    #   The case-sensitive name of the group.
    #
    # @option params [String] :group_arn
    #   The ARN of the group that was generated on creation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Deletes a sampling rule.
    #
    # @option params [String] :rule_name
    #   The name of the sampling rule. Specify a rule by either name or ARN,
    #   but not both.
    #
    # @option params [String] :rule_arn
    #   The ARN of the sampling rule. Specify a rule by either name or ARN,
    #   but not both.
    #
    # @return [Types::DeleteSamplingRuleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSamplingRuleResult#sampling_rule_record #sampling_rule_record} => Types::SamplingRuleRecord
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sampling_rule({
    #     rule_name: "String",
    #     rule_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.sampling_rule_record.sampling_rule.rule_name #=> String
    #   resp.sampling_rule_record.sampling_rule.rule_arn #=> String
    #   resp.sampling_rule_record.sampling_rule.resource_arn #=> String
    #   resp.sampling_rule_record.sampling_rule.priority #=> Integer
    #   resp.sampling_rule_record.sampling_rule.fixed_rate #=> Float
    #   resp.sampling_rule_record.sampling_rule.reservoir_size #=> Integer
    #   resp.sampling_rule_record.sampling_rule.service_name #=> String
    #   resp.sampling_rule_record.sampling_rule.service_type #=> String
    #   resp.sampling_rule_record.sampling_rule.host #=> String
    #   resp.sampling_rule_record.sampling_rule.http_method #=> String
    #   resp.sampling_rule_record.sampling_rule.url_path #=> String
    #   resp.sampling_rule_record.sampling_rule.version #=> Integer
    #   resp.sampling_rule_record.sampling_rule.attributes #=> Hash
    #   resp.sampling_rule_record.sampling_rule.attributes["AttributeKey"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.sampling_rule_record.created_at #=> Time
    #   resp.sampling_rule_record.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/DeleteSamplingRule AWS API Documentation
    #
    # @overload delete_sampling_rule(params = {})
    # @param [Hash] params ({})
    def delete_sampling_rule(params = {}, options = {})
      req = build_request(:delete_sampling_rule, params)
      req.send_request(options)
    end

    # Retrieves the current encryption configuration for X-Ray data.
    #
    # @return [Types::GetEncryptionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEncryptionConfigResult#encryption_config #encryption_config} => Types::EncryptionConfig
    #
    # @example Response structure
    #
    #   resp.encryption_config.key_id #=> String
    #   resp.encryption_config.status #=> String, one of "UPDATING", "ACTIVE"
    #   resp.encryption_config.type #=> String, one of "NONE", "KMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetEncryptionConfig AWS API Documentation
    #
    # @overload get_encryption_config(params = {})
    # @param [Hash] params ({})
    def get_encryption_config(params = {}, options = {})
      req = build_request(:get_encryption_config, params)
      req.send_request(options)
    end

    # Retrieves group resource details.
    #
    # @option params [String] :group_name
    #   The case-sensitive name of the group.
    #
    # @option params [String] :group_arn
    #   The ARN of the group that was generated on creation.
    #
    # @return [Types::GetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupResult#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group({
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.group_arn #=> String
    #   resp.group.filter_expression #=> String
    #   resp.group.insights_configuration.insights_enabled #=> Boolean
    #   resp.group.insights_configuration.notifications_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetGroup AWS API Documentation
    #
    # @overload get_group(params = {})
    # @param [Hash] params ({})
    def get_group(params = {}, options = {})
      req = build_request(:get_group, params)
      req.send_request(options)
    end

    # Retrieves all active group details.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupsResult#groups #groups} => Array&lt;Types::GroupSummary&gt;
    #   * {Types::GetGroupsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_groups({
    #     next_token: "GetGroupsNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].group_name #=> String
    #   resp.groups[0].group_arn #=> String
    #   resp.groups[0].filter_expression #=> String
    #   resp.groups[0].insights_configuration.insights_enabled #=> Boolean
    #   resp.groups[0].insights_configuration.notifications_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetGroups AWS API Documentation
    #
    # @overload get_groups(params = {})
    # @param [Hash] params ({})
    def get_groups(params = {}, options = {})
      req = build_request(:get_groups, params)
      req.send_request(options)
    end

    # Retrieves all sampling rules.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetSamplingRulesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSamplingRulesResult#sampling_rule_records #sampling_rule_records} => Array&lt;Types::SamplingRuleRecord&gt;
    #   * {Types::GetSamplingRulesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampling_rules({
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.sampling_rule_records #=> Array
    #   resp.sampling_rule_records[0].sampling_rule.rule_name #=> String
    #   resp.sampling_rule_records[0].sampling_rule.rule_arn #=> String
    #   resp.sampling_rule_records[0].sampling_rule.resource_arn #=> String
    #   resp.sampling_rule_records[0].sampling_rule.priority #=> Integer
    #   resp.sampling_rule_records[0].sampling_rule.fixed_rate #=> Float
    #   resp.sampling_rule_records[0].sampling_rule.reservoir_size #=> Integer
    #   resp.sampling_rule_records[0].sampling_rule.service_name #=> String
    #   resp.sampling_rule_records[0].sampling_rule.service_type #=> String
    #   resp.sampling_rule_records[0].sampling_rule.host #=> String
    #   resp.sampling_rule_records[0].sampling_rule.http_method #=> String
    #   resp.sampling_rule_records[0].sampling_rule.url_path #=> String
    #   resp.sampling_rule_records[0].sampling_rule.version #=> Integer
    #   resp.sampling_rule_records[0].sampling_rule.attributes #=> Hash
    #   resp.sampling_rule_records[0].sampling_rule.attributes["AttributeKey"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.sampling_rule_records[0].created_at #=> Time
    #   resp.sampling_rule_records[0].modified_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetSamplingRules AWS API Documentation
    #
    # @overload get_sampling_rules(params = {})
    # @param [Hash] params ({})
    def get_sampling_rules(params = {}, options = {})
      req = build_request(:get_sampling_rules, params)
      req.send_request(options)
    end

    # Retrieves information about recent sampling results for all sampling
    # rules.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetSamplingStatisticSummariesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSamplingStatisticSummariesResult#sampling_statistic_summaries #sampling_statistic_summaries} => Array&lt;Types::SamplingStatisticSummary&gt;
    #   * {Types::GetSamplingStatisticSummariesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampling_statistic_summaries({
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.sampling_statistic_summaries #=> Array
    #   resp.sampling_statistic_summaries[0].rule_name #=> String
    #   resp.sampling_statistic_summaries[0].timestamp #=> Time
    #   resp.sampling_statistic_summaries[0].request_count #=> Integer
    #   resp.sampling_statistic_summaries[0].borrow_count #=> Integer
    #   resp.sampling_statistic_summaries[0].sampled_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetSamplingStatisticSummaries AWS API Documentation
    #
    # @overload get_sampling_statistic_summaries(params = {})
    # @param [Hash] params ({})
    def get_sampling_statistic_summaries(params = {}, options = {})
      req = build_request(:get_sampling_statistic_summaries, params)
      req.send_request(options)
    end

    # Requests a sampling quota for rules that the service is using to
    # sample requests.
    #
    # @option params [required, Array<Types::SamplingStatisticsDocument>] :sampling_statistics_documents
    #   Information about rules that the service is using to sample requests.
    #
    # @return [Types::GetSamplingTargetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSamplingTargetsResult#sampling_target_documents #sampling_target_documents} => Array&lt;Types::SamplingTargetDocument&gt;
    #   * {Types::GetSamplingTargetsResult#last_rule_modification #last_rule_modification} => Time
    #   * {Types::GetSamplingTargetsResult#unprocessed_statistics #unprocessed_statistics} => Array&lt;Types::UnprocessedStatistics&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampling_targets({
    #     sampling_statistics_documents: [ # required
    #       {
    #         rule_name: "RuleName", # required
    #         client_id: "ClientID", # required
    #         timestamp: Time.now, # required
    #         request_count: 1, # required
    #         sampled_count: 1, # required
    #         borrow_count: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.sampling_target_documents #=> Array
    #   resp.sampling_target_documents[0].rule_name #=> String
    #   resp.sampling_target_documents[0].fixed_rate #=> Float
    #   resp.sampling_target_documents[0].reservoir_quota #=> Integer
    #   resp.sampling_target_documents[0].reservoir_quota_ttl #=> Time
    #   resp.sampling_target_documents[0].interval #=> Integer
    #   resp.last_rule_modification #=> Time
    #   resp.unprocessed_statistics #=> Array
    #   resp.unprocessed_statistics[0].rule_name #=> String
    #   resp.unprocessed_statistics[0].error_code #=> String
    #   resp.unprocessed_statistics[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetSamplingTargets AWS API Documentation
    #
    # @overload get_sampling_targets(params = {})
    # @param [Hash] params ({})
    def get_sampling_targets(params = {}, options = {})
      req = build_request(:get_sampling_targets, params)
      req.send_request(options)
    end

    # Retrieves a document that describes services that process incoming
    # requests, and downstream services that they call as a result. Root
    # services process incoming requests and make calls to downstream
    # services. Root services are applications that use the [AWS X-Ray
    # SDK][1]. Downstream services can be other applications, AWS resources,
    # HTTP web APIs, or SQL databases.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/xray/index.html
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time frame for which to generate a graph.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the timeframe for which to generate a graph.
    #
    # @option params [String] :group_name
    #   The name of a group based on which you want to generate a graph.
    #
    # @option params [String] :group_arn
    #   The Amazon Resource Name (ARN) of a group based on which you want to
    #   generate a graph.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetServiceGraphResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceGraphResult#start_time #start_time} => Time
    #   * {Types::GetServiceGraphResult#end_time #end_time} => Time
    #   * {Types::GetServiceGraphResult#services #services} => Array&lt;Types::Service&gt;
    #   * {Types::GetServiceGraphResult#contains_old_group_versions #contains_old_group_versions} => Boolean
    #   * {Types::GetServiceGraphResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_graph({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.services #=> Array
    #   resp.services[0].reference_id #=> Integer
    #   resp.services[0].name #=> String
    #   resp.services[0].names #=> Array
    #   resp.services[0].names[0] #=> String
    #   resp.services[0].root #=> Boolean
    #   resp.services[0].account_id #=> String
    #   resp.services[0].type #=> String
    #   resp.services[0].state #=> String
    #   resp.services[0].start_time #=> Time
    #   resp.services[0].end_time #=> Time
    #   resp.services[0].edges #=> Array
    #   resp.services[0].edges[0].reference_id #=> Integer
    #   resp.services[0].edges[0].start_time #=> Time
    #   resp.services[0].edges[0].end_time #=> Time
    #   resp.services[0].edges[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].edges[0].response_time_histogram #=> Array
    #   resp.services[0].edges[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].edges[0].response_time_histogram[0].count #=> Integer
    #   resp.services[0].edges[0].aliases #=> Array
    #   resp.services[0].edges[0].aliases[0].name #=> String
    #   resp.services[0].edges[0].aliases[0].names #=> Array
    #   resp.services[0].edges[0].aliases[0].names[0] #=> String
    #   resp.services[0].edges[0].aliases[0].type #=> String
    #   resp.services[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].duration_histogram #=> Array
    #   resp.services[0].duration_histogram[0].value #=> Float
    #   resp.services[0].duration_histogram[0].count #=> Integer
    #   resp.services[0].response_time_histogram #=> Array
    #   resp.services[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].response_time_histogram[0].count #=> Integer
    #   resp.contains_old_group_versions #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetServiceGraph AWS API Documentation
    #
    # @overload get_service_graph(params = {})
    # @param [Hash] params ({})
    def get_service_graph(params = {}, options = {})
      req = build_request(:get_service_graph, params)
      req.send_request(options)
    end

    # Get an aggregation of service statistics defined by a specific time
    # range.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time frame for which to aggregate statistics.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time frame for which to aggregate statistics.
    #
    # @option params [String] :group_name
    #   The case-sensitive name of the group for which to pull statistics
    #   from.
    #
    # @option params [String] :group_arn
    #   The Amazon Resource Name (ARN) of the group for which to pull
    #   statistics from.
    #
    # @option params [String] :entity_selector_expression
    #   A filter expression defining entities that will be aggregated for
    #   statistics. Supports ID, service, and edge functions. If no selector
    #   expression is specified, edge statistics are returned.
    #
    # @option params [Integer] :period
    #   Aggregation period in seconds.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetTimeSeriesServiceStatisticsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTimeSeriesServiceStatisticsResult#time_series_service_statistics #time_series_service_statistics} => Array&lt;Types::TimeSeriesServiceStatistics&gt;
    #   * {Types::GetTimeSeriesServiceStatisticsResult#contains_old_group_versions #contains_old_group_versions} => Boolean
    #   * {Types::GetTimeSeriesServiceStatisticsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_time_series_service_statistics({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #     entity_selector_expression: "EntitySelectorExpression",
    #     period: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.time_series_service_statistics #=> Array
    #   resp.time_series_service_statistics[0].timestamp #=> Time
    #   resp.time_series_service_statistics[0].edge_summary_statistics.ok_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.error_statistics.other_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.error_statistics.total_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.total_count #=> Integer
    #   resp.time_series_service_statistics[0].edge_summary_statistics.total_response_time #=> Float
    #   resp.time_series_service_statistics[0].service_summary_statistics.ok_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.error_statistics.other_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.error_statistics.total_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.total_count #=> Integer
    #   resp.time_series_service_statistics[0].service_summary_statistics.total_response_time #=> Float
    #   resp.time_series_service_statistics[0].response_time_histogram #=> Array
    #   resp.time_series_service_statistics[0].response_time_histogram[0].value #=> Float
    #   resp.time_series_service_statistics[0].response_time_histogram[0].count #=> Integer
    #   resp.contains_old_group_versions #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTimeSeriesServiceStatistics AWS API Documentation
    #
    # @overload get_time_series_service_statistics(params = {})
    # @param [Hash] params ({})
    def get_time_series_service_statistics(params = {}, options = {})
      req = build_request(:get_time_series_service_statistics, params)
      req.send_request(options)
    end

    # Retrieves a service graph for one or more specific trace IDs.
    #
    # @option params [required, Array<String>] :trace_ids
    #   Trace IDs of requests for which to generate a service graph.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::GetTraceGraphResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTraceGraphResult#services #services} => Array&lt;Types::Service&gt;
    #   * {Types::GetTraceGraphResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trace_graph({
    #     trace_ids: ["TraceId"], # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.services #=> Array
    #   resp.services[0].reference_id #=> Integer
    #   resp.services[0].name #=> String
    #   resp.services[0].names #=> Array
    #   resp.services[0].names[0] #=> String
    #   resp.services[0].root #=> Boolean
    #   resp.services[0].account_id #=> String
    #   resp.services[0].type #=> String
    #   resp.services[0].state #=> String
    #   resp.services[0].start_time #=> Time
    #   resp.services[0].end_time #=> Time
    #   resp.services[0].edges #=> Array
    #   resp.services[0].edges[0].reference_id #=> Integer
    #   resp.services[0].edges[0].start_time #=> Time
    #   resp.services[0].edges[0].end_time #=> Time
    #   resp.services[0].edges[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].edges[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].edges[0].response_time_histogram #=> Array
    #   resp.services[0].edges[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].edges[0].response_time_histogram[0].count #=> Integer
    #   resp.services[0].edges[0].aliases #=> Array
    #   resp.services[0].edges[0].aliases[0].name #=> String
    #   resp.services[0].edges[0].aliases[0].names #=> Array
    #   resp.services[0].edges[0].aliases[0].names[0] #=> String
    #   resp.services[0].edges[0].aliases[0].type #=> String
    #   resp.services[0].summary_statistics.ok_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.throttle_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.other_count #=> Integer
    #   resp.services[0].summary_statistics.error_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.fault_statistics.other_count #=> Integer
    #   resp.services[0].summary_statistics.fault_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.total_count #=> Integer
    #   resp.services[0].summary_statistics.total_response_time #=> Float
    #   resp.services[0].duration_histogram #=> Array
    #   resp.services[0].duration_histogram[0].value #=> Float
    #   resp.services[0].duration_histogram[0].count #=> Integer
    #   resp.services[0].response_time_histogram #=> Array
    #   resp.services[0].response_time_histogram[0].value #=> Float
    #   resp.services[0].response_time_histogram[0].count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceGraph AWS API Documentation
    #
    # @overload get_trace_graph(params = {})
    # @param [Hash] params ({})
    def get_trace_graph(params = {}, options = {})
      req = build_request(:get_trace_graph, params)
      req.send_request(options)
    end

    # Retrieves IDs and annotations for traces available for a specified
    # time frame using an optional filter. To get the full traces, pass the
    # trace IDs to `BatchGetTraces`.
    #
    # A filter expression can target traced requests that hit specific
    # service nodes or edges, have errors, or come from a known user. For
    # example, the following filter expression targets traces that pass
    # through `api.example.com`\:
    #
    # `service("api.example.com")`
    #
    # This filter expression finds traces that have an annotation named
    # `account` with the value `12345`\:
    #
    # `annotation.account = "12345"`
    #
    # For a full list of indexed fields and keywords that you can use in
    # filter expressions, see [Using Filter Expressions][1] in the *AWS
    # X-Ray Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The start of the time frame for which to retrieve traces.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time frame for which to retrieve traces.
    #
    # @option params [String] :time_range_type
    #   A parameter to indicate whether to query trace summaries by TraceId or
    #   Event time.
    #
    # @option params [Boolean] :sampling
    #   Set to `true` to get summaries for only a subset of available traces.
    #
    # @option params [Types::SamplingStrategy] :sampling_strategy
    #   A parameter to indicate whether to enable sampling on trace summaries.
    #   Input parameters are Name and Value.
    #
    # @option params [String] :filter_expression
    #   Specify a filter expression to retrieve trace summaries for services
    #   or requests that meet certain requirements.
    #
    # @option params [String] :next_token
    #   Specify the pagination token returned by a previous request to
    #   retrieve the next page of results.
    #
    # @return [Types::GetTraceSummariesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTraceSummariesResult#trace_summaries #trace_summaries} => Array&lt;Types::TraceSummary&gt;
    #   * {Types::GetTraceSummariesResult#approximate_time #approximate_time} => Time
    #   * {Types::GetTraceSummariesResult#traces_processed_count #traces_processed_count} => Integer
    #   * {Types::GetTraceSummariesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trace_summaries({
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     time_range_type: "TraceId", # accepts TraceId, Event
    #     sampling: false,
    #     sampling_strategy: {
    #       name: "PartialScan", # accepts PartialScan, FixedRate
    #       value: 1.0,
    #     },
    #     filter_expression: "FilterExpression",
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.trace_summaries #=> Array
    #   resp.trace_summaries[0].id #=> String
    #   resp.trace_summaries[0].duration #=> Float
    #   resp.trace_summaries[0].response_time #=> Float
    #   resp.trace_summaries[0].has_fault #=> Boolean
    #   resp.trace_summaries[0].has_error #=> Boolean
    #   resp.trace_summaries[0].has_throttle #=> Boolean
    #   resp.trace_summaries[0].is_partial #=> Boolean
    #   resp.trace_summaries[0].http.http_url #=> String
    #   resp.trace_summaries[0].http.http_status #=> Integer
    #   resp.trace_summaries[0].http.http_method #=> String
    #   resp.trace_summaries[0].http.user_agent #=> String
    #   resp.trace_summaries[0].http.client_ip #=> String
    #   resp.trace_summaries[0].annotations #=> Hash
    #   resp.trace_summaries[0].annotations["AnnotationKey"] #=> Array
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].annotation_value.number_value #=> Float
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].annotation_value.boolean_value #=> Boolean
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].annotation_value.string_value #=> String
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids #=> Array
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].name #=> String
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].names #=> Array
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].names[0] #=> String
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].account_id #=> String
    #   resp.trace_summaries[0].annotations["AnnotationKey"][0].service_ids[0].type #=> String
    #   resp.trace_summaries[0].users #=> Array
    #   resp.trace_summaries[0].users[0].user_name #=> String
    #   resp.trace_summaries[0].users[0].service_ids #=> Array
    #   resp.trace_summaries[0].users[0].service_ids[0].name #=> String
    #   resp.trace_summaries[0].users[0].service_ids[0].names #=> Array
    #   resp.trace_summaries[0].users[0].service_ids[0].names[0] #=> String
    #   resp.trace_summaries[0].users[0].service_ids[0].account_id #=> String
    #   resp.trace_summaries[0].users[0].service_ids[0].type #=> String
    #   resp.trace_summaries[0].service_ids #=> Array
    #   resp.trace_summaries[0].service_ids[0].name #=> String
    #   resp.trace_summaries[0].service_ids[0].names #=> Array
    #   resp.trace_summaries[0].service_ids[0].names[0] #=> String
    #   resp.trace_summaries[0].service_ids[0].account_id #=> String
    #   resp.trace_summaries[0].service_ids[0].type #=> String
    #   resp.trace_summaries[0].resource_arns #=> Array
    #   resp.trace_summaries[0].resource_arns[0].arn #=> String
    #   resp.trace_summaries[0].instance_ids #=> Array
    #   resp.trace_summaries[0].instance_ids[0].id #=> String
    #   resp.trace_summaries[0].availability_zones #=> Array
    #   resp.trace_summaries[0].availability_zones[0].name #=> String
    #   resp.trace_summaries[0].entry_point.name #=> String
    #   resp.trace_summaries[0].entry_point.names #=> Array
    #   resp.trace_summaries[0].entry_point.names[0] #=> String
    #   resp.trace_summaries[0].entry_point.account_id #=> String
    #   resp.trace_summaries[0].entry_point.type #=> String
    #   resp.trace_summaries[0].fault_root_causes #=> Array
    #   resp.trace_summaries[0].fault_root_causes[0].services #=> Array
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].name #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].names #=> Array
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].names[0] #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].type #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].account_id #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].entity_path #=> Array
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].name #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].exceptions #=> Array
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].exceptions[0].name #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].exceptions[0].message #=> String
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].entity_path[0].remote #=> Boolean
    #   resp.trace_summaries[0].fault_root_causes[0].services[0].inferred #=> Boolean
    #   resp.trace_summaries[0].fault_root_causes[0].client_impacting #=> Boolean
    #   resp.trace_summaries[0].error_root_causes #=> Array
    #   resp.trace_summaries[0].error_root_causes[0].services #=> Array
    #   resp.trace_summaries[0].error_root_causes[0].services[0].name #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].names #=> Array
    #   resp.trace_summaries[0].error_root_causes[0].services[0].names[0] #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].type #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].account_id #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].entity_path #=> Array
    #   resp.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].name #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].exceptions #=> Array
    #   resp.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].exceptions[0].name #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].exceptions[0].message #=> String
    #   resp.trace_summaries[0].error_root_causes[0].services[0].entity_path[0].remote #=> Boolean
    #   resp.trace_summaries[0].error_root_causes[0].services[0].inferred #=> Boolean
    #   resp.trace_summaries[0].error_root_causes[0].client_impacting #=> Boolean
    #   resp.trace_summaries[0].response_time_root_causes #=> Array
    #   resp.trace_summaries[0].response_time_root_causes[0].services #=> Array
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].name #=> String
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].names #=> Array
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].names[0] #=> String
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].type #=> String
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].account_id #=> String
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].entity_path #=> Array
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].entity_path[0].name #=> String
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].entity_path[0].coverage #=> Float
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].entity_path[0].remote #=> Boolean
    #   resp.trace_summaries[0].response_time_root_causes[0].services[0].inferred #=> Boolean
    #   resp.trace_summaries[0].response_time_root_causes[0].client_impacting #=> Boolean
    #   resp.trace_summaries[0].revision #=> Integer
    #   resp.trace_summaries[0].matched_event_time #=> Time
    #   resp.approximate_time #=> Time
    #   resp.traces_processed_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/GetTraceSummaries AWS API Documentation
    #
    # @overload get_trace_summaries(params = {})
    # @param [Hash] params ({})
    def get_trace_summaries(params = {}, options = {})
      req = build_request(:get_trace_summaries, params)
      req.send_request(options)
    end

    # Returns a list of tags that are applied to the specified AWS X-Ray
    # group or sampling rule.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.
    #
    # @option params [String] :next_token
    #   A pagination token. If multiple pages of results are returned, use the
    #   `NextToken` value returned with the current page of results as the
    #   value of this parameter to get the next page of results.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Updates the encryption configuration for X-Ray data.
    #
    # @option params [String] :key_id
    #   An AWS KMS customer master key (CMK) in one of the following formats:
    #
    #   * **Alias** - The name of the key. For example, `alias/MyKey`.
    #
    #   * **Key ID** - The KMS key ID of the key. For example,
    #     `ae4aa6d49-a4d8-9df9-a475-4ff6d7898456`. AWS X-Ray does not support
    #     asymmetric CMKs.
    #
    #   * **ARN** - The full Amazon Resource Name of the key ID or alias. For
    #     example,
    #     `arn:aws:kms:us-east-2:123456789012:key/ae4aa6d49-a4d8-9df9-a475-4ff6d7898456`.
    #     Use this format to specify a key in a different account.
    #
    #   Omit this key if you set `Type` to `NONE`.
    #
    # @option params [required, String] :type
    #   The type of encryption. Set to `KMS` to use your own key for
    #   encryption. Set to `NONE` for default encryption.
    #
    # @return [Types::PutEncryptionConfigResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEncryptionConfigResult#encryption_config #encryption_config} => Types::EncryptionConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_encryption_config({
    #     key_id: "EncryptionKeyId",
    #     type: "NONE", # required, accepts NONE, KMS
    #   })
    #
    # @example Response structure
    #
    #   resp.encryption_config.key_id #=> String
    #   resp.encryption_config.status #=> String, one of "UPDATING", "ACTIVE"
    #   resp.encryption_config.type #=> String, one of "NONE", "KMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutEncryptionConfig AWS API Documentation
    #
    # @overload put_encryption_config(params = {})
    # @param [Hash] params ({})
    def put_encryption_config(params = {}, options = {})
      req = build_request(:put_encryption_config, params)
      req.send_request(options)
    end

    # Used by the AWS X-Ray daemon to upload telemetry.
    #
    # @option params [required, Array<Types::TelemetryRecord>] :telemetry_records
    #
    # @option params [String] :ec2_instance_id
    #
    # @option params [String] :hostname
    #
    # @option params [String] :resource_arn
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_telemetry_records({
    #     telemetry_records: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         segments_received_count: 1,
    #         segments_sent_count: 1,
    #         segments_spillover_count: 1,
    #         segments_rejected_count: 1,
    #         backend_connection_errors: {
    #           timeout_count: 1,
    #           connection_refused_count: 1,
    #           http_code_4_xx_count: 1,
    #           http_code_5_xx_count: 1,
    #           unknown_host_count: 1,
    #           other_count: 1,
    #         },
    #       },
    #     ],
    #     ec2_instance_id: "EC2InstanceId",
    #     hostname: "Hostname",
    #     resource_arn: "ResourceARN",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTelemetryRecords AWS API Documentation
    #
    # @overload put_telemetry_records(params = {})
    # @param [Hash] params ({})
    def put_telemetry_records(params = {}, options = {})
      req = build_request(:put_telemetry_records, params)
      req.send_request(options)
    end

    # Uploads segment documents to AWS X-Ray. The [X-Ray SDK][1] generates
    # segment documents and sends them to the X-Ray daemon, which uploads
    # them in batches. A segment document can be a completed segment, an
    # in-progress segment, or an array of subsegments.
    #
    # Segments must include the following fields. For the full segment
    # document schema, see [AWS X-Ray Segment Documents][2] in the *AWS
    # X-Ray Developer Guide*.
    #
    # **Required segment document fields**
    #
    # * `name` - The name of the service that handled the request.
    #
    # * `id` - A 64-bit identifier for the segment, unique among segments in
    #   the same trace, in 16 hexadecimal digits.
    #
    # * `trace_id` - A unique identifier that connects all segments and
    #   subsegments originating from a single client request.
    #
    # * `start_time` - Time the segment or subsegment was created, in
    #   floating point seconds in epoch time, accurate to milliseconds. For
    #   example, `1480615200.010` or `1.480615200010E9`.
    #
    # * `end_time` - Time the segment or subsegment was closed. For example,
    #   `1480615200.090` or `1.480615200090E9`. Specify either an `end_time`
    #   or `in_progress`.
    #
    # * `in_progress` - Set to `true` instead of specifying an `end_time` to
    #   record that a segment has been started, but is not complete. Send an
    #   in-progress segment when your application receives a request that
    #   will take a long time to serve, to trace that the request was
    #   received. When the response is sent, send the complete segment to
    #   overwrite the in-progress segment.
    #
    # A `trace_id` consists of three numbers separated by hyphens. For
    # example, 1-58406520-a006649127e371903a2de979. This includes:
    #
    # **Trace ID Format**
    #
    # * The version number, for instance, `1`.
    #
    # * The time of the original request, in Unix epoch time, in 8
    #   hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in
    #   epoch time is `1480615200` seconds, or `58406520` in hexadecimal.
    #
    # * A 96-bit identifier for the trace, globally unique, in 24
    #   hexadecimal digits.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/xray/index.html
    # [2]: https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html
    #
    # @option params [required, Array<String>] :trace_segment_documents
    #   A string containing a JSON document defining one or more segments or
    #   subsegments.
    #
    # @return [Types::PutTraceSegmentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutTraceSegmentsResult#unprocessed_trace_segments #unprocessed_trace_segments} => Array&lt;Types::UnprocessedTraceSegment&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_trace_segments({
    #     trace_segment_documents: ["TraceSegmentDocument"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_trace_segments #=> Array
    #   resp.unprocessed_trace_segments[0].id #=> String
    #   resp.unprocessed_trace_segments[0].error_code #=> String
    #   resp.unprocessed_trace_segments[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/PutTraceSegments AWS API Documentation
    #
    # @overload put_trace_segments(params = {})
    # @param [Hash] params ({})
    def put_trace_segments(params = {}, options = {})
      req = build_request(:put_trace_segments, params)
      req.send_request(options)
    end

    # Applies tags to an existing AWS X-Ray group or sampling rule.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A map that contains one or more tag keys and tag values to attach to
    #   an X-Ray group or sampling rule. For more information about ways to
    #   use tags, see [Tagging AWS resources][1] in the *AWS General
    #   Reference*.
    #
    #   The following restrictions apply to tags:
    #
    #   * Maximum number of user-applied tags per resource: 50
    #
    #   * Maximum tag key length: 128 Unicode characters
    #
    #   * Maximum tag value length: 256 Unicode characters
    #
    #   * Valid values for key and value: a-z, A-Z, 0-9, space, and the
    #     following characters: \_ . : / = + - and @
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Don't use `aws:` as a prefix for keys; it's reserved for AWS use.
    #     You cannot edit or delete system tags.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from an AWS X-Ray group or sampling rule. You cannot edit
    # or delete system tags (those with an `aws:` prefix).
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys for one or more tags that you want to remove from an X-Ray group
    #   or sampling rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a group resource.
    #
    # @option params [String] :group_name
    #   The case-sensitive name of the group.
    #
    # @option params [String] :group_arn
    #   The ARN that was generated upon creation.
    #
    # @option params [String] :filter_expression
    #   The updated filter expression defining criteria by which to group
    #   traces.
    #
    # @option params [Types::InsightsConfiguration] :insights_configuration
    #   The structure containing configurations related to insights.
    #
    #   * The InsightsEnabled boolean can be set to true to enable insights
    #     for the group or false to disable insights for the group.
    #
    #   * The NotifcationsEnabled boolean can be set to true to enable
    #     insights notifications for the group. Notifications can only be
    #     enabled on a group with InsightsEnabled set to true.
    #
    # @return [Types::UpdateGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupResult#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "GroupName",
    #     group_arn: "GroupARN",
    #     filter_expression: "FilterExpression",
    #     insights_configuration: {
    #       insights_enabled: false,
    #       notifications_enabled: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_name #=> String
    #   resp.group.group_arn #=> String
    #   resp.group.filter_expression #=> String
    #   resp.group.insights_configuration.insights_enabled #=> Boolean
    #   resp.group.insights_configuration.notifications_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Modifies a sampling rule's configuration.
    #
    # @option params [required, Types::SamplingRuleUpdate] :sampling_rule_update
    #   The rule and fields to change.
    #
    # @return [Types::UpdateSamplingRuleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSamplingRuleResult#sampling_rule_record #sampling_rule_record} => Types::SamplingRuleRecord
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sampling_rule({
    #     sampling_rule_update: { # required
    #       rule_name: "RuleName",
    #       rule_arn: "String",
    #       resource_arn: "ResourceARN",
    #       priority: 1,
    #       fixed_rate: 1.0,
    #       reservoir_size: 1,
    #       host: "Host",
    #       service_name: "ServiceName",
    #       service_type: "ServiceType",
    #       http_method: "HTTPMethod",
    #       url_path: "URLPath",
    #       attributes: {
    #         "AttributeKey" => "AttributeValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.sampling_rule_record.sampling_rule.rule_name #=> String
    #   resp.sampling_rule_record.sampling_rule.rule_arn #=> String
    #   resp.sampling_rule_record.sampling_rule.resource_arn #=> String
    #   resp.sampling_rule_record.sampling_rule.priority #=> Integer
    #   resp.sampling_rule_record.sampling_rule.fixed_rate #=> Float
    #   resp.sampling_rule_record.sampling_rule.reservoir_size #=> Integer
    #   resp.sampling_rule_record.sampling_rule.service_name #=> String
    #   resp.sampling_rule_record.sampling_rule.service_type #=> String
    #   resp.sampling_rule_record.sampling_rule.host #=> String
    #   resp.sampling_rule_record.sampling_rule.http_method #=> String
    #   resp.sampling_rule_record.sampling_rule.url_path #=> String
    #   resp.sampling_rule_record.sampling_rule.version #=> Integer
    #   resp.sampling_rule_record.sampling_rule.attributes #=> Hash
    #   resp.sampling_rule_record.sampling_rule.attributes["AttributeKey"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.sampling_rule_record.created_at #=> Time
    #   resp.sampling_rule_record.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/xray-2016-04-12/UpdateSamplingRule AWS API Documentation
    #
    # @overload update_sampling_rule(params = {})
    # @param [Hash] params ({})
    def update_sampling_rule(params = {}, options = {})
      req = build_request(:update_sampling_rule, params)
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
      context[:gem_name] = 'aws-sdk-xray'
      context[:gem_version] = '1.34.0'
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
