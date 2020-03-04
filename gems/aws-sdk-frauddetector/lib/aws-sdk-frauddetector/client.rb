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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:frauddetector)

module Aws::FraudDetector
  # An API client for FraudDetector.  To construct a client, you need to configure a +:region+ and +:credentials+.
  #     client = Aws::FraudDetector::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  # For details on configuring region and credentials see
  # the {developer-guide}[https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/setup-config.html].
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :frauddetector

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
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
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
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
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #     safely be set
    #     per-request on the session yielded by {#session_for}.
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
    #     request on the session yielded by {#session_for}.
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

    # Creates a batch of variables.
    #
    # @option params [required, Array<Types::VariableEntry>] :variable_entries
    #   The list of variables for the batch create variable request.
    #
    # @return [Types::BatchCreateVariableResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateVariableResult#errors #errors} => Array&lt;Types::BatchCreateVariableError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_variable({
    #     variable_entries: [ # required
    #       {
    #         name: "string",
    #         data_type: "string",
    #         data_source: "string",
    #         default_value: "string",
    #         description: "string",
    #         variable_type: "string",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].name #=> String
    #   resp.errors[0].code #=> Integer
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchCreateVariable AWS API Documentation
    #
    # @overload batch_create_variable(params = {})
    # @param [Hash] params ({})
    def batch_create_variable(params = {}, options = {})
      req = build_request(:batch_create_variable, params)
      req.send_request(options)
    end

    # Gets a batch of variables.
    #
    # @option params [required, Array<String>] :names
    #   The list of variable names to get.
    #
    # @return [Types::BatchGetVariableResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetVariableResult#variables #variables} => Array&lt;Types::Variable&gt;
    #   * {Types::BatchGetVariableResult#errors #errors} => Array&lt;Types::BatchGetVariableError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_variable({
    #     names: ["string"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.variables #=> Array
    #   resp.variables[0].name #=> String
    #   resp.variables[0].data_type #=> String, one of "STRING", "INTEGER", "FLOAT", "BOOLEAN"
    #   resp.variables[0].data_source #=> String, one of "EVENT", "MODEL_SCORE", "EXTERNAL_MODEL_SCORE"
    #   resp.variables[0].default_value #=> String
    #   resp.variables[0].description #=> String
    #   resp.variables[0].variable_type #=> String
    #   resp.variables[0].last_updated_time #=> String
    #   resp.variables[0].created_time #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].name #=> String
    #   resp.errors[0].code #=> Integer
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchGetVariable AWS API Documentation
    #
    # @overload batch_get_variable(params = {})
    # @param [Hash] params ({})
    def batch_get_variable(params = {}, options = {})
      req = build_request(:batch_get_variable, params)
      req.send_request(options)
    end

    # Creates a detector version. The detector version starts in a `DRAFT`
    # status.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector under which you want to create a new version.
    #
    # @option params [String] :description
    #   The description of the detector version.
    #
    # @option params [Array<String>] :external_model_endpoints
    #   The Amazon Sagemaker model endpoints to include in the detector
    #   version.
    #
    # @option params [required, Array<Types::Rule>] :rules
    #   The rules to include in the detector version.
    #
    # @option params [Array<Types::ModelVersion>] :model_versions
    #   The model versions to include in the detector version.
    #
    # @return [Types::CreateDetectorVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDetectorVersionResult#detector_id #detector_id} => String
    #   * {Types::CreateDetectorVersionResult#detector_version_id #detector_version_id} => String
    #   * {Types::CreateDetectorVersionResult#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_detector_version({
    #     detector_id: "identifier", # required
    #     description: "description",
    #     external_model_endpoints: ["string"],
    #     rules: [ # required
    #       {
    #         detector_id: "identifier", # required
    #         rule_id: "identifier", # required
    #         rule_version: "nonEmptyString", # required
    #       },
    #     ],
    #     model_versions: [
    #       {
    #         model_id: "identifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         model_version_number: "nonEmptyString", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_id #=> String
    #   resp.detector_version_id #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateDetectorVersion AWS API Documentation
    #
    # @overload create_detector_version(params = {})
    # @param [Hash] params ({})
    def create_detector_version(params = {}, options = {})
      req = build_request(:create_detector_version, params)
      req.send_request(options)
    end

    # Creates a version of the model using the specified model type.
    #
    # @option params [required, String] :model_id
    #   The model ID.
    #
    # @option params [required, String] :model_type
    #   The model type.
    #
    # @option params [String] :description
    #   The model version description.
    #
    # @return [Types::CreateModelVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelVersionResult#model_id #model_id} => String
    #   * {Types::CreateModelVersionResult#model_type #model_type} => String
    #   * {Types::CreateModelVersionResult#model_version_number #model_version_number} => String
    #   * {Types::CreateModelVersionResult#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model_version({
    #     model_id: "identifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #     description: "description",
    #   })
    #
    # @example Response structure
    #
    #   resp.model_id #=> String
    #   resp.model_type #=> String, one of "ONLINE_FRAUD_INSIGHTS"
    #   resp.model_version_number #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateModelVersion AWS API Documentation
    #
    # @overload create_model_version(params = {})
    # @param [Hash] params ({})
    def create_model_version(params = {}, options = {})
      req = build_request(:create_model_version, params)
      req.send_request(options)
    end

    # Creates a rule for use with the specified detector.
    #
    # @option params [required, String] :rule_id
    #   The rule ID.
    #
    # @option params [required, String] :detector_id
    #   The detector ID for the rule's parent detector.
    #
    # @option params [String] :description
    #   The rule description.
    #
    # @option params [required, String] :expression
    #   The rule expression.
    #
    # @option params [required, String] :language
    #   The language of the rule.
    #
    # @option params [required, Array<String>] :outcomes
    #   The outcome or outcomes returned when the rule expression matches.
    #
    # @return [Types::CreateRuleResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleResult#rule #rule} => Types::Rule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule({
    #     rule_id: "identifier", # required
    #     detector_id: "identifier", # required
    #     description: "description",
    #     expression: "ruleExpression", # required
    #     language: "DETECTORPL", # required, accepts DETECTORPL
    #     outcomes: ["string"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule.detector_id #=> String
    #   resp.rule.rule_id #=> String
    #   resp.rule.rule_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateRule AWS API Documentation
    #
    # @overload create_rule(params = {})
    # @param [Hash] params ({})
    def create_rule(params = {}, options = {})
      req = build_request(:create_rule, params)
      req.send_request(options)
    end

    # Creates a variable.
    #
    # @option params [required, String] :name
    #   The name of the variable.
    #
    # @option params [required, String] :data_type
    #   The data type.
    #
    # @option params [required, String] :data_source
    #   The source of the data.
    #
    # @option params [required, String] :default_value
    #   The default value for the variable when no value is received.
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [String] :variable_type
    #   The variable type.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_variable({
    #     name: "string", # required
    #     data_type: "STRING", # required, accepts STRING, INTEGER, FLOAT, BOOLEAN
    #     data_source: "EVENT", # required, accepts EVENT, MODEL_SCORE, EXTERNAL_MODEL_SCORE
    #     default_value: "string", # required
    #     description: "string",
    #     variable_type: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateVariable AWS API Documentation
    #
    # @overload create_variable(params = {})
    # @param [Hash] params ({})
    def create_variable(params = {}, options = {})
      req = build_request(:create_variable, params)
      req.send_request(options)
    end

    # Deletes the detector version.
    #
    # @option params [required, String] :detector_id
    #   The ID of the parent detector for the detector version to delete.
    #
    # @option params [required, String] :detector_version_id
    #   The ID of the detector version to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_detector_version({
    #     detector_id: "identifier", # required
    #     detector_version_id: "nonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteDetectorVersion AWS API Documentation
    #
    # @overload delete_detector_version(params = {})
    # @param [Hash] params ({})
    def delete_detector_version(params = {}, options = {})
      req = build_request(:delete_detector_version, params)
      req.send_request(options)
    end

    # Deletes the specified event.
    #
    # @option params [required, String] :event_id
    #   The ID of the event to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event({
    #     event_id: "string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEvent AWS API Documentation
    #
    # @overload delete_event(params = {})
    # @param [Hash] params ({})
    def delete_event(params = {}, options = {})
      req = build_request(:delete_event, params)
      req.send_request(options)
    end

    # Gets all versions for a specified detector.
    #
    # @option params [required, String] :detector_id
    #   The detector ID.
    #
    # @option params [String] :next_token
    #   The next token from the previous response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for the request.
    #
    # @return [Types::DescribeDetectorResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDetectorResult#detector_id #detector_id} => String
    #   * {Types::DescribeDetectorResult#detector_version_summaries #detector_version_summaries} => Array&lt;Types::DetectorVersionSummary&gt;
    #   * {Types::DescribeDetectorResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_detector({
    #     detector_id: "identifier", # required
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_id #=> String
    #   resp.detector_version_summaries #=> Array
    #   resp.detector_version_summaries[0].detector_version_id #=> String
    #   resp.detector_version_summaries[0].status #=> String, one of "DRAFT", "ACTIVE", "INACTIVE"
    #   resp.detector_version_summaries[0].description #=> String
    #   resp.detector_version_summaries[0].last_updated_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DescribeDetector AWS API Documentation
    #
    # @overload describe_detector(params = {})
    # @param [Hash] params ({})
    def describe_detector(params = {}, options = {})
      req = build_request(:describe_detector, params)
      req.send_request(options)
    end

    # Gets all of the model versions for the specified model type or for the
    # specified model type and model ID. You can also get details for a
    # single, specified model version.
    #
    # @option params [String] :model_id
    #   The model ID.
    #
    # @option params [String] :model_version_number
    #   The model version.
    #
    # @option params [String] :model_type
    #   The model type.
    #
    # @option params [String] :next_token
    #   The next token from the previous results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @return [Types::DescribeModelVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeModelVersionsResult#model_version_details #model_version_details} => Array&lt;Types::ModelVersionDetail&gt;
    #   * {Types::DescribeModelVersionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_model_versions({
    #     model_id: "identifier",
    #     model_version_number: "nonEmptyString",
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # accepts ONLINE_FRAUD_INSIGHTS
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.model_version_details #=> Array
    #   resp.model_version_details[0].model_id #=> String
    #   resp.model_version_details[0].model_type #=> String, one of "ONLINE_FRAUD_INSIGHTS"
    #   resp.model_version_details[0].model_version_number #=> String
    #   resp.model_version_details[0].description #=> String
    #   resp.model_version_details[0].status #=> String
    #   resp.model_version_details[0].training_data_source.data_location #=> String
    #   resp.model_version_details[0].training_data_source.data_access_role_arn #=> String
    #   resp.model_version_details[0].model_variables #=> Array
    #   resp.model_version_details[0].model_variables[0].name #=> String
    #   resp.model_version_details[0].model_variables[0].index #=> Integer
    #   resp.model_version_details[0].label_schema.label_key #=> String
    #   resp.model_version_details[0].label_schema.label_mapper #=> Hash
    #   resp.model_version_details[0].label_schema.label_mapper["string"] #=> Array
    #   resp.model_version_details[0].label_schema.label_mapper["string"][0] #=> String
    #   resp.model_version_details[0].validation_metrics #=> Hash
    #   resp.model_version_details[0].validation_metrics["string"] #=> String
    #   resp.model_version_details[0].training_metrics #=> Hash
    #   resp.model_version_details[0].training_metrics["string"] #=> String
    #   resp.model_version_details[0].last_updated_time #=> String
    #   resp.model_version_details[0].created_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DescribeModelVersions AWS API Documentation
    #
    # @overload describe_model_versions(params = {})
    # @param [Hash] params ({})
    def describe_model_versions(params = {}, options = {})
      req = build_request(:describe_model_versions, params)
      req.send_request(options)
    end

    # Gets a particular detector version.
    #
    # @option params [required, String] :detector_id
    #   The detector ID.
    #
    # @option params [required, String] :detector_version_id
    #   The detector version ID.
    #
    # @return [Types::GetDetectorVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDetectorVersionResult#detector_id #detector_id} => String
    #   * {Types::GetDetectorVersionResult#detector_version_id #detector_version_id} => String
    #   * {Types::GetDetectorVersionResult#description #description} => String
    #   * {Types::GetDetectorVersionResult#external_model_endpoints #external_model_endpoints} => Array&lt;String&gt;
    #   * {Types::GetDetectorVersionResult#model_versions #model_versions} => Array&lt;Types::ModelVersion&gt;
    #   * {Types::GetDetectorVersionResult#rules #rules} => Array&lt;Types::Rule&gt;
    #   * {Types::GetDetectorVersionResult#status #status} => String
    #   * {Types::GetDetectorVersionResult#last_updated_time #last_updated_time} => String
    #   * {Types::GetDetectorVersionResult#created_time #created_time} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_detector_version({
    #     detector_id: "identifier", # required
    #     detector_version_id: "nonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_id #=> String
    #   resp.detector_version_id #=> String
    #   resp.description #=> String
    #   resp.external_model_endpoints #=> Array
    #   resp.external_model_endpoints[0] #=> String
    #   resp.model_versions #=> Array
    #   resp.model_versions[0].model_id #=> String
    #   resp.model_versions[0].model_type #=> String, one of "ONLINE_FRAUD_INSIGHTS"
    #   resp.model_versions[0].model_version_number #=> String
    #   resp.rules #=> Array
    #   resp.rules[0].detector_id #=> String
    #   resp.rules[0].rule_id #=> String
    #   resp.rules[0].rule_version #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "INACTIVE"
    #   resp.last_updated_time #=> String
    #   resp.created_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDetectorVersion AWS API Documentation
    #
    # @overload get_detector_version(params = {})
    # @param [Hash] params ({})
    def get_detector_version(params = {}, options = {})
      req = build_request(:get_detector_version, params)
      req.send_request(options)
    end

    # Gets all of detectors. This is a paginated API. If you provide a null
    # `maxSizePerPage`, this actions retrieves a maximum of 10 records per
    # page. If you provide a `maxSizePerPage`, the value must be between 5
    # and 10. To get the next page results, provide the pagination token
    # from the `GetEventTypesResponse` as part of your request. A null
    # pagination token fetches the records from the beginning.
    #
    # @option params [String] :detector_id
    #   The detector ID.
    #
    # @option params [String] :next_token
    #   The next token for the subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects to return for the request.
    #
    # @return [Types::GetDetectorsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDetectorsResult#detectors #detectors} => Array&lt;Types::Detector&gt;
    #   * {Types::GetDetectorsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_detectors({
    #     detector_id: "identifier",
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.detectors #=> Array
    #   resp.detectors[0].detector_id #=> String
    #   resp.detectors[0].description #=> String
    #   resp.detectors[0].last_updated_time #=> String
    #   resp.detectors[0].created_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDetectors AWS API Documentation
    #
    # @overload get_detectors(params = {})
    # @param [Hash] params ({})
    def get_detectors(params = {}, options = {})
      req = build_request(:get_detectors, params)
      req.send_request(options)
    end

    # Gets the details for one or more Amazon SageMaker models that have
    # been imported into the service. This is a paginated API. If you
    # provide a null `maxSizePerPage`, this actions retrieves a maximum of
    # 10 records per page. If you provide a `maxSizePerPage`, the value must
    # be between 5 and 10. To get the next page results, provide the
    # pagination token from the `GetExternalModelsResult` as part of your
    # request. A null pagination token fetches the records from the
    # beginning.
    #
    # @option params [String] :model_endpoint
    #   The Amazon SageMaker model endpoint.
    #
    # @option params [String] :next_token
    #   The next page token for the request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects to return for the request.
    #
    # @return [Types::GetExternalModelsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExternalModelsResult#external_models #external_models} => Array&lt;Types::ExternalModel&gt;
    #   * {Types::GetExternalModelsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_external_models({
    #     model_endpoint: "string",
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.external_models #=> Array
    #   resp.external_models[0].model_endpoint #=> String
    #   resp.external_models[0].model_source #=> String, one of "SAGEMAKER"
    #   resp.external_models[0].role.arn #=> String
    #   resp.external_models[0].role.name #=> String
    #   resp.external_models[0].input_configuration.format #=> String, one of "TEXT_CSV", "APPLICATION_JSON"
    #   resp.external_models[0].input_configuration.is_opaque #=> Boolean
    #   resp.external_models[0].input_configuration.json_input_template #=> String
    #   resp.external_models[0].input_configuration.csv_input_template #=> String
    #   resp.external_models[0].output_configuration.format #=> String, one of "TEXT_CSV", "APPLICATION_JSONLINES"
    #   resp.external_models[0].output_configuration.json_key_to_variable_map #=> Hash
    #   resp.external_models[0].output_configuration.json_key_to_variable_map["string"] #=> String
    #   resp.external_models[0].output_configuration.csv_index_to_variable_map #=> Hash
    #   resp.external_models[0].output_configuration.csv_index_to_variable_map["string"] #=> String
    #   resp.external_models[0].model_endpoint_status #=> String, one of "ASSOCIATED", "DISSOCIATED"
    #   resp.external_models[0].last_updated_time #=> String
    #   resp.external_models[0].created_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetExternalModels AWS API Documentation
    #
    # @overload get_external_models(params = {})
    # @param [Hash] params ({})
    def get_external_models(params = {}, options = {})
      req = build_request(:get_external_models, params)
      req.send_request(options)
    end

    # Gets a model version.
    #
    # @option params [required, String] :model_id
    #   The model ID.
    #
    # @option params [required, String] :model_type
    #   The model type.
    #
    # @option params [required, String] :model_version_number
    #   The model version.
    #
    # @return [Types::GetModelVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelVersionResult#model_id #model_id} => String
    #   * {Types::GetModelVersionResult#model_type #model_type} => String
    #   * {Types::GetModelVersionResult#model_version_number #model_version_number} => String
    #   * {Types::GetModelVersionResult#description #description} => String
    #   * {Types::GetModelVersionResult#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_version({
    #     model_id: "identifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #     model_version_number: "nonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_id #=> String
    #   resp.model_type #=> String, one of "ONLINE_FRAUD_INSIGHTS"
    #   resp.model_version_number #=> String
    #   resp.description #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModelVersion AWS API Documentation
    #
    # @overload get_model_version(params = {})
    # @param [Hash] params ({})
    def get_model_version(params = {}, options = {})
      req = build_request(:get_model_version, params)
      req.send_request(options)
    end

    # Gets all of the models for the AWS account, or the specified model
    # type, or gets a single model for the specified model type, model ID
    # combination.
    #
    # @option params [String] :model_type
    #   The model type.
    #
    # @option params [String] :model_id
    #   The model ID.
    #
    # @option params [String] :next_token
    #   The next token for the request.
    #
    # @option params [Integer] :max_results
    #   The maximum results to return for the request.
    #
    # @return [Types::GetModelsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelsResult#next_token #next_token} => String
    #   * {Types::GetModelsResult#models #models} => Array&lt;Types::Model&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_models({
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # accepts ONLINE_FRAUD_INSIGHTS
    #     model_id: "identifier",
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.models #=> Array
    #   resp.models[0].model_id #=> String
    #   resp.models[0].model_type #=> String, one of "ONLINE_FRAUD_INSIGHTS"
    #   resp.models[0].description #=> String
    #   resp.models[0].training_data_source.data_location #=> String
    #   resp.models[0].training_data_source.data_access_role_arn #=> String
    #   resp.models[0].model_variables #=> Array
    #   resp.models[0].model_variables[0].name #=> String
    #   resp.models[0].model_variables[0].index #=> Integer
    #   resp.models[0].label_schema.label_key #=> String
    #   resp.models[0].label_schema.label_mapper #=> Hash
    #   resp.models[0].label_schema.label_mapper["string"] #=> Array
    #   resp.models[0].label_schema.label_mapper["string"][0] #=> String
    #   resp.models[0].last_updated_time #=> String
    #   resp.models[0].created_time #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModels AWS API Documentation
    #
    # @overload get_models(params = {})
    # @param [Hash] params ({})
    def get_models(params = {}, options = {})
      req = build_request(:get_models, params)
      req.send_request(options)
    end

    # Gets one or more outcomes. This is a paginated API. If you provide a
    # null `maxSizePerPage`, this actions retrieves a maximum of 10 records
    # per page. If you provide a `maxSizePerPage`, the value must be between
    # 50 and 100. To get the next page results, provide the pagination token
    # from the `GetOutcomesResult` as part of your request. A null
    # pagination token fetches the records from the beginning.
    #
    # @option params [String] :name
    #   The name of the outcome or outcomes to get.
    #
    # @option params [String] :next_token
    #   The next page token for the request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects to return for the request.
    #
    # @return [Types::GetOutcomesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOutcomesResult#outcomes #outcomes} => Array&lt;Types::Outcome&gt;
    #   * {Types::GetOutcomesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_outcomes({
    #     name: "identifier",
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.outcomes #=> Array
    #   resp.outcomes[0].name #=> String
    #   resp.outcomes[0].description #=> String
    #   resp.outcomes[0].last_updated_time #=> String
    #   resp.outcomes[0].created_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetOutcomes AWS API Documentation
    #
    # @overload get_outcomes(params = {})
    # @param [Hash] params ({})
    def get_outcomes(params = {}, options = {})
      req = build_request(:get_outcomes, params)
      req.send_request(options)
    end

    # Evaluates an event against a detector version. If a version ID is not
    # provided, the detector’s (`ACTIVE`) version is used.
    #
    # @option params [required, String] :detector_id
    #   The detector ID.
    #
    # @option params [String] :detector_version_id
    #   The detector version ID.
    #
    # @option params [required, String] :event_id
    #   The unique ID used to identify the event.
    #
    # @option params [Hash<String,String>] :event_attributes
    #   Names of variables you defined in Amazon Fraud Detector to represent
    #   event data elements and their corresponding values for the event you
    #   are sending for evaluation.
    #
    # @option params [Hash<String,Types::ModelEndpointDataBlob>] :external_model_endpoint_data_blobs
    #   The Amazon SageMaker model endpoint input data blobs.
    #
    # @return [Types::GetPredictionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPredictionResult#outcomes #outcomes} => Array&lt;String&gt;
    #   * {Types::GetPredictionResult#model_scores #model_scores} => Array&lt;Types::ModelScores&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_prediction({
    #     detector_id: "string", # required
    #     detector_version_id: "string",
    #     event_id: "string", # required
    #     event_attributes: {
    #       "attributeKey" => "attributeValue",
    #     },
    #     external_model_endpoint_data_blobs: {
    #       "string" => {
    #         byte_buffer: "data",
    #         content_type: "contentType",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.outcomes #=> Array
    #   resp.outcomes[0] #=> String
    #   resp.model_scores #=> Array
    #   resp.model_scores[0].model_version.model_id #=> String
    #   resp.model_scores[0].model_version.model_type #=> String, one of "ONLINE_FRAUD_INSIGHTS"
    #   resp.model_scores[0].model_version.model_version_number #=> String
    #   resp.model_scores[0].scores #=> Hash
    #   resp.model_scores[0].scores["string"] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetPrediction AWS API Documentation
    #
    # @overload get_prediction(params = {})
    # @param [Hash] params ({})
    def get_prediction(params = {}, options = {})
      req = build_request(:get_prediction, params)
      req.send_request(options)
    end

    # Gets all rules available for the specified detector.
    #
    # @option params [String] :rule_id
    #   The rule ID.
    #
    # @option params [required, String] :detector_id
    #   The detector ID.
    #
    # @option params [String] :rule_version
    #   The rule version.
    #
    # @option params [String] :next_token
    #   The next page token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of rules to return for the request.
    #
    # @return [Types::GetRulesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRulesResult#rule_details #rule_details} => Array&lt;Types::RuleDetail&gt;
    #   * {Types::GetRulesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rules({
    #     rule_id: "identifier",
    #     detector_id: "identifier", # required
    #     rule_version: "nonEmptyString",
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_details #=> Array
    #   resp.rule_details[0].rule_id #=> String
    #   resp.rule_details[0].description #=> String
    #   resp.rule_details[0].detector_id #=> String
    #   resp.rule_details[0].rule_version #=> String
    #   resp.rule_details[0].expression #=> String
    #   resp.rule_details[0].language #=> String, one of "DETECTORPL"
    #   resp.rule_details[0].outcomes #=> Array
    #   resp.rule_details[0].outcomes[0] #=> String
    #   resp.rule_details[0].last_updated_time #=> String
    #   resp.rule_details[0].created_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetRules AWS API Documentation
    #
    # @overload get_rules(params = {})
    # @param [Hash] params ({})
    def get_rules(params = {}, options = {})
      req = build_request(:get_rules, params)
      req.send_request(options)
    end

    # Gets all of the variables or the specific variable. This is a
    # paginated API. Providing null `maxSizePerPage` results in retrieving
    # maximum of 100 records per page. If you provide `maxSizePerPage` the
    # value must be between 50 and 100. To get the next page result, a
    # provide a pagination token from `GetVariablesResult` as part of your
    # request. Null pagination token fetches the records from the beginning.
    #
    # @option params [String] :name
    #   The name of the variable.
    #
    # @option params [String] :next_token
    #   The next page token of the get variable request.
    #
    # @option params [Integer] :max_results
    #   The max size per page determined for the get variable request.
    #
    # @return [Types::GetVariablesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVariablesResult#variables #variables} => Array&lt;Types::Variable&gt;
    #   * {Types::GetVariablesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_variables({
    #     name: "string",
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.variables #=> Array
    #   resp.variables[0].name #=> String
    #   resp.variables[0].data_type #=> String, one of "STRING", "INTEGER", "FLOAT", "BOOLEAN"
    #   resp.variables[0].data_source #=> String, one of "EVENT", "MODEL_SCORE", "EXTERNAL_MODEL_SCORE"
    #   resp.variables[0].default_value #=> String
    #   resp.variables[0].description #=> String
    #   resp.variables[0].variable_type #=> String
    #   resp.variables[0].last_updated_time #=> String
    #   resp.variables[0].created_time #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetVariables AWS API Documentation
    #
    # @overload get_variables(params = {})
    # @param [Hash] params ({})
    def get_variables(params = {}, options = {})
      req = build_request(:get_variables, params)
      req.send_request(options)
    end

    # Creates or updates a detector.
    #
    # @option params [required, String] :detector_id
    #   The detector ID.
    #
    # @option params [String] :description
    #   The description of the detector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_detector({
    #     detector_id: "identifier", # required
    #     description: "description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutDetector AWS API Documentation
    #
    # @overload put_detector(params = {})
    # @param [Hash] params ({})
    def put_detector(params = {}, options = {})
      req = build_request(:put_detector, params)
      req.send_request(options)
    end

    # Creates or updates an Amazon SageMaker model endpoint. You can also
    # use this action to update the configuration of the model endpoint,
    # including the IAM role and/or the mapped variables.
    #
    # @option params [required, String] :model_endpoint
    #   The model endpoints name.
    #
    # @option params [required, String] :model_source
    #   The source of the model.
    #
    # @option params [required, Types::Role] :role
    #   The IAM role used to invoke the model endpoint.
    #
    # @option params [required, Types::ModelInputConfiguration] :input_configuration
    #   The model endpoint input configuration.
    #
    # @option params [required, Types::ModelOutputConfiguration] :output_configuration
    #   The model endpoint output configuration.
    #
    # @option params [required, String] :model_endpoint_status
    #   The model endpoint’s status in Amazon Fraud Detector.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_external_model({
    #     model_endpoint: "string", # required
    #     model_source: "SAGEMAKER", # required, accepts SAGEMAKER
    #     role: { # required
    #       arn: "string", # required
    #       name: "string", # required
    #     },
    #     input_configuration: { # required
    #       format: "TEXT_CSV", # accepts TEXT_CSV, APPLICATION_JSON
    #       is_opaque: false, # required
    #       json_input_template: "string",
    #       csv_input_template: "string",
    #     },
    #     output_configuration: { # required
    #       format: "TEXT_CSV", # required, accepts TEXT_CSV, APPLICATION_JSONLINES
    #       json_key_to_variable_map: {
    #         "string" => "string",
    #       },
    #       csv_index_to_variable_map: {
    #         "string" => "string",
    #       },
    #     },
    #     model_endpoint_status: "ASSOCIATED", # required, accepts ASSOCIATED, DISSOCIATED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutExternalModel AWS API Documentation
    #
    # @overload put_external_model(params = {})
    # @param [Hash] params ({})
    def put_external_model(params = {}, options = {})
      req = build_request(:put_external_model, params)
      req.send_request(options)
    end

    # Creates or updates a model.
    #
    # @option params [required, String] :model_id
    #   The model ID.
    #
    # @option params [required, String] :model_type
    #   The model type.
    #
    # @option params [String] :description
    #   The model description.
    #
    # @option params [required, Types::TrainingDataSource] :training_data_source
    #   The training data source location in Amazon S3.
    #
    # @option params [required, Array<Types::ModelVariable>] :model_variables
    #   The model input variables.
    #
    # @option params [required, Types::LabelSchema] :label_schema
    #   The label schema.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_model({
    #     model_id: "identifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #     description: "description",
    #     training_data_source: { # required
    #       data_location: "s3BucketLocation", # required
    #       data_access_role_arn: "iamRoleArn", # required
    #     },
    #     model_variables: [ # required
    #       {
    #         name: "string", # required
    #         index: 1,
    #       },
    #     ],
    #     label_schema: { # required
    #       label_key: "string", # required
    #       label_mapper: { # required
    #         "string" => ["string"],
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutModel AWS API Documentation
    #
    # @overload put_model(params = {})
    # @param [Hash] params ({})
    def put_model(params = {}, options = {})
      req = build_request(:put_model, params)
      req.send_request(options)
    end

    # Creates or updates an outcome.
    #
    # @option params [required, String] :name
    #   The name of the outcome.
    #
    # @option params [String] :description
    #   The outcome description.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_outcome({
    #     name: "identifier", # required
    #     description: "description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutOutcome AWS API Documentation
    #
    # @overload put_outcome(params = {})
    # @param [Hash] params ({})
    def put_outcome(params = {}, options = {})
      req = build_request(:put_outcome, params)
      req.send_request(options)
    end

    # Updates a detector version. The detector version attributes that you
    # can update include models, external model endpoints, rules, and
    # description. You can only update a `DRAFT` detector version.
    #
    # @option params [required, String] :detector_id
    #   The parent detector ID for the detector version you want to update.
    #
    # @option params [required, String] :detector_version_id
    #   The detector version ID.
    #
    # @option params [required, Array<String>] :external_model_endpoints
    #   The Amazon SageMaker model endpoints to include in the detector
    #   version.
    #
    # @option params [required, Array<Types::Rule>] :rules
    #   The rules to include in the detector version.
    #
    # @option params [String] :description
    #   The detector version description.
    #
    # @option params [Array<Types::ModelVersion>] :model_versions
    #   The model versions to include in the detector version.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_detector_version({
    #     detector_id: "identifier", # required
    #     detector_version_id: "nonEmptyString", # required
    #     external_model_endpoints: ["string"], # required
    #     rules: [ # required
    #       {
    #         detector_id: "identifier", # required
    #         rule_id: "identifier", # required
    #         rule_version: "nonEmptyString", # required
    #       },
    #     ],
    #     description: "description",
    #     model_versions: [
    #       {
    #         model_id: "identifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         model_version_number: "nonEmptyString", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersion AWS API Documentation
    #
    # @overload update_detector_version(params = {})
    # @param [Hash] params ({})
    def update_detector_version(params = {}, options = {})
      req = build_request(:update_detector_version, params)
      req.send_request(options)
    end

    # Updates the detector version's description. You can update the
    # metadata for any detector version (`DRAFT, ACTIVE,` or `INACTIVE`).
    #
    # @option params [required, String] :detector_id
    #   The detector ID.
    #
    # @option params [required, String] :detector_version_id
    #   The detector version ID.
    #
    # @option params [required, String] :description
    #   The description.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_detector_version_metadata({
    #     detector_id: "identifier", # required
    #     detector_version_id: "nonEmptyString", # required
    #     description: "description", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionMetadata AWS API Documentation
    #
    # @overload update_detector_version_metadata(params = {})
    # @param [Hash] params ({})
    def update_detector_version_metadata(params = {}, options = {})
      req = build_request(:update_detector_version_metadata, params)
      req.send_request(options)
    end

    # Updates the detector version’s status. You can perform the following
    # promotions or demotions using `UpdateDetectorVersionStatus`\: `DRAFT`
    # to `ACTIVE`, `ACTIVE` to `INACTIVE`, and `INACTIVE` to `ACTIVE`.
    #
    # @option params [required, String] :detector_id
    #   The detector ID.
    #
    # @option params [required, String] :detector_version_id
    #   The detector version ID.
    #
    # @option params [required, String] :status
    #   The new status.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_detector_version_status({
    #     detector_id: "identifier", # required
    #     detector_version_id: "nonEmptyString", # required
    #     status: "DRAFT", # required, accepts DRAFT, ACTIVE, INACTIVE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionStatus AWS API Documentation
    #
    # @overload update_detector_version_status(params = {})
    # @param [Hash] params ({})
    def update_detector_version_status(params = {}, options = {})
      req = build_request(:update_detector_version_status, params)
      req.send_request(options)
    end

    # Updates a model version. You can update the description and status
    # attributes using this action. You can perform the following status
    # updates:
    #
    # 1.  Change the `TRAINING_COMPLETE` status to `ACTIVE`
    #
    # 2.  Change `ACTIVE` back to `TRAINING_COMPLETE`
    #
    # @option params [required, String] :model_id
    #   The model ID.
    #
    # @option params [required, String] :model_type
    #   The model type.
    #
    # @option params [required, String] :model_version_number
    #   The model version.
    #
    # @option params [required, String] :description
    #   The model description.
    #
    # @option params [required, String] :status
    #   The new model status.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_model_version({
    #     model_id: "identifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #     model_version_number: "nonEmptyString", # required
    #     description: "description", # required
    #     status: "TRAINING_IN_PROGRESS", # required, accepts TRAINING_IN_PROGRESS, TRAINING_COMPLETE, ACTIVATE_REQUESTED, ACTIVATE_IN_PROGRESS, ACTIVE, INACTIVATE_IN_PROGRESS, INACTIVE, ERROR
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersion AWS API Documentation
    #
    # @overload update_model_version(params = {})
    # @param [Hash] params ({})
    def update_model_version(params = {}, options = {})
      req = build_request(:update_model_version, params)
      req.send_request(options)
    end

    # Updates a rule's metadata.
    #
    # @option params [required, Types::Rule] :rule
    #   The rule to update.
    #
    # @option params [required, String] :description
    #   The rule description.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule_metadata({
    #     rule: { # required
    #       detector_id: "identifier", # required
    #       rule_id: "identifier", # required
    #       rule_version: "nonEmptyString", # required
    #     },
    #     description: "description", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateRuleMetadata AWS API Documentation
    #
    # @overload update_rule_metadata(params = {})
    # @param [Hash] params ({})
    def update_rule_metadata(params = {}, options = {})
      req = build_request(:update_rule_metadata, params)
      req.send_request(options)
    end

    # Updates a rule version resulting in a new rule version.
    #
    # @option params [required, Types::Rule] :rule
    #   The rule to update.
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [required, String] :expression
    #   The rule expression.
    #
    # @option params [required, String] :language
    #   The language.
    #
    # @option params [required, Array<String>] :outcomes
    #   The outcomes.
    #
    # @return [Types::UpdateRuleVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuleVersionResult#rule #rule} => Types::Rule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule_version({
    #     rule: { # required
    #       detector_id: "identifier", # required
    #       rule_id: "identifier", # required
    #       rule_version: "nonEmptyString", # required
    #     },
    #     description: "description",
    #     expression: "ruleExpression", # required
    #     language: "DETECTORPL", # required, accepts DETECTORPL
    #     outcomes: ["string"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule.detector_id #=> String
    #   resp.rule.rule_id #=> String
    #   resp.rule.rule_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateRuleVersion AWS API Documentation
    #
    # @overload update_rule_version(params = {})
    # @param [Hash] params ({})
    def update_rule_version(params = {}, options = {})
      req = build_request(:update_rule_version, params)
      req.send_request(options)
    end

    # Updates a variable.
    #
    # @option params [required, String] :name
    #   The name of the variable.
    #
    # @option params [String] :default_value
    #   The new default value of the variable.
    #
    # @option params [String] :description
    #   The new description.
    #
    # @option params [String] :variable_type
    #   The variable type.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_variable({
    #     name: "string", # required
    #     default_value: "string",
    #     description: "string",
    #     variable_type: "string",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateVariable AWS API Documentation
    #
    # @overload update_variable(params = {})
    # @param [Hash] params ({})
    def update_variable(params = {}, options = {})
      req = build_request(:update_variable, params)
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
      context[:gem_name] = 'aws-sdk-frauddetector'
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
