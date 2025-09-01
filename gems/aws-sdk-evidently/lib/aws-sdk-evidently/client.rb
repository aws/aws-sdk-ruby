# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json'

module Aws::Evidently
  # An API client for Aws::Evidently.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Evidently

    add_plugin(::Aws::Evidently::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJson)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::Evidently::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>This operation assigns feature variation to user sessions. For each user session, you pass
    #       in an <code>entityID</code> that represents the user. Evidently then checks the evaluation
    #       rules and assigns the variation.</p>
    #          <p>The first rules that are evaluated are the override rules. If the user's
    #         <code>entityID</code> matches an override rule, the user is served the variation specified
    #       by that rule.</p>
    #          <p>Next, if there is a launch of the feature, the user might be assigned to a variation in
    #       the launch. The chance of this depends on the percentage of users that are allocated to that
    #       launch. If the user is enrolled in the launch, the variation they are served depends on the
    #       allocation of the various feature variations used for the launch.</p>
    #          <p>If the user is not assigned to a launch, and there is an ongoing experiment for this feature,  the user might 
    #       be assigned to a variation in the experiment. The chance of this
    #       depends on the percentage of users that are allocated to that experiment. If the user is enrolled in the experiment, 
    #       the variation they are served depends on the allocation of the various feature variations used for the experiment. </p>
    #          <p>If the user is not assigned to a launch or experiment, they are served the default variation.</p>
    # @param [Hash, Types::BatchEvaluateFeatureInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the feature being evaluated.</p>
    # @option params [Array<Types::EvaluationRequest>] :requests
    #   <p>An array of structures, where each structure assigns a feature variation to one user session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     requests: [ # required
    #       {
    #         feature: "FeatureName", # required
    #         entity_id: "EntityId", # required
    #         evaluation_context: "JsonValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_evaluate_feature(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: [
    #       {
    #         project: "Arn",
    #         feature: "FeatureName", # required
    #         variation: "String",
    #         value: {
    #           # One of:
    #           bool_value: false,
    #           string_value: "String",
    #           long_value: 1,
    #           double_value: 1.0
    #         },
    #         entity_id: "EntityId", # required
    #         reason: "String",
    #         details: "JsonValue"
    #       }
    #     ]
    #   }
    # @return [Types::BatchEvaluateFeatureOutput]
    def batch_evaluate_feature(params = {}, options = {})
      request = build_request(:batch_evaluate_feature, params)
      request.send_request(options)
    end

    # <p>Creates an Evidently <i>experiment</i>. Before you create an experiment,
    #       you must create the feature to use for the experiment.</p>
    #          <p>An experiment helps you make feature design 
    #        decisions based on evidence and data. An experiment can test as
    #        many as five variations at once. Evidently collects experiment data and analyzes it by statistical methods, and provides
    #        clear recommendations about which variations perform better.</p>
    #          <p>You can optionally specify a <code>segment</code> to have the experiment consider only certain audience 
    #      types in the experiment, such as using only user sessions from a certain location or who use a certain internet browser.</p>
    #          <p>Don't use this operation to update an existing experiment. Instead, use 
    #        <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateExperiment.html">UpdateExperiment</a>. </p>
    # @param [Hash, Types::CreateExperimentInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that you want to create the new experiment in.</p>
    # @option params [String] :name
    #   <p>A name for the new experiment.</p>
    # @option params [String] :description
    #   <p>An optional description of the experiment.</p>
    # @option params [Array<Types::TreatmentConfig>] :treatments
    #   <p>An array of structures that describe the configuration of each feature variation used in the experiment.</p>
    # @option params [Array<Types::MetricGoalConfig>] :metric_goals
    #   <p>An array of structures that defines the metrics used for the experiment, and whether a higher
    #         or lower value for each metric is the goal.</p>
    # @option params [String] :randomization_salt
    #   <p>When Evidently assigns a particular user session to an experiment, it must use a randomization ID
    #          to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #          and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #          the experiment name as the <code>randomizationSalt</code>.</p>
    # @option params [Integer] :sampling_rate
    #   <p>The portion of the available audience that you want to allocate to this experiment, in thousandths of a percent. The available audience
    #         is the total audience minus the audience that you have allocated to overrides or current launches of
    #         this feature.</p>
    #            <p>This is represented in thousandths of a percent. For example, specify 10,000 to allocate 10% of the available audience.</p>
    # @option params [Types::OnlineAbConfig] :online_ab_config
    #   <p>A structure that contains the configuration of which variation to use as the "control"
    #         version. tThe "control" version is used for comparison with other variations. This structure
    #         also specifies how much experiment traffic is allocated to each variation.</p>
    # @option params [String] :segment
    #   <p>Specifies an audience <i>segment</i> to use in the experiment. When a segment is used in an experiment, only
    #         user sessions that match the segment pattern are used in the experiment.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the experiment.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #            <p>You can associate as many as 50 tags with an experiment.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     name: "ExperimentName", # required
    #     description: "Description",
    #     treatments: [ # required
    #       {
    #         name: "TreatmentName", # required
    #         description: "Description",
    #         feature: "FeatureName", # required
    #         variation: "VariationName", # required
    #       }
    #     ],
    #     metric_goals: [ # required
    #       {
    #         metric_definition: { # required
    #           name: "CwDimensionSafeName", # required
    #           entity_id_key: "JsonPath", # required
    #           value_key: "JsonPath", # required
    #           event_pattern: "JsonValue",
    #           unit_label: "MetricUnitLabel"
    #         },
    #         desired_change: "ChangeDirectionEnum"
    #       }
    #     ],
    #     randomization_salt: "RandomizationSalt",
    #     sampling_rate: 1,
    #     online_ab_config: {
    #       control_treatment_name: "TreatmentName",
    #       treatment_weights: {
    #         "TreatmentName" => 1
    #       }
    #     },
    #     segment: "SegmentRef",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_experiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiment: { # required
    #       arn: "ExperimentArn", # required
    #       name: "ExperimentName", # required
    #       project: "ProjectArn",
    #       status: "ExperimentStatus", # required
    #       status_reason: "Description",
    #       description: "Description",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       schedule: {
    #         analysis_complete_time: Time.now
    #       },
    #       execution: {
    #         started_time: Time.now,
    #         ended_time: Time.now
    #       },
    #       treatments: [
    #         {
    #           name: "TreatmentName", # required
    #           description: "Description",
    #           feature_variations: {
    #             "FeatureName" => "VariationName"
    #           }
    #         }
    #       ],
    #       metric_goals: [
    #         {
    #           metric_definition: { # required
    #             name: "CwDimensionSafeName",
    #             entity_id_key: "JsonPath",
    #             value_key: "JsonPath",
    #             event_pattern: "JsonValue",
    #             unit_label: "MetricUnitLabel"
    #           },
    #           desired_change: "ChangeDirectionEnum"
    #         }
    #       ],
    #       randomization_salt: "RandomizationSalt",
    #       sampling_rate: 1,
    #       segment: "SegmentArn",
    #       type: "ExperimentType", # required
    #       online_ab_definition: {
    #         control_treatment_name: "TreatmentName",
    #         treatment_weights: {
    #           "TreatmentName" => 1
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateExperimentOutput]
    def create_experiment(params = {}, options = {})
      request = build_request(:create_experiment, params)
      request.send_request(options)
    end

    # <p>Creates an Evidently <i>feature</i> that you want to launch or test. You can define up to 
    #        five variations of a feature, and use these variations in your launches and experiments. A feature must be created in
    #        a project. For information about creating a project, see <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html">CreateProject</a>.</p>
    #          <p>Don't use this operation to update an existing feature. Instead, use 
    #        <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateFeature.html">UpdateFeature</a>. </p>
    # @param [Hash, Types::CreateFeatureInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that is to contain the new feature.</p>
    # @option params [String] :name
    #   <p>The name for the new feature.</p>
    # @option params [String] :evaluation_strategy
    #   <p>Specify <code>ALL_RULES</code> to activate the traffic allocation specified by any
    #         ongoing launches or experiments. Specify <code>DEFAULT_VARIATION</code> to serve the default
    #         variation to all users instead.</p>
    # @option params [String] :description
    #   <p>An optional description of the feature.</p>
    # @option params [Array<Types::VariationConfig>] :variations
    #   <p>An array of structures that contain the configuration of the feature's different variations.</p>
    # @option params [String] :default_variation
    #   <p>The name of the variation to use as the default variation. The default
    #         variation is served to users who are not allocated to any ongoing launches
    #         or experiments of this feature.</p>
    #            <p>This variation must also be listed in the <code>variations</code> structure.</p>
    #            <p>If you omit <code>defaultVariation</code>, the first variation listed in
    #          the <code>variations</code> structure is used as the default variation.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the feature.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #            <p>You can associate as many as 50 tags with a feature.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    # @option params [Hash<String, String>] :entity_overrides
    #   <p>Specify users that should always be served a specific variation of a feature. Each user
    #         is specified by a key-value pair . For each key, specify a user by entering their user ID,
    #         account ID, or some other identifier. For the value, specify the name of the variation that
    #         they are to be served.</p>
    #            <p>This parameter is limited to 2500 overrides or a total of 40KB. The 40KB limit includes an overhead of 6 bytes
    #        per override.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     name: "FeatureName", # required
    #     evaluation_strategy: "FeatureEvaluationStrategy",
    #     description: "Description",
    #     variations: [ # required
    #       {
    #         name: "VariationName", # required
    #         value: { # required
    #           # One of:
    #           bool_value: false,
    #           string_value: "String",
    #           long_value: 1,
    #           double_value: 1.0
    #         }
    #       }
    #     ],
    #     default_variation: "VariationName",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     entity_overrides: {
    #       "EntityId" => "VariationName"
    #     }
    #   }
    #   options = {}
    #   response = client.create_feature(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     feature: {
    #       arn: "FeatureArn", # required
    #       name: "FeatureName", # required
    #       project: "ProjectArn",
    #       status: "FeatureStatus", # required
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       description: "Description",
    #       evaluation_strategy: "FeatureEvaluationStrategy", # required
    #       value_type: "VariationValueType", # required
    #       variations: [ # required
    #         {
    #           name: "VariationName",
    #           value: {
    #             # One of:
    #             bool_value: false,
    #             string_value: "String",
    #             long_value: 1,
    #             double_value: 1.0
    #           }
    #         }
    #       ],
    #       default_variation: "VariationName",
    #       evaluation_rules: [
    #         {
    #           name: "RuleName",
    #           type: "RuleType", # required
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       entity_overrides: {
    #         "EntityId" => "VariationName"
    #       }
    #     }
    #   }
    # @return [Types::CreateFeatureOutput]
    def create_feature(params = {}, options = {})
      request = build_request(:create_feature, params)
      request.send_request(options)
    end

    # <p>Creates a <i>launch</i> of a given feature. Before you create a launch, you
    #       must create the feature to use for the launch.</p>
    #          <p>You can use a launch to safely validate new features by serving them to a specified
    #       percentage of your users while you roll out the feature. You can monitor the performance of
    #       the new feature to help you decide when to ramp up traffic to more users. This helps you
    #       reduce risk and identify unintended consequences before you fully launch the feature.</p>
    #          <p>Don't use this operation to update an existing launch. Instead, use 
    #        <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateLaunch.html">UpdateLaunch</a>. </p>
    # @param [Hash, Types::CreateLaunchInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that you want to create the launch in.</p>
    # @option params [String] :name
    #   <p>The name for the new launch.</p>
    # @option params [String] :description
    #   <p>An optional description for the launch.</p>
    # @option params [Types::ScheduledSplitsLaunchConfig] :scheduled_splits_config
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch.</p>
    # @option params [Array<Types::MetricMonitorConfig>] :metric_monitors
    #   <p>An array of structures that define the metrics that will be used to monitor 
    #          the launch performance.</p>
    # @option params [Array<Types::LaunchGroupConfig>] :groups
    #   <p>An array of structures that contains the feature and variations that are to be used for the launch.</p>
    # @option params [String] :randomization_salt
    #   <p>When Evidently assigns a particular user session to a launch, it must use a randomization ID
    #           to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #           and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #         the launch name as the <code>randomizationSalt</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the launch.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #            <p>You can associate as many as 50 tags with a launch.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     name: "LaunchName", # required
    #     description: "Description",
    #     scheduled_splits_config: {
    #       steps: [ # required
    #         {
    #           start_time: Time.now, # required
    #           group_weights: { # required
    #             "GroupName" => 1
    #           },
    #           segment_overrides: [
    #             {
    #               segment: "SegmentRef", # required
    #               evaluation_order: 1, # required
    #               weights: { # required
    #                 "GroupName" => 1
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     metric_monitors: [
    #       {
    #         metric_definition: { # required
    #           name: "CwDimensionSafeName", # required
    #           entity_id_key: "JsonPath", # required
    #           value_key: "JsonPath", # required
    #           event_pattern: "JsonValue",
    #           unit_label: "MetricUnitLabel"
    #         }
    #       }
    #     ],
    #     groups: [ # required
    #       {
    #         name: "GroupName", # required
    #         description: "Description",
    #         feature: "FeatureName", # required
    #         variation: "VariationName", # required
    #       }
    #     ],
    #     randomization_salt: "RandomizationSalt",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_launch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     launch: { # required
    #       arn: "LaunchArn", # required
    #       name: "LaunchName", # required
    #       project: "ProjectRef",
    #       status: "LaunchStatus", # required
    #       status_reason: "Description",
    #       description: "Description",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       execution: {
    #         started_time: Time.now,
    #         ended_time: Time.now
    #       },
    #       groups: [
    #         {
    #           name: "GroupName", # required
    #           description: "Description",
    #           feature_variations: { # required
    #             "FeatureName" => "VariationName"
    #           }
    #         }
    #       ],
    #       metric_monitors: [
    #         {
    #           metric_definition: { # required
    #             name: "CwDimensionSafeName",
    #             entity_id_key: "JsonPath",
    #             value_key: "JsonPath",
    #             event_pattern: "JsonValue",
    #             unit_label: "MetricUnitLabel"
    #           }
    #         }
    #       ],
    #       randomization_salt: "RandomizationSalt",
    #       type: "LaunchType", # required
    #       scheduled_splits_definition: {
    #         steps: [
    #           {
    #             start_time: Time.now, # required
    #             group_weights: {
    #               "GroupName" => 1
    #             },
    #             segment_overrides: [
    #               {
    #                 segment: "SegmentRef", # required
    #                 evaluation_order: 1, # required
    #                 weights: { # required
    #                   "GroupName" => 1
    #                 }
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateLaunchOutput]
    def create_launch(params = {}, options = {})
      request = build_request(:create_launch, params)
      request.send_request(options)
    end

    # <p>Creates a project, which is the logical object in Evidently that can contain features, launches, and 
    #       experiments. Use projects to group similar features together.</p>
    #          <p>To update an existing project, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProject.html">UpdateProject</a>.</p>
    # @param [Hash, Types::CreateProjectInput] params
    # @option params [String] :name
    #   <p>The name for the project.</p>
    # @option params [String] :description
    #   <p>An optional description of the project.</p>
    # @option params [Types::ProjectDataDeliveryConfig] :data_delivery
    #   <p>A structure that contains information about where Evidently is to store
    #         evaluation events for longer term storage, if you choose to do so. If you choose
    #         not to store these events, Evidently deletes them after using them to produce metrics and other experiment
    #         results that you can view.</p>
    # @option params [Types::ProjectAppConfigResourceConfig] :app_config_resource
    #   <p>Use this parameter if the project will use <i>client-side evaluation powered by AppConfig</i>. Client-side
    #         evaluation allows your application to assign variations to user
    #         sessions locally instead of by calling the <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html">EvaluateFeature</a> operation. This 
    #         mitigates the latency and availability risks that come with an API call. For more information, 
    #         see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-client-side-evaluation.html">
    #           Client-side evaluation - powered by AppConfig.</a>
    #            </p>
    #            <p>This parameter is a structure that
    #         contains information about the AppConfig application and environment that will be used as for client-side evaluation.</p>
    #            <p>To create a project that uses client-side evaluation, you must have the
    #         <code>evidently:ExportProjectAsConfiguration</code> permission.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the project.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #            <p>You can associate as many as 50 tags with a project.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ProjectName", # required
    #     description: "Description",
    #     data_delivery: {
    #       s3_destination: {
    #         bucket: "S3BucketSafeName",
    #         prefix: "S3PrefixSafeName"
    #       },
    #       cloud_watch_logs: {
    #         log_group: "CwLogGroupSafeName"
    #       }
    #     },
    #     app_config_resource: {
    #       application_id: "AppConfigResourceId",
    #       environment_id: "AppConfigResourceId"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project: { # required
    #       arn: "ProjectArn", # required
    #       name: "ProjectName", # required
    #       status: "ProjectStatus", # required
    #       description: "Description",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       feature_count: 1,
    #       launch_count: 1,
    #       active_launch_count: 1,
    #       experiment_count: 1,
    #       active_experiment_count: 1,
    #       data_delivery: {
    #         s3_destination: {
    #           bucket: "S3BucketSafeName",
    #           prefix: "S3PrefixSafeName"
    #         },
    #         cloud_watch_logs: {
    #           log_group: "CwLogGroupSafeName"
    #         }
    #       },
    #       app_config_resource: {
    #         application_id: "AppConfigResourceId", # required
    #         environment_id: "AppConfigResourceId", # required
    #         configuration_profile_id: "AppConfigResourceId", # required
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateProjectOutput]
    def create_project(params = {}, options = {})
      request = build_request(:create_project, params)
      request.send_request(options)
    end

    # <p>Use this operation to define a <i>segment</i> of your audience. A segment
    #       is a portion of your audience that share one or more characteristics. Examples could be Chrome browser users, 
    #       users in Europe, or Firefox browser users in Europe who also fit other criteria that your application collects,
    #       such as age.</p>
    #          <p>Using a segment in an experiment limits that experiment to evaluate only the users who match the segment 
    #       criteria. Using one or more segments in a launch allows you to define different traffic splits for the different
    #       audience segments.</p>
    #          <p>For more information about segment pattern syntax, see 
    #       <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html">
    #         Segment rule pattern syntax</a>.</p>
    #          <p>The pattern that you define for a segment is matched against the value of <code>evaluationContext</code>, which
    #       is passed into Evidently in the <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html">EvaluateFeature</a> operation,
    #       when Evidently assigns a feature variation to a user.</p>
    # @param [Hash, Types::CreateSegmentInput] params
    # @option params [String] :name
    #   <p>A name for the segment.</p>
    # @option params [String] :pattern
    #   <p>The pattern to use for the segment. For more information about pattern syntax, 
    #         see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html">
    #           Segment rule pattern syntax</a>.</p>
    # @option params [String] :description
    #   <p>An optional description for this segment.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the segment.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #         permissions by granting a user
    #         permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #            <p>You can associate as many as 50 tags with a segment.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SegmentName", # required
    #     pattern: "SegmentPattern", # required
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_segment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segment: { # required
    #       arn: "SegmentArn", # required
    #       name: "SegmentName", # required
    #       pattern: "SegmentPattern", # required
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       description: "Description",
    #       experiment_count: 1,
    #       launch_count: 1,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::CreateSegmentOutput]
    def create_segment(params = {}, options = {})
      request = build_request(:create_segment, params)
      request.send_request(options)
    end

    # <p>Deletes an Evidently experiment. The feature used for the experiment is not deleted.</p>
    #          <p>To stop an experiment without deleting it, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_StopExperiment.html">StopExperiment</a>. </p>
    # @param [Hash, Types::DeleteExperimentInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the experiment to delete.</p>
    # @option params [String] :experiment
    #   <p>The name of the experiment to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     experiment: "ExperimentName", # required
    #   }
    #   options = {}
    #   response = client.delete_experiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteExperimentOutput]
    def delete_experiment(params = {}, options = {})
      request = build_request(:delete_experiment, params)
      request.send_request(options)
    end

    # <p>Deletes an Evidently feature.</p>
    # @param [Hash, Types::DeleteFeatureInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the feature to delete.</p>
    # @option params [String] :feature
    #   <p>The name of the feature to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     feature: "FeatureName", # required
    #   }
    #   options = {}
    #   response = client.delete_feature(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFeatureOutput]
    def delete_feature(params = {}, options = {})
      request = build_request(:delete_feature, params)
      request.send_request(options)
    end

    # <p>Deletes an Evidently launch. The feature used for the launch is not deleted.</p>
    #          <p>To stop a launch without deleting it, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_StopLaunch.html">StopLaunch</a>. </p>
    # @param [Hash, Types::DeleteLaunchInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the launch to delete.</p>
    # @option params [String] :launch
    #   <p>The name of the launch to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     launch: "LaunchName", # required
    #   }
    #   options = {}
    #   response = client.delete_launch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLaunchOutput]
    def delete_launch(params = {}, options = {})
      request = build_request(:delete_launch, params)
      request.send_request(options)
    end

    # <p>Deletes an Evidently project. Before you can delete a project, you must delete all the
    #       features that the project contains. To delete a feature, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_DeleteFeature.html">DeleteFeature</a>.</p>
    # @param [Hash, Types::DeleteProjectInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #   }
    #   options = {}
    #   response = client.delete_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProjectOutput]
    def delete_project(params = {}, options = {})
      request = build_request(:delete_project, params)
      request.send_request(options)
    end

    # <p>Deletes a segment. You can't delete a segment that is being used in a launch or experiment, even if that 
    #     launch or experiment is not currently running.</p>
    # @param [Hash, Types::DeleteSegmentInput] params
    # @option params [String] :segment
    #   <p>Specifies the segment to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     segment: "SegmentRef", # required
    #   }
    #   options = {}
    #   response = client.delete_segment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSegmentOutput]
    def delete_segment(params = {}, options = {})
      request = build_request(:delete_segment, params)
      request.send_request(options)
    end

    # <p>This operation assigns a feature variation to one given user session. You pass in an
    #         <code>entityID</code> that represents the user. Evidently then checks the evaluation rules
    #       and assigns the variation.</p>
    #          <p>The first rules that are evaluated are the override rules. If the user's
    #         <code>entityID</code> matches an override rule, the user is served the variation specified
    #       by that rule.</p>
    #          <p>If there is a current launch with this feature that uses segment overrides, and 
    #       if the user session's <code>evaluationContext</code> matches a segment rule defined in a
    #       segment override, the configuration in the segment overrides is used. For more information
    #       about segments, see <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateSegment.html">CreateSegment</a> 
    #       and 
    #       <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html">Use segments to focus your 
    #         audience</a>.</p>
    #          <p>If there is a launch with no segment overrides, the user might be assigned to a variation in
    #       the launch. The chance of this depends on the percentage of users that are allocated to that
    #       launch. If the user is enrolled in the launch, the variation they are served depends on the
    #       allocation of the various feature variations used for the launch.</p>
    #          <p>If the user is not assigned to a launch, and there is an ongoing experiment for this feature, the user might 
    #       be assigned to a variation in the experiment. The chance of this
    #       depends on the percentage of users that are allocated to that experiment.</p>
    #          <p>If the experiment uses a segment, then only 
    #       user sessions with <code>evaluationContext</code> values that match the segment rule are used in the experiment.</p>
    #          <p>If the user is enrolled in the experiment, 
    #       the variation they are served depends on the allocation of the various feature variations used for the experiment. </p>
    #          <p>If the user is not assigned to a launch or experiment, they are served the default variation.</p>
    # @param [Hash, Types::EvaluateFeatureInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains this feature.</p>
    # @option params [String] :feature
    #   <p>The name of the feature being evaluated.</p>
    # @option params [String] :entity_id
    #   <p>An internal ID that represents a unique user of the application. This
    #           <code>entityID</code> is checked against any override rules assigned for this
    #         feature.</p>
    # @option params [String] :evaluation_context
    #   <p>A JSON object of attributes that you can optionally pass in as part of the evaluation event
    #         sent to Evidently from the user session. Evidently can use 
    #         this value to match user sessions with defined audience segments. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html">Use segments to focus your 
    #           audience</a>.</p>
    #            <p>If you include this parameter, the value must be a JSON object. A JSON array is not supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     feature: "FeatureName", # required
    #     entity_id: "EntityId", # required
    #     evaluation_context: "JsonValue"
    #   }
    #   options = {}
    #   response = client.evaluate_feature(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     variation: "String",
    #     value: {
    #       # One of:
    #       bool_value: false,
    #       string_value: "String",
    #       long_value: 1,
    #       double_value: 1.0
    #     },
    #     reason: "String",
    #     details: "JsonValue"
    #   }
    # @return [Types::EvaluateFeatureOutput]
    def evaluate_feature(params = {}, options = {})
      request = build_request(:evaluate_feature, params)
      request.send_request(options)
    end

    # <p>Returns the details about one experiment. You must already know the 
    #       experiment name. To retrieve a list of experiments in your account, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListExperiments.html">ListExperiments</a>.</p>
    # @param [Hash, Types::GetExperimentInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the experiment.</p>
    # @option params [String] :experiment
    #   <p>The name of the experiment that you want to see the details of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     experiment: "ExperimentName", # required
    #   }
    #   options = {}
    #   response = client.get_experiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiment: {
    #       arn: "ExperimentArn", # required
    #       name: "ExperimentName", # required
    #       project: "ProjectArn",
    #       status: "ExperimentStatus", # required
    #       status_reason: "Description",
    #       description: "Description",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       schedule: {
    #         analysis_complete_time: Time.now
    #       },
    #       execution: {
    #         started_time: Time.now,
    #         ended_time: Time.now
    #       },
    #       treatments: [
    #         {
    #           name: "TreatmentName", # required
    #           description: "Description",
    #           feature_variations: {
    #             "FeatureName" => "VariationName"
    #           }
    #         }
    #       ],
    #       metric_goals: [
    #         {
    #           metric_definition: { # required
    #             name: "CwDimensionSafeName",
    #             entity_id_key: "JsonPath",
    #             value_key: "JsonPath",
    #             event_pattern: "JsonValue",
    #             unit_label: "MetricUnitLabel"
    #           },
    #           desired_change: "ChangeDirectionEnum"
    #         }
    #       ],
    #       randomization_salt: "RandomizationSalt",
    #       sampling_rate: 1,
    #       segment: "SegmentArn",
    #       type: "ExperimentType", # required
    #       online_ab_definition: {
    #         control_treatment_name: "TreatmentName",
    #         treatment_weights: {
    #           "TreatmentName" => 1
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetExperimentOutput]
    def get_experiment(params = {}, options = {})
      request = build_request(:get_experiment, params)
      request.send_request(options)
    end

    # <p>Retrieves the results of a running or completed experiment. No results are available until
    #        there have been 100 events for each variation and at least 10 minutes have passed since the start of the experiment.
    #        To increase the statistical power, Evidently performs an additional offline p-value analysis at the end of the experiment.
    #        Offline p-value analysis can detect statistical significance in some cases where the anytime p-values used during 
    #        the experiment do not find statistical significance.</p>
    #          <p>Experiment
    #        results are available up to 63 days after the start of the experiment. They are not available after that because
    #        of CloudWatch data retention policies.</p>
    # @param [Hash, Types::GetExperimentResultsInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the experiment that you want to see the results of.</p>
    # @option params [String] :experiment
    #   <p>The name of the experiment to retrieve the results of.</p>
    # @option params [Time] :start_time
    #   <p>The date and time that the experiment started.</p>
    # @option params [Time] :end_time
    #   <p>The date and time that the experiment ended, if it is completed. This must be no longer than 30 days 
    #         after the experiment start time.</p>
    # @option params [Array<String>] :metric_names
    #   <p>The names of the experiment metrics that you want to see the results of.</p>
    # @option params [Array<String>] :treatment_names
    #   <p>The names of the experiment treatments that you want to see the results for.</p>
    # @option params [String] :base_stat
    #   <p>The statistic used to calculate experiment results. Currently the only valid value is <code>mean</code>, 
    #         which uses the mean of the collected values as the statistic.</p>
    # @option params [Array<String>] :result_stats
    #   <p>The statistics that you want to see in the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PValue</code> specifies to use p-values for the results. A p-value is used in hypothesis
    #             testing to measure how often you are willing to make a mistake in rejecting the null
    #             hypothesis. A general practice is to reject the null hypothesis and declare that the
    #             results are statistically significant when the p-value is less than 0.05.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfidenceInterval</code> specifies a confidence interval for the results. The
    #             confidence interval represents the range of values for the chosen metric that is likely to
    #             contain the true difference between the <code>baseStat</code> of a variation and the
    #             baseline. Evidently returns the 95% confidence interval. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TreatmentEffect</code> is the difference in the statistic specified by the
    #               <code>baseStat</code> parameter between each variation and the default variation. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BaseStat</code> returns the statistical values collected for the metric for each
    #             variation. The statistic uses the same statistic specified in the <code>baseStat</code>
    #             parameter. Therefore, if <code>baseStat</code> is <code>mean</code>, this returns the mean
    #             of the values collected for each variation.</p>
    #               </li>
    #            </ul>
    # @option params [Array<String>] :report_names
    #   <p>The names of the report types that you want to see. Currently, <code>BayesianInference</code>
    #          is the only valid value.</p>
    # @option params [Integer] :period
    #   <p>In seconds, the amount of time to aggregate results together. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     experiment: "ExperimentName", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     metric_names: ["CwDimensionSafeName"], # required
    #     treatment_names: ["TreatmentName"], # required
    #     base_stat: "ExperimentBaseStat",
    #     result_stats: ["ExperimentResultRequestType"],
    #     report_names: ["ExperimentReportName"],
    #     period: 1
    #   }
    #   options = {}
    #   response = client.get_experiment_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results_data: [
    #       {
    #         metric_name: "CwDimensionSafeName",
    #         treatment_name: "TreatmentName",
    #         result_stat: "ExperimentResultResponseType",
    #         values: [1.0]
    #       }
    #     ],
    #     reports: [
    #       {
    #         metric_name: "CwDimensionSafeName",
    #         treatment_name: "TreatmentName",
    #         report_name: "ExperimentReportName",
    #         content: "JsonValue"
    #       }
    #     ],
    #     timestamps: [Time.now],
    #     details: "String"
    #   }
    # @return [Types::GetExperimentResultsOutput]
    def get_experiment_results(params = {}, options = {})
      request = build_request(:get_experiment_results, params)
      request.send_request(options)
    end

    # <p>Returns the details about one feature. You must already know the feature name. To
    #       retrieve a list of features in your account, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListFeatures.html">ListFeatures</a>.</p>
    # @param [Hash, Types::GetFeatureInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the feature.</p>
    # @option params [String] :feature
    #   <p>The name of the feature that you want to retrieve information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     feature: "FeatureName", # required
    #   }
    #   options = {}
    #   response = client.get_feature(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     feature: { # required
    #       arn: "FeatureArn", # required
    #       name: "FeatureName", # required
    #       project: "ProjectArn",
    #       status: "FeatureStatus", # required
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       description: "Description",
    #       evaluation_strategy: "FeatureEvaluationStrategy", # required
    #       value_type: "VariationValueType", # required
    #       variations: [ # required
    #         {
    #           name: "VariationName",
    #           value: {
    #             # One of:
    #             bool_value: false,
    #             string_value: "String",
    #             long_value: 1,
    #             double_value: 1.0
    #           }
    #         }
    #       ],
    #       default_variation: "VariationName",
    #       evaluation_rules: [
    #         {
    #           name: "RuleName",
    #           type: "RuleType", # required
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       entity_overrides: {
    #         "EntityId" => "VariationName"
    #       }
    #     }
    #   }
    # @return [Types::GetFeatureOutput]
    def get_feature(params = {}, options = {})
      request = build_request(:get_feature, params)
      request.send_request(options)
    end

    # <p>Returns the details about one launch. You must already know the 
    #        launch name. To retrieve a list of launches in your account, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListLaunches.html">ListLaunches</a>.</p>
    # @param [Hash, Types::GetLaunchInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the launch.</p>
    # @option params [String] :launch
    #   <p>The name of the launch that you want to see the details of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     launch: "LaunchName", # required
    #   }
    #   options = {}
    #   response = client.get_launch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     launch: {
    #       arn: "LaunchArn", # required
    #       name: "LaunchName", # required
    #       project: "ProjectRef",
    #       status: "LaunchStatus", # required
    #       status_reason: "Description",
    #       description: "Description",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       execution: {
    #         started_time: Time.now,
    #         ended_time: Time.now
    #       },
    #       groups: [
    #         {
    #           name: "GroupName", # required
    #           description: "Description",
    #           feature_variations: { # required
    #             "FeatureName" => "VariationName"
    #           }
    #         }
    #       ],
    #       metric_monitors: [
    #         {
    #           metric_definition: { # required
    #             name: "CwDimensionSafeName",
    #             entity_id_key: "JsonPath",
    #             value_key: "JsonPath",
    #             event_pattern: "JsonValue",
    #             unit_label: "MetricUnitLabel"
    #           }
    #         }
    #       ],
    #       randomization_salt: "RandomizationSalt",
    #       type: "LaunchType", # required
    #       scheduled_splits_definition: {
    #         steps: [
    #           {
    #             start_time: Time.now, # required
    #             group_weights: {
    #               "GroupName" => 1
    #             },
    #             segment_overrides: [
    #               {
    #                 segment: "SegmentRef", # required
    #                 evaluation_order: 1, # required
    #                 weights: { # required
    #                   "GroupName" => 1
    #                 }
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetLaunchOutput]
    def get_launch(params = {}, options = {})
      request = build_request(:get_launch, params)
      request.send_request(options)
    end

    # <p>Returns the details about one launch. You must already know the 
    #        project name. To retrieve a list of projects in your account, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListProjects.html">ListProjects</a>.</p>
    # @param [Hash, Types::GetProjectInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that you want to see the details of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #   }
    #   options = {}
    #   response = client.get_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project: { # required
    #       arn: "ProjectArn", # required
    #       name: "ProjectName", # required
    #       status: "ProjectStatus", # required
    #       description: "Description",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       feature_count: 1,
    #       launch_count: 1,
    #       active_launch_count: 1,
    #       experiment_count: 1,
    #       active_experiment_count: 1,
    #       data_delivery: {
    #         s3_destination: {
    #           bucket: "S3BucketSafeName",
    #           prefix: "S3PrefixSafeName"
    #         },
    #         cloud_watch_logs: {
    #           log_group: "CwLogGroupSafeName"
    #         }
    #       },
    #       app_config_resource: {
    #         application_id: "AppConfigResourceId", # required
    #         environment_id: "AppConfigResourceId", # required
    #         configuration_profile_id: "AppConfigResourceId", # required
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetProjectOutput]
    def get_project(params = {}, options = {})
      request = build_request(:get_project, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified segment. Specify the segment you want to view
    #     by specifying its ARN.</p>
    # @param [Hash, Types::GetSegmentInput] params
    # @option params [String] :segment
    #   <p>The ARN of the segment to return information for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     segment: "SegmentRef", # required
    #   }
    #   options = {}
    #   response = client.get_segment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segment: { # required
    #       arn: "SegmentArn", # required
    #       name: "SegmentName", # required
    #       pattern: "SegmentPattern", # required
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       description: "Description",
    #       experiment_count: 1,
    #       launch_count: 1,
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::GetSegmentOutput]
    def get_segment(params = {}, options = {})
      request = build_request(:get_segment, params)
      request.send_request(options)
    end

    # <p>Returns configuration details about all the experiments in the specified project.</p>
    # @param [Hash, Types::ListExperimentsInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project to return the experiment list from.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous 
    #          <code>ListExperiments</code> operation.</p>
    # @option params [String] :status
    #   <p>Use this optional parameter to limit the returned results to only the experiments with the status that you specify here.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ExperimentStatus"
    #   }
    #   options = {}
    #   response = client.list_experiments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiments: [
    #       {
    #         arn: "ExperimentArn", # required
    #         name: "ExperimentName", # required
    #         project: "ProjectArn",
    #         status: "ExperimentStatus", # required
    #         status_reason: "Description",
    #         description: "Description",
    #         created_time: Time.now, # required
    #         last_updated_time: Time.now, # required
    #         schedule: {
    #           analysis_complete_time: Time.now
    #         },
    #         execution: {
    #           started_time: Time.now,
    #           ended_time: Time.now
    #         },
    #         treatments: [
    #           {
    #             name: "TreatmentName", # required
    #             description: "Description",
    #             feature_variations: {
    #               "FeatureName" => "VariationName"
    #             }
    #           }
    #         ],
    #         metric_goals: [
    #           {
    #             metric_definition: { # required
    #               name: "CwDimensionSafeName",
    #               entity_id_key: "JsonPath",
    #               value_key: "JsonPath",
    #               event_pattern: "JsonValue",
    #               unit_label: "MetricUnitLabel"
    #             },
    #             desired_change: "ChangeDirectionEnum"
    #           }
    #         ],
    #         randomization_salt: "RandomizationSalt",
    #         sampling_rate: 1,
    #         segment: "SegmentArn",
    #         type: "ExperimentType", # required
    #         online_ab_definition: {
    #           control_treatment_name: "TreatmentName",
    #           treatment_weights: {
    #             "TreatmentName" => 1
    #           }
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListExperimentsOutput]
    def list_experiments(params = {}, options = {})
      request = build_request(:list_experiments, params)
      request.send_request(options)
    end

    # <p>Returns configuration details about all the features in the specified project.</p>
    # @param [Hash, Types::ListFeaturesInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project to return the feature list from.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous 
    #          <code>ListFeatures</code> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_features(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     features: [
    #       {
    #         arn: "Arn", # required
    #         name: "FeatureName", # required
    #         project: "ProjectRef",
    #         status: "FeatureStatus", # required
    #         created_time: Time.now, # required
    #         last_updated_time: Time.now, # required
    #         evaluation_strategy: "FeatureEvaluationStrategy", # required
    #         evaluation_rules: [
    #           {
    #             name: "RuleName",
    #             type: "RuleType", # required
    #           }
    #         ],
    #         default_variation: "VariationName",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListFeaturesOutput]
    def list_features(params = {}, options = {})
      request = build_request(:list_features, params)
      request.send_request(options)
    end

    # <p>Returns configuration details about all the launches in the specified project.</p>
    # @param [Hash, Types::ListLaunchesInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project to return the launch list from.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous 
    #          <code>ListLaunches</code> operation.</p>
    # @option params [String] :status
    #   <p>Use this optional parameter to limit the returned results to only the launches with the status that you specify here.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "LaunchStatus"
    #   }
    #   options = {}
    #   response = client.list_launches(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     launches: [
    #       {
    #         arn: "LaunchArn", # required
    #         name: "LaunchName", # required
    #         project: "ProjectRef",
    #         status: "LaunchStatus", # required
    #         status_reason: "Description",
    #         description: "Description",
    #         created_time: Time.now, # required
    #         last_updated_time: Time.now, # required
    #         execution: {
    #           started_time: Time.now,
    #           ended_time: Time.now
    #         },
    #         groups: [
    #           {
    #             name: "GroupName", # required
    #             description: "Description",
    #             feature_variations: { # required
    #               "FeatureName" => "VariationName"
    #             }
    #           }
    #         ],
    #         metric_monitors: [
    #           {
    #             metric_definition: { # required
    #               name: "CwDimensionSafeName",
    #               entity_id_key: "JsonPath",
    #               value_key: "JsonPath",
    #               event_pattern: "JsonValue",
    #               unit_label: "MetricUnitLabel"
    #             }
    #           }
    #         ],
    #         randomization_salt: "RandomizationSalt",
    #         type: "LaunchType", # required
    #         scheduled_splits_definition: {
    #           steps: [
    #             {
    #               start_time: Time.now, # required
    #               group_weights: {
    #                 "GroupName" => 1
    #               },
    #               segment_overrides: [
    #                 {
    #                   segment: "SegmentRef", # required
    #                   evaluation_order: 1, # required
    #                   weights: { # required
    #                     "GroupName" => 1
    #                   }
    #                 }
    #               ]
    #             }
    #           ]
    #         },
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListLaunchesOutput]
    def list_launches(params = {}, options = {})
      request = build_request(:list_launches, params)
      request.send_request(options)
    end

    # <p>Returns configuration details about all the projects in the current Region in your
    #       account.</p>
    # @param [Hash, Types::ListProjectsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous 
    #          <code>ListProjects</code> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     projects: [
    #       {
    #         arn: "ProjectArn", # required
    #         name: "ProjectName", # required
    #         status: "ProjectStatus", # required
    #         description: "Description",
    #         created_time: Time.now, # required
    #         last_updated_time: Time.now, # required
    #         feature_count: 1,
    #         launch_count: 1,
    #         active_launch_count: 1,
    #         experiment_count: 1,
    #         active_experiment_count: 1,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProjectsOutput]
    def list_projects(params = {}, options = {})
      request = build_request(:list_projects, params)
      request.send_request(options)
    end

    # <p>Use this operation to find which experiments or launches are using a specified segment.</p>
    # @param [Hash, Types::ListSegmentReferencesInput] params
    # @option params [String] :segment
    #   <p>The ARN of the segment that you want to view information for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If you omit this, the default of 50 is used.</p>
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous 
    #         <code>ListSegmentReferences</code> operation.</p>
    # @option params [String] :type
    #   <p>Specifies whether to return information about launches or experiments that use this segment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     segment: "SegmentRef", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     type: "SegmentReferenceResourceType", # required
    #   }
    #   options = {}
    #   response = client.list_segment_references(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     referenced_by: [
    #       {
    #         name: "String", # required
    #         type: "String", # required
    #         arn: "String",
    #         status: "String",
    #         start_time: "String",
    #         end_time: "String",
    #         last_updated_on: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSegmentReferencesOutput]
    def list_segment_references(params = {}, options = {})
      request = build_request(:list_segment_references, params)
      request.send_request(options)
    end

    # <p>Returns a list of audience segments that you have created in your account in this Region.</p>
    # @param [Hash, Types::ListSegmentsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If you omit this, the default of 50 is used.</p>
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous 
    #         <code>ListSegments</code> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_segments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     segments: [
    #       {
    #         arn: "SegmentArn", # required
    #         name: "SegmentName", # required
    #         pattern: "SegmentPattern", # required
    #         created_time: Time.now, # required
    #         last_updated_time: Time.now, # required
    #         description: "Description",
    #         experiment_count: 1,
    #         launch_count: 1,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSegmentsOutput]
    def list_segments(params = {}, options = {})
      request = build_request(:list_segments, params)
      request.send_request(options)
    end

    # <p>Displays the tags associated with an Evidently resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you want to see the tags of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Sends performance events to Evidently. These events can be used to evaluate a launch or
    #       an experiment.</p>
    # @param [Hash, Types::PutProjectEventsInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project to write the events to.</p>
    # @option params [Array<Types::Event>] :events
    #   <p>An array of event structures that contain the performance data that is being sent to
    #         Evidently.</p>
    # @example Post evaluation Event for Project
    #   
    #   params = {
    #     project: "ExampleProject",
    #     events: [
    #       {
    #         timestamp: Time.parse(1627580583),
    #         type: "aws.evidently.evaluation",
    #         data: "{\"feature\":\"ExampleFeature\",\"entityId\":\"username@email.com\",\"entityAttributes\":{\"browser\":{\"s\":\"Chrome\"}},\"variation\":\"variationA\",\"type\":\"EXPERIMENT_RULE_MATCH\",\"details\":{\"experiment\":\"Jan2020_landing_page_banner\",\"treatment\":\"control\",\"salt\":\"ADJNC1237ASDNU\"}}"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_project_events(params, options)
    #   response.to_h #=>
    #   {
    #     failed_event_count: 0,
    #     event_results: [
    #       {
    #         event_id: "e55c1f5f-309b-440e-b0d8-64506987c20f",
    #         error_code: "null",
    #         error_message: "null"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     events: [ # required
    #       {
    #         timestamp: Time.now, # required
    #         type: "EventType", # required
    #         data: "JsonValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_project_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_event_count: 1,
    #     event_results: [
    #       {
    #         event_id: "Uuid",
    #         error_code: "ErrorCodeEnum",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::PutProjectEventsOutput]
    def put_project_events(params = {}, options = {})
      request = build_request(:put_project_events, params)
      request.send_request(options)
    end

    # <p>Starts an existing experiment. To create an experiment, 
    #         use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateExperiment.html">CreateExperiment</a>.</p>
    # @param [Hash, Types::StartExperimentInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the experiment to start.</p>
    # @option params [String] :experiment
    #   <p>The name of the experiment to start.</p>
    # @option params [Time] :analysis_complete_time
    #   <p>The date and time to end the experiment. This must be no more than 30 days after
    #         the experiment starts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     experiment: "ExperimentName", # required
    #     analysis_complete_time: Time.now, # required
    #   }
    #   options = {}
    #   response = client.start_experiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     started_time: Time.now
    #   }
    # @return [Types::StartExperimentOutput]
    def start_experiment(params = {}, options = {})
      request = build_request(:start_experiment, params)
      request.send_request(options)
    end

    # <p>Starts an existing launch. To create a launch, 
    #        use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateLaunch.html">CreateLaunch</a>.</p>
    # @param [Hash, Types::StartLaunchInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the launch to start.</p>
    # @option params [String] :launch
    #   <p>The name of the launch to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     launch: "LaunchName", # required
    #   }
    #   options = {}
    #   response = client.start_launch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     launch: { # required
    #       arn: "LaunchArn", # required
    #       name: "LaunchName", # required
    #       project: "ProjectRef",
    #       status: "LaunchStatus", # required
    #       status_reason: "Description",
    #       description: "Description",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       execution: {
    #         started_time: Time.now,
    #         ended_time: Time.now
    #       },
    #       groups: [
    #         {
    #           name: "GroupName", # required
    #           description: "Description",
    #           feature_variations: { # required
    #             "FeatureName" => "VariationName"
    #           }
    #         }
    #       ],
    #       metric_monitors: [
    #         {
    #           metric_definition: { # required
    #             name: "CwDimensionSafeName",
    #             entity_id_key: "JsonPath",
    #             value_key: "JsonPath",
    #             event_pattern: "JsonValue",
    #             unit_label: "MetricUnitLabel"
    #           }
    #         }
    #       ],
    #       randomization_salt: "RandomizationSalt",
    #       type: "LaunchType", # required
    #       scheduled_splits_definition: {
    #         steps: [
    #           {
    #             start_time: Time.now, # required
    #             group_weights: {
    #               "GroupName" => 1
    #             },
    #             segment_overrides: [
    #               {
    #                 segment: "SegmentRef", # required
    #                 evaluation_order: 1, # required
    #                 weights: { # required
    #                   "GroupName" => 1
    #                 }
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::StartLaunchOutput]
    def start_launch(params = {}, options = {})
      request = build_request(:start_launch, params)
      request.send_request(options)
    end

    # <p>Stops an experiment that is currently running. If you stop an experiment, you can't
    #       resume it or restart it.</p>
    # @param [Hash, Types::StopExperimentInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the experiment to stop.</p>
    # @option params [String] :experiment
    #   <p>The name of the experiment to stop.</p>
    # @option params [String] :desired_state
    #   <p>Specify whether the experiment is to be considered <code>COMPLETED</code> or 
    #         <code>CANCELLED</code> after it stops.</p>
    # @option params [String] :reason
    #   <p>A string that describes why you are stopping the experiment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     experiment: "ExperimentName", # required
    #     desired_state: "ExperimentStopDesiredState",
    #     reason: "Description"
    #   }
    #   options = {}
    #   response = client.stop_experiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ended_time: Time.now
    #   }
    # @return [Types::StopExperimentOutput]
    def stop_experiment(params = {}, options = {})
      request = build_request(:stop_experiment, params)
      request.send_request(options)
    end

    # <p>Stops a launch that is currently running. After you stop a launch, you will not be able to resume it or restart it. 
    #        Also, it 
    #        will not be evaluated as a rule for traffic allocation, and the traffic that was allocated to the launch
    #        will instead be available to the feature's experiment, if there is one. Otherwise, all traffic
    #        will be served the default variation after the launch is stopped.</p>
    # @param [Hash, Types::StopLaunchInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the launch that you want to stop.</p>
    # @option params [String] :launch
    #   <p>The name of the launch to stop.</p>
    # @option params [String] :desired_state
    #   <p>Specify whether to consider the launch as <code>COMPLETED</code> or
    #           <code>CANCELLED</code> after it stops.</p>
    # @option params [String] :reason
    #   <p>A string that describes why you are stopping the launch.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     launch: "LaunchName", # required
    #     desired_state: "LaunchStopDesiredState",
    #     reason: "Description"
    #   }
    #   options = {}
    #   response = client.stop_launch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ended_time: Time.now
    #   }
    # @return [Types::StopLaunchOutput]
    def stop_launch(params = {}, options = {})
      request = build_request(:stop_launch, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified CloudWatch Evidently resource. Projects,
    #        features, launches, and experiments can be tagged.</p>
    #          <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #        permissions by granting a user
    #        permission to access or change only resources with certain tag values.</p>
    #          <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #          <p>You can use the <code>TagResource</code> action with a resource that already has tags. 
    #        If you specify a new tag key for the resource, 
    #        this tag is appended to the list of tags associated
    #        with the alarm. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces
    #        the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a resource.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch Evidently resource that you're adding tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Use this operation to test a rules pattern that you plan to use to create an audience segment. 
    #       For more information about segments, see <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateSegment.html">CreateSegment</a>.</p>
    # @param [Hash, Types::TestSegmentPatternInput] params
    # @option params [String] :pattern
    #   <p>The pattern to test.</p>
    # @option params [String] :payload
    #   <p>A sample <code>evaluationContext</code> JSON block to test against the specified pattern.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pattern: "SegmentPattern", # required
    #     payload: "JsonValue", # required
    #   }
    #   options = {}
    #   response = client.test_segment_pattern(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     match: false, # required
    #   }
    # @return [Types::TestSegmentPatternOutput]
    def test_segment_pattern(params = {}, options = {})
      request = build_request(:test_segment_pattern, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch Evidently resource that you're removing tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an Evidently experiment. </p>
    #          <p>Don't use this operation to update an experiment's tag. Instead, use 
    #       <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html">TagResource</a>. </p>
    # @param [Hash, Types::UpdateExperimentInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the experiment that you want to update.</p>
    # @option params [String] :experiment
    #   <p>The name of the experiment to update.</p>
    # @option params [String] :description
    #   <p>An optional description of the experiment.</p>
    # @option params [Array<Types::TreatmentConfig>] :treatments
    #   <p>An array of structures that define the variations being tested in the experiment.</p>
    # @option params [Array<Types::MetricGoalConfig>] :metric_goals
    #   <p>An array of structures that defines the metrics used for the experiment, and whether a higher
    #         or lower value for each metric is the goal.</p>
    # @option params [String] :randomization_salt
    #   <p>When Evidently assigns a particular user session to an experiment, it must use a randomization ID
    #         to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #         and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #         the experiment name as the <code>randomizationSalt</code>.</p>
    # @option params [Integer] :sampling_rate
    #   <p>The portion of the available audience that you want to allocate to this experiment, in thousandths of a percent. The available audience
    #         is the total audience minus the audience that you have allocated to overrides or current launches of
    #         this feature.</p>
    #            <p>This is represented in thousandths of a percent. For example, specify 20,000 to allocate 20% of the available audience.</p>
    # @option params [String] :segment
    #   <p>Adds an audience <i>segment</i> to an experiment. When a segment is used in an experiment, only
    #         user sessions that match the segment pattern are used in the experiment. You can't use this parameter if the 
    #         experiment is currently
    #         running.</p>
    # @option params [Boolean] :remove_segment
    #   <p>Removes a segment from being used in an experiment. You can't use this parameter if the experiment is currently
    #         running.</p>
    # @option params [Types::OnlineAbConfig] :online_ab_config
    #   <p>A structure that contains the configuration of which variation o use as the "control"
    #         version. The "control" version is used for comparison with other variations. This structure
    #         also specifies how much experiment traffic is allocated to each variation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     experiment: "ExperimentName", # required
    #     description: "Description",
    #     treatments: [
    #       {
    #         name: "TreatmentName", # required
    #         description: "Description",
    #         feature: "FeatureName", # required
    #         variation: "VariationName", # required
    #       }
    #     ],
    #     metric_goals: [
    #       {
    #         metric_definition: { # required
    #           name: "CwDimensionSafeName", # required
    #           entity_id_key: "JsonPath", # required
    #           value_key: "JsonPath", # required
    #           event_pattern: "JsonValue",
    #           unit_label: "MetricUnitLabel"
    #         },
    #         desired_change: "ChangeDirectionEnum"
    #       }
    #     ],
    #     randomization_salt: "RandomizationSalt",
    #     sampling_rate: 1,
    #     segment: "SegmentRef",
    #     remove_segment: false,
    #     online_ab_config: {
    #       control_treatment_name: "TreatmentName",
    #       treatment_weights: {
    #         "TreatmentName" => 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_experiment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     experiment: { # required
    #       arn: "ExperimentArn", # required
    #       name: "ExperimentName", # required
    #       project: "ProjectArn",
    #       status: "ExperimentStatus", # required
    #       status_reason: "Description",
    #       description: "Description",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       schedule: {
    #         analysis_complete_time: Time.now
    #       },
    #       execution: {
    #         started_time: Time.now,
    #         ended_time: Time.now
    #       },
    #       treatments: [
    #         {
    #           name: "TreatmentName", # required
    #           description: "Description",
    #           feature_variations: {
    #             "FeatureName" => "VariationName"
    #           }
    #         }
    #       ],
    #       metric_goals: [
    #         {
    #           metric_definition: { # required
    #             name: "CwDimensionSafeName",
    #             entity_id_key: "JsonPath",
    #             value_key: "JsonPath",
    #             event_pattern: "JsonValue",
    #             unit_label: "MetricUnitLabel"
    #           },
    #           desired_change: "ChangeDirectionEnum"
    #         }
    #       ],
    #       randomization_salt: "RandomizationSalt",
    #       sampling_rate: 1,
    #       segment: "SegmentArn",
    #       type: "ExperimentType", # required
    #       online_ab_definition: {
    #         control_treatment_name: "TreatmentName",
    #         treatment_weights: {
    #           "TreatmentName" => 1
    #         }
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateExperimentOutput]
    def update_experiment(params = {}, options = {})
      request = build_request(:update_experiment, params)
      request.send_request(options)
    end

    # <p>Updates an existing feature.</p>
    #          <p>You can't use this operation to update the tags of an existing feature. Instead, use 
    #       <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html">TagResource</a>. </p>
    # @param [Hash, Types::UpdateFeatureInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the feature to be updated.</p>
    # @option params [String] :feature
    #   <p>The name of the feature to be updated.</p>
    # @option params [String] :evaluation_strategy
    #   <p>Specify <code>ALL_RULES</code> to activate the traffic allocation specified by any ongoing
    #         launches or experiments. Specify <code>DEFAULT_VARIATION</code> to serve the default variation
    #         to all users instead.</p>
    # @option params [String] :description
    #   <p>An optional description of the feature.</p>
    # @option params [Array<Types::VariationConfig>] :add_or_update_variations
    #   <p>To update variation configurations for this feature, or add new ones, specify this structure.
    #         In this array, include any variations that you want to add or update. If the array includes a variation name that
    #         already exists for this feature, it is updated. If it includes a new variation name, it is added
    #         as a new variation.</p>
    # @option params [Array<String>] :remove_variations
    #   <p>Removes a variation from the feature. If the variation you specify doesn't exist, then this 
    #       makes no change and does not report an error.</p>
    #            <p>This operation fails if you try to remove a variation that is part of an 
    #       ongoing launch or experiment.</p>
    # @option params [String] :default_variation
    #   <p>The name of the variation to use as the default variation. The default
    #         variation is served to users who are not allocated to any ongoing launches
    #         or experiments of this feature.</p>
    # @option params [Hash<String, String>] :entity_overrides
    #   <p>Specified users that should always be served a specific variation of a feature. Each user
    #         is specified by a key-value pair . For each key, specify a user by entering their user ID,
    #         account ID, or some other identifier. For the value, specify the name of the variation that
    #         they are to be served.</p>
    #            <p>This parameter is limited to 2500 overrides or a total of 40KB. The 40KB limit includes an overhead of 6 bytes
    #         per override.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     feature: "FeatureName", # required
    #     evaluation_strategy: "FeatureEvaluationStrategy",
    #     description: "Description",
    #     add_or_update_variations: [
    #       {
    #         name: "VariationName", # required
    #         value: { # required
    #           # One of:
    #           bool_value: false,
    #           string_value: "String",
    #           long_value: 1,
    #           double_value: 1.0
    #         }
    #       }
    #     ],
    #     remove_variations: ["VariationName"],
    #     default_variation: "VariationName",
    #     entity_overrides: {
    #       "EntityId" => "VariationName"
    #     }
    #   }
    #   options = {}
    #   response = client.update_feature(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     feature: { # required
    #       arn: "FeatureArn", # required
    #       name: "FeatureName", # required
    #       project: "ProjectArn",
    #       status: "FeatureStatus", # required
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       description: "Description",
    #       evaluation_strategy: "FeatureEvaluationStrategy", # required
    #       value_type: "VariationValueType", # required
    #       variations: [ # required
    #         {
    #           name: "VariationName",
    #           value: {
    #             # One of:
    #             bool_value: false,
    #             string_value: "String",
    #             long_value: 1,
    #             double_value: 1.0
    #           }
    #         }
    #       ],
    #       default_variation: "VariationName",
    #       evaluation_rules: [
    #         {
    #           name: "RuleName",
    #           type: "RuleType", # required
    #         }
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue"
    #       },
    #       entity_overrides: {
    #         "EntityId" => "VariationName"
    #       }
    #     }
    #   }
    # @return [Types::UpdateFeatureOutput]
    def update_feature(params = {}, options = {})
      request = build_request(:update_feature, params)
      request.send_request(options)
    end

    # <p>Updates a launch of a given feature. </p>
    #          <p>Don't use this operation to update the tags of an existing launch. Instead, use 
    #       <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html">TagResource</a>. </p>
    # @param [Hash, Types::UpdateLaunchInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that contains the launch that you want to update.</p>
    # @option params [String] :launch
    #   <p>The name of the launch that is to be updated.</p>
    # @option params [String] :description
    #   <p>An optional description for the launch.</p>
    # @option params [Array<Types::LaunchGroupConfig>] :groups
    #   <p>An array of structures that contains the feature and variations that are to be used for
    #         the launch.</p>
    # @option params [Array<Types::MetricMonitorConfig>] :metric_monitors
    #   <p>An array of structures that define the metrics that will be used to monitor 
    #       the launch performance.</p>
    # @option params [String] :randomization_salt
    #   <p>When Evidently assigns a particular user session to a launch, it must use a randomization ID
    #         to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #         and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #         the launch name as the <code>randomizationSalt</code>.</p>
    # @option params [Types::ScheduledSplitsLaunchConfig] :scheduled_splits_config
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     launch: "LaunchName", # required
    #     description: "Description",
    #     groups: [
    #       {
    #         name: "GroupName", # required
    #         description: "Description",
    #         feature: "FeatureName", # required
    #         variation: "VariationName", # required
    #       }
    #     ],
    #     metric_monitors: [
    #       {
    #         metric_definition: { # required
    #           name: "CwDimensionSafeName", # required
    #           entity_id_key: "JsonPath", # required
    #           value_key: "JsonPath", # required
    #           event_pattern: "JsonValue",
    #           unit_label: "MetricUnitLabel"
    #         }
    #       }
    #     ],
    #     randomization_salt: "RandomizationSalt",
    #     scheduled_splits_config: {
    #       steps: [ # required
    #         {
    #           start_time: Time.now, # required
    #           group_weights: { # required
    #             "GroupName" => 1
    #           },
    #           segment_overrides: [
    #             {
    #               segment: "SegmentRef", # required
    #               evaluation_order: 1, # required
    #               weights: { # required
    #                 "GroupName" => 1
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_launch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     launch: { # required
    #       arn: "LaunchArn", # required
    #       name: "LaunchName", # required
    #       project: "ProjectRef",
    #       status: "LaunchStatus", # required
    #       status_reason: "Description",
    #       description: "Description",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       execution: {
    #         started_time: Time.now,
    #         ended_time: Time.now
    #       },
    #       groups: [
    #         {
    #           name: "GroupName", # required
    #           description: "Description",
    #           feature_variations: { # required
    #             "FeatureName" => "VariationName"
    #           }
    #         }
    #       ],
    #       metric_monitors: [
    #         {
    #           metric_definition: { # required
    #             name: "CwDimensionSafeName",
    #             entity_id_key: "JsonPath",
    #             value_key: "JsonPath",
    #             event_pattern: "JsonValue",
    #             unit_label: "MetricUnitLabel"
    #           }
    #         }
    #       ],
    #       randomization_salt: "RandomizationSalt",
    #       type: "LaunchType", # required
    #       scheduled_splits_definition: {
    #         steps: [
    #           {
    #             start_time: Time.now, # required
    #             group_weights: {
    #               "GroupName" => 1
    #             },
    #             segment_overrides: [
    #               {
    #                 segment: "SegmentRef", # required
    #                 evaluation_order: 1, # required
    #                 weights: { # required
    #                   "GroupName" => 1
    #                 }
    #               }
    #             ]
    #           }
    #         ]
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateLaunchOutput]
    def update_launch(params = {}, options = {})
      request = build_request(:update_launch, params)
      request.send_request(options)
    end

    # <p>Updates the description of an existing project.</p>
    #          <p>To create a new project, use <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html">CreateProject</a>.</p>
    #          <p>Don't use this operation to update the data storage options of a project. Instead, use 
    #        <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProjectDataDelivery.html">UpdateProjectDataDelivery</a>. </p>
    #          <p>Don't use this operation to update the tags of a project. Instead, use 
    #        <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html">TagResource</a>. </p>
    # @param [Hash, Types::UpdateProjectInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project to update.</p>
    # @option params [Types::ProjectAppConfigResourceConfig] :app_config_resource
    #   <p>Use this parameter if the project will use client-side evaluation powered by AppConfig. Client-side
    #        evaluation allows your application to assign variations to user
    #        sessions locally instead of by calling the <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html">EvaluateFeature</a> operation. This 
    #        mitigates the latency and availability risks that come with an API call. allows
    #         you to</p>
    #            <p>This parameter is a structure that
    #         contains information about the AppConfig application that will be used for client-side evaluation.</p>
    # @option params [String] :description
    #   <p>An optional description of the project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     app_config_resource: {
    #       application_id: "AppConfigResourceId",
    #       environment_id: "AppConfigResourceId"
    #     },
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project: { # required
    #       arn: "ProjectArn", # required
    #       name: "ProjectName", # required
    #       status: "ProjectStatus", # required
    #       description: "Description",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       feature_count: 1,
    #       launch_count: 1,
    #       active_launch_count: 1,
    #       experiment_count: 1,
    #       active_experiment_count: 1,
    #       data_delivery: {
    #         s3_destination: {
    #           bucket: "S3BucketSafeName",
    #           prefix: "S3PrefixSafeName"
    #         },
    #         cloud_watch_logs: {
    #           log_group: "CwLogGroupSafeName"
    #         }
    #       },
    #       app_config_resource: {
    #         application_id: "AppConfigResourceId", # required
    #         environment_id: "AppConfigResourceId", # required
    #         configuration_profile_id: "AppConfigResourceId", # required
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateProjectOutput]
    def update_project(params = {}, options = {})
      request = build_request(:update_project, params)
      request.send_request(options)
    end

    # <p>Updates the data storage options for this project. If you store evaluation events, you an
    #       keep them and analyze them on your own. If you choose not to store evaluation events,
    #       Evidently deletes them after using them to produce metrics and other experiment results that
    #       you can view.</p>
    #          <p>You can't specify both <code>cloudWatchLogs</code> and <code>s3Destination</code> in the same operation.</p>
    # @param [Hash, Types::UpdateProjectDataDeliveryInput] params
    # @option params [String] :project
    #   <p>The name or ARN of the project that you want to modify the data storage options for.</p>
    # @option params [Types::S3DestinationConfig] :s3_destination
    #   <p>A structure containing the S3 bucket name and bucket prefix where you want to store evaluation events.</p>
    # @option params [Types::CloudWatchLogsDestinationConfig] :cloud_watch_logs
    #   <p>A structure containing the CloudWatch Logs log group where you want to store evaluation
    #         events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project: "ProjectRef", # required
    #     s3_destination: {
    #       bucket: "S3BucketSafeName",
    #       prefix: "S3PrefixSafeName"
    #     },
    #     cloud_watch_logs: {
    #       log_group: "CwLogGroupSafeName"
    #     }
    #   }
    #   options = {}
    #   response = client.update_project_data_delivery(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project: { # required
    #       arn: "ProjectArn", # required
    #       name: "ProjectName", # required
    #       status: "ProjectStatus", # required
    #       description: "Description",
    #       created_time: Time.now, # required
    #       last_updated_time: Time.now, # required
    #       feature_count: 1,
    #       launch_count: 1,
    #       active_launch_count: 1,
    #       experiment_count: 1,
    #       active_experiment_count: 1,
    #       data_delivery: {
    #         s3_destination: {
    #           bucket: "S3BucketSafeName",
    #           prefix: "S3PrefixSafeName"
    #         },
    #         cloud_watch_logs: {
    #           log_group: "CwLogGroupSafeName"
    #         }
    #       },
    #       app_config_resource: {
    #         application_id: "AppConfigResourceId", # required
    #         environment_id: "AppConfigResourceId", # required
    #         configuration_profile_id: "AppConfigResourceId", # required
    #       },
    #       tags: {
    #         "TagKey" => "TagValue"
    #       }
    #     }
    #   }
    # @return [Types::UpdateProjectDataDeliveryOutput]
    def update_project_data_delivery(params = {}, options = {})
      request = build_request(:update_project_data_delivery, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-evidently'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
