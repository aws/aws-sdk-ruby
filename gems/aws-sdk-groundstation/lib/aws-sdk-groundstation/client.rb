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

Aws::Plugins::GlobalConfiguration.add_identifier(:groundstation)

module Aws::GroundStation
  # An API client for GroundStation.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GroundStation::Client.new(
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

    @identifier = :groundstation

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

    # Cancels a contact with a specified contact ID.
    #
    # @option params [required, String] :contact_id
    #   UUID of a contact.
    #
    # @return [Types::ContactIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ContactIdResponse#contact_id #contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_contact({
    #     contact_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CancelContact AWS API Documentation
    #
    # @overload cancel_contact(params = {})
    # @param [Hash] params ({})
    def cancel_contact(params = {}, options = {})
      req = build_request(:cancel_contact, params)
      req.send_request(options)
    end

    # Creates a `Config` with the specified `configData` parameters.
    #
    # Only one type of `configData` can be specified.
    #
    # @option params [required, Types::ConfigTypeData] :config_data
    #   Parameters of a `Config`.
    #
    # @option params [required, String] :name
    #   Name of a `Config`.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags assigned to a `Config`.
    #
    # @return [Types::ConfigIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigIdResponse#config_arn #config_arn} => String
    #   * {Types::ConfigIdResponse#config_id #config_id} => String
    #   * {Types::ConfigIdResponse#config_type #config_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_config({
    #     config_data: { # required
    #       antenna_downlink_config: {
    #         spectrum_config: { # required
    #           bandwidth: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           center_frequency: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #         },
    #       },
    #       antenna_downlink_demod_decode_config: {
    #         decode_config: { # required
    #           unvalidated_json: "JsonString", # required
    #         },
    #         demodulation_config: { # required
    #           unvalidated_json: "JsonString", # required
    #         },
    #         spectrum_config: { # required
    #           bandwidth: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           center_frequency: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #         },
    #       },
    #       antenna_uplink_config: {
    #         spectrum_config: { # required
    #           center_frequency: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #         },
    #         target_eirp: { # required
    #           units: "dBW", # required, accepts dBW
    #           value: 1.0, # required
    #         },
    #         transmit_disabled: false,
    #       },
    #       dataflow_endpoint_config: {
    #         dataflow_endpoint_name: "String", # required
    #         dataflow_endpoint_region: "String",
    #       },
    #       tracking_config: {
    #         autotrack: "PREFERRED", # required, accepts PREFERRED, REMOVED, REQUIRED
    #       },
    #       uplink_echo_config: {
    #         antenna_uplink_config_arn: "ConfigArn", # required
    #         enabled: false, # required
    #       },
    #     },
    #     name: "SafeName", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.config_arn #=> String
    #   resp.config_id #=> String
    #   resp.config_type #=> String, one of "antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateConfig AWS API Documentation
    #
    # @overload create_config(params = {})
    # @param [Hash] params ({})
    def create_config(params = {}, options = {})
      req = build_request(:create_config, params)
      req.send_request(options)
    end

    # Creates a `DataflowEndpoint` group containing the specified list of
    # `DataflowEndpoint` objects.
    #
    # The `name` field in each endpoint is used in your mission profile
    # `DataflowEndpointConfig` to specify which endpoints to use during a
    # contact.
    #
    # When a contact uses multiple `DataflowEndpointConfig` objects, each
    # `Config` must match a `DataflowEndpoint` in the same group.
    #
    # @option params [required, Array<Types::EndpointDetails>] :endpoint_details
    #   Endpoint details of each endpoint in the dataflow endpoint group.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags of a dataflow endpoint group.
    #
    # @return [Types::DataflowEndpointGroupIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DataflowEndpointGroupIdResponse#dataflow_endpoint_group_id #dataflow_endpoint_group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataflow_endpoint_group({
    #     endpoint_details: [ # required
    #       {
    #         endpoint: {
    #           address: {
    #             name: "String", # required
    #             port: 1, # required
    #           },
    #           mtu: 1,
    #           name: "SafeName",
    #           status: "created", # accepts created, creating, deleted, deleting, failed
    #         },
    #         security_details: {
    #           role_arn: "RoleArn", # required
    #           security_group_ids: ["String"], # required
    #           subnet_ids: ["String"], # required
    #         },
    #       },
    #     ],
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dataflow_endpoint_group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateDataflowEndpointGroup AWS API Documentation
    #
    # @overload create_dataflow_endpoint_group(params = {})
    # @param [Hash] params ({})
    def create_dataflow_endpoint_group(params = {}, options = {})
      req = build_request(:create_dataflow_endpoint_group, params)
      req.send_request(options)
    end

    # Creates a mission profile.
    #
    # `dataflowEdges` is a list of lists of strings. Each lower level list
    # of strings has two elements: a *from* ARN and a *to* ARN.
    #
    # @option params [Integer] :contact_post_pass_duration_seconds
    #   Amount of time after a contact ends that you’d like to receive a
    #   CloudWatch event indicating the pass has finished.
    #
    # @option params [Integer] :contact_pre_pass_duration_seconds
    #   Amount of time prior to contact start you’d like to receive a
    #   CloudWatch event indicating an upcoming pass.
    #
    # @option params [required, Array<Array>] :dataflow_edges
    #   A list of lists of ARNs. Each list of ARNs is an edge, with a *from*
    #   `Config` and a *to* `Config`.
    #
    # @option params [required, Integer] :minimum_viable_contact_duration_seconds
    #   Smallest amount of time in seconds that you’d like to see for an
    #   available contact. AWS Ground Station will not present you with
    #   contacts shorter than this duration.
    #
    # @option params [required, String] :name
    #   Name of a mission profile.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags assigned to a mission profile.
    #
    # @option params [required, String] :tracking_config_arn
    #   ARN of a tracking `Config`.
    #
    # @return [Types::MissionProfileIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MissionProfileIdResponse#mission_profile_id #mission_profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_mission_profile({
    #     contact_post_pass_duration_seconds: 1,
    #     contact_pre_pass_duration_seconds: 1,
    #     dataflow_edges: [ # required
    #       ["ConfigArn"],
    #     ],
    #     minimum_viable_contact_duration_seconds: 1, # required
    #     name: "SafeName", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #     tracking_config_arn: "ConfigArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.mission_profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateMissionProfile AWS API Documentation
    #
    # @overload create_mission_profile(params = {})
    # @param [Hash] params ({})
    def create_mission_profile(params = {}, options = {})
      req = build_request(:create_mission_profile, params)
      req.send_request(options)
    end

    # Deletes a `Config`.
    #
    # @option params [required, String] :config_id
    #   UUID of a `Config`.
    #
    # @option params [required, String] :config_type
    #   Type of a `Config`.
    #
    # @return [Types::ConfigIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigIdResponse#config_arn #config_arn} => String
    #   * {Types::ConfigIdResponse#config_id #config_id} => String
    #   * {Types::ConfigIdResponse#config_type #config_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_config({
    #     config_id: "String", # required
    #     config_type: "antenna-downlink", # required, accepts antenna-downlink, antenna-downlink-demod-decode, antenna-uplink, dataflow-endpoint, tracking, uplink-echo
    #   })
    #
    # @example Response structure
    #
    #   resp.config_arn #=> String
    #   resp.config_id #=> String
    #   resp.config_type #=> String, one of "antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DeleteConfig AWS API Documentation
    #
    # @overload delete_config(params = {})
    # @param [Hash] params ({})
    def delete_config(params = {}, options = {})
      req = build_request(:delete_config, params)
      req.send_request(options)
    end

    # Deletes a dataflow endpoint group.
    #
    # @option params [required, String] :dataflow_endpoint_group_id
    #   UUID of a dataflow endpoint group.
    #
    # @return [Types::DataflowEndpointGroupIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DataflowEndpointGroupIdResponse#dataflow_endpoint_group_id #dataflow_endpoint_group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataflow_endpoint_group({
    #     dataflow_endpoint_group_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataflow_endpoint_group_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DeleteDataflowEndpointGroup AWS API Documentation
    #
    # @overload delete_dataflow_endpoint_group(params = {})
    # @param [Hash] params ({})
    def delete_dataflow_endpoint_group(params = {}, options = {})
      req = build_request(:delete_dataflow_endpoint_group, params)
      req.send_request(options)
    end

    # Deletes a mission profile.
    #
    # @option params [required, String] :mission_profile_id
    #   UUID of a mission profile.
    #
    # @return [Types::MissionProfileIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MissionProfileIdResponse#mission_profile_id #mission_profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mission_profile({
    #     mission_profile_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.mission_profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DeleteMissionProfile AWS API Documentation
    #
    # @overload delete_mission_profile(params = {})
    # @param [Hash] params ({})
    def delete_mission_profile(params = {}, options = {})
      req = build_request(:delete_mission_profile, params)
      req.send_request(options)
    end

    # Describes an existing contact.
    #
    # @option params [required, String] :contact_id
    #   UUID of a contact.
    #
    # @return [Types::DescribeContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContactResponse#contact_id #contact_id} => String
    #   * {Types::DescribeContactResponse#contact_status #contact_status} => String
    #   * {Types::DescribeContactResponse#dataflow_list #dataflow_list} => Array&lt;Types::DataflowDetail&gt;
    #   * {Types::DescribeContactResponse#end_time #end_time} => Time
    #   * {Types::DescribeContactResponse#error_message #error_message} => String
    #   * {Types::DescribeContactResponse#ground_station #ground_station} => String
    #   * {Types::DescribeContactResponse#maximum_elevation #maximum_elevation} => Types::Elevation
    #   * {Types::DescribeContactResponse#mission_profile_arn #mission_profile_arn} => String
    #   * {Types::DescribeContactResponse#post_pass_end_time #post_pass_end_time} => Time
    #   * {Types::DescribeContactResponse#pre_pass_start_time #pre_pass_start_time} => Time
    #   * {Types::DescribeContactResponse#region #region} => String
    #   * {Types::DescribeContactResponse#satellite_arn #satellite_arn} => String
    #   * {Types::DescribeContactResponse#start_time #start_time} => Time
    #   * {Types::DescribeContactResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact({
    #     contact_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #   resp.contact_status #=> String, one of "AVAILABLE", "AWS_CANCELLED", "AWS_FAILED", "CANCELLED", "CANCELLING", "COMPLETED", "FAILED", "FAILED_TO_SCHEDULE", "PASS", "POSTPASS", "PREPASS", "SCHEDULED", "SCHEDULING"
    #   resp.dataflow_list #=> Array
    #   resp.dataflow_list[0].destination.config_details.antenna_demod_decode_details.output_node #=> String
    #   resp.dataflow_list[0].destination.config_details.endpoint_details.endpoint.address.name #=> String
    #   resp.dataflow_list[0].destination.config_details.endpoint_details.endpoint.address.port #=> Integer
    #   resp.dataflow_list[0].destination.config_details.endpoint_details.endpoint.mtu #=> Integer
    #   resp.dataflow_list[0].destination.config_details.endpoint_details.endpoint.name #=> String
    #   resp.dataflow_list[0].destination.config_details.endpoint_details.endpoint.status #=> String, one of "created", "creating", "deleted", "deleting", "failed"
    #   resp.dataflow_list[0].destination.config_details.endpoint_details.security_details.role_arn #=> String
    #   resp.dataflow_list[0].destination.config_details.endpoint_details.security_details.security_group_ids #=> Array
    #   resp.dataflow_list[0].destination.config_details.endpoint_details.security_details.security_group_ids[0] #=> String
    #   resp.dataflow_list[0].destination.config_details.endpoint_details.security_details.subnet_ids #=> Array
    #   resp.dataflow_list[0].destination.config_details.endpoint_details.security_details.subnet_ids[0] #=> String
    #   resp.dataflow_list[0].destination.config_id #=> String
    #   resp.dataflow_list[0].destination.config_type #=> String, one of "antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo"
    #   resp.dataflow_list[0].destination.dataflow_destination_region #=> String
    #   resp.dataflow_list[0].error_message #=> String
    #   resp.dataflow_list[0].source.config_details.antenna_demod_decode_details.output_node #=> String
    #   resp.dataflow_list[0].source.config_details.endpoint_details.endpoint.address.name #=> String
    #   resp.dataflow_list[0].source.config_details.endpoint_details.endpoint.address.port #=> Integer
    #   resp.dataflow_list[0].source.config_details.endpoint_details.endpoint.mtu #=> Integer
    #   resp.dataflow_list[0].source.config_details.endpoint_details.endpoint.name #=> String
    #   resp.dataflow_list[0].source.config_details.endpoint_details.endpoint.status #=> String, one of "created", "creating", "deleted", "deleting", "failed"
    #   resp.dataflow_list[0].source.config_details.endpoint_details.security_details.role_arn #=> String
    #   resp.dataflow_list[0].source.config_details.endpoint_details.security_details.security_group_ids #=> Array
    #   resp.dataflow_list[0].source.config_details.endpoint_details.security_details.security_group_ids[0] #=> String
    #   resp.dataflow_list[0].source.config_details.endpoint_details.security_details.subnet_ids #=> Array
    #   resp.dataflow_list[0].source.config_details.endpoint_details.security_details.subnet_ids[0] #=> String
    #   resp.dataflow_list[0].source.config_id #=> String
    #   resp.dataflow_list[0].source.config_type #=> String, one of "antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo"
    #   resp.dataflow_list[0].source.dataflow_source_region #=> String
    #   resp.end_time #=> Time
    #   resp.error_message #=> String
    #   resp.ground_station #=> String
    #   resp.maximum_elevation.unit #=> String, one of "DEGREE_ANGLE", "RADIAN"
    #   resp.maximum_elevation.value #=> Float
    #   resp.mission_profile_arn #=> String
    #   resp.post_pass_end_time #=> Time
    #   resp.pre_pass_start_time #=> Time
    #   resp.region #=> String
    #   resp.satellite_arn #=> String
    #   resp.start_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DescribeContact AWS API Documentation
    #
    # @overload describe_contact(params = {})
    # @param [Hash] params ({})
    def describe_contact(params = {}, options = {})
      req = build_request(:describe_contact, params)
      req.send_request(options)
    end

    # Returns `Config` information.
    #
    # Only one `Config` response can be returned.
    #
    # @option params [required, String] :config_id
    #   UUID of a `Config`.
    #
    # @option params [required, String] :config_type
    #   Type of a `Config`.
    #
    # @return [Types::GetConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConfigResponse#config_arn #config_arn} => String
    #   * {Types::GetConfigResponse#config_data #config_data} => Types::ConfigTypeData
    #   * {Types::GetConfigResponse#config_id #config_id} => String
    #   * {Types::GetConfigResponse#config_type #config_type} => String
    #   * {Types::GetConfigResponse#name #name} => String
    #   * {Types::GetConfigResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_config({
    #     config_id: "String", # required
    #     config_type: "antenna-downlink", # required, accepts antenna-downlink, antenna-downlink-demod-decode, antenna-uplink, dataflow-endpoint, tracking, uplink-echo
    #   })
    #
    # @example Response structure
    #
    #   resp.config_arn #=> String
    #   resp.config_data.antenna_downlink_config.spectrum_config.bandwidth.units #=> String, one of "GHz", "MHz", "kHz"
    #   resp.config_data.antenna_downlink_config.spectrum_config.bandwidth.value #=> Float
    #   resp.config_data.antenna_downlink_config.spectrum_config.center_frequency.units #=> String, one of "GHz", "MHz", "kHz"
    #   resp.config_data.antenna_downlink_config.spectrum_config.center_frequency.value #=> Float
    #   resp.config_data.antenna_downlink_config.spectrum_config.polarization #=> String, one of "LEFT_HAND", "NONE", "RIGHT_HAND"
    #   resp.config_data.antenna_downlink_demod_decode_config.decode_config.unvalidated_json #=> String
    #   resp.config_data.antenna_downlink_demod_decode_config.demodulation_config.unvalidated_json #=> String
    #   resp.config_data.antenna_downlink_demod_decode_config.spectrum_config.bandwidth.units #=> String, one of "GHz", "MHz", "kHz"
    #   resp.config_data.antenna_downlink_demod_decode_config.spectrum_config.bandwidth.value #=> Float
    #   resp.config_data.antenna_downlink_demod_decode_config.spectrum_config.center_frequency.units #=> String, one of "GHz", "MHz", "kHz"
    #   resp.config_data.antenna_downlink_demod_decode_config.spectrum_config.center_frequency.value #=> Float
    #   resp.config_data.antenna_downlink_demod_decode_config.spectrum_config.polarization #=> String, one of "LEFT_HAND", "NONE", "RIGHT_HAND"
    #   resp.config_data.antenna_uplink_config.spectrum_config.center_frequency.units #=> String, one of "GHz", "MHz", "kHz"
    #   resp.config_data.antenna_uplink_config.spectrum_config.center_frequency.value #=> Float
    #   resp.config_data.antenna_uplink_config.spectrum_config.polarization #=> String, one of "LEFT_HAND", "NONE", "RIGHT_HAND"
    #   resp.config_data.antenna_uplink_config.target_eirp.units #=> String, one of "dBW"
    #   resp.config_data.antenna_uplink_config.target_eirp.value #=> Float
    #   resp.config_data.antenna_uplink_config.transmit_disabled #=> Boolean
    #   resp.config_data.dataflow_endpoint_config.dataflow_endpoint_name #=> String
    #   resp.config_data.dataflow_endpoint_config.dataflow_endpoint_region #=> String
    #   resp.config_data.tracking_config.autotrack #=> String, one of "PREFERRED", "REMOVED", "REQUIRED"
    #   resp.config_data.uplink_echo_config.antenna_uplink_config_arn #=> String
    #   resp.config_data.uplink_echo_config.enabled #=> Boolean
    #   resp.config_id #=> String
    #   resp.config_type #=> String, one of "antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo"
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetConfig AWS API Documentation
    #
    # @overload get_config(params = {})
    # @param [Hash] params ({})
    def get_config(params = {}, options = {})
      req = build_request(:get_config, params)
      req.send_request(options)
    end

    # Returns the dataflow endpoint group.
    #
    # @option params [required, String] :dataflow_endpoint_group_id
    #   UUID of a dataflow endpoint group.
    #
    # @return [Types::GetDataflowEndpointGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataflowEndpointGroupResponse#dataflow_endpoint_group_arn #dataflow_endpoint_group_arn} => String
    #   * {Types::GetDataflowEndpointGroupResponse#dataflow_endpoint_group_id #dataflow_endpoint_group_id} => String
    #   * {Types::GetDataflowEndpointGroupResponse#endpoints_details #endpoints_details} => Array&lt;Types::EndpointDetails&gt;
    #   * {Types::GetDataflowEndpointGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_dataflow_endpoint_group({
    #     dataflow_endpoint_group_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataflow_endpoint_group_arn #=> String
    #   resp.dataflow_endpoint_group_id #=> String
    #   resp.endpoints_details #=> Array
    #   resp.endpoints_details[0].endpoint.address.name #=> String
    #   resp.endpoints_details[0].endpoint.address.port #=> Integer
    #   resp.endpoints_details[0].endpoint.mtu #=> Integer
    #   resp.endpoints_details[0].endpoint.name #=> String
    #   resp.endpoints_details[0].endpoint.status #=> String, one of "created", "creating", "deleted", "deleting", "failed"
    #   resp.endpoints_details[0].security_details.role_arn #=> String
    #   resp.endpoints_details[0].security_details.security_group_ids #=> Array
    #   resp.endpoints_details[0].security_details.security_group_ids[0] #=> String
    #   resp.endpoints_details[0].security_details.subnet_ids #=> Array
    #   resp.endpoints_details[0].security_details.subnet_ids[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetDataflowEndpointGroup AWS API Documentation
    #
    # @overload get_dataflow_endpoint_group(params = {})
    # @param [Hash] params ({})
    def get_dataflow_endpoint_group(params = {}, options = {})
      req = build_request(:get_dataflow_endpoint_group, params)
      req.send_request(options)
    end

    # Returns the number of minutes used by account.
    #
    # @option params [required, Integer] :month
    #   The month being requested, with a value of 1-12.
    #
    # @option params [required, Integer] :year
    #   The year being requested, in the format of YYYY.
    #
    # @return [Types::GetMinuteUsageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMinuteUsageResponse#estimated_minutes_remaining #estimated_minutes_remaining} => Integer
    #   * {Types::GetMinuteUsageResponse#is_reserved_minutes_customer #is_reserved_minutes_customer} => Boolean
    #   * {Types::GetMinuteUsageResponse#total_reserved_minute_allocation #total_reserved_minute_allocation} => Integer
    #   * {Types::GetMinuteUsageResponse#total_scheduled_minutes #total_scheduled_minutes} => Integer
    #   * {Types::GetMinuteUsageResponse#upcoming_minutes_scheduled #upcoming_minutes_scheduled} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_minute_usage({
    #     month: 1, # required
    #     year: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.estimated_minutes_remaining #=> Integer
    #   resp.is_reserved_minutes_customer #=> Boolean
    #   resp.total_reserved_minute_allocation #=> Integer
    #   resp.total_scheduled_minutes #=> Integer
    #   resp.upcoming_minutes_scheduled #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetMinuteUsage AWS API Documentation
    #
    # @overload get_minute_usage(params = {})
    # @param [Hash] params ({})
    def get_minute_usage(params = {}, options = {})
      req = build_request(:get_minute_usage, params)
      req.send_request(options)
    end

    # Returns a mission profile.
    #
    # @option params [required, String] :mission_profile_id
    #   UUID of a mission profile.
    #
    # @return [Types::GetMissionProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMissionProfileResponse#contact_post_pass_duration_seconds #contact_post_pass_duration_seconds} => Integer
    #   * {Types::GetMissionProfileResponse#contact_pre_pass_duration_seconds #contact_pre_pass_duration_seconds} => Integer
    #   * {Types::GetMissionProfileResponse#dataflow_edges #dataflow_edges} => Array&lt;Array&lt;String&gt;&gt;
    #   * {Types::GetMissionProfileResponse#minimum_viable_contact_duration_seconds #minimum_viable_contact_duration_seconds} => Integer
    #   * {Types::GetMissionProfileResponse#mission_profile_arn #mission_profile_arn} => String
    #   * {Types::GetMissionProfileResponse#mission_profile_id #mission_profile_id} => String
    #   * {Types::GetMissionProfileResponse#name #name} => String
    #   * {Types::GetMissionProfileResponse#region #region} => String
    #   * {Types::GetMissionProfileResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetMissionProfileResponse#tracking_config_arn #tracking_config_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_mission_profile({
    #     mission_profile_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_post_pass_duration_seconds #=> Integer
    #   resp.contact_pre_pass_duration_seconds #=> Integer
    #   resp.dataflow_edges #=> Array
    #   resp.dataflow_edges[0] #=> Array
    #   resp.dataflow_edges[0][0] #=> String
    #   resp.minimum_viable_contact_duration_seconds #=> Integer
    #   resp.mission_profile_arn #=> String
    #   resp.mission_profile_id #=> String
    #   resp.name #=> String
    #   resp.region #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.tracking_config_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetMissionProfile AWS API Documentation
    #
    # @overload get_mission_profile(params = {})
    # @param [Hash] params ({})
    def get_mission_profile(params = {}, options = {})
      req = build_request(:get_mission_profile, params)
      req.send_request(options)
    end

    # Returns a satellite.
    #
    # @option params [required, String] :satellite_id
    #   UUID of a satellite.
    #
    # @return [Types::GetSatelliteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSatelliteResponse#ground_stations #ground_stations} => Array&lt;String&gt;
    #   * {Types::GetSatelliteResponse#norad_satellite_id #norad_satellite_id} => Integer
    #   * {Types::GetSatelliteResponse#satellite_arn #satellite_arn} => String
    #   * {Types::GetSatelliteResponse#satellite_id #satellite_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_satellite({
    #     satellite_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ground_stations #=> Array
    #   resp.ground_stations[0] #=> String
    #   resp.norad_satellite_id #=> Integer
    #   resp.satellite_arn #=> String
    #   resp.satellite_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetSatellite AWS API Documentation
    #
    # @overload get_satellite(params = {})
    # @param [Hash] params ({})
    def get_satellite(params = {}, options = {})
      req = build_request(:get_satellite, params)
      req.send_request(options)
    end

    # Returns a list of `Config` objects.
    #
    # @option params [Integer] :max_results
    #   Maximum number of `Configs` returned.
    #
    # @option params [String] :next_token
    #   Next token returned in the request of a previous `ListConfigs` call.
    #   Used to get the next page of results.
    #
    # @return [Types::ListConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigsResponse#config_list #config_list} => Array&lt;Types::ConfigListItem&gt;
    #   * {Types::ListConfigsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configs({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.config_list #=> Array
    #   resp.config_list[0].config_arn #=> String
    #   resp.config_list[0].config_id #=> String
    #   resp.config_list[0].config_type #=> String, one of "antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo"
    #   resp.config_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListConfigs AWS API Documentation
    #
    # @overload list_configs(params = {})
    # @param [Hash] params ({})
    def list_configs(params = {}, options = {})
      req = build_request(:list_configs, params)
      req.send_request(options)
    end

    # Returns a list of contacts.
    #
    # If `statusList` contains AVAILABLE, the request must include
    # `groundStation`, `missionprofileArn`, and `satelliteArn`.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   End time of a contact.
    #
    # @option params [String] :ground_station
    #   Name of a ground station.
    #
    # @option params [Integer] :max_results
    #   Maximum number of contacts returned.
    #
    # @option params [String] :mission_profile_arn
    #   ARN of a mission profile.
    #
    # @option params [String] :next_token
    #   Next token returned in the request of a previous `ListContacts` call.
    #   Used to get the next page of results.
    #
    # @option params [String] :satellite_arn
    #   ARN of a satellite.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   Start time of a contact.
    #
    # @option params [required, Array<String>] :status_list
    #   Status of a contact reservation.
    #
    # @return [Types::ListContactsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactsResponse#contact_list #contact_list} => Array&lt;Types::ContactData&gt;
    #   * {Types::ListContactsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contacts({
    #     end_time: Time.now, # required
    #     ground_station: "String",
    #     max_results: 1,
    #     mission_profile_arn: "MissionProfileArn",
    #     next_token: "String",
    #     satellite_arn: "satelliteArn",
    #     start_time: Time.now, # required
    #     status_list: ["AVAILABLE"], # required, accepts AVAILABLE, AWS_CANCELLED, AWS_FAILED, CANCELLED, CANCELLING, COMPLETED, FAILED, FAILED_TO_SCHEDULE, PASS, POSTPASS, PREPASS, SCHEDULED, SCHEDULING
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_list #=> Array
    #   resp.contact_list[0].contact_id #=> String
    #   resp.contact_list[0].contact_status #=> String, one of "AVAILABLE", "AWS_CANCELLED", "AWS_FAILED", "CANCELLED", "CANCELLING", "COMPLETED", "FAILED", "FAILED_TO_SCHEDULE", "PASS", "POSTPASS", "PREPASS", "SCHEDULED", "SCHEDULING"
    #   resp.contact_list[0].end_time #=> Time
    #   resp.contact_list[0].error_message #=> String
    #   resp.contact_list[0].ground_station #=> String
    #   resp.contact_list[0].maximum_elevation.unit #=> String, one of "DEGREE_ANGLE", "RADIAN"
    #   resp.contact_list[0].maximum_elevation.value #=> Float
    #   resp.contact_list[0].mission_profile_arn #=> String
    #   resp.contact_list[0].post_pass_end_time #=> Time
    #   resp.contact_list[0].pre_pass_start_time #=> Time
    #   resp.contact_list[0].region #=> String
    #   resp.contact_list[0].satellite_arn #=> String
    #   resp.contact_list[0].start_time #=> Time
    #   resp.contact_list[0].tags #=> Hash
    #   resp.contact_list[0].tags["String"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListContacts AWS API Documentation
    #
    # @overload list_contacts(params = {})
    # @param [Hash] params ({})
    def list_contacts(params = {}, options = {})
      req = build_request(:list_contacts, params)
      req.send_request(options)
    end

    # Returns a list of `DataflowEndpoint` groups.
    #
    # @option params [Integer] :max_results
    #   Maximum number of dataflow endpoint groups returned.
    #
    # @option params [String] :next_token
    #   Next token returned in the request of a previous
    #   `ListDataflowEndpointGroups` call. Used to get the next page of
    #   results.
    #
    # @return [Types::ListDataflowEndpointGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataflowEndpointGroupsResponse#dataflow_endpoint_group_list #dataflow_endpoint_group_list} => Array&lt;Types::DataflowEndpointListItem&gt;
    #   * {Types::ListDataflowEndpointGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dataflow_endpoint_groups({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataflow_endpoint_group_list #=> Array
    #   resp.dataflow_endpoint_group_list[0].dataflow_endpoint_group_arn #=> String
    #   resp.dataflow_endpoint_group_list[0].dataflow_endpoint_group_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListDataflowEndpointGroups AWS API Documentation
    #
    # @overload list_dataflow_endpoint_groups(params = {})
    # @param [Hash] params ({})
    def list_dataflow_endpoint_groups(params = {}, options = {})
      req = build_request(:list_dataflow_endpoint_groups, params)
      req.send_request(options)
    end

    # Returns a list of ground stations.
    #
    # @option params [Integer] :max_results
    #   Maximum number of ground stations returned.
    #
    # @option params [String] :next_token
    #   Next token that can be supplied in the next call to get the next page
    #   of ground stations.
    #
    # @option params [String] :satellite_id
    #   Satellite ID to retrieve on-boarded ground stations.
    #
    # @return [Types::ListGroundStationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroundStationsResponse#ground_station_list #ground_station_list} => Array&lt;Types::GroundStationData&gt;
    #   * {Types::ListGroundStationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ground_stations({
    #     max_results: 1,
    #     next_token: "String",
    #     satellite_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ground_station_list #=> Array
    #   resp.ground_station_list[0].ground_station_id #=> String
    #   resp.ground_station_list[0].ground_station_name #=> String
    #   resp.ground_station_list[0].region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListGroundStations AWS API Documentation
    #
    # @overload list_ground_stations(params = {})
    # @param [Hash] params ({})
    def list_ground_stations(params = {}, options = {})
      req = build_request(:list_ground_stations, params)
      req.send_request(options)
    end

    # Returns a list of mission profiles.
    #
    # @option params [Integer] :max_results
    #   Maximum number of mission profiles returned.
    #
    # @option params [String] :next_token
    #   Next token returned in the request of a previous `ListMissionProfiles`
    #   call. Used to get the next page of results.
    #
    # @return [Types::ListMissionProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMissionProfilesResponse#mission_profile_list #mission_profile_list} => Array&lt;Types::MissionProfileListItem&gt;
    #   * {Types::ListMissionProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mission_profiles({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.mission_profile_list #=> Array
    #   resp.mission_profile_list[0].mission_profile_arn #=> String
    #   resp.mission_profile_list[0].mission_profile_id #=> String
    #   resp.mission_profile_list[0].name #=> String
    #   resp.mission_profile_list[0].region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListMissionProfiles AWS API Documentation
    #
    # @overload list_mission_profiles(params = {})
    # @param [Hash] params ({})
    def list_mission_profiles(params = {}, options = {})
      req = build_request(:list_mission_profiles, params)
      req.send_request(options)
    end

    # Returns a list of satellites.
    #
    # @option params [Integer] :max_results
    #   Maximum number of satellites returned.
    #
    # @option params [String] :next_token
    #   Next token that can be supplied in the next call to get the next page
    #   of satellites.
    #
    # @return [Types::ListSatellitesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSatellitesResponse#next_token #next_token} => String
    #   * {Types::ListSatellitesResponse#satellites #satellites} => Array&lt;Types::SatelliteListItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_satellites({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.satellites #=> Array
    #   resp.satellites[0].ground_stations #=> Array
    #   resp.satellites[0].ground_stations[0] #=> String
    #   resp.satellites[0].norad_satellite_id #=> Integer
    #   resp.satellites[0].satellite_arn #=> String
    #   resp.satellites[0].satellite_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListSatellites AWS API Documentation
    #
    # @overload list_satellites(params = {})
    # @param [Hash] params ({})
    def list_satellites(params = {}, options = {})
      req = build_request(:list_satellites, params)
      req.send_request(options)
    end

    # Returns a list of tags for a specified resource.
    #
    # @option params [required, String] :resource_arn
    #   ARN of a resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Reserves a contact using specified parameters.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   End time of a contact.
    #
    # @option params [required, String] :ground_station
    #   Name of a ground station.
    #
    # @option params [required, String] :mission_profile_arn
    #   ARN of a mission profile.
    #
    # @option params [required, String] :satellite_arn
    #   ARN of a satellite
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   Start time of a contact.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags assigned to a contact.
    #
    # @return [Types::ContactIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ContactIdResponse#contact_id #contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reserve_contact({
    #     end_time: Time.now, # required
    #     ground_station: "String", # required
    #     mission_profile_arn: "MissionProfileArn", # required
    #     satellite_arn: "satelliteArn", # required
    #     start_time: Time.now, # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ReserveContact AWS API Documentation
    #
    # @overload reserve_contact(params = {})
    # @param [Hash] params ({})
    def reserve_contact(params = {}, options = {})
      req = build_request(:reserve_contact, params)
      req.send_request(options)
    end

    # Assigns a tag to a resource.
    #
    # @option params [required, String] :resource_arn
    #   ARN of a resource tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tags assigned to a resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deassigns a resource tag.
    #
    # @option params [required, String] :resource_arn
    #   ARN of a resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys of a resource tag.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the `Config` used when scheduling contacts.
    #
    # Updating a `Config` will not update the execution parameters for
    # existing future contacts scheduled with this `Config`.
    #
    # @option params [required, Types::ConfigTypeData] :config_data
    #   Parameters of a `Config`.
    #
    # @option params [required, String] :config_id
    #   UUID of a `Config`.
    #
    # @option params [required, String] :config_type
    #   Type of a `Config`.
    #
    # @option params [required, String] :name
    #   Name of a `Config`.
    #
    # @return [Types::ConfigIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConfigIdResponse#config_arn #config_arn} => String
    #   * {Types::ConfigIdResponse#config_id #config_id} => String
    #   * {Types::ConfigIdResponse#config_type #config_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_config({
    #     config_data: { # required
    #       antenna_downlink_config: {
    #         spectrum_config: { # required
    #           bandwidth: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           center_frequency: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #         },
    #       },
    #       antenna_downlink_demod_decode_config: {
    #         decode_config: { # required
    #           unvalidated_json: "JsonString", # required
    #         },
    #         demodulation_config: { # required
    #           unvalidated_json: "JsonString", # required
    #         },
    #         spectrum_config: { # required
    #           bandwidth: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           center_frequency: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #         },
    #       },
    #       antenna_uplink_config: {
    #         spectrum_config: { # required
    #           center_frequency: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #         },
    #         target_eirp: { # required
    #           units: "dBW", # required, accepts dBW
    #           value: 1.0, # required
    #         },
    #         transmit_disabled: false,
    #       },
    #       dataflow_endpoint_config: {
    #         dataflow_endpoint_name: "String", # required
    #         dataflow_endpoint_region: "String",
    #       },
    #       tracking_config: {
    #         autotrack: "PREFERRED", # required, accepts PREFERRED, REMOVED, REQUIRED
    #       },
    #       uplink_echo_config: {
    #         antenna_uplink_config_arn: "ConfigArn", # required
    #         enabled: false, # required
    #       },
    #     },
    #     config_id: "String", # required
    #     config_type: "antenna-downlink", # required, accepts antenna-downlink, antenna-downlink-demod-decode, antenna-uplink, dataflow-endpoint, tracking, uplink-echo
    #     name: "SafeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.config_arn #=> String
    #   resp.config_id #=> String
    #   resp.config_type #=> String, one of "antenna-downlink", "antenna-downlink-demod-decode", "antenna-uplink", "dataflow-endpoint", "tracking", "uplink-echo"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UpdateConfig AWS API Documentation
    #
    # @overload update_config(params = {})
    # @param [Hash] params ({})
    def update_config(params = {}, options = {})
      req = build_request(:update_config, params)
      req.send_request(options)
    end

    # Updates a mission profile.
    #
    # Updating a mission profile will not update the execution parameters
    # for existing future contacts.
    #
    # @option params [Integer] :contact_post_pass_duration_seconds
    #   Amount of time after a contact ends that you’d like to receive a
    #   CloudWatch event indicating the pass has finished.
    #
    # @option params [Integer] :contact_pre_pass_duration_seconds
    #   Amount of time after a contact ends that you’d like to receive a
    #   CloudWatch event indicating the pass has finished.
    #
    # @option params [Array<Array>] :dataflow_edges
    #   A list of lists of ARNs. Each list of ARNs is an edge, with a *from*
    #   `Config` and a *to* `Config`.
    #
    # @option params [Integer] :minimum_viable_contact_duration_seconds
    #   Smallest amount of time in seconds that you’d like to see for an
    #   available contact. AWS Ground Station will not present you with
    #   contacts shorter than this duration.
    #
    # @option params [required, String] :mission_profile_id
    #   UUID of a mission profile.
    #
    # @option params [String] :name
    #   Name of a mission profile.
    #
    # @option params [String] :tracking_config_arn
    #   ARN of a tracking `Config`.
    #
    # @return [Types::MissionProfileIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MissionProfileIdResponse#mission_profile_id #mission_profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_mission_profile({
    #     contact_post_pass_duration_seconds: 1,
    #     contact_pre_pass_duration_seconds: 1,
    #     dataflow_edges: [
    #       ["ConfigArn"],
    #     ],
    #     minimum_viable_contact_duration_seconds: 1,
    #     mission_profile_id: "String", # required
    #     name: "SafeName",
    #     tracking_config_arn: "ConfigArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.mission_profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UpdateMissionProfile AWS API Documentation
    #
    # @overload update_mission_profile(params = {})
    # @param [Hash] params ({})
    def update_mission_profile(params = {}, options = {})
      req = build_request(:update_mission_profile, params)
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
      context[:gem_name] = 'aws-sdk-groundstation'
      context[:gem_version] = '1.15.0'
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
