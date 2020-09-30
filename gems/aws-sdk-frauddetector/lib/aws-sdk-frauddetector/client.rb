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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:frauddetector)

module Aws::FraudDetector
  # An API client for FraudDetector.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::FraudDetector::Client.new(
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
    add_plugin(Aws::Plugins::HttpChecksum)
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

    # Creates a batch of variables.
    #
    # @option params [required, Array<Types::VariableEntry>] :variable_entries
    #   The list of variables for the batch create variable request.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A collection of key and value pairs.
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
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
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
    #   resp.variables[0].arn #=> String
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
    # @option params [String] :rule_execution_mode
    #   The rule execution mode for the rules included in the detector
    #   version.
    #
    #   You can define and edit the rule mode at the detector version level,
    #   when it is in draft status.
    #
    #   If you specify `FIRST_MATCHED`, Amazon Fraud Detector evaluates rules
    #   sequentially, first to last, stopping at the first matched rule.
    #   Amazon Fraud dectector then provides the outcomes for that single
    #   rule.
    #
    #   If you specifiy `ALL_MATCHED`, Amazon Fraud Detector evaluates all
    #   rules and returns the outcomes for all matched rules.
    #
    #   The default behavior is `FIRST_MATCHED`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A collection of key and value pairs.
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
    #         rule_version: "wholeNumberVersionString", # required
    #       },
    #     ],
    #     model_versions: [
    #       {
    #         model_id: "modelIdentifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         model_version_number: "nonEmptyString", # required
    #         arn: "fraudDetectorArn",
    #       },
    #     ],
    #     rule_execution_mode: "ALL_MATCHED", # accepts ALL_MATCHED, FIRST_MATCHED
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
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

    # Creates a model using the specified model type.
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
    # @option params [required, String] :event_type_name
    #   The name of the event type.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A collection of key and value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model({
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #     description: "description",
    #     event_type_name: "string", # required
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateModel AWS API Documentation
    #
    # @overload create_model(params = {})
    # @param [Hash] params ({})
    def create_model(params = {}, options = {})
      req = build_request(:create_model, params)
      req.send_request(options)
    end

    # Creates a version of the model using the specified model type and
    # model id.
    #
    # @option params [required, String] :model_id
    #   The model ID.
    #
    # @option params [required, String] :model_type
    #   The model type.
    #
    # @option params [required, String] :training_data_source
    #   The training data source location in Amazon S3.
    #
    # @option params [required, Types::TrainingDataSchema] :training_data_schema
    #   The training data schema.
    #
    # @option params [Types::ExternalEventsDetail] :external_events_detail
    #   Details for the external events data used for model version training.
    #   Required if `trainingDataSource` is `EXTERNAL_EVENTS`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A collection of key and value pairs.
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
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #     training_data_source: "EXTERNAL_EVENTS", # required, accepts EXTERNAL_EVENTS
    #     training_data_schema: { # required
    #       model_variables: ["string"], # required
    #       label_schema: { # required
    #         label_mapper: { # required
    #           "string" => ["string"],
    #         },
    #       },
    #     },
    #     external_events_detail: {
    #       data_location: "s3BucketLocation", # required
    #       data_access_role_arn: "iamRoleArn", # required
    #     },
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
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
    # @option params [Array<Types::Tag>] :tags
    #   A collection of key and value pairs.
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
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
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
    #   The variable type. For more information see [Variable types][1].
    #
    #   Valid Values: `AUTH_CODE | AVS | BILLING_ADDRESS_L1 |
    #   BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME |
    #   BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL |
    #   CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL |
    #   FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE |
    #   PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 |
    #   SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME
    #   | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types
    #
    # @option params [Array<Types::Tag>] :tags
    #   A collection of key and value pairs.
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
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
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

    # Deletes the detector. Before deleting a detector, you must first
    # delete all detector versions and rule versions associated with the
    # detector.
    #
    # @option params [required, String] :detector_id
    #   The ID of the detector to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_detector({
    #     detector_id: "identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteDetector AWS API Documentation
    #
    # @overload delete_detector(params = {})
    # @param [Hash] params ({})
    def delete_detector(params = {}, options = {})
      req = build_request(:delete_detector, params)
      req.send_request(options)
    end

    # Deletes the detector version. You cannot delete detector versions that
    # are in `ACTIVE` status.
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
    #     detector_version_id: "wholeNumberVersionString", # required
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
    # @option params [required, String] :event_type_name
    #   The name of the event type.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event({
    #     event_id: "string", # required
    #     event_type_name: "string", # required
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

    # Deletes the rule. You cannot delete a rule if it is used by an
    # `ACTIVE` or `INACTIVE` detector version.
    #
    # @option params [required, Types::Rule] :rule
    #   A rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule({
    #     rule: { # required
    #       detector_id: "identifier", # required
    #       rule_id: "identifier", # required
    #       rule_version: "wholeNumberVersionString", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteRule AWS API Documentation
    #
    # @overload delete_rule(params = {})
    # @param [Hash] params ({})
    def delete_rule(params = {}, options = {})
      req = build_request(:delete_rule, params)
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
    #   * {Types::DescribeDetectorResult#arn #arn} => String
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
    #   resp.arn #=> String
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
    #   The model version number.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_model_versions({
    #     model_id: "modelIdentifier",
    #     model_version_number: "floatVersionString",
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
    #   resp.model_version_details[0].status #=> String
    #   resp.model_version_details[0].training_data_source #=> String, one of "EXTERNAL_EVENTS"
    #   resp.model_version_details[0].training_data_schema.model_variables #=> Array
    #   resp.model_version_details[0].training_data_schema.model_variables[0] #=> String
    #   resp.model_version_details[0].training_data_schema.label_schema.label_mapper #=> Hash
    #   resp.model_version_details[0].training_data_schema.label_schema.label_mapper["string"] #=> Array
    #   resp.model_version_details[0].training_data_schema.label_schema.label_mapper["string"][0] #=> String
    #   resp.model_version_details[0].external_events_detail.data_location #=> String
    #   resp.model_version_details[0].external_events_detail.data_access_role_arn #=> String
    #   resp.model_version_details[0].training_result.data_validation_metrics.file_level_messages #=> Array
    #   resp.model_version_details[0].training_result.data_validation_metrics.file_level_messages[0].title #=> String
    #   resp.model_version_details[0].training_result.data_validation_metrics.file_level_messages[0].content #=> String
    #   resp.model_version_details[0].training_result.data_validation_metrics.file_level_messages[0].type #=> String
    #   resp.model_version_details[0].training_result.data_validation_metrics.field_level_messages #=> Array
    #   resp.model_version_details[0].training_result.data_validation_metrics.field_level_messages[0].field_name #=> String
    #   resp.model_version_details[0].training_result.data_validation_metrics.field_level_messages[0].identifier #=> String
    #   resp.model_version_details[0].training_result.data_validation_metrics.field_level_messages[0].title #=> String
    #   resp.model_version_details[0].training_result.data_validation_metrics.field_level_messages[0].content #=> String
    #   resp.model_version_details[0].training_result.data_validation_metrics.field_level_messages[0].type #=> String
    #   resp.model_version_details[0].training_result.training_metrics.auc #=> Float
    #   resp.model_version_details[0].training_result.training_metrics.metric_data_points #=> Array
    #   resp.model_version_details[0].training_result.training_metrics.metric_data_points[0].fpr #=> Float
    #   resp.model_version_details[0].training_result.training_metrics.metric_data_points[0].precision #=> Float
    #   resp.model_version_details[0].training_result.training_metrics.metric_data_points[0].tpr #=> Float
    #   resp.model_version_details[0].training_result.training_metrics.metric_data_points[0].threshold #=> Float
    #   resp.model_version_details[0].last_updated_time #=> String
    #   resp.model_version_details[0].created_time #=> String
    #   resp.model_version_details[0].arn #=> String
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
    #   * {Types::GetDetectorVersionResult#rule_execution_mode #rule_execution_mode} => String
    #   * {Types::GetDetectorVersionResult#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_detector_version({
    #     detector_id: "identifier", # required
    #     detector_version_id: "wholeNumberVersionString", # required
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
    #   resp.model_versions[0].arn #=> String
    #   resp.rules #=> Array
    #   resp.rules[0].detector_id #=> String
    #   resp.rules[0].rule_id #=> String
    #   resp.rules[0].rule_version #=> String
    #   resp.status #=> String, one of "DRAFT", "ACTIVE", "INACTIVE"
    #   resp.last_updated_time #=> String
    #   resp.created_time #=> String
    #   resp.rule_execution_mode #=> String, one of "ALL_MATCHED", "FIRST_MATCHED"
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDetectorVersion AWS API Documentation
    #
    # @overload get_detector_version(params = {})
    # @param [Hash] params ({})
    def get_detector_version(params = {}, options = {})
      req = build_request(:get_detector_version, params)
      req.send_request(options)
    end

    # Gets all detectors or a single detector if a `detectorId` is
    # specified. This is a paginated API. If you provide a null
    # `maxResults`, this action retrieves a maximum of 10 records per page.
    # If you provide a `maxResults`, the value must be between 5 and 10. To
    # get the next page results, provide the pagination token from the
    # `GetDetectorsResponse` as part of your request. A null pagination
    # token fetches the records from the beginning.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.detectors[0].event_type_name #=> String
    #   resp.detectors[0].last_updated_time #=> String
    #   resp.detectors[0].created_time #=> String
    #   resp.detectors[0].arn #=> String
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

    # Gets all entity types or a specific entity type if a name is
    # specified. This is a paginated API. If you provide a null
    # `maxResults`, this action retrieves a maximum of 10 records per page.
    # If you provide a `maxResults`, the value must be between 5 and 10. To
    # get the next page results, provide the pagination token from the
    # `GetEntityTypesResponse` as part of your request. A null pagination
    # token fetches the records from the beginning.
    #
    # @option params [String] :name
    #   The name.
    #
    # @option params [String] :next_token
    #   The next token for the subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects to return for the request.
    #
    # @return [Types::GetEntityTypesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEntityTypesResult#entity_types #entity_types} => Array&lt;Types::EntityType&gt;
    #   * {Types::GetEntityTypesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_entity_types({
    #     name: "identifier",
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_types #=> Array
    #   resp.entity_types[0].name #=> String
    #   resp.entity_types[0].description #=> String
    #   resp.entity_types[0].last_updated_time #=> String
    #   resp.entity_types[0].created_time #=> String
    #   resp.entity_types[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEntityTypes AWS API Documentation
    #
    # @overload get_entity_types(params = {})
    # @param [Hash] params ({})
    def get_entity_types(params = {}, options = {})
      req = build_request(:get_entity_types, params)
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
    # @option params [required, String] :event_type_name
    #   The event type associated with the detector specified for the
    #   prediction.
    #
    # @option params [required, Array<Types::Entity>] :entities
    #   The entity type (associated with the detector's event type) and
    #   specific entity ID representing who performed the event. If an entity
    #   id is not available, use "UNKNOWN."
    #
    # @option params [required, String] :event_timestamp
    #   Timestamp that defines when the event under evaluation occurred.
    #
    # @option params [required, Hash<String,String>] :event_variables
    #   Names of the event type's variables you defined in Amazon Fraud
    #   Detector to represent data elements and their corresponding values for
    #   the event you are sending for evaluation.
    #
    # @option params [Hash<String,Types::ModelEndpointDataBlob>] :external_model_endpoint_data_blobs
    #   The Amazon SageMaker model endpoint input data blobs.
    #
    # @return [Types::GetEventPredictionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventPredictionResult#model_scores #model_scores} => Array&lt;Types::ModelScores&gt;
    #   * {Types::GetEventPredictionResult#rule_results #rule_results} => Array&lt;Types::RuleResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_prediction({
    #     detector_id: "string", # required
    #     detector_version_id: "wholeNumberVersionString",
    #     event_id: "string", # required
    #     event_type_name: "string", # required
    #     entities: [ # required
    #       {
    #         entity_type: "string", # required
    #         entity_id: "identifier", # required
    #       },
    #     ],
    #     event_timestamp: "string", # required
    #     event_variables: { # required
    #       "variableName" => "variableValue",
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
    #   resp.model_scores #=> Array
    #   resp.model_scores[0].model_version.model_id #=> String
    #   resp.model_scores[0].model_version.model_type #=> String, one of "ONLINE_FRAUD_INSIGHTS"
    #   resp.model_scores[0].model_version.model_version_number #=> String
    #   resp.model_scores[0].model_version.arn #=> String
    #   resp.model_scores[0].scores #=> Hash
    #   resp.model_scores[0].scores["string"] #=> Float
    #   resp.rule_results #=> Array
    #   resp.rule_results[0].rule_id #=> String
    #   resp.rule_results[0].outcomes #=> Array
    #   resp.rule_results[0].outcomes[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventPrediction AWS API Documentation
    #
    # @overload get_event_prediction(params = {})
    # @param [Hash] params ({})
    def get_event_prediction(params = {}, options = {})
      req = build_request(:get_event_prediction, params)
      req.send_request(options)
    end

    # Gets all event types or a specific event type if name is provided.
    # This is a paginated API. If you provide a null `maxResults`, this
    # action retrieves a maximum of 10 records per page. If you provide a
    # `maxResults`, the value must be between 5 and 10. To get the next page
    # results, provide the pagination token from the `GetEventTypesResponse`
    # as part of your request. A null pagination token fetches the records
    # from the beginning.
    #
    # @option params [String] :name
    #   The name.
    #
    # @option params [String] :next_token
    #   The next token for the subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects to return for the request.
    #
    # @return [Types::GetEventTypesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventTypesResult#event_types #event_types} => Array&lt;Types::EventType&gt;
    #   * {Types::GetEventTypesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_types({
    #     name: "identifier",
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_types #=> Array
    #   resp.event_types[0].name #=> String
    #   resp.event_types[0].description #=> String
    #   resp.event_types[0].event_variables #=> Array
    #   resp.event_types[0].event_variables[0] #=> String
    #   resp.event_types[0].labels #=> Array
    #   resp.event_types[0].labels[0] #=> String
    #   resp.event_types[0].entity_types #=> Array
    #   resp.event_types[0].entity_types[0] #=> String
    #   resp.event_types[0].last_updated_time #=> String
    #   resp.event_types[0].created_time #=> String
    #   resp.event_types[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventTypes AWS API Documentation
    #
    # @overload get_event_types(params = {})
    # @param [Hash] params ({})
    def get_event_types(params = {}, options = {})
      req = build_request(:get_event_types, params)
      req.send_request(options)
    end

    # Gets the details for one or more Amazon SageMaker models that have
    # been imported into the service. This is a paginated API. If you
    # provide a null `maxResults`, this actions retrieves a maximum of 10
    # records per page. If you provide a `maxResults`, the value must be
    # between 5 and 10. To get the next page results, provide the pagination
    # token from the `GetExternalModelsResult` as part of your request. A
    # null pagination token fetches the records from the beginning.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.external_models[0].invoke_model_endpoint_role_arn #=> String
    #   resp.external_models[0].input_configuration.event_type_name #=> String
    #   resp.external_models[0].input_configuration.format #=> String, one of "TEXT_CSV", "APPLICATION_JSON"
    #   resp.external_models[0].input_configuration.use_event_variables #=> Boolean
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
    #   resp.external_models[0].arn #=> String
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

    # Gets the encryption key if a Key Management Service (KMS) customer
    # master key (CMK) has been specified to be used to encrypt content in
    # Amazon Fraud Detector.
    #
    # @return [Types::GetKMSEncryptionKeyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKMSEncryptionKeyResult#kms_key #kms_key} => Types::KMSKey
    #
    # @example Response structure
    #
    #   resp.kms_key.kms_encryption_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetKMSEncryptionKey AWS API Documentation
    #
    # @overload get_kms_encryption_key(params = {})
    # @param [Hash] params ({})
    def get_kms_encryption_key(params = {}, options = {})
      req = build_request(:get_kms_encryption_key, params)
      req.send_request(options)
    end

    # Gets all labels or a specific label if name is provided. This is a
    # paginated API. If you provide a null `maxResults`, this action
    # retrieves a maximum of 50 records per page. If you provide a
    # `maxResults`, the value must be between 10 and 50. To get the next
    # page results, provide the pagination token from the
    # `GetGetLabelsResponse` as part of your request. A null pagination
    # token fetches the records from the beginning.
    #
    # @option params [String] :name
    #   The name of the label or labels to get.
    #
    # @option params [String] :next_token
    #   The next token for the subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects to return for the request.
    #
    # @return [Types::GetLabelsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLabelsResult#labels #labels} => Array&lt;Types::Label&gt;
    #   * {Types::GetLabelsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_labels({
    #     name: "identifier",
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.labels #=> Array
    #   resp.labels[0].name #=> String
    #   resp.labels[0].description #=> String
    #   resp.labels[0].last_updated_time #=> String
    #   resp.labels[0].created_time #=> String
    #   resp.labels[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetLabels AWS API Documentation
    #
    # @overload get_labels(params = {})
    # @param [Hash] params ({})
    def get_labels(params = {}, options = {})
      req = build_request(:get_labels, params)
      req.send_request(options)
    end

    # Gets the details of the specified model version.
    #
    # @option params [required, String] :model_id
    #   The model ID.
    #
    # @option params [required, String] :model_type
    #   The model type.
    #
    # @option params [required, String] :model_version_number
    #   The model version number.
    #
    # @return [Types::GetModelVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelVersionResult#model_id #model_id} => String
    #   * {Types::GetModelVersionResult#model_type #model_type} => String
    #   * {Types::GetModelVersionResult#model_version_number #model_version_number} => String
    #   * {Types::GetModelVersionResult#training_data_source #training_data_source} => String
    #   * {Types::GetModelVersionResult#training_data_schema #training_data_schema} => Types::TrainingDataSchema
    #   * {Types::GetModelVersionResult#external_events_detail #external_events_detail} => Types::ExternalEventsDetail
    #   * {Types::GetModelVersionResult#status #status} => String
    #   * {Types::GetModelVersionResult#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_version({
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #     model_version_number: "floatVersionString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_id #=> String
    #   resp.model_type #=> String, one of "ONLINE_FRAUD_INSIGHTS"
    #   resp.model_version_number #=> String
    #   resp.training_data_source #=> String, one of "EXTERNAL_EVENTS"
    #   resp.training_data_schema.model_variables #=> Array
    #   resp.training_data_schema.model_variables[0] #=> String
    #   resp.training_data_schema.label_schema.label_mapper #=> Hash
    #   resp.training_data_schema.label_schema.label_mapper["string"] #=> Array
    #   resp.training_data_schema.label_schema.label_mapper["string"][0] #=> String
    #   resp.external_events_detail.data_location #=> String
    #   resp.external_events_detail.data_access_role_arn #=> String
    #   resp.status #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModelVersion AWS API Documentation
    #
    # @overload get_model_version(params = {})
    # @param [Hash] params ({})
    def get_model_version(params = {}, options = {})
      req = build_request(:get_model_version, params)
      req.send_request(options)
    end

    # Gets one or more models. Gets all models for the AWS account if no
    # model type and no model id provided. Gets all models for the AWS
    # account and model type, if the model type is specified but model id is
    # not provided. Gets a specific model if (model type, model id) tuple is
    # specified.
    #
    # This is a paginated API. If you provide a null `maxResults`, this
    # action retrieves a maximum of 10 records per page. If you provide a
    # `maxResults`, the value must be between 1 and 10. To get the next page
    # results, provide the pagination token from the response as part of
    # your request. A null pagination token fetches the records from the
    # beginning.
    #
    # @option params [String] :model_id
    #   The model ID.
    #
    # @option params [String] :model_type
    #   The model type.
    #
    # @option params [String] :next_token
    #   The next token for the subsequent request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects to return for the request.
    #
    # @return [Types::GetModelsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelsResult#next_token #next_token} => String
    #   * {Types::GetModelsResult#models #models} => Array&lt;Types::Model&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_models({
    #     model_id: "modelIdentifier",
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # accepts ONLINE_FRAUD_INSIGHTS
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
    #   resp.models[0].event_type_name #=> String
    #   resp.models[0].created_time #=> String
    #   resp.models[0].last_updated_time #=> String
    #   resp.models[0].arn #=> String
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
    # null `maxResults`, this actions retrieves a maximum of 100 records per
    # page. If you provide a `maxResults`, the value must be between 50 and
    # 100. To get the next page results, provide the pagination token from
    # the `GetOutcomesResult` as part of your request. A null pagination
    # token fetches the records from the beginning.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.outcomes[0].arn #=> String
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

    # Get all rules for a detector (paginated) if `ruleId` and `ruleVersion`
    # are not specified. Gets all rules for the detector and the `ruleId` if
    # present (paginated). Gets a specific rule if both the `ruleId` and the
    # `ruleVersion` are specified.
    #
    # This is a paginated API. Providing null maxResults results in
    # retrieving maximum of 100 records per page. If you provide maxResults
    # the value must be between 50 and 100. To get the next page result, a
    # provide a pagination token from GetRulesResult as part of your
    # request. Null pagination token fetches the records from the beginning.
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rules({
    #     rule_id: "identifier",
    #     detector_id: "identifier", # required
    #     rule_version: "wholeNumberVersionString",
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
    #   resp.rule_details[0].arn #=> String
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
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
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
    #   resp.variables[0].arn #=> String
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

    # Lists all tags associated with the resource. This is a paginated API.
    # To get the next page results, provide the pagination token from the
    # response as part of your request. A null pagination token fetches the
    # records from the beginning.
    #
    # @option params [required, String] :resource_arn
    #   The ARN that specifies the resource whose tags you want to list.
    #
    # @option params [String] :next_token
    #   The next token from the previous results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of objects to return for the request.
    #
    # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResult#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "fraudDetectorArn", # required
    #     next_token: "string",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
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
    # @option params [required, String] :event_type_name
    #   The name of the event type.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A collection of key and value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_detector({
    #     detector_id: "identifier", # required
    #     description: "description",
    #     event_type_name: "identifier", # required
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
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

    # Creates or updates an entity type. An entity represents who is
    # performing the event. As part of a fraud prediction, you pass the
    # entity ID to indicate the specific entity who performed the event. An
    # entity type classifies the entity. Example classifications include
    # customer, merchant, or account.
    #
    # @option params [required, String] :name
    #   The name of the entity type.
    #
    # @option params [String] :description
    #   The description.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A collection of key and value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_entity_type({
    #     name: "identifier", # required
    #     description: "description",
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutEntityType AWS API Documentation
    #
    # @overload put_entity_type(params = {})
    # @param [Hash] params ({})
    def put_entity_type(params = {}, options = {})
      req = build_request(:put_entity_type, params)
      req.send_request(options)
    end

    # Creates or updates an event type. An event is a business activity that
    # is evaluated for fraud risk. With Amazon Fraud Detector, you generate
    # fraud predictions for events. An event type defines the structure for
    # an event sent to Amazon Fraud Detector. This includes the variables
    # sent as part of the event, the entity performing the event (such as a
    # customer), and the labels that classify the event. Example event types
    # include online payment transactions, account registrations, and
    # authentications.
    #
    # @option params [required, String] :name
    #   The name.
    #
    # @option params [String] :description
    #   The description of the event type.
    #
    # @option params [required, Array<String>] :event_variables
    #   The event type variables.
    #
    # @option params [Array<String>] :labels
    #   The event type labels.
    #
    # @option params [required, Array<String>] :entity_types
    #   The entity type for the event type. Example entity types: customer,
    #   merchant, account.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A collection of key and value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_event_type({
    #     name: "identifier", # required
    #     description: "description",
    #     event_variables: ["string"], # required
    #     labels: ["string"],
    #     entity_types: ["string"], # required
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutEventType AWS API Documentation
    #
    # @overload put_event_type(params = {})
    # @param [Hash] params ({})
    def put_event_type(params = {}, options = {})
      req = build_request(:put_event_type, params)
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
    # @option params [required, String] :invoke_model_endpoint_role_arn
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
    # @option params [Array<Types::Tag>] :tags
    #   A collection of key and value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_external_model({
    #     model_endpoint: "sageMakerEndpointIdentifier", # required
    #     model_source: "SAGEMAKER", # required, accepts SAGEMAKER
    #     invoke_model_endpoint_role_arn: "string", # required
    #     input_configuration: { # required
    #       event_type_name: "identifier",
    #       format: "TEXT_CSV", # accepts TEXT_CSV, APPLICATION_JSON
    #       use_event_variables: false, # required
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
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
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

    # Specifies the Key Management Service (KMS) customer master key (CMK)
    # to be used to encrypt content in Amazon Fraud Detector.
    #
    # @option params [required, String] :kms_encryption_key_arn
    #   The KMS encryption key ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_kms_encryption_key({
    #     kms_encryption_key_arn: "KmsEncryptionKeyArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutKMSEncryptionKey AWS API Documentation
    #
    # @overload put_kms_encryption_key(params = {})
    # @param [Hash] params ({})
    def put_kms_encryption_key(params = {}, options = {})
      req = build_request(:put_kms_encryption_key, params)
      req.send_request(options)
    end

    # Creates or updates label. A label classifies an event as fraudulent or
    # legitimate. Labels are associated with event types and used to train
    # supervised machine learning models in Amazon Fraud Detector.
    #
    # @option params [required, String] :name
    #   The label name.
    #
    # @option params [String] :description
    #   The label description.
    #
    # @option params [Array<Types::Tag>] :tags
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_label({
    #     name: "identifier", # required
    #     description: "description",
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutLabel AWS API Documentation
    #
    # @overload put_label(params = {})
    # @param [Hash] params ({})
    def put_label(params = {}, options = {})
      req = build_request(:put_label, params)
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
    # @option params [Array<Types::Tag>] :tags
    #   A collection of key and value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_outcome({
    #     name: "identifier", # required
    #     description: "description",
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
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

    # Assigns tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to assign to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "fraudDetectorArn", # required
    #     tags: [ # required
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TagResource AWS API Documentation
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
    #   The ARN of the resource from which to remove the tag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The resource ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "fraudDetectorArn", # required
    #     tag_keys: ["tagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a detector version. The detector version attributes that you
    # can update include models, external model endpoints, rules, rule
    # execution mode, and description. You can only update a `DRAFT`
    # detector version.
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
    # @option params [String] :rule_execution_mode
    #   The rule execution mode to add to the detector.
    #
    #   If you specify `FIRST_MATCHED`, Amazon Fraud Detector evaluates rules
    #   sequentially, first to last, stopping at the first matched rule.
    #   Amazon Fraud dectector then provides the outcomes for that single
    #   rule.
    #
    #   If you specifiy `ALL_MATCHED`, Amazon Fraud Detector evaluates all
    #   rules and returns the outcomes for all matched rules. You can define
    #   and edit the rule mode at the detector version level, when it is in
    #   draft status.
    #
    #   The default behavior is `FIRST_MATCHED`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_detector_version({
    #     detector_id: "identifier", # required
    #     detector_version_id: "wholeNumberVersionString", # required
    #     external_model_endpoints: ["string"], # required
    #     rules: [ # required
    #       {
    #         detector_id: "identifier", # required
    #         rule_id: "identifier", # required
    #         rule_version: "wholeNumberVersionString", # required
    #       },
    #     ],
    #     description: "description",
    #     model_versions: [
    #       {
    #         model_id: "modelIdentifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         model_version_number: "nonEmptyString", # required
    #         arn: "fraudDetectorArn",
    #       },
    #     ],
    #     rule_execution_mode: "ALL_MATCHED", # accepts ALL_MATCHED, FIRST_MATCHED
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
    #     detector_version_id: "wholeNumberVersionString", # required
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
    #     detector_version_id: "wholeNumberVersionString", # required
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

    # Updates a model. You can update the description attribute using this
    # action.
    #
    # @option params [required, String] :model_id
    #   The model ID.
    #
    # @option params [required, String] :model_type
    #   The model type.
    #
    # @option params [String] :description
    #   The new model description.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_model({
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #     description: "description",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModel AWS API Documentation
    #
    # @overload update_model(params = {})
    # @param [Hash] params ({})
    def update_model(params = {}, options = {})
      req = build_request(:update_model, params)
      req.send_request(options)
    end

    # Updates a model version. Updating a model version retrains an existing
    # model version using updated training data and produces a new minor
    # version of the model. You can update the training data set location
    # and data access role attributes using this action. This action creates
    # and trains a new minor version of the model, for example version 1.01,
    # 1.02, 1.03.
    #
    # @option params [required, String] :model_id
    #   The model ID.
    #
    # @option params [required, String] :model_type
    #   The model type.
    #
    # @option params [required, String] :major_version_number
    #   The major version number.
    #
    # @option params [Types::ExternalEventsDetail] :external_events_detail
    #   The event details.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A collection of key and value pairs.
    #
    # @return [Types::UpdateModelVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateModelVersionResult#model_id #model_id} => String
    #   * {Types::UpdateModelVersionResult#model_type #model_type} => String
    #   * {Types::UpdateModelVersionResult#model_version_number #model_version_number} => String
    #   * {Types::UpdateModelVersionResult#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_model_version({
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #     major_version_number: "wholeNumberVersionString", # required
    #     external_events_detail: {
    #       data_location: "s3BucketLocation", # required
    #       data_access_role_arn: "iamRoleArn", # required
    #     },
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.model_id #=> String
    #   resp.model_type #=> String, one of "ONLINE_FRAUD_INSIGHTS"
    #   resp.model_version_number #=> String
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersion AWS API Documentation
    #
    # @overload update_model_version(params = {})
    # @param [Hash] params ({})
    def update_model_version(params = {}, options = {})
      req = build_request(:update_model_version, params)
      req.send_request(options)
    end

    # Updates the status of a model version.
    #
    # You can perform the following status updates:
    #
    # 1.  Change the `TRAINING_COMPLETE` status to `ACTIVE`.
    #
    # 2.  Change `ACTIVE`to `INACTIVE`.
    #
    # @option params [required, String] :model_id
    #   The model ID of the model version to update.
    #
    # @option params [required, String] :model_type
    #   The model type.
    #
    # @option params [required, String] :model_version_number
    #   The model version number.
    #
    # @option params [required, String] :status
    #   The model version status.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_model_version_status({
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #     model_version_number: "floatVersionString", # required
    #     status: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersionStatus AWS API Documentation
    #
    # @overload update_model_version_status(params = {})
    # @param [Hash] params ({})
    def update_model_version_status(params = {}, options = {})
      req = build_request(:update_model_version_status, params)
      req.send_request(options)
    end

    # Updates a rule's metadata. The description attribute can be updated.
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
    #       rule_version: "wholeNumberVersionString", # required
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

    # Updates a rule version resulting in a new rule version. Updates a rule
    # version resulting in a new rule version (version 1, 2, 3 ...).
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
    # @option params [Array<Types::Tag>] :tags
    #   The tags to assign to the rule version.
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
    #       rule_version: "wholeNumberVersionString", # required
    #     },
    #     description: "description",
    #     expression: "ruleExpression", # required
    #     language: "DETECTORPL", # required, accepts DETECTORPL
    #     outcomes: ["string"], # required
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       },
    #     ],
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
    #   The variable type. For more information see [Variable types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types
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
