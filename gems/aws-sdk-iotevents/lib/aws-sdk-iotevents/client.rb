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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:iotevents)

module Aws::IoTEvents
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :iotevents

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
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
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

    # Creates a detector model.
    #
    # @option params [required, String] :detector_model_name
    #   The name of the detector model.
    #
    # @option params [required, Types::DetectorModelDefinition] :detector_model_definition
    #   Information that defines how the detectors operate.
    #
    # @option params [String] :detector_model_description
    #   A brief description of the detector model.
    #
    # @option params [String] :key
    #   The input attribute key used to identify a device or system in order
    #   to create a detector (an instance of the detector model) and then to
    #   route each input received to the appropriate detector (instance). This
    #   parameter uses a JSON-path expression to specify the attribute-value
    #   pair in the message payload of each input that is used to identify the
    #   device associated with the input.
    #
    # @option params [required, String] :role_arn
    #   The ARN of the role that grants permission to AWS IoT Events to
    #   perform its operations.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the detector model.
    #
    # @return [Types::CreateDetectorModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDetectorModelResponse#detector_model_configuration #detector_model_configuration} => Types::DetectorModelConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_detector_model({
    #     detector_model_name: "DetectorModelName", # required
    #     detector_model_definition: { # required
    #       states: [ # required
    #         {
    #           state_name: "StateName", # required
    #           on_input: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1, # required
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             transition_events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition", # required
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1, # required
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                   },
    #                 ],
    #                 next_state: "StateName", # required
    #               },
    #             ],
    #           },
    #           on_enter: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1, # required
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           on_exit: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1, # required
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #       initial_state_name: "StateName", # required
    #     },
    #     detector_model_description: "DetectorModelDescription",
    #     key: "AttributeJsonPath",
    #     role_arn: "AmazonResourceName", # required
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
    #   resp.detector_model_configuration.detector_model_name #=> String
    #   resp.detector_model_configuration.detector_model_version #=> String
    #   resp.detector_model_configuration.detector_model_description #=> String
    #   resp.detector_model_configuration.detector_model_arn #=> String
    #   resp.detector_model_configuration.role_arn #=> String
    #   resp.detector_model_configuration.creation_time #=> Time
    #   resp.detector_model_configuration.last_update_time #=> Time
    #   resp.detector_model_configuration.status #=> String, one of "ACTIVE", "ACTIVATING", "INACTIVE", "DEPRECATED", "DRAFT", "PAUSED", "FAILED"
    #   resp.detector_model_configuration.key #=> String
    #
    # @overload create_detector_model(params = {})
    # @param [Hash] params ({})
    def create_detector_model(params = {}, options = {})
      req = build_request(:create_detector_model, params)
      req.send_request(options)
    end

    # Creates an input.
    #
    # @option params [required, String] :input_name
    #   The name you want to give to the input.
    #
    # @option params [String] :input_description
    #   A brief description of the input.
    #
    # @option params [required, Types::InputDefinition] :input_definition
    #   The definition of the input.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Metadata which can be used to manage the input.
    #
    # @return [Types::CreateInputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInputResponse#input_configuration #input_configuration} => Types::InputConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_input({
    #     input_name: "InputName", # required
    #     input_description: "InputDescription",
    #     input_definition: { # required
    #       attributes: [ # required
    #         {
    #           json_path: "AttributeJsonPath", # required
    #         },
    #       ],
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
    #   resp.input_configuration.input_name #=> String
    #   resp.input_configuration.input_description #=> String
    #   resp.input_configuration.input_arn #=> String
    #   resp.input_configuration.creation_time #=> Time
    #   resp.input_configuration.last_update_time #=> Time
    #   resp.input_configuration.status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING"
    #
    # @overload create_input(params = {})
    # @param [Hash] params ({})
    def create_input(params = {}, options = {})
      req = build_request(:create_input, params)
      req.send_request(options)
    end

    # Deletes a detector model. Any active instances of the detector model
    # are also deleted.
    #
    # @option params [required, String] :detector_model_name
    #   The name of the detector model to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_detector_model({
    #     detector_model_name: "DetectorModelName", # required
    #   })
    #
    # @overload delete_detector_model(params = {})
    # @param [Hash] params ({})
    def delete_detector_model(params = {}, options = {})
      req = build_request(:delete_detector_model, params)
      req.send_request(options)
    end

    # Deletes an input.
    #
    # @option params [required, String] :input_name
    #   The name of the input to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_input({
    #     input_name: "InputName", # required
    #   })
    #
    # @overload delete_input(params = {})
    # @param [Hash] params ({})
    def delete_input(params = {}, options = {})
      req = build_request(:delete_input, params)
      req.send_request(options)
    end

    # Describes a detector model. If the `version` parameter is not
    # specified, information about the latest version is returned.
    #
    # @option params [required, String] :detector_model_name
    #   The name of the detector model.
    #
    # @option params [String] :detector_model_version
    #   The version of the detector model.
    #
    # @return [Types::DescribeDetectorModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDetectorModelResponse#detector_model #detector_model} => Types::DetectorModel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_detector_model({
    #     detector_model_name: "DetectorModelName", # required
    #     detector_model_version: "DetectorModelVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_model.detector_model_definition.states #=> Array
    #   resp.detector_model.detector_model_definition.states[0].state_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.events #=> Array
    #   resp.detector_model.detector_model_definition.states[0].on_input.events[0].event_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.events[0].condition #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.events[0].actions #=> Array
    #   resp.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].set_variable.variable_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].set_variable.value #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].sns.target_arn #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].iot_topic_publish.mqtt_topic #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].set_timer.timer_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].set_timer.seconds #=> Integer
    #   resp.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].clear_timer.timer_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.events[0].actions[0].reset_timer.timer_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events #=> Array
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events[0].event_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events[0].condition #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events[0].actions #=> Array
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events[0].actions[0].set_variable.variable_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events[0].actions[0].set_variable.value #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events[0].actions[0].sns.target_arn #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events[0].actions[0].iot_topic_publish.mqtt_topic #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events[0].actions[0].set_timer.timer_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events[0].actions[0].set_timer.seconds #=> Integer
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events[0].actions[0].clear_timer.timer_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events[0].actions[0].reset_timer.timer_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_input.transition_events[0].next_state #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_enter.events #=> Array
    #   resp.detector_model.detector_model_definition.states[0].on_enter.events[0].event_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_enter.events[0].condition #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_enter.events[0].actions #=> Array
    #   resp.detector_model.detector_model_definition.states[0].on_enter.events[0].actions[0].set_variable.variable_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_enter.events[0].actions[0].set_variable.value #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_enter.events[0].actions[0].sns.target_arn #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_enter.events[0].actions[0].iot_topic_publish.mqtt_topic #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_enter.events[0].actions[0].set_timer.timer_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_enter.events[0].actions[0].set_timer.seconds #=> Integer
    #   resp.detector_model.detector_model_definition.states[0].on_enter.events[0].actions[0].clear_timer.timer_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_enter.events[0].actions[0].reset_timer.timer_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_exit.events #=> Array
    #   resp.detector_model.detector_model_definition.states[0].on_exit.events[0].event_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_exit.events[0].condition #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_exit.events[0].actions #=> Array
    #   resp.detector_model.detector_model_definition.states[0].on_exit.events[0].actions[0].set_variable.variable_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_exit.events[0].actions[0].set_variable.value #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_exit.events[0].actions[0].sns.target_arn #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_exit.events[0].actions[0].iot_topic_publish.mqtt_topic #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_exit.events[0].actions[0].set_timer.timer_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_exit.events[0].actions[0].set_timer.seconds #=> Integer
    #   resp.detector_model.detector_model_definition.states[0].on_exit.events[0].actions[0].clear_timer.timer_name #=> String
    #   resp.detector_model.detector_model_definition.states[0].on_exit.events[0].actions[0].reset_timer.timer_name #=> String
    #   resp.detector_model.detector_model_definition.initial_state_name #=> String
    #   resp.detector_model.detector_model_configuration.detector_model_name #=> String
    #   resp.detector_model.detector_model_configuration.detector_model_version #=> String
    #   resp.detector_model.detector_model_configuration.detector_model_description #=> String
    #   resp.detector_model.detector_model_configuration.detector_model_arn #=> String
    #   resp.detector_model.detector_model_configuration.role_arn #=> String
    #   resp.detector_model.detector_model_configuration.creation_time #=> Time
    #   resp.detector_model.detector_model_configuration.last_update_time #=> Time
    #   resp.detector_model.detector_model_configuration.status #=> String, one of "ACTIVE", "ACTIVATING", "INACTIVE", "DEPRECATED", "DRAFT", "PAUSED", "FAILED"
    #   resp.detector_model.detector_model_configuration.key #=> String
    #
    # @overload describe_detector_model(params = {})
    # @param [Hash] params ({})
    def describe_detector_model(params = {}, options = {})
      req = build_request(:describe_detector_model, params)
      req.send_request(options)
    end

    # Describes an input.
    #
    # @option params [required, String] :input_name
    #   The name of the input.
    #
    # @return [Types::DescribeInputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInputResponse#input #input} => Types::Input
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_input({
    #     input_name: "InputName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.input.input_configuration.input_name #=> String
    #   resp.input.input_configuration.input_description #=> String
    #   resp.input.input_configuration.input_arn #=> String
    #   resp.input.input_configuration.creation_time #=> Time
    #   resp.input.input_configuration.last_update_time #=> Time
    #   resp.input.input_configuration.status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING"
    #   resp.input.input_definition.attributes #=> Array
    #   resp.input.input_definition.attributes[0].json_path #=> String
    #
    # @overload describe_input(params = {})
    # @param [Hash] params ({})
    def describe_input(params = {}, options = {})
      req = build_request(:describe_input, params)
      req.send_request(options)
    end

    # Retrieves the current settings of the AWS IoT Events logging options.
    #
    # @return [Types::DescribeLoggingOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoggingOptionsResponse#logging_options #logging_options} => Types::LoggingOptions
    #
    # @example Response structure
    #
    #   resp.logging_options.role_arn #=> String
    #   resp.logging_options.level #=> String, one of "ERROR", "INFO", "DEBUG"
    #   resp.logging_options.enabled #=> Boolean
    #   resp.logging_options.detector_debug_options #=> Array
    #   resp.logging_options.detector_debug_options[0].detector_model_name #=> String
    #   resp.logging_options.detector_debug_options[0].key_value #=> String
    #
    # @overload describe_logging_options(params = {})
    # @param [Hash] params ({})
    def describe_logging_options(params = {}, options = {})
      req = build_request(:describe_logging_options, params)
      req.send_request(options)
    end

    # Lists all the versions of a detector model. Only the metadata
    # associated with each detector model version is returned.
    #
    # @option params [required, String] :detector_model_name
    #   The name of the detector model whose versions are returned.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListDetectorModelVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDetectorModelVersionsResponse#detector_model_version_summaries #detector_model_version_summaries} => Array&lt;Types::DetectorModelVersionSummary&gt;
    #   * {Types::ListDetectorModelVersionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detector_model_versions({
    #     detector_model_name: "DetectorModelName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_model_version_summaries #=> Array
    #   resp.detector_model_version_summaries[0].detector_model_name #=> String
    #   resp.detector_model_version_summaries[0].detector_model_version #=> String
    #   resp.detector_model_version_summaries[0].detector_model_arn #=> String
    #   resp.detector_model_version_summaries[0].role_arn #=> String
    #   resp.detector_model_version_summaries[0].creation_time #=> Time
    #   resp.detector_model_version_summaries[0].last_update_time #=> Time
    #   resp.detector_model_version_summaries[0].status #=> String, one of "ACTIVE", "ACTIVATING", "INACTIVE", "DEPRECATED", "DRAFT", "PAUSED", "FAILED"
    #   resp.next_token #=> String
    #
    # @overload list_detector_model_versions(params = {})
    # @param [Hash] params ({})
    def list_detector_model_versions(params = {}, options = {})
      req = build_request(:list_detector_model_versions, params)
      req.send_request(options)
    end

    # Lists the detector models you have created. Only the metadata
    # associated with each detector model is returned.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListDetectorModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDetectorModelsResponse#detector_model_summaries #detector_model_summaries} => Array&lt;Types::DetectorModelSummary&gt;
    #   * {Types::ListDetectorModelsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_detector_models({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_model_summaries #=> Array
    #   resp.detector_model_summaries[0].detector_model_name #=> String
    #   resp.detector_model_summaries[0].detector_model_description #=> String
    #   resp.detector_model_summaries[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_detector_models(params = {})
    # @param [Hash] params ({})
    def list_detector_models(params = {}, options = {})
      req = build_request(:list_detector_models, params)
      req.send_request(options)
    end

    # Lists the inputs you have created.
    #
    # @option params [String] :next_token
    #   The token for the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListInputsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInputsResponse#input_summaries #input_summaries} => Array&lt;Types::InputSummary&gt;
    #   * {Types::ListInputsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_inputs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.input_summaries #=> Array
    #   resp.input_summaries[0].input_name #=> String
    #   resp.input_summaries[0].input_description #=> String
    #   resp.input_summaries[0].input_arn #=> String
    #   resp.input_summaries[0].creation_time #=> Time
    #   resp.input_summaries[0].last_update_time #=> Time
    #   resp.input_summaries[0].status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING"
    #   resp.next_token #=> String
    #
    # @overload list_inputs(params = {})
    # @param [Hash] params ({})
    def list_inputs(params = {}, options = {})
      req = build_request(:list_inputs, params)
      req.send_request(options)
    end

    # Lists the tags (metadata) you have assigned to the resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Sets or updates the AWS IoT Events logging options.
    #
    # Note that if you update the value of any `loggingOptions` field, it
    # takes up to one minute for the change to take effect. Also, if you
    # change the policy attached to the role you specified in the roleArn
    # field (for example, to correct an invalid policy) it takes up to five
    # minutes for that change to take effect.
    #
    # @option params [required, Types::LoggingOptions] :logging_options
    #   The new values of the AWS IoT Events logging options.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_logging_options({
    #     logging_options: { # required
    #       role_arn: "AmazonResourceName", # required
    #       level: "ERROR", # required, accepts ERROR, INFO, DEBUG
    #       enabled: false, # required
    #       detector_debug_options: [
    #         {
    #           detector_model_name: "DetectorModelName", # required
    #           key_value: "KeyValue",
    #         },
    #       ],
    #     },
    #   })
    #
    # @overload put_logging_options(params = {})
    # @param [Hash] params ({})
    def put_logging_options(params = {}, options = {})
      req = build_request(:put_logging_options, params)
      req.send_request(options)
    end

    # Add to or modifies the tags of the given resource. Tags are metadata
    # which can be used to manage a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The new or modified tags for the resource.
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
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the given tags (metadata) from the resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of the keys of the tags to be removed from the resource.
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
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a detector model. Detectors (instances) spawned by the
    # previous version will be deleted and re-created as new inputs arrive.
    #
    # @option params [required, String] :detector_model_name
    #   The name of the detector model to be updated.
    #
    # @option params [required, Types::DetectorModelDefinition] :detector_model_definition
    #   Information that defines how a detector operates.
    #
    # @option params [String] :detector_model_description
    #   A brief description of the detector model.
    #
    # @option params [required, String] :role_arn
    #   The ARN of the role that grants permission to AWS IoT Events to
    #   perform its operations.
    #
    # @return [Types::UpdateDetectorModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDetectorModelResponse#detector_model_configuration #detector_model_configuration} => Types::DetectorModelConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_detector_model({
    #     detector_model_name: "DetectorModelName", # required
    #     detector_model_definition: { # required
    #       states: [ # required
    #         {
    #           state_name: "StateName", # required
    #           on_input: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1, # required
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             transition_events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition", # required
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1, # required
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                   },
    #                 ],
    #                 next_state: "StateName", # required
    #               },
    #             ],
    #           },
    #           on_enter: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1, # required
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           on_exit: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1, # required
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #       initial_state_name: "StateName", # required
    #     },
    #     detector_model_description: "DetectorModelDescription",
    #     role_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.detector_model_configuration.detector_model_name #=> String
    #   resp.detector_model_configuration.detector_model_version #=> String
    #   resp.detector_model_configuration.detector_model_description #=> String
    #   resp.detector_model_configuration.detector_model_arn #=> String
    #   resp.detector_model_configuration.role_arn #=> String
    #   resp.detector_model_configuration.creation_time #=> Time
    #   resp.detector_model_configuration.last_update_time #=> Time
    #   resp.detector_model_configuration.status #=> String, one of "ACTIVE", "ACTIVATING", "INACTIVE", "DEPRECATED", "DRAFT", "PAUSED", "FAILED"
    #   resp.detector_model_configuration.key #=> String
    #
    # @overload update_detector_model(params = {})
    # @param [Hash] params ({})
    def update_detector_model(params = {}, options = {})
      req = build_request(:update_detector_model, params)
      req.send_request(options)
    end

    # Updates an input.
    #
    # @option params [required, String] :input_name
    #   The name of the input you want to update.
    #
    # @option params [String] :input_description
    #   A brief description of the input.
    #
    # @option params [required, Types::InputDefinition] :input_definition
    #   The definition of the input.
    #
    # @return [Types::UpdateInputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateInputResponse#input_configuration #input_configuration} => Types::InputConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_input({
    #     input_name: "InputName", # required
    #     input_description: "InputDescription",
    #     input_definition: { # required
    #       attributes: [ # required
    #         {
    #           json_path: "AttributeJsonPath", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.input_configuration.input_name #=> String
    #   resp.input_configuration.input_description #=> String
    #   resp.input_configuration.input_arn #=> String
    #   resp.input_configuration.creation_time #=> Time
    #   resp.input_configuration.last_update_time #=> Time
    #   resp.input_configuration.status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING"
    #
    # @overload update_input(params = {})
    # @param [Hash] params ({})
    def update_input(params = {}, options = {})
      req = build_request(:update_input, params)
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
      context[:gem_name] = 'aws-sdk-iotevents'
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
