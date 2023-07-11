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

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatchevidently)

module Aws::CloudWatchEvidently
  # An API client for CloudWatchEvidently.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CloudWatchEvidently::Client.new(
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

    @identifier = :cloudwatchevidently

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
    add_plugin(Aws::CloudWatchEvidently::Plugins::Endpoints)

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
    #   @option options [Aws::CloudWatchEvidently::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::CloudWatchEvidently::EndpointParameters`
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

    # This operation assigns feature variation to user sessions. For each
    # user session, you pass in an `entityID` that represents the user.
    # Evidently then checks the evaluation rules and assigns the variation.
    #
    # The first rules that are evaluated are the override rules. If the
    # user's `entityID` matches an override rule, the user is served the
    # variation specified by that rule.
    #
    # Next, if there is a launch of the feature, the user might be assigned
    # to a variation in the launch. The chance of this depends on the
    # percentage of users that are allocated to that launch. If the user is
    # enrolled in the launch, the variation they are served depends on the
    # allocation of the various feature variations used for the launch.
    #
    # If the user is not assigned to a launch, and there is an ongoing
    # experiment for this feature, the user might be assigned to a variation
    # in the experiment. The chance of this depends on the percentage of
    # users that are allocated to that experiment. If the user is enrolled
    # in the experiment, the variation they are served depends on the
    # allocation of the various feature variations used for the experiment.
    #
    # If the user is not assigned to a launch or experiment, they are served
    # the default variation.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the feature being
    #   evaluated.
    #
    # @option params [required, Array<Types::EvaluationRequest>] :requests
    #   An array of structures, where each structure assigns a feature
    #   variation to one user session.
    #
    # @return [Types::BatchEvaluateFeatureResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchEvaluateFeatureResponse#results #results} => Array&lt;Types::EvaluationResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_evaluate_feature({
    #     project: "ProjectRef", # required
    #     requests: [ # required
    #       {
    #         entity_id: "EntityId", # required
    #         evaluation_context: "JsonValue",
    #         feature: "FeatureName", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].details #=> String
    #   resp.results[0].entity_id #=> String
    #   resp.results[0].feature #=> String
    #   resp.results[0].project #=> String
    #   resp.results[0].reason #=> String
    #   resp.results[0].value.bool_value #=> Boolean
    #   resp.results[0].value.double_value #=> Float
    #   resp.results[0].value.long_value #=> Integer
    #   resp.results[0].value.string_value #=> String
    #   resp.results[0].variation #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/BatchEvaluateFeature AWS API Documentation
    #
    # @overload batch_evaluate_feature(params = {})
    # @param [Hash] params ({})
    def batch_evaluate_feature(params = {}, options = {})
      req = build_request(:batch_evaluate_feature, params)
      req.send_request(options)
    end

    # Creates an Evidently *experiment*. Before you create an experiment,
    # you must create the feature to use for the experiment.
    #
    # An experiment helps you make feature design decisions based on
    # evidence and data. An experiment can test as many as five variations
    # at once. Evidently collects experiment data and analyzes it by
    # statistical methods, and provides clear recommendations about which
    # variations perform better.
    #
    # You can optionally specify a `segment` to have the experiment consider
    # only certain audience types in the experiment, such as using only user
    # sessions from a certain location or who use a certain internet
    # browser.
    #
    # Don't use this operation to update an existing experiment. Instead,
    # use [UpdateExperiment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateExperiment.html
    #
    # @option params [String] :description
    #   An optional description of the experiment.
    #
    # @option params [required, Array<Types::MetricGoalConfig>] :metric_goals
    #   An array of structures that defines the metrics used for the
    #   experiment, and whether a higher or lower value for each metric is the
    #   goal.
    #
    # @option params [required, String] :name
    #   A name for the new experiment.
    #
    # @option params [Types::OnlineAbConfig] :online_ab_config
    #   A structure that contains the configuration of which variation to use
    #   as the "control" version. tThe "control" version is used for
    #   comparison with other variations. This structure also specifies how
    #   much experiment traffic is allocated to each variation.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that you want to create the new
    #   experiment in.
    #
    # @option params [String] :randomization_salt
    #   When Evidently assigns a particular user session to an experiment, it
    #   must use a randomization ID to determine which variation the user
    #   session is served. This randomization ID is a combination of the
    #   entity ID and `randomizationSalt`. If you omit `randomizationSalt`,
    #   Evidently uses the experiment name as the `randomizationSalt`.
    #
    # @option params [Integer] :sampling_rate
    #   The portion of the available audience that you want to allocate to
    #   this experiment, in thousandths of a percent. The available audience
    #   is the total audience minus the audience that you have allocated to
    #   overrides or current launches of this feature.
    #
    #   This is represented in thousandths of a percent. For example, specify
    #   10,000 to allocate 10% of the available audience.
    #
    # @option params [String] :segment
    #   Specifies an audience *segment* to use in the experiment. When a
    #   segment is used in an experiment, only user sessions that match the
    #   segment pattern are used in the experiment.
    #
    # @option params [Hash<String,String>] :tags
    #   Assigns one or more tags (key-value pairs) to the experiment.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    #   Tags don't have any semantic meaning to Amazon Web Services and are
    #   interpreted strictly as strings of characters.
    #
    #   You can associate as many as 50 tags with an experiment.
    #
    #   For more information, see [Tagging Amazon Web Services resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @option params [required, Array<Types::TreatmentConfig>] :treatments
    #   An array of structures that describe the configuration of each feature
    #   variation used in the experiment.
    #
    # @return [Types::CreateExperimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateExperimentResponse#experiment #experiment} => Types::Experiment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_experiment({
    #     description: "Description",
    #     metric_goals: [ # required
    #       {
    #         desired_change: "INCREASE", # accepts INCREASE, DECREASE
    #         metric_definition: { # required
    #           entity_id_key: "JsonPath", # required
    #           event_pattern: "MetricDefinitionConfigEventPatternString",
    #           name: "CwDimensionSafeName", # required
    #           unit_label: "MetricUnitLabel",
    #           value_key: "JsonPath", # required
    #         },
    #       },
    #     ],
    #     name: "ExperimentName", # required
    #     online_ab_config: {
    #       control_treatment_name: "TreatmentName",
    #       treatment_weights: {
    #         "TreatmentName" => 1,
    #       },
    #     },
    #     project: "ProjectRef", # required
    #     randomization_salt: "RandomizationSalt",
    #     sampling_rate: 1,
    #     segment: "SegmentRef",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     treatments: [ # required
    #       {
    #         description: "Description",
    #         feature: "FeatureName", # required
    #         name: "TreatmentName", # required
    #         variation: "VariationName", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.experiment.arn #=> String
    #   resp.experiment.created_time #=> Time
    #   resp.experiment.description #=> String
    #   resp.experiment.execution.ended_time #=> Time
    #   resp.experiment.execution.started_time #=> Time
    #   resp.experiment.last_updated_time #=> Time
    #   resp.experiment.metric_goals #=> Array
    #   resp.experiment.metric_goals[0].desired_change #=> String, one of "INCREASE", "DECREASE"
    #   resp.experiment.metric_goals[0].metric_definition.entity_id_key #=> String
    #   resp.experiment.metric_goals[0].metric_definition.event_pattern #=> String
    #   resp.experiment.metric_goals[0].metric_definition.name #=> String
    #   resp.experiment.metric_goals[0].metric_definition.unit_label #=> String
    #   resp.experiment.metric_goals[0].metric_definition.value_key #=> String
    #   resp.experiment.name #=> String
    #   resp.experiment.online_ab_definition.control_treatment_name #=> String
    #   resp.experiment.online_ab_definition.treatment_weights #=> Hash
    #   resp.experiment.online_ab_definition.treatment_weights["TreatmentName"] #=> Integer
    #   resp.experiment.project #=> String
    #   resp.experiment.randomization_salt #=> String
    #   resp.experiment.sampling_rate #=> Integer
    #   resp.experiment.schedule.analysis_complete_time #=> Time
    #   resp.experiment.segment #=> String
    #   resp.experiment.status #=> String, one of "CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"
    #   resp.experiment.status_reason #=> String
    #   resp.experiment.tags #=> Hash
    #   resp.experiment.tags["TagKey"] #=> String
    #   resp.experiment.treatments #=> Array
    #   resp.experiment.treatments[0].description #=> String
    #   resp.experiment.treatments[0].feature_variations #=> Hash
    #   resp.experiment.treatments[0].feature_variations["FeatureName"] #=> String
    #   resp.experiment.treatments[0].name #=> String
    #   resp.experiment.type #=> String, one of "aws.evidently.onlineab"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateExperiment AWS API Documentation
    #
    # @overload create_experiment(params = {})
    # @param [Hash] params ({})
    def create_experiment(params = {}, options = {})
      req = build_request(:create_experiment, params)
      req.send_request(options)
    end

    # Creates an Evidently *feature* that you want to launch or test. You
    # can define up to five variations of a feature, and use these
    # variations in your launches and experiments. A feature must be created
    # in a project. For information about creating a project, see
    # [CreateProject][1].
    #
    # Don't use this operation to update an existing feature. Instead, use
    # [UpdateFeature][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html
    # [2]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateFeature.html
    #
    # @option params [String] :default_variation
    #   The name of the variation to use as the default variation. The default
    #   variation is served to users who are not allocated to any ongoing
    #   launches or experiments of this feature.
    #
    #   This variation must also be listed in the `variations` structure.
    #
    #   If you omit `defaultVariation`, the first variation listed in the
    #   `variations` structure is used as the default variation.
    #
    # @option params [String] :description
    #   An optional description of the feature.
    #
    # @option params [Hash<String,String>] :entity_overrides
    #   Specify users that should always be served a specific variation of a
    #   feature. Each user is specified by a key-value pair . For each key,
    #   specify a user by entering their user ID, account ID, or some other
    #   identifier. For the value, specify the name of the variation that they
    #   are to be served.
    #
    #   This parameter is limited to 2500 overrides or a total of 40KB. The
    #   40KB limit includes an overhead of 6 bytes per override.
    #
    # @option params [String] :evaluation_strategy
    #   Specify `ALL_RULES` to activate the traffic allocation specified by
    #   any ongoing launches or experiments. Specify `DEFAULT_VARIATION` to
    #   serve the default variation to all users instead.
    #
    # @option params [required, String] :name
    #   The name for the new feature.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that is to contain the new feature.
    #
    # @option params [Hash<String,String>] :tags
    #   Assigns one or more tags (key-value pairs) to the feature.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    #   Tags don't have any semantic meaning to Amazon Web Services and are
    #   interpreted strictly as strings of characters.
    #
    #   You can associate as many as 50 tags with a feature.
    #
    #   For more information, see [Tagging Amazon Web Services resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @option params [required, Array<Types::VariationConfig>] :variations
    #   An array of structures that contain the configuration of the
    #   feature's different variations.
    #
    # @return [Types::CreateFeatureResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFeatureResponse#feature #feature} => Types::Feature
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_feature({
    #     default_variation: "VariationName",
    #     description: "Description",
    #     entity_overrides: {
    #       "EntityId" => "VariationName",
    #     },
    #     evaluation_strategy: "ALL_RULES", # accepts ALL_RULES, DEFAULT_VARIATION
    #     name: "FeatureName", # required
    #     project: "ProjectRef", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     variations: [ # required
    #       {
    #         name: "VariationName", # required
    #         value: { # required
    #           bool_value: false,
    #           double_value: 1.0,
    #           long_value: 1,
    #           string_value: "VariableValueStringValueString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.feature.arn #=> String
    #   resp.feature.created_time #=> Time
    #   resp.feature.default_variation #=> String
    #   resp.feature.description #=> String
    #   resp.feature.entity_overrides #=> Hash
    #   resp.feature.entity_overrides["EntityId"] #=> String
    #   resp.feature.evaluation_rules #=> Array
    #   resp.feature.evaluation_rules[0].name #=> String
    #   resp.feature.evaluation_rules[0].type #=> String
    #   resp.feature.evaluation_strategy #=> String, one of "ALL_RULES", "DEFAULT_VARIATION"
    #   resp.feature.last_updated_time #=> Time
    #   resp.feature.name #=> String
    #   resp.feature.project #=> String
    #   resp.feature.status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.feature.tags #=> Hash
    #   resp.feature.tags["TagKey"] #=> String
    #   resp.feature.value_type #=> String, one of "STRING", "LONG", "DOUBLE", "BOOLEAN"
    #   resp.feature.variations #=> Array
    #   resp.feature.variations[0].name #=> String
    #   resp.feature.variations[0].value.bool_value #=> Boolean
    #   resp.feature.variations[0].value.double_value #=> Float
    #   resp.feature.variations[0].value.long_value #=> Integer
    #   resp.feature.variations[0].value.string_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateFeature AWS API Documentation
    #
    # @overload create_feature(params = {})
    # @param [Hash] params ({})
    def create_feature(params = {}, options = {})
      req = build_request(:create_feature, params)
      req.send_request(options)
    end

    # Creates a *launch* of a given feature. Before you create a launch, you
    # must create the feature to use for the launch.
    #
    # You can use a launch to safely validate new features by serving them
    # to a specified percentage of your users while you roll out the
    # feature. You can monitor the performance of the new feature to help
    # you decide when to ramp up traffic to more users. This helps you
    # reduce risk and identify unintended consequences before you fully
    # launch the feature.
    #
    # Don't use this operation to update an existing launch. Instead, use
    # [UpdateLaunch][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateLaunch.html
    #
    # @option params [String] :description
    #   An optional description for the launch.
    #
    # @option params [required, Array<Types::LaunchGroupConfig>] :groups
    #   An array of structures that contains the feature and variations that
    #   are to be used for the launch.
    #
    # @option params [Array<Types::MetricMonitorConfig>] :metric_monitors
    #   An array of structures that define the metrics that will be used to
    #   monitor the launch performance.
    #
    # @option params [required, String] :name
    #   The name for the new launch.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that you want to create the launch in.
    #
    # @option params [String] :randomization_salt
    #   When Evidently assigns a particular user session to a launch, it must
    #   use a randomization ID to determine which variation the user session
    #   is served. This randomization ID is a combination of the entity ID and
    #   `randomizationSalt`. If you omit `randomizationSalt`, Evidently uses
    #   the launch name as the `randomizationSalt`.
    #
    # @option params [Types::ScheduledSplitsLaunchConfig] :scheduled_splits_config
    #   An array of structures that define the traffic allocation percentages
    #   among the feature variations during each step of the launch.
    #
    # @option params [Hash<String,String>] :tags
    #   Assigns one or more tags (key-value pairs) to the launch.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    #   Tags don't have any semantic meaning to Amazon Web Services and are
    #   interpreted strictly as strings of characters.
    #
    #   You can associate as many as 50 tags with a launch.
    #
    #   For more information, see [Tagging Amazon Web Services resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateLaunchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLaunchResponse#launch #launch} => Types::Launch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_launch({
    #     description: "Description",
    #     groups: [ # required
    #       {
    #         description: "Description",
    #         feature: "FeatureName", # required
    #         name: "GroupName", # required
    #         variation: "VariationName", # required
    #       },
    #     ],
    #     metric_monitors: [
    #       {
    #         metric_definition: { # required
    #           entity_id_key: "JsonPath", # required
    #           event_pattern: "MetricDefinitionConfigEventPatternString",
    #           name: "CwDimensionSafeName", # required
    #           unit_label: "MetricUnitLabel",
    #           value_key: "JsonPath", # required
    #         },
    #       },
    #     ],
    #     name: "LaunchName", # required
    #     project: "ProjectRef", # required
    #     randomization_salt: "RandomizationSalt",
    #     scheduled_splits_config: {
    #       steps: [ # required
    #         {
    #           group_weights: { # required
    #             "GroupName" => 1,
    #           },
    #           segment_overrides: [
    #             {
    #               evaluation_order: 1, # required
    #               segment: "SegmentRef", # required
    #               weights: { # required
    #                 "GroupName" => 1,
    #               },
    #             },
    #           ],
    #           start_time: Time.now, # required
    #         },
    #       ],
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.launch.arn #=> String
    #   resp.launch.created_time #=> Time
    #   resp.launch.description #=> String
    #   resp.launch.execution.ended_time #=> Time
    #   resp.launch.execution.started_time #=> Time
    #   resp.launch.groups #=> Array
    #   resp.launch.groups[0].description #=> String
    #   resp.launch.groups[0].feature_variations #=> Hash
    #   resp.launch.groups[0].feature_variations["FeatureName"] #=> String
    #   resp.launch.groups[0].name #=> String
    #   resp.launch.last_updated_time #=> Time
    #   resp.launch.metric_monitors #=> Array
    #   resp.launch.metric_monitors[0].metric_definition.entity_id_key #=> String
    #   resp.launch.metric_monitors[0].metric_definition.event_pattern #=> String
    #   resp.launch.metric_monitors[0].metric_definition.name #=> String
    #   resp.launch.metric_monitors[0].metric_definition.unit_label #=> String
    #   resp.launch.metric_monitors[0].metric_definition.value_key #=> String
    #   resp.launch.name #=> String
    #   resp.launch.project #=> String
    #   resp.launch.randomization_salt #=> String
    #   resp.launch.scheduled_splits_definition.steps #=> Array
    #   resp.launch.scheduled_splits_definition.steps[0].group_weights #=> Hash
    #   resp.launch.scheduled_splits_definition.steps[0].group_weights["GroupName"] #=> Integer
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides #=> Array
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].evaluation_order #=> Integer
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].segment #=> String
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].weights #=> Hash
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].weights["GroupName"] #=> Integer
    #   resp.launch.scheduled_splits_definition.steps[0].start_time #=> Time
    #   resp.launch.status #=> String, one of "CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"
    #   resp.launch.status_reason #=> String
    #   resp.launch.tags #=> Hash
    #   resp.launch.tags["TagKey"] #=> String
    #   resp.launch.type #=> String, one of "aws.evidently.splits"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateLaunch AWS API Documentation
    #
    # @overload create_launch(params = {})
    # @param [Hash] params ({})
    def create_launch(params = {}, options = {})
      req = build_request(:create_launch, params)
      req.send_request(options)
    end

    # Creates a project, which is the logical object in Evidently that can
    # contain features, launches, and experiments. Use projects to group
    # similar features together.
    #
    # To update an existing project, use [UpdateProject][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProject.html
    #
    # @option params [Types::ProjectAppConfigResourceConfig] :app_config_resource
    #   Use this parameter if the project will use *client-side evaluation
    #   powered by AppConfig*. Client-side evaluation allows your application
    #   to assign variations to user sessions locally instead of by calling
    #   the [EvaluateFeature][1] operation. This mitigates the latency and
    #   availability risks that come with an API call. For more information,
    #   see [ Client-side evaluation - powered by AppConfig.][2]
    #
    #   This parameter is a structure that contains information about the
    #   AppConfig application and environment that will be used as for
    #   client-side evaluation.
    #
    #   To create a project that uses client-side evaluation, you must have
    #   the `evidently:ExportProjectAsConfiguration` permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-client-side-evaluation.html
    #
    # @option params [Types::ProjectDataDeliveryConfig] :data_delivery
    #   A structure that contains information about where Evidently is to
    #   store evaluation events for longer term storage, if you choose to do
    #   so. If you choose not to store these events, Evidently deletes them
    #   after using them to produce metrics and other experiment results that
    #   you can view.
    #
    # @option params [String] :description
    #   An optional description of the project.
    #
    # @option params [required, String] :name
    #   The name for the project.
    #
    # @option params [Hash<String,String>] :tags
    #   Assigns one or more tags (key-value pairs) to the project.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    #   Tags don't have any semantic meaning to Amazon Web Services and are
    #   interpreted strictly as strings of characters.
    #
    #   You can associate as many as 50 tags with a project.
    #
    #   For more information, see [Tagging Amazon Web Services resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectResponse#project #project} => Types::Project
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     app_config_resource: {
    #       application_id: "AppConfigResourceId",
    #       environment_id: "AppConfigResourceId",
    #     },
    #     data_delivery: {
    #       cloud_watch_logs: {
    #         log_group: "CwLogGroupSafeName",
    #       },
    #       s3_destination: {
    #         bucket: "S3BucketSafeName",
    #         prefix: "S3PrefixSafeName",
    #       },
    #     },
    #     description: "Description",
    #     name: "ProjectName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.project.active_experiment_count #=> Integer
    #   resp.project.active_launch_count #=> Integer
    #   resp.project.app_config_resource.application_id #=> String
    #   resp.project.app_config_resource.configuration_profile_id #=> String
    #   resp.project.app_config_resource.environment_id #=> String
    #   resp.project.arn #=> String
    #   resp.project.created_time #=> Time
    #   resp.project.data_delivery.cloud_watch_logs.log_group #=> String
    #   resp.project.data_delivery.s3_destination.bucket #=> String
    #   resp.project.data_delivery.s3_destination.prefix #=> String
    #   resp.project.description #=> String
    #   resp.project.experiment_count #=> Integer
    #   resp.project.feature_count #=> Integer
    #   resp.project.last_updated_time #=> Time
    #   resp.project.launch_count #=> Integer
    #   resp.project.name #=> String
    #   resp.project.status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.project.tags #=> Hash
    #   resp.project.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateProject AWS API Documentation
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Use this operation to define a *segment* of your audience. A segment
    # is a portion of your audience that share one or more characteristics.
    # Examples could be Chrome browser users, users in Europe, or Firefox
    # browser users in Europe who also fit other criteria that your
    # application collects, such as age.
    #
    # Using a segment in an experiment limits that experiment to evaluate
    # only the users who match the segment criteria. Using one or more
    # segments in a launch allows you to define different traffic splits for
    # the different audience segments.
    #
    # For more information about segment pattern syntax, see [ Segment rule
    # pattern syntax][1].
    #
    # The pattern that you define for a segment is matched against the value
    # of `evaluationContext`, which is passed into Evidently in the
    # [EvaluateFeature][2] operation, when Evidently assigns a feature
    # variation to a user.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html
    # [2]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html
    #
    # @option params [String] :description
    #   An optional description for this segment.
    #
    # @option params [required, String] :name
    #   A name for the segment.
    #
    # @option params [required, String] :pattern
    #   The pattern to use for the segment. For more information about pattern
    #   syntax, see [ Segment rule pattern syntax][1].
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html
    #
    # @option params [Hash<String,String>] :tags
    #   Assigns one or more tags (key-value pairs) to the segment.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions by granting a user permission to
    #   access or change only resources with certain tag values.
    #
    #   Tags don't have any semantic meaning to Amazon Web Services and are
    #   interpreted strictly as strings of characters.
    #
    #   You can associate as many as 50 tags with a segment.
    #
    #   For more information, see [Tagging Amazon Web Services resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateSegmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSegmentResponse#segment #segment} => Types::Segment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_segment({
    #     description: "Description",
    #     name: "SegmentName", # required
    #     pattern: "SegmentPattern", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.segment.arn #=> String
    #   resp.segment.created_time #=> Time
    #   resp.segment.description #=> String
    #   resp.segment.experiment_count #=> Integer
    #   resp.segment.last_updated_time #=> Time
    #   resp.segment.launch_count #=> Integer
    #   resp.segment.name #=> String
    #   resp.segment.pattern #=> String
    #   resp.segment.tags #=> Hash
    #   resp.segment.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/CreateSegment AWS API Documentation
    #
    # @overload create_segment(params = {})
    # @param [Hash] params ({})
    def create_segment(params = {}, options = {})
      req = build_request(:create_segment, params)
      req.send_request(options)
    end

    # Deletes an Evidently experiment. The feature used for the experiment
    # is not deleted.
    #
    # To stop an experiment without deleting it, use [StopExperiment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_StopExperiment.html
    #
    # @option params [required, String] :experiment
    #   The name of the experiment to delete.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the experiment to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_experiment({
    #     experiment: "ExperimentName", # required
    #     project: "ProjectRef", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteExperiment AWS API Documentation
    #
    # @overload delete_experiment(params = {})
    # @param [Hash] params ({})
    def delete_experiment(params = {}, options = {})
      req = build_request(:delete_experiment, params)
      req.send_request(options)
    end

    # Deletes an Evidently feature.
    #
    # @option params [required, String] :feature
    #   The name of the feature to delete.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the feature to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_feature({
    #     feature: "FeatureName", # required
    #     project: "ProjectRef", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteFeature AWS API Documentation
    #
    # @overload delete_feature(params = {})
    # @param [Hash] params ({})
    def delete_feature(params = {}, options = {})
      req = build_request(:delete_feature, params)
      req.send_request(options)
    end

    # Deletes an Evidently launch. The feature used for the launch is not
    # deleted.
    #
    # To stop a launch without deleting it, use [StopLaunch][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_StopLaunch.html
    #
    # @option params [required, String] :launch
    #   The name of the launch to delete.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the launch to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch({
    #     launch: "LaunchName", # required
    #     project: "ProjectRef", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteLaunch AWS API Documentation
    #
    # @overload delete_launch(params = {})
    # @param [Hash] params ({})
    def delete_launch(params = {}, options = {})
      req = build_request(:delete_launch, params)
      req.send_request(options)
    end

    # Deletes an Evidently project. Before you can delete a project, you
    # must delete all the features that the project contains. To delete a
    # feature, use [DeleteFeature][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_DeleteFeature.html
    #
    # @option params [required, String] :project
    #   The name or ARN of the project to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     project: "ProjectRef", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteProject AWS API Documentation
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Deletes a segment. You can't delete a segment that is being used in a
    # launch or experiment, even if that launch or experiment is not
    # currently running.
    #
    # @option params [required, String] :segment
    #   Specifies the segment to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_segment({
    #     segment: "SegmentRef", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/DeleteSegment AWS API Documentation
    #
    # @overload delete_segment(params = {})
    # @param [Hash] params ({})
    def delete_segment(params = {}, options = {})
      req = build_request(:delete_segment, params)
      req.send_request(options)
    end

    # This operation assigns a feature variation to one given user session.
    # You pass in an `entityID` that represents the user. Evidently then
    # checks the evaluation rules and assigns the variation.
    #
    # The first rules that are evaluated are the override rules. If the
    # user's `entityID` matches an override rule, the user is served the
    # variation specified by that rule.
    #
    # If there is a current launch with this feature that uses segment
    # overrides, and if the user session's `evaluationContext` matches a
    # segment rule defined in a segment override, the configuration in the
    # segment overrides is used. For more information about segments, see
    # [CreateSegment][1] and [Use segments to focus your audience][2].
    #
    # If there is a launch with no segment overrides, the user might be
    # assigned to a variation in the launch. The chance of this depends on
    # the percentage of users that are allocated to that launch. If the user
    # is enrolled in the launch, the variation they are served depends on
    # the allocation of the various feature variations used for the launch.
    #
    # If the user is not assigned to a launch, and there is an ongoing
    # experiment for this feature, the user might be assigned to a variation
    # in the experiment. The chance of this depends on the percentage of
    # users that are allocated to that experiment.
    #
    # If the experiment uses a segment, then only user sessions with
    # `evaluationContext` values that match the segment rule are used in the
    # experiment.
    #
    # If the user is enrolled in the experiment, the variation they are
    # served depends on the allocation of the various feature variations
    # used for the experiment.
    #
    # If the user is not assigned to a launch or experiment, they are served
    # the default variation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateSegment.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html
    #
    # @option params [required, String] :entity_id
    #   An internal ID that represents a unique user of the application. This
    #   `entityID` is checked against any override rules assigned for this
    #   feature.
    #
    # @option params [String] :evaluation_context
    #   A JSON object of attributes that you can optionally pass in as part of
    #   the evaluation event sent to Evidently from the user session.
    #   Evidently can use this value to match user sessions with defined
    #   audience segments. For more information, see [Use segments to focus
    #   your audience][1].
    #
    #   If you include this parameter, the value must be a JSON object. A JSON
    #   array is not supported.
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html
    #
    # @option params [required, String] :feature
    #   The name of the feature being evaluated.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains this feature.
    #
    # @return [Types::EvaluateFeatureResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EvaluateFeatureResponse#details #details} => String
    #   * {Types::EvaluateFeatureResponse#reason #reason} => String
    #   * {Types::EvaluateFeatureResponse#value #value} => Types::VariableValue
    #   * {Types::EvaluateFeatureResponse#variation #variation} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.evaluate_feature({
    #     entity_id: "EntityId", # required
    #     evaluation_context: "JsonValue",
    #     feature: "FeatureName", # required
    #     project: "ProjectRef", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.details #=> String
    #   resp.reason #=> String
    #   resp.value.bool_value #=> Boolean
    #   resp.value.double_value #=> Float
    #   resp.value.long_value #=> Integer
    #   resp.value.string_value #=> String
    #   resp.variation #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/EvaluateFeature AWS API Documentation
    #
    # @overload evaluate_feature(params = {})
    # @param [Hash] params ({})
    def evaluate_feature(params = {}, options = {})
      req = build_request(:evaluate_feature, params)
      req.send_request(options)
    end

    # Returns the details about one experiment. You must already know the
    # experiment name. To retrieve a list of experiments in your account,
    # use [ListExperiments][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListExperiments.html
    #
    # @option params [required, String] :experiment
    #   The name of the experiment that you want to see the details of.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the experiment.
    #
    # @return [Types::GetExperimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExperimentResponse#experiment #experiment} => Types::Experiment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_experiment({
    #     experiment: "ExperimentName", # required
    #     project: "ProjectRef", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.experiment.arn #=> String
    #   resp.experiment.created_time #=> Time
    #   resp.experiment.description #=> String
    #   resp.experiment.execution.ended_time #=> Time
    #   resp.experiment.execution.started_time #=> Time
    #   resp.experiment.last_updated_time #=> Time
    #   resp.experiment.metric_goals #=> Array
    #   resp.experiment.metric_goals[0].desired_change #=> String, one of "INCREASE", "DECREASE"
    #   resp.experiment.metric_goals[0].metric_definition.entity_id_key #=> String
    #   resp.experiment.metric_goals[0].metric_definition.event_pattern #=> String
    #   resp.experiment.metric_goals[0].metric_definition.name #=> String
    #   resp.experiment.metric_goals[0].metric_definition.unit_label #=> String
    #   resp.experiment.metric_goals[0].metric_definition.value_key #=> String
    #   resp.experiment.name #=> String
    #   resp.experiment.online_ab_definition.control_treatment_name #=> String
    #   resp.experiment.online_ab_definition.treatment_weights #=> Hash
    #   resp.experiment.online_ab_definition.treatment_weights["TreatmentName"] #=> Integer
    #   resp.experiment.project #=> String
    #   resp.experiment.randomization_salt #=> String
    #   resp.experiment.sampling_rate #=> Integer
    #   resp.experiment.schedule.analysis_complete_time #=> Time
    #   resp.experiment.segment #=> String
    #   resp.experiment.status #=> String, one of "CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"
    #   resp.experiment.status_reason #=> String
    #   resp.experiment.tags #=> Hash
    #   resp.experiment.tags["TagKey"] #=> String
    #   resp.experiment.treatments #=> Array
    #   resp.experiment.treatments[0].description #=> String
    #   resp.experiment.treatments[0].feature_variations #=> Hash
    #   resp.experiment.treatments[0].feature_variations["FeatureName"] #=> String
    #   resp.experiment.treatments[0].name #=> String
    #   resp.experiment.type #=> String, one of "aws.evidently.onlineab"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetExperiment AWS API Documentation
    #
    # @overload get_experiment(params = {})
    # @param [Hash] params ({})
    def get_experiment(params = {}, options = {})
      req = build_request(:get_experiment, params)
      req.send_request(options)
    end

    # Retrieves the results of a running or completed experiment. No results
    # are available until there have been 100 events for each variation and
    # at least 10 minutes have passed since the start of the experiment. To
    # increase the statistical power, Evidently performs an additional
    # offline p-value analysis at the end of the experiment. Offline p-value
    # analysis can detect statistical significance in some cases where the
    # anytime p-values used during the experiment do not find statistical
    # significance.
    #
    # Experiment results are available up to 63 days after the start of the
    # experiment. They are not available after that because of CloudWatch
    # data retention policies.
    #
    # @option params [String] :base_stat
    #   The statistic used to calculate experiment results. Currently the only
    #   valid value is `mean`, which uses the mean of the collected values as
    #   the statistic.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The date and time that the experiment ended, if it is completed. This
    #   must be no longer than 30 days after the experiment start time.
    #
    # @option params [required, String] :experiment
    #   The name of the experiment to retrieve the results of.
    #
    # @option params [required, Array<String>] :metric_names
    #   The names of the experiment metrics that you want to see the results
    #   of.
    #
    # @option params [Integer] :period
    #   In seconds, the amount of time to aggregate results together.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the experiment that you
    #   want to see the results of.
    #
    # @option params [Array<String>] :report_names
    #   The names of the report types that you want to see. Currently,
    #   `BayesianInference` is the only valid value.
    #
    # @option params [Array<String>] :result_stats
    #   The statistics that you want to see in the returned results.
    #
    #   * `PValue` specifies to use p-values for the results. A p-value is
    #     used in hypothesis testing to measure how often you are willing to
    #     make a mistake in rejecting the null hypothesis. A general practice
    #     is to reject the null hypothesis and declare that the results are
    #     statistically significant when the p-value is less than 0.05.
    #
    #   * `ConfidenceInterval` specifies a confidence interval for the
    #     results. The confidence interval represents the range of values for
    #     the chosen metric that is likely to contain the true difference
    #     between the `baseStat` of a variation and the baseline. Evidently
    #     returns the 95% confidence interval.
    #
    #   * `TreatmentEffect` is the difference in the statistic specified by
    #     the `baseStat` parameter between each variation and the default
    #     variation.
    #
    #   * `BaseStat` returns the statistical values collected for the metric
    #     for each variation. The statistic uses the same statistic specified
    #     in the `baseStat` parameter. Therefore, if `baseStat` is `mean`,
    #     this returns the mean of the values collected for each variation.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The date and time that the experiment started.
    #
    # @option params [required, Array<String>] :treatment_names
    #   The names of the experiment treatments that you want to see the
    #   results for.
    #
    # @return [Types::GetExperimentResultsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExperimentResultsResponse#details #details} => String
    #   * {Types::GetExperimentResultsResponse#reports #reports} => Array&lt;Types::ExperimentReport&gt;
    #   * {Types::GetExperimentResultsResponse#results_data #results_data} => Array&lt;Types::ExperimentResultsData&gt;
    #   * {Types::GetExperimentResultsResponse#timestamps #timestamps} => Array&lt;Time&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_experiment_results({
    #     base_stat: "Mean", # accepts Mean
    #     end_time: Time.now,
    #     experiment: "ExperimentName", # required
    #     metric_names: ["CwDimensionSafeName"], # required
    #     period: 1,
    #     project: "ProjectRef", # required
    #     report_names: ["BayesianInference"], # accepts BayesianInference
    #     result_stats: ["BaseStat"], # accepts BaseStat, TreatmentEffect, ConfidenceInterval, PValue
    #     start_time: Time.now,
    #     treatment_names: ["TreatmentName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.details #=> String
    #   resp.reports #=> Array
    #   resp.reports[0].content #=> String
    #   resp.reports[0].metric_name #=> String
    #   resp.reports[0].report_name #=> String, one of "BayesianInference"
    #   resp.reports[0].treatment_name #=> String
    #   resp.results_data #=> Array
    #   resp.results_data[0].metric_name #=> String
    #   resp.results_data[0].result_stat #=> String, one of "Mean", "TreatmentEffect", "ConfidenceIntervalUpperBound", "ConfidenceIntervalLowerBound", "PValue"
    #   resp.results_data[0].treatment_name #=> String
    #   resp.results_data[0].values #=> Array
    #   resp.results_data[0].values[0] #=> Float
    #   resp.timestamps #=> Array
    #   resp.timestamps[0] #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetExperimentResults AWS API Documentation
    #
    # @overload get_experiment_results(params = {})
    # @param [Hash] params ({})
    def get_experiment_results(params = {}, options = {})
      req = build_request(:get_experiment_results, params)
      req.send_request(options)
    end

    # Returns the details about one feature. You must already know the
    # feature name. To retrieve a list of features in your account, use
    # [ListFeatures][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListFeatures.html
    #
    # @option params [required, String] :feature
    #   The name of the feature that you want to retrieve information for.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the feature.
    #
    # @return [Types::GetFeatureResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFeatureResponse#feature #feature} => Types::Feature
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_feature({
    #     feature: "FeatureName", # required
    #     project: "ProjectRef", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.feature.arn #=> String
    #   resp.feature.created_time #=> Time
    #   resp.feature.default_variation #=> String
    #   resp.feature.description #=> String
    #   resp.feature.entity_overrides #=> Hash
    #   resp.feature.entity_overrides["EntityId"] #=> String
    #   resp.feature.evaluation_rules #=> Array
    #   resp.feature.evaluation_rules[0].name #=> String
    #   resp.feature.evaluation_rules[0].type #=> String
    #   resp.feature.evaluation_strategy #=> String, one of "ALL_RULES", "DEFAULT_VARIATION"
    #   resp.feature.last_updated_time #=> Time
    #   resp.feature.name #=> String
    #   resp.feature.project #=> String
    #   resp.feature.status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.feature.tags #=> Hash
    #   resp.feature.tags["TagKey"] #=> String
    #   resp.feature.value_type #=> String, one of "STRING", "LONG", "DOUBLE", "BOOLEAN"
    #   resp.feature.variations #=> Array
    #   resp.feature.variations[0].name #=> String
    #   resp.feature.variations[0].value.bool_value #=> Boolean
    #   resp.feature.variations[0].value.double_value #=> Float
    #   resp.feature.variations[0].value.long_value #=> Integer
    #   resp.feature.variations[0].value.string_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetFeature AWS API Documentation
    #
    # @overload get_feature(params = {})
    # @param [Hash] params ({})
    def get_feature(params = {}, options = {})
      req = build_request(:get_feature, params)
      req.send_request(options)
    end

    # Returns the details about one launch. You must already know the launch
    # name. To retrieve a list of launches in your account, use
    # [ListLaunches][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListLaunches.html
    #
    # @option params [required, String] :launch
    #   The name of the launch that you want to see the details of.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the launch.
    #
    # @return [Types::GetLaunchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLaunchResponse#launch #launch} => Types::Launch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch({
    #     launch: "LaunchName", # required
    #     project: "ProjectRef", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.launch.arn #=> String
    #   resp.launch.created_time #=> Time
    #   resp.launch.description #=> String
    #   resp.launch.execution.ended_time #=> Time
    #   resp.launch.execution.started_time #=> Time
    #   resp.launch.groups #=> Array
    #   resp.launch.groups[0].description #=> String
    #   resp.launch.groups[0].feature_variations #=> Hash
    #   resp.launch.groups[0].feature_variations["FeatureName"] #=> String
    #   resp.launch.groups[0].name #=> String
    #   resp.launch.last_updated_time #=> Time
    #   resp.launch.metric_monitors #=> Array
    #   resp.launch.metric_monitors[0].metric_definition.entity_id_key #=> String
    #   resp.launch.metric_monitors[0].metric_definition.event_pattern #=> String
    #   resp.launch.metric_monitors[0].metric_definition.name #=> String
    #   resp.launch.metric_monitors[0].metric_definition.unit_label #=> String
    #   resp.launch.metric_monitors[0].metric_definition.value_key #=> String
    #   resp.launch.name #=> String
    #   resp.launch.project #=> String
    #   resp.launch.randomization_salt #=> String
    #   resp.launch.scheduled_splits_definition.steps #=> Array
    #   resp.launch.scheduled_splits_definition.steps[0].group_weights #=> Hash
    #   resp.launch.scheduled_splits_definition.steps[0].group_weights["GroupName"] #=> Integer
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides #=> Array
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].evaluation_order #=> Integer
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].segment #=> String
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].weights #=> Hash
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].weights["GroupName"] #=> Integer
    #   resp.launch.scheduled_splits_definition.steps[0].start_time #=> Time
    #   resp.launch.status #=> String, one of "CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"
    #   resp.launch.status_reason #=> String
    #   resp.launch.tags #=> Hash
    #   resp.launch.tags["TagKey"] #=> String
    #   resp.launch.type #=> String, one of "aws.evidently.splits"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetLaunch AWS API Documentation
    #
    # @overload get_launch(params = {})
    # @param [Hash] params ({})
    def get_launch(params = {}, options = {})
      req = build_request(:get_launch, params)
      req.send_request(options)
    end

    # Returns the details about one launch. You must already know the
    # project name. To retrieve a list of projects in your account, use
    # [ListProjects][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListProjects.html
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that you want to see the details of.
    #
    # @return [Types::GetProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProjectResponse#project #project} => Types::Project
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_project({
    #     project: "ProjectRef", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.project.active_experiment_count #=> Integer
    #   resp.project.active_launch_count #=> Integer
    #   resp.project.app_config_resource.application_id #=> String
    #   resp.project.app_config_resource.configuration_profile_id #=> String
    #   resp.project.app_config_resource.environment_id #=> String
    #   resp.project.arn #=> String
    #   resp.project.created_time #=> Time
    #   resp.project.data_delivery.cloud_watch_logs.log_group #=> String
    #   resp.project.data_delivery.s3_destination.bucket #=> String
    #   resp.project.data_delivery.s3_destination.prefix #=> String
    #   resp.project.description #=> String
    #   resp.project.experiment_count #=> Integer
    #   resp.project.feature_count #=> Integer
    #   resp.project.last_updated_time #=> Time
    #   resp.project.launch_count #=> Integer
    #   resp.project.name #=> String
    #   resp.project.status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.project.tags #=> Hash
    #   resp.project.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetProject AWS API Documentation
    #
    # @overload get_project(params = {})
    # @param [Hash] params ({})
    def get_project(params = {}, options = {})
      req = build_request(:get_project, params)
      req.send_request(options)
    end

    # Returns information about the specified segment. Specify the segment
    # you want to view by specifying its ARN.
    #
    # @option params [required, String] :segment
    #   The ARN of the segment to return information for.
    #
    # @return [Types::GetSegmentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSegmentResponse#segment #segment} => Types::Segment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_segment({
    #     segment: "SegmentRef", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.segment.arn #=> String
    #   resp.segment.created_time #=> Time
    #   resp.segment.description #=> String
    #   resp.segment.experiment_count #=> Integer
    #   resp.segment.last_updated_time #=> Time
    #   resp.segment.launch_count #=> Integer
    #   resp.segment.name #=> String
    #   resp.segment.pattern #=> String
    #   resp.segment.tags #=> Hash
    #   resp.segment.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/GetSegment AWS API Documentation
    #
    # @overload get_segment(params = {})
    # @param [Hash] params ({})
    def get_segment(params = {}, options = {})
      req = build_request(:get_segment, params)
      req.send_request(options)
    end

    # Returns configuration details about all the experiments in the
    # specified project.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response.
    #
    # @option params [String] :next_token
    #   The token to use when requesting the next set of results. You received
    #   this token from a previous `ListExperiments` operation.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project to return the experiment list from.
    #
    # @option params [String] :status
    #   Use this optional parameter to limit the returned results to only the
    #   experiments with the status that you specify here.
    #
    # @return [Types::ListExperimentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExperimentsResponse#experiments #experiments} => Array&lt;Types::Experiment&gt;
    #   * {Types::ListExperimentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_experiments({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     project: "ProjectRef", # required
    #     status: "CREATED", # accepts CREATED, UPDATING, RUNNING, COMPLETED, CANCELLED
    #   })
    #
    # @example Response structure
    #
    #   resp.experiments #=> Array
    #   resp.experiments[0].arn #=> String
    #   resp.experiments[0].created_time #=> Time
    #   resp.experiments[0].description #=> String
    #   resp.experiments[0].execution.ended_time #=> Time
    #   resp.experiments[0].execution.started_time #=> Time
    #   resp.experiments[0].last_updated_time #=> Time
    #   resp.experiments[0].metric_goals #=> Array
    #   resp.experiments[0].metric_goals[0].desired_change #=> String, one of "INCREASE", "DECREASE"
    #   resp.experiments[0].metric_goals[0].metric_definition.entity_id_key #=> String
    #   resp.experiments[0].metric_goals[0].metric_definition.event_pattern #=> String
    #   resp.experiments[0].metric_goals[0].metric_definition.name #=> String
    #   resp.experiments[0].metric_goals[0].metric_definition.unit_label #=> String
    #   resp.experiments[0].metric_goals[0].metric_definition.value_key #=> String
    #   resp.experiments[0].name #=> String
    #   resp.experiments[0].online_ab_definition.control_treatment_name #=> String
    #   resp.experiments[0].online_ab_definition.treatment_weights #=> Hash
    #   resp.experiments[0].online_ab_definition.treatment_weights["TreatmentName"] #=> Integer
    #   resp.experiments[0].project #=> String
    #   resp.experiments[0].randomization_salt #=> String
    #   resp.experiments[0].sampling_rate #=> Integer
    #   resp.experiments[0].schedule.analysis_complete_time #=> Time
    #   resp.experiments[0].segment #=> String
    #   resp.experiments[0].status #=> String, one of "CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"
    #   resp.experiments[0].status_reason #=> String
    #   resp.experiments[0].tags #=> Hash
    #   resp.experiments[0].tags["TagKey"] #=> String
    #   resp.experiments[0].treatments #=> Array
    #   resp.experiments[0].treatments[0].description #=> String
    #   resp.experiments[0].treatments[0].feature_variations #=> Hash
    #   resp.experiments[0].treatments[0].feature_variations["FeatureName"] #=> String
    #   resp.experiments[0].treatments[0].name #=> String
    #   resp.experiments[0].type #=> String, one of "aws.evidently.onlineab"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListExperiments AWS API Documentation
    #
    # @overload list_experiments(params = {})
    # @param [Hash] params ({})
    def list_experiments(params = {}, options = {})
      req = build_request(:list_experiments, params)
      req.send_request(options)
    end

    # Returns configuration details about all the features in the specified
    # project.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response.
    #
    # @option params [String] :next_token
    #   The token to use when requesting the next set of results. You received
    #   this token from a previous `ListFeatures` operation.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project to return the feature list from.
    #
    # @return [Types::ListFeaturesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFeaturesResponse#features #features} => Array&lt;Types::FeatureSummary&gt;
    #   * {Types::ListFeaturesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_features({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     project: "ProjectRef", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.features #=> Array
    #   resp.features[0].arn #=> String
    #   resp.features[0].created_time #=> Time
    #   resp.features[0].default_variation #=> String
    #   resp.features[0].evaluation_rules #=> Array
    #   resp.features[0].evaluation_rules[0].name #=> String
    #   resp.features[0].evaluation_rules[0].type #=> String
    #   resp.features[0].evaluation_strategy #=> String, one of "ALL_RULES", "DEFAULT_VARIATION"
    #   resp.features[0].last_updated_time #=> Time
    #   resp.features[0].name #=> String
    #   resp.features[0].project #=> String
    #   resp.features[0].status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.features[0].tags #=> Hash
    #   resp.features[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListFeatures AWS API Documentation
    #
    # @overload list_features(params = {})
    # @param [Hash] params ({})
    def list_features(params = {}, options = {})
      req = build_request(:list_features, params)
      req.send_request(options)
    end

    # Returns configuration details about all the launches in the specified
    # project.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response.
    #
    # @option params [String] :next_token
    #   The token to use when requesting the next set of results. You received
    #   this token from a previous `ListLaunches` operation.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project to return the launch list from.
    #
    # @option params [String] :status
    #   Use this optional parameter to limit the returned results to only the
    #   launches with the status that you specify here.
    #
    # @return [Types::ListLaunchesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLaunchesResponse#launches #launches} => Array&lt;Types::Launch&gt;
    #   * {Types::ListLaunchesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_launches({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     project: "ProjectRef", # required
    #     status: "CREATED", # accepts CREATED, UPDATING, RUNNING, COMPLETED, CANCELLED
    #   })
    #
    # @example Response structure
    #
    #   resp.launches #=> Array
    #   resp.launches[0].arn #=> String
    #   resp.launches[0].created_time #=> Time
    #   resp.launches[0].description #=> String
    #   resp.launches[0].execution.ended_time #=> Time
    #   resp.launches[0].execution.started_time #=> Time
    #   resp.launches[0].groups #=> Array
    #   resp.launches[0].groups[0].description #=> String
    #   resp.launches[0].groups[0].feature_variations #=> Hash
    #   resp.launches[0].groups[0].feature_variations["FeatureName"] #=> String
    #   resp.launches[0].groups[0].name #=> String
    #   resp.launches[0].last_updated_time #=> Time
    #   resp.launches[0].metric_monitors #=> Array
    #   resp.launches[0].metric_monitors[0].metric_definition.entity_id_key #=> String
    #   resp.launches[0].metric_monitors[0].metric_definition.event_pattern #=> String
    #   resp.launches[0].metric_monitors[0].metric_definition.name #=> String
    #   resp.launches[0].metric_monitors[0].metric_definition.unit_label #=> String
    #   resp.launches[0].metric_monitors[0].metric_definition.value_key #=> String
    #   resp.launches[0].name #=> String
    #   resp.launches[0].project #=> String
    #   resp.launches[0].randomization_salt #=> String
    #   resp.launches[0].scheduled_splits_definition.steps #=> Array
    #   resp.launches[0].scheduled_splits_definition.steps[0].group_weights #=> Hash
    #   resp.launches[0].scheduled_splits_definition.steps[0].group_weights["GroupName"] #=> Integer
    #   resp.launches[0].scheduled_splits_definition.steps[0].segment_overrides #=> Array
    #   resp.launches[0].scheduled_splits_definition.steps[0].segment_overrides[0].evaluation_order #=> Integer
    #   resp.launches[0].scheduled_splits_definition.steps[0].segment_overrides[0].segment #=> String
    #   resp.launches[0].scheduled_splits_definition.steps[0].segment_overrides[0].weights #=> Hash
    #   resp.launches[0].scheduled_splits_definition.steps[0].segment_overrides[0].weights["GroupName"] #=> Integer
    #   resp.launches[0].scheduled_splits_definition.steps[0].start_time #=> Time
    #   resp.launches[0].status #=> String, one of "CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"
    #   resp.launches[0].status_reason #=> String
    #   resp.launches[0].tags #=> Hash
    #   resp.launches[0].tags["TagKey"] #=> String
    #   resp.launches[0].type #=> String, one of "aws.evidently.splits"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListLaunches AWS API Documentation
    #
    # @overload list_launches(params = {})
    # @param [Hash] params ({})
    def list_launches(params = {}, options = {})
      req = build_request(:list_launches, params)
      req.send_request(options)
    end

    # Returns configuration details about all the projects in the current
    # Region in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response.
    #
    # @option params [String] :next_token
    #   The token to use when requesting the next set of results. You received
    #   this token from a previous `ListProjects` operation.
    #
    # @return [Types::ListProjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsResponse#next_token #next_token} => String
    #   * {Types::ListProjectsResponse#projects #projects} => Array&lt;Types::ProjectSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.projects #=> Array
    #   resp.projects[0].active_experiment_count #=> Integer
    #   resp.projects[0].active_launch_count #=> Integer
    #   resp.projects[0].arn #=> String
    #   resp.projects[0].created_time #=> Time
    #   resp.projects[0].description #=> String
    #   resp.projects[0].experiment_count #=> Integer
    #   resp.projects[0].feature_count #=> Integer
    #   resp.projects[0].last_updated_time #=> Time
    #   resp.projects[0].launch_count #=> Integer
    #   resp.projects[0].name #=> String
    #   resp.projects[0].status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.projects[0].tags #=> Hash
    #   resp.projects[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListProjects AWS API Documentation
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Use this operation to find which experiments or launches are using a
    # specified segment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If you omit
    #   this, the default of 50 is used.
    #
    # @option params [String] :next_token
    #   The token to use when requesting the next set of results. You received
    #   this token from a previous `ListSegmentReferences` operation.
    #
    # @option params [required, String] :segment
    #   The ARN of the segment that you want to view information for.
    #
    # @option params [required, String] :type
    #   Specifies whether to return information about launches or experiments
    #   that use this segment.
    #
    # @return [Types::ListSegmentReferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSegmentReferencesResponse#next_token #next_token} => String
    #   * {Types::ListSegmentReferencesResponse#referenced_by #referenced_by} => Array&lt;Types::RefResource&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_segment_references({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     segment: "SegmentRef", # required
    #     type: "EXPERIMENT", # required, accepts EXPERIMENT, LAUNCH
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.referenced_by #=> Array
    #   resp.referenced_by[0].arn #=> String
    #   resp.referenced_by[0].end_time #=> String
    #   resp.referenced_by[0].last_updated_on #=> String
    #   resp.referenced_by[0].name #=> String
    #   resp.referenced_by[0].start_time #=> String
    #   resp.referenced_by[0].status #=> String
    #   resp.referenced_by[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListSegmentReferences AWS API Documentation
    #
    # @overload list_segment_references(params = {})
    # @param [Hash] params ({})
    def list_segment_references(params = {}, options = {})
      req = build_request(:list_segment_references, params)
      req.send_request(options)
    end

    # Returns a list of audience segments that you have created in your
    # account in this Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If you omit
    #   this, the default of 50 is used.
    #
    # @option params [String] :next_token
    #   The token to use when requesting the next set of results. You received
    #   this token from a previous `ListSegments` operation.
    #
    # @return [Types::ListSegmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSegmentsResponse#next_token #next_token} => String
    #   * {Types::ListSegmentsResponse#segments #segments} => Array&lt;Types::Segment&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_segments({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.segments #=> Array
    #   resp.segments[0].arn #=> String
    #   resp.segments[0].created_time #=> Time
    #   resp.segments[0].description #=> String
    #   resp.segments[0].experiment_count #=> Integer
    #   resp.segments[0].last_updated_time #=> Time
    #   resp.segments[0].launch_count #=> Integer
    #   resp.segments[0].name #=> String
    #   resp.segments[0].pattern #=> String
    #   resp.segments[0].tags #=> Hash
    #   resp.segments[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListSegments AWS API Documentation
    #
    # @overload list_segments(params = {})
    # @param [Hash] params ({})
    def list_segments(params = {}, options = {})
      req = build_request(:list_segments, params)
      req.send_request(options)
    end

    # Displays the tags associated with an Evidently resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that you want to see the tags of.
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
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Sends performance events to Evidently. These events can be used to
    # evaluate a launch or an experiment.
    #
    # @option params [required, Array<Types::Event>] :events
    #   An array of event structures that contain the performance data that is
    #   being sent to Evidently.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project to write the events to.
    #
    # @return [Types::PutProjectEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutProjectEventsResponse#event_results #event_results} => Array&lt;Types::PutProjectEventsResultEntry&gt;
    #   * {Types::PutProjectEventsResponse#failed_event_count #failed_event_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_project_events({
    #     events: [ # required
    #       {
    #         data: "JsonValue", # required
    #         timestamp: Time.now, # required
    #         type: "aws.evidently.evaluation", # required, accepts aws.evidently.evaluation, aws.evidently.custom
    #       },
    #     ],
    #     project: "ProjectRef", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_results #=> Array
    #   resp.event_results[0].error_code #=> String
    #   resp.event_results[0].error_message #=> String
    #   resp.event_results[0].event_id #=> String
    #   resp.failed_event_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/PutProjectEvents AWS API Documentation
    #
    # @overload put_project_events(params = {})
    # @param [Hash] params ({})
    def put_project_events(params = {}, options = {})
      req = build_request(:put_project_events, params)
      req.send_request(options)
    end

    # Starts an existing experiment. To create an experiment, use
    # [CreateExperiment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateExperiment.html
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :analysis_complete_time
    #   The date and time to end the experiment. This must be no more than 30
    #   days after the experiment starts.
    #
    # @option params [required, String] :experiment
    #   The name of the experiment to start.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the experiment to start.
    #
    # @return [Types::StartExperimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartExperimentResponse#started_time #started_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_experiment({
    #     analysis_complete_time: Time.now, # required
    #     experiment: "ExperimentName", # required
    #     project: "ProjectRef", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.started_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/StartExperiment AWS API Documentation
    #
    # @overload start_experiment(params = {})
    # @param [Hash] params ({})
    def start_experiment(params = {}, options = {})
      req = build_request(:start_experiment, params)
      req.send_request(options)
    end

    # Starts an existing launch. To create a launch, use [CreateLaunch][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateLaunch.html
    #
    # @option params [required, String] :launch
    #   The name of the launch to start.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the launch to start.
    #
    # @return [Types::StartLaunchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartLaunchResponse#launch #launch} => Types::Launch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_launch({
    #     launch: "LaunchName", # required
    #     project: "ProjectRef", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.launch.arn #=> String
    #   resp.launch.created_time #=> Time
    #   resp.launch.description #=> String
    #   resp.launch.execution.ended_time #=> Time
    #   resp.launch.execution.started_time #=> Time
    #   resp.launch.groups #=> Array
    #   resp.launch.groups[0].description #=> String
    #   resp.launch.groups[0].feature_variations #=> Hash
    #   resp.launch.groups[0].feature_variations["FeatureName"] #=> String
    #   resp.launch.groups[0].name #=> String
    #   resp.launch.last_updated_time #=> Time
    #   resp.launch.metric_monitors #=> Array
    #   resp.launch.metric_monitors[0].metric_definition.entity_id_key #=> String
    #   resp.launch.metric_monitors[0].metric_definition.event_pattern #=> String
    #   resp.launch.metric_monitors[0].metric_definition.name #=> String
    #   resp.launch.metric_monitors[0].metric_definition.unit_label #=> String
    #   resp.launch.metric_monitors[0].metric_definition.value_key #=> String
    #   resp.launch.name #=> String
    #   resp.launch.project #=> String
    #   resp.launch.randomization_salt #=> String
    #   resp.launch.scheduled_splits_definition.steps #=> Array
    #   resp.launch.scheduled_splits_definition.steps[0].group_weights #=> Hash
    #   resp.launch.scheduled_splits_definition.steps[0].group_weights["GroupName"] #=> Integer
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides #=> Array
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].evaluation_order #=> Integer
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].segment #=> String
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].weights #=> Hash
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].weights["GroupName"] #=> Integer
    #   resp.launch.scheduled_splits_definition.steps[0].start_time #=> Time
    #   resp.launch.status #=> String, one of "CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"
    #   resp.launch.status_reason #=> String
    #   resp.launch.tags #=> Hash
    #   resp.launch.tags["TagKey"] #=> String
    #   resp.launch.type #=> String, one of "aws.evidently.splits"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/StartLaunch AWS API Documentation
    #
    # @overload start_launch(params = {})
    # @param [Hash] params ({})
    def start_launch(params = {}, options = {})
      req = build_request(:start_launch, params)
      req.send_request(options)
    end

    # Stops an experiment that is currently running. If you stop an
    # experiment, you can't resume it or restart it.
    #
    # @option params [String] :desired_state
    #   Specify whether the experiment is to be considered `COMPLETED` or
    #   `CANCELLED` after it stops.
    #
    # @option params [required, String] :experiment
    #   The name of the experiment to stop.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the experiment to stop.
    #
    # @option params [String] :reason
    #   A string that describes why you are stopping the experiment.
    #
    # @return [Types::StopExperimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopExperimentResponse#ended_time #ended_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_experiment({
    #     desired_state: "COMPLETED", # accepts COMPLETED, CANCELLED
    #     experiment: "ExperimentName", # required
    #     project: "ProjectRef", # required
    #     reason: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.ended_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/StopExperiment AWS API Documentation
    #
    # @overload stop_experiment(params = {})
    # @param [Hash] params ({})
    def stop_experiment(params = {}, options = {})
      req = build_request(:stop_experiment, params)
      req.send_request(options)
    end

    # Stops a launch that is currently running. After you stop a launch, you
    # will not be able to resume it or restart it. Also, it will not be
    # evaluated as a rule for traffic allocation, and the traffic that was
    # allocated to the launch will instead be available to the feature's
    # experiment, if there is one. Otherwise, all traffic will be served the
    # default variation after the launch is stopped.
    #
    # @option params [String] :desired_state
    #   Specify whether to consider the launch as `COMPLETED` or `CANCELLED`
    #   after it stops.
    #
    # @option params [required, String] :launch
    #   The name of the launch to stop.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the launch that you want
    #   to stop.
    #
    # @option params [String] :reason
    #   A string that describes why you are stopping the launch.
    #
    # @return [Types::StopLaunchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopLaunchResponse#ended_time #ended_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_launch({
    #     desired_state: "COMPLETED", # accepts COMPLETED, CANCELLED
    #     launch: "LaunchName", # required
    #     project: "ProjectRef", # required
    #     reason: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.ended_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/StopLaunch AWS API Documentation
    #
    # @overload stop_launch(params = {})
    # @param [Hash] params ({})
    def stop_launch(params = {}, options = {})
      req = build_request(:stop_launch, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified CloudWatch
    # Evidently resource. Projects, features, launches, and experiments can
    # be tagged.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions by granting a user permission to
    # access or change only resources with certain tag values.
    #
    # Tags don't have any semantic meaning to Amazon Web Services and are
    # interpreted strictly as strings of characters.
    #
    # You can use the `TagResource` action with a resource that already has
    # tags. If you specify a new tag key for the resource, this tag is
    # appended to the list of tags associated with the alarm. If you specify
    # a tag key that is already associated with the resource, the new tag
    # value that you specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a resource.
    #
    # For more information, see [Tagging Amazon Web Services resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch Evidently resource that you're adding tags
    #   to.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of key-value pairs to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Use this operation to test a rules pattern that you plan to use to
    # create an audience segment. For more information about segments, see
    # [CreateSegment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateSegment.html
    #
    # @option params [required, String] :pattern
    #   The pattern to test.
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    # @option params [required, String] :payload
    #   A sample `evaluationContext` JSON block to test against the specified
    #   pattern.
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    # @return [Types::TestSegmentPatternResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestSegmentPatternResponse#match #match} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_segment_pattern({
    #     pattern: "SegmentPattern", # required
    #     payload: "JsonValue", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.match #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/TestSegmentPattern AWS API Documentation
    #
    # @overload test_segment_pattern(params = {})
    # @param [Hash] params ({})
    def test_segment_pattern(params = {}, options = {})
      req = build_request(:test_segment_pattern, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the CloudWatch Evidently resource that you're removing
    #   tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an Evidently experiment.
    #
    # Don't use this operation to update an experiment's tag. Instead, use
    # [TagResource][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html
    #
    # @option params [String] :description
    #   An optional description of the experiment.
    #
    # @option params [required, String] :experiment
    #   The name of the experiment to update.
    #
    # @option params [Array<Types::MetricGoalConfig>] :metric_goals
    #   An array of structures that defines the metrics used for the
    #   experiment, and whether a higher or lower value for each metric is the
    #   goal.
    #
    # @option params [Types::OnlineAbConfig] :online_ab_config
    #   A structure that contains the configuration of which variation o use
    #   as the "control" version. The "control" version is used for
    #   comparison with other variations. This structure also specifies how
    #   much experiment traffic is allocated to each variation.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the experiment that you
    #   want to update.
    #
    # @option params [String] :randomization_salt
    #   When Evidently assigns a particular user session to an experiment, it
    #   must use a randomization ID to determine which variation the user
    #   session is served. This randomization ID is a combination of the
    #   entity ID and `randomizationSalt`. If you omit `randomizationSalt`,
    #   Evidently uses the experiment name as the `randomizationSalt`.
    #
    # @option params [Boolean] :remove_segment
    #   Removes a segment from being used in an experiment. You can't use
    #   this parameter if the experiment is currently running.
    #
    # @option params [Integer] :sampling_rate
    #   The portion of the available audience that you want to allocate to
    #   this experiment, in thousandths of a percent. The available audience
    #   is the total audience minus the audience that you have allocated to
    #   overrides or current launches of this feature.
    #
    #   This is represented in thousandths of a percent. For example, specify
    #   20,000 to allocate 20% of the available audience.
    #
    # @option params [String] :segment
    #   Adds an audience *segment* to an experiment. When a segment is used in
    #   an experiment, only user sessions that match the segment pattern are
    #   used in the experiment. You can't use this parameter if the
    #   experiment is currently running.
    #
    # @option params [Array<Types::TreatmentConfig>] :treatments
    #   An array of structures that define the variations being tested in the
    #   experiment.
    #
    # @return [Types::UpdateExperimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateExperimentResponse#experiment #experiment} => Types::Experiment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_experiment({
    #     description: "Description",
    #     experiment: "ExperimentName", # required
    #     metric_goals: [
    #       {
    #         desired_change: "INCREASE", # accepts INCREASE, DECREASE
    #         metric_definition: { # required
    #           entity_id_key: "JsonPath", # required
    #           event_pattern: "MetricDefinitionConfigEventPatternString",
    #           name: "CwDimensionSafeName", # required
    #           unit_label: "MetricUnitLabel",
    #           value_key: "JsonPath", # required
    #         },
    #       },
    #     ],
    #     online_ab_config: {
    #       control_treatment_name: "TreatmentName",
    #       treatment_weights: {
    #         "TreatmentName" => 1,
    #       },
    #     },
    #     project: "ProjectRef", # required
    #     randomization_salt: "RandomizationSalt",
    #     remove_segment: false,
    #     sampling_rate: 1,
    #     segment: "SegmentRef",
    #     treatments: [
    #       {
    #         description: "Description",
    #         feature: "FeatureName", # required
    #         name: "TreatmentName", # required
    #         variation: "VariationName", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.experiment.arn #=> String
    #   resp.experiment.created_time #=> Time
    #   resp.experiment.description #=> String
    #   resp.experiment.execution.ended_time #=> Time
    #   resp.experiment.execution.started_time #=> Time
    #   resp.experiment.last_updated_time #=> Time
    #   resp.experiment.metric_goals #=> Array
    #   resp.experiment.metric_goals[0].desired_change #=> String, one of "INCREASE", "DECREASE"
    #   resp.experiment.metric_goals[0].metric_definition.entity_id_key #=> String
    #   resp.experiment.metric_goals[0].metric_definition.event_pattern #=> String
    #   resp.experiment.metric_goals[0].metric_definition.name #=> String
    #   resp.experiment.metric_goals[0].metric_definition.unit_label #=> String
    #   resp.experiment.metric_goals[0].metric_definition.value_key #=> String
    #   resp.experiment.name #=> String
    #   resp.experiment.online_ab_definition.control_treatment_name #=> String
    #   resp.experiment.online_ab_definition.treatment_weights #=> Hash
    #   resp.experiment.online_ab_definition.treatment_weights["TreatmentName"] #=> Integer
    #   resp.experiment.project #=> String
    #   resp.experiment.randomization_salt #=> String
    #   resp.experiment.sampling_rate #=> Integer
    #   resp.experiment.schedule.analysis_complete_time #=> Time
    #   resp.experiment.segment #=> String
    #   resp.experiment.status #=> String, one of "CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"
    #   resp.experiment.status_reason #=> String
    #   resp.experiment.tags #=> Hash
    #   resp.experiment.tags["TagKey"] #=> String
    #   resp.experiment.treatments #=> Array
    #   resp.experiment.treatments[0].description #=> String
    #   resp.experiment.treatments[0].feature_variations #=> Hash
    #   resp.experiment.treatments[0].feature_variations["FeatureName"] #=> String
    #   resp.experiment.treatments[0].name #=> String
    #   resp.experiment.type #=> String, one of "aws.evidently.onlineab"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateExperiment AWS API Documentation
    #
    # @overload update_experiment(params = {})
    # @param [Hash] params ({})
    def update_experiment(params = {}, options = {})
      req = build_request(:update_experiment, params)
      req.send_request(options)
    end

    # Updates an existing feature.
    #
    # You can't use this operation to update the tags of an existing
    # feature. Instead, use [TagResource][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html
    #
    # @option params [Array<Types::VariationConfig>] :add_or_update_variations
    #   To update variation configurations for this feature, or add new ones,
    #   specify this structure. In this array, include any variations that you
    #   want to add or update. If the array includes a variation name that
    #   already exists for this feature, it is updated. If it includes a new
    #   variation name, it is added as a new variation.
    #
    # @option params [String] :default_variation
    #   The name of the variation to use as the default variation. The default
    #   variation is served to users who are not allocated to any ongoing
    #   launches or experiments of this feature.
    #
    # @option params [String] :description
    #   An optional description of the feature.
    #
    # @option params [Hash<String,String>] :entity_overrides
    #   Specified users that should always be served a specific variation of a
    #   feature. Each user is specified by a key-value pair . For each key,
    #   specify a user by entering their user ID, account ID, or some other
    #   identifier. For the value, specify the name of the variation that they
    #   are to be served.
    #
    #   This parameter is limited to 2500 overrides or a total of 40KB. The
    #   40KB limit includes an overhead of 6 bytes per override.
    #
    # @option params [String] :evaluation_strategy
    #   Specify `ALL_RULES` to activate the traffic allocation specified by
    #   any ongoing launches or experiments. Specify `DEFAULT_VARIATION` to
    #   serve the default variation to all users instead.
    #
    # @option params [required, String] :feature
    #   The name of the feature to be updated.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the feature to be
    #   updated.
    #
    # @option params [Array<String>] :remove_variations
    #   Removes a variation from the feature. If the variation you specify
    #   doesn't exist, then this makes no change and does not report an
    #   error.
    #
    #   This operation fails if you try to remove a variation that is part of
    #   an ongoing launch or experiment.
    #
    # @return [Types::UpdateFeatureResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFeatureResponse#feature #feature} => Types::Feature
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_feature({
    #     add_or_update_variations: [
    #       {
    #         name: "VariationName", # required
    #         value: { # required
    #           bool_value: false,
    #           double_value: 1.0,
    #           long_value: 1,
    #           string_value: "VariableValueStringValueString",
    #         },
    #       },
    #     ],
    #     default_variation: "VariationName",
    #     description: "Description",
    #     entity_overrides: {
    #       "EntityId" => "VariationName",
    #     },
    #     evaluation_strategy: "ALL_RULES", # accepts ALL_RULES, DEFAULT_VARIATION
    #     feature: "FeatureName", # required
    #     project: "ProjectRef", # required
    #     remove_variations: ["VariationName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.feature.arn #=> String
    #   resp.feature.created_time #=> Time
    #   resp.feature.default_variation #=> String
    #   resp.feature.description #=> String
    #   resp.feature.entity_overrides #=> Hash
    #   resp.feature.entity_overrides["EntityId"] #=> String
    #   resp.feature.evaluation_rules #=> Array
    #   resp.feature.evaluation_rules[0].name #=> String
    #   resp.feature.evaluation_rules[0].type #=> String
    #   resp.feature.evaluation_strategy #=> String, one of "ALL_RULES", "DEFAULT_VARIATION"
    #   resp.feature.last_updated_time #=> Time
    #   resp.feature.name #=> String
    #   resp.feature.project #=> String
    #   resp.feature.status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.feature.tags #=> Hash
    #   resp.feature.tags["TagKey"] #=> String
    #   resp.feature.value_type #=> String, one of "STRING", "LONG", "DOUBLE", "BOOLEAN"
    #   resp.feature.variations #=> Array
    #   resp.feature.variations[0].name #=> String
    #   resp.feature.variations[0].value.bool_value #=> Boolean
    #   resp.feature.variations[0].value.double_value #=> Float
    #   resp.feature.variations[0].value.long_value #=> Integer
    #   resp.feature.variations[0].value.string_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateFeature AWS API Documentation
    #
    # @overload update_feature(params = {})
    # @param [Hash] params ({})
    def update_feature(params = {}, options = {})
      req = build_request(:update_feature, params)
      req.send_request(options)
    end

    # Updates a launch of a given feature.
    #
    # Don't use this operation to update the tags of an existing launch.
    # Instead, use [TagResource][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html
    #
    # @option params [String] :description
    #   An optional description for the launch.
    #
    # @option params [Array<Types::LaunchGroupConfig>] :groups
    #   An array of structures that contains the feature and variations that
    #   are to be used for the launch.
    #
    # @option params [required, String] :launch
    #   The name of the launch that is to be updated.
    #
    # @option params [Array<Types::MetricMonitorConfig>] :metric_monitors
    #   An array of structures that define the metrics that will be used to
    #   monitor the launch performance.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that contains the launch that you want
    #   to update.
    #
    # @option params [String] :randomization_salt
    #   When Evidently assigns a particular user session to a launch, it must
    #   use a randomization ID to determine which variation the user session
    #   is served. This randomization ID is a combination of the entity ID and
    #   `randomizationSalt`. If you omit `randomizationSalt`, Evidently uses
    #   the launch name as the `randomizationSalt`.
    #
    # @option params [Types::ScheduledSplitsLaunchConfig] :scheduled_splits_config
    #   An array of structures that define the traffic allocation percentages
    #   among the feature variations during each step of the launch.
    #
    # @return [Types::UpdateLaunchResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLaunchResponse#launch #launch} => Types::Launch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_launch({
    #     description: "Description",
    #     groups: [
    #       {
    #         description: "Description",
    #         feature: "FeatureName", # required
    #         name: "GroupName", # required
    #         variation: "VariationName", # required
    #       },
    #     ],
    #     launch: "LaunchName", # required
    #     metric_monitors: [
    #       {
    #         metric_definition: { # required
    #           entity_id_key: "JsonPath", # required
    #           event_pattern: "MetricDefinitionConfigEventPatternString",
    #           name: "CwDimensionSafeName", # required
    #           unit_label: "MetricUnitLabel",
    #           value_key: "JsonPath", # required
    #         },
    #       },
    #     ],
    #     project: "ProjectRef", # required
    #     randomization_salt: "RandomizationSalt",
    #     scheduled_splits_config: {
    #       steps: [ # required
    #         {
    #           group_weights: { # required
    #             "GroupName" => 1,
    #           },
    #           segment_overrides: [
    #             {
    #               evaluation_order: 1, # required
    #               segment: "SegmentRef", # required
    #               weights: { # required
    #                 "GroupName" => 1,
    #               },
    #             },
    #           ],
    #           start_time: Time.now, # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.launch.arn #=> String
    #   resp.launch.created_time #=> Time
    #   resp.launch.description #=> String
    #   resp.launch.execution.ended_time #=> Time
    #   resp.launch.execution.started_time #=> Time
    #   resp.launch.groups #=> Array
    #   resp.launch.groups[0].description #=> String
    #   resp.launch.groups[0].feature_variations #=> Hash
    #   resp.launch.groups[0].feature_variations["FeatureName"] #=> String
    #   resp.launch.groups[0].name #=> String
    #   resp.launch.last_updated_time #=> Time
    #   resp.launch.metric_monitors #=> Array
    #   resp.launch.metric_monitors[0].metric_definition.entity_id_key #=> String
    #   resp.launch.metric_monitors[0].metric_definition.event_pattern #=> String
    #   resp.launch.metric_monitors[0].metric_definition.name #=> String
    #   resp.launch.metric_monitors[0].metric_definition.unit_label #=> String
    #   resp.launch.metric_monitors[0].metric_definition.value_key #=> String
    #   resp.launch.name #=> String
    #   resp.launch.project #=> String
    #   resp.launch.randomization_salt #=> String
    #   resp.launch.scheduled_splits_definition.steps #=> Array
    #   resp.launch.scheduled_splits_definition.steps[0].group_weights #=> Hash
    #   resp.launch.scheduled_splits_definition.steps[0].group_weights["GroupName"] #=> Integer
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides #=> Array
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].evaluation_order #=> Integer
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].segment #=> String
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].weights #=> Hash
    #   resp.launch.scheduled_splits_definition.steps[0].segment_overrides[0].weights["GroupName"] #=> Integer
    #   resp.launch.scheduled_splits_definition.steps[0].start_time #=> Time
    #   resp.launch.status #=> String, one of "CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"
    #   resp.launch.status_reason #=> String
    #   resp.launch.tags #=> Hash
    #   resp.launch.tags["TagKey"] #=> String
    #   resp.launch.type #=> String, one of "aws.evidently.splits"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateLaunch AWS API Documentation
    #
    # @overload update_launch(params = {})
    # @param [Hash] params ({})
    def update_launch(params = {}, options = {})
      req = build_request(:update_launch, params)
      req.send_request(options)
    end

    # Updates the description of an existing project.
    #
    # To create a new project, use [CreateProject][1].
    #
    # Don't use this operation to update the data storage options of a
    # project. Instead, use [UpdateProjectDataDelivery][2].
    #
    # Don't use this operation to update the tags of a project. Instead,
    # use [TagResource][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html
    # [2]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProjectDataDelivery.html
    # [3]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html
    #
    # @option params [Types::ProjectAppConfigResourceConfig] :app_config_resource
    #   Use this parameter if the project will use client-side evaluation
    #   powered by AppConfig. Client-side evaluation allows your application
    #   to assign variations to user sessions locally instead of by calling
    #   the [EvaluateFeature][1] operation. This mitigates the latency and
    #   availability risks that come with an API call. allows you to
    #
    #   This parameter is a structure that contains information about the
    #   AppConfig application that will be used for client-side evaluation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html
    #
    # @option params [String] :description
    #   An optional description of the project.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project to update.
    #
    # @return [Types::UpdateProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProjectResponse#project #project} => Types::Project
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     app_config_resource: {
    #       application_id: "AppConfigResourceId",
    #       environment_id: "AppConfigResourceId",
    #     },
    #     description: "Description",
    #     project: "ProjectRef", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.project.active_experiment_count #=> Integer
    #   resp.project.active_launch_count #=> Integer
    #   resp.project.app_config_resource.application_id #=> String
    #   resp.project.app_config_resource.configuration_profile_id #=> String
    #   resp.project.app_config_resource.environment_id #=> String
    #   resp.project.arn #=> String
    #   resp.project.created_time #=> Time
    #   resp.project.data_delivery.cloud_watch_logs.log_group #=> String
    #   resp.project.data_delivery.s3_destination.bucket #=> String
    #   resp.project.data_delivery.s3_destination.prefix #=> String
    #   resp.project.description #=> String
    #   resp.project.experiment_count #=> Integer
    #   resp.project.feature_count #=> Integer
    #   resp.project.last_updated_time #=> Time
    #   resp.project.launch_count #=> Integer
    #   resp.project.name #=> String
    #   resp.project.status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.project.tags #=> Hash
    #   resp.project.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateProject AWS API Documentation
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
      req.send_request(options)
    end

    # Updates the data storage options for this project. If you store
    # evaluation events, you an keep them and analyze them on your own. If
    # you choose not to store evaluation events, Evidently deletes them
    # after using them to produce metrics and other experiment results that
    # you can view.
    #
    # You can't specify both `cloudWatchLogs` and `s3Destination` in the
    # same operation.
    #
    # @option params [Types::CloudWatchLogsDestinationConfig] :cloud_watch_logs
    #   A structure containing the CloudWatch Logs log group where you want to
    #   store evaluation events.
    #
    # @option params [required, String] :project
    #   The name or ARN of the project that you want to modify the data
    #   storage options for.
    #
    # @option params [Types::S3DestinationConfig] :s3_destination
    #   A structure containing the S3 bucket name and bucket prefix where you
    #   want to store evaluation events.
    #
    # @return [Types::UpdateProjectDataDeliveryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProjectDataDeliveryResponse#project #project} => Types::Project
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project_data_delivery({
    #     cloud_watch_logs: {
    #       log_group: "CwLogGroupSafeName",
    #     },
    #     project: "ProjectRef", # required
    #     s3_destination: {
    #       bucket: "S3BucketSafeName",
    #       prefix: "S3PrefixSafeName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.project.active_experiment_count #=> Integer
    #   resp.project.active_launch_count #=> Integer
    #   resp.project.app_config_resource.application_id #=> String
    #   resp.project.app_config_resource.configuration_profile_id #=> String
    #   resp.project.app_config_resource.environment_id #=> String
    #   resp.project.arn #=> String
    #   resp.project.created_time #=> Time
    #   resp.project.data_delivery.cloud_watch_logs.log_group #=> String
    #   resp.project.data_delivery.s3_destination.bucket #=> String
    #   resp.project.data_delivery.s3_destination.prefix #=> String
    #   resp.project.description #=> String
    #   resp.project.experiment_count #=> Integer
    #   resp.project.feature_count #=> Integer
    #   resp.project.last_updated_time #=> Time
    #   resp.project.launch_count #=> Integer
    #   resp.project.name #=> String
    #   resp.project.status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.project.tags #=> Hash
    #   resp.project.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01/UpdateProjectDataDelivery AWS API Documentation
    #
    # @overload update_project_data_delivery(params = {})
    # @param [Hash] params ({})
    def update_project_data_delivery(params = {}, options = {})
      req = build_request(:update_project_data_delivery, params)
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
      context[:gem_name] = 'aws-sdk-cloudwatchevidently'
      context[:gem_version] = '1.17.0'
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
