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
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:iottwinmaker)

module Aws::IoTTwinMaker
  # An API client for IoTTwinMaker.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IoTTwinMaker::Client.new(
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

    @identifier = :iottwinmaker

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
    add_plugin(Aws::Plugins::DefaultsMode)
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

    # Sets values for multiple time series properties.
    #
    # @option params [required, Array<Types::PropertyValueEntry>] :entries
    #   An object that maps strings to the property value entries to set. Each
    #   string in the mapping must be unique to this object.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace that contains the properties to set.
    #
    # @return [Types::BatchPutPropertyValuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutPropertyValuesResponse#error_entries #error_entries} => Array&lt;Types::BatchPutPropertyErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_property_values({
    #     entries: [ # required
    #       {
    #         entity_property_reference: { # required
    #           component_name: "Name",
    #           entity_id: "EntityId",
    #           external_id_property: {
    #             "String" => "String",
    #           },
    #           property_name: "Name", # required
    #         },
    #         property_values: [
    #           {
    #             timestamp: Time.now, # required
    #             value: { # required
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 },
    #               ],
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.error_entries #=> Array
    #   resp.error_entries[0].errors #=> Array
    #   resp.error_entries[0].errors[0].entry.entity_property_reference.component_name #=> String
    #   resp.error_entries[0].errors[0].entry.entity_property_reference.entity_id #=> String
    #   resp.error_entries[0].errors[0].entry.entity_property_reference.external_id_property #=> Hash
    #   resp.error_entries[0].errors[0].entry.entity_property_reference.external_id_property["String"] #=> String
    #   resp.error_entries[0].errors[0].entry.entity_property_reference.property_name #=> String
    #   resp.error_entries[0].errors[0].entry.property_values #=> Array
    #   resp.error_entries[0].errors[0].entry.property_values[0].timestamp #=> Time
    #   resp.error_entries[0].errors[0].entry.property_values[0].value.boolean_value #=> Boolean
    #   resp.error_entries[0].errors[0].entry.property_values[0].value.double_value #=> Float
    #   resp.error_entries[0].errors[0].entry.property_values[0].value.expression #=> String
    #   resp.error_entries[0].errors[0].entry.property_values[0].value.integer_value #=> Integer
    #   resp.error_entries[0].errors[0].entry.property_values[0].value.list_value #=> Array
    #   resp.error_entries[0].errors[0].entry.property_values[0].value.list_value[0] #=> Types::DataValue
    #   resp.error_entries[0].errors[0].entry.property_values[0].value.long_value #=> Integer
    #   resp.error_entries[0].errors[0].entry.property_values[0].value.map_value #=> Hash
    #   resp.error_entries[0].errors[0].entry.property_values[0].value.map_value["String"] #=> Types::DataValue
    #   resp.error_entries[0].errors[0].entry.property_values[0].value.relationship_value.target_component_name #=> String
    #   resp.error_entries[0].errors[0].entry.property_values[0].value.relationship_value.target_entity_id #=> String
    #   resp.error_entries[0].errors[0].entry.property_values[0].value.string_value #=> String
    #   resp.error_entries[0].errors[0].error_code #=> String
    #   resp.error_entries[0].errors[0].error_message #=> String
    #
    # @overload batch_put_property_values(params = {})
    # @param [Hash] params ({})
    def batch_put_property_values(params = {}, options = {})
      req = build_request(:batch_put_property_values, params)
      req.send_request(options)
    end

    # Creates a component type.
    #
    # TwinMaker is in public preview and is subject to change.
    #
    # @option params [required, String] :component_type_id
    #   The ID of the component type.
    #
    # @option params [String] :description
    #   The description of the component type.
    #
    # @option params [Array<String>] :extends_from
    #   Specifies the parent component type to extend.
    #
    # @option params [Hash<String,Types::FunctionRequest>] :functions
    #   An object that maps strings to the functions in the component type.
    #   Each string in the mapping must be unique to this object.
    #
    # @option params [Boolean] :is_singleton
    #   A Boolean value that specifies whether an entity can have more than
    #   one component of this type.
    #
    # @option params [Hash<String,Types::PropertyDefinitionRequest>] :property_definitions
    #   An object that maps strings to the property definitions in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that you can use to manage the component type.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace that contains the component type.
    #
    # @return [Types::CreateComponentTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateComponentTypeResponse#arn #arn} => String
    #   * {Types::CreateComponentTypeResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::CreateComponentTypeResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component_type({
    #     component_type_id: "ComponentTypeId", # required
    #     description: "Description",
    #     extends_from: ["ComponentTypeId"],
    #     functions: {
    #       "Name" => {
    #         implemented_by: {
    #           is_native: false,
    #           lambda: {
    #             arn: "LambdaArn", # required
    #           },
    #         },
    #         required_properties: ["Name"],
    #         scope: "ENTITY", # accepts ENTITY, WORKSPACE
    #       },
    #     },
    #     is_singleton: false,
    #     property_definitions: {
    #       "Name" => {
    #         configuration: {
    #           "Name" => "Value",
    #         },
    #         data_type: {
    #           allowed_values: [
    #             {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: {
    #                 # recursive DataValueList
    #               },
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #           ],
    #           nested_type: {
    #             # recursive DataType
    #           },
    #           relationship: {
    #             relationship_type: "String",
    #             target_component_type_id: "ComponentTypeId",
    #           },
    #           type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #           unit_of_measure: "String",
    #         },
    #         default_value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           expression: "Expression",
    #           integer_value: 1,
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             },
    #           ],
    #           long_value: 1,
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             },
    #           },
    #           relationship_value: {
    #             target_component_name: "Name",
    #             target_entity_id: "EntityId",
    #           },
    #           string_value: "String",
    #         },
    #         is_external_id: false,
    #         is_required_in_entity: false,
    #         is_stored_externally: false,
    #         is_time_series: false,
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_date_time #=> Time
    #   resp.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"
    #
    # @overload create_component_type(params = {})
    # @param [Hash] params ({})
    def create_component_type(params = {}, options = {})
      req = build_request(:create_component_type, params)
      req.send_request(options)
    end

    # Creates an entity.
    #
    # @option params [Hash<String,Types::ComponentRequest>] :components
    #   An object that maps strings to the components in the entity. Each
    #   string in the mapping must be unique to this object.
    #
    # @option params [String] :description
    #   The description of the entity.
    #
    # @option params [String] :entity_id
    #   The ID of the entity.
    #
    # @option params [required, String] :entity_name
    #   The name of the entity.
    #
    # @option params [String] :parent_entity_id
    #   The ID of the entity's parent entity.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that you can use to manage the entity.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace that contains the entity.
    #
    # @return [Types::CreateEntityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEntityResponse#arn #arn} => String
    #   * {Types::CreateEntityResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::CreateEntityResponse#entity_id #entity_id} => String
    #   * {Types::CreateEntityResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_entity({
    #     components: {
    #       "Name" => {
    #         component_type_id: "ComponentTypeId",
    #         description: "Description",
    #         properties: {
    #           "Name" => {
    #             definition: {
    #               configuration: {
    #                 "Name" => "Value",
    #               },
    #               data_type: {
    #                 allowed_values: [
    #                   {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     expression: "Expression",
    #                     integer_value: 1,
    #                     list_value: {
    #                       # recursive DataValueList
    #                     },
    #                     long_value: 1,
    #                     map_value: {
    #                       "String" => {
    #                         # recursive DataValue
    #                       },
    #                     },
    #                     relationship_value: {
    #                       target_component_name: "Name",
    #                       target_entity_id: "EntityId",
    #                     },
    #                     string_value: "String",
    #                   },
    #                 ],
    #                 nested_type: {
    #                   # recursive DataType
    #                 },
    #                 relationship: {
    #                   relationship_type: "String",
    #                   target_component_type_id: "ComponentTypeId",
    #                 },
    #                 type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #                 unit_of_measure: "String",
    #               },
    #               default_value: {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 expression: "Expression",
    #                 integer_value: 1,
    #                 list_value: [
    #                   {
    #                     # recursive DataValue
    #                   },
    #                 ],
    #                 long_value: 1,
    #                 map_value: {
    #                   "String" => {
    #                     # recursive DataValue
    #                   },
    #                 },
    #                 relationship_value: {
    #                   target_component_name: "Name",
    #                   target_entity_id: "EntityId",
    #                 },
    #                 string_value: "String",
    #               },
    #               is_external_id: false,
    #               is_required_in_entity: false,
    #               is_stored_externally: false,
    #               is_time_series: false,
    #             },
    #             update_type: "UPDATE", # accepts UPDATE, DELETE
    #             value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 },
    #               ],
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #           },
    #         },
    #       },
    #     },
    #     description: "Description",
    #     entity_id: "EntityId",
    #     entity_name: "EntityName", # required
    #     parent_entity_id: "ParentEntityId",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_date_time #=> Time
    #   resp.entity_id #=> String
    #   resp.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"
    #
    # @overload create_entity(params = {})
    # @param [Hash] params ({})
    def create_entity(params = {}, options = {})
      req = build_request(:create_entity, params)
      req.send_request(options)
    end

    # Creates a scene.
    #
    # @option params [Array<String>] :capabilities
    #   A list of capabilities that the scene uses to render itself.
    #
    # @option params [required, String] :content_location
    #   The relative path that specifies the location of the content
    #   definition file.
    #
    # @option params [String] :description
    #   The description for this scene.
    #
    # @option params [required, String] :scene_id
    #   The ID of the scene.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that you can use to manage the scene.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace that contains the scene.
    #
    # @return [Types::CreateSceneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSceneResponse#arn #arn} => String
    #   * {Types::CreateSceneResponse#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scene({
    #     capabilities: ["SceneCapability"],
    #     content_location: "S3Url", # required
    #     description: "Description",
    #     scene_id: "Id", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_date_time #=> Time
    #
    # @overload create_scene(params = {})
    # @param [Hash] params ({})
    def create_scene(params = {}, options = {})
      req = build_request(:create_scene, params)
      req.send_request(options)
    end

    # Creates a workplace.
    #
    # @option params [String] :description
    #   The description of the workspace.
    #
    # @option params [required, String] :role
    #   The ARN of the execution role associated with the workspace.
    #
    # @option params [required, String] :s3_location
    #   The ARN of the S3 bucket where resources associated with the workspace
    #   are stored.
    #
    # @option params [Hash<String,String>] :tags
    #   Metadata that you can use to manage the workspace
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace.
    #
    # @return [Types::CreateWorkspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkspaceResponse#arn #arn} => String
    #   * {Types::CreateWorkspaceResponse#creation_date_time #creation_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace({
    #     description: "Description",
    #     role: "RoleArn", # required
    #     s3_location: "S3Location", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_date_time #=> Time
    #
    # @overload create_workspace(params = {})
    # @param [Hash] params ({})
    def create_workspace(params = {}, options = {})
      req = build_request(:create_workspace, params)
      req.send_request(options)
    end

    # Deletes a component type.
    #
    # @option params [required, String] :component_type_id
    #   The ID of the component type to delete.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace that contains the component type.
    #
    # @return [Types::DeleteComponentTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteComponentTypeResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component_type({
    #     component_type_id: "ComponentTypeId", # required
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"
    #
    # @overload delete_component_type(params = {})
    # @param [Hash] params ({})
    def delete_component_type(params = {}, options = {})
      req = build_request(:delete_component_type, params)
      req.send_request(options)
    end

    # Deletes an entity.
    #
    # @option params [required, String] :entity_id
    #   The ID of the entity to delete.
    #
    # @option params [Boolean] :is_recursive
    #   A Boolean value that specifies whether the operation deletes child
    #   entities.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace that contains the entity to delete.
    #
    # @return [Types::DeleteEntityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEntityResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_entity({
    #     entity_id: "EntityId", # required
    #     is_recursive: false,
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"
    #
    # @overload delete_entity(params = {})
    # @param [Hash] params ({})
    def delete_entity(params = {}, options = {})
      req = build_request(:delete_entity, params)
      req.send_request(options)
    end

    # Deletes a scene.
    #
    # @option params [required, String] :scene_id
    #   The ID of the scene to delete.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scene({
    #     scene_id: "Id", # required
    #     workspace_id: "Id", # required
    #   })
    #
    # @overload delete_scene(params = {})
    # @param [Hash] params ({})
    def delete_scene(params = {}, options = {})
      req = build_request(:delete_scene, params)
      req.send_request(options)
    end

    # Deletes a workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace({
    #     workspace_id: "Id", # required
    #   })
    #
    # @overload delete_workspace(params = {})
    # @param [Hash] params ({})
    def delete_workspace(params = {}, options = {})
      req = build_request(:delete_workspace, params)
      req.send_request(options)
    end

    # Retrieves information about a component type.
    #
    # @option params [required, String] :component_type_id
    #   The ID of the component type.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace that contains the component type.
    #
    # @return [Types::GetComponentTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComponentTypeResponse#arn #arn} => String
    #   * {Types::GetComponentTypeResponse#component_type_id #component_type_id} => String
    #   * {Types::GetComponentTypeResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::GetComponentTypeResponse#description #description} => String
    #   * {Types::GetComponentTypeResponse#extends_from #extends_from} => Array&lt;String&gt;
    #   * {Types::GetComponentTypeResponse#functions #functions} => Hash&lt;String,Types::FunctionResponse&gt;
    #   * {Types::GetComponentTypeResponse#is_abstract #is_abstract} => Boolean
    #   * {Types::GetComponentTypeResponse#is_schema_initialized #is_schema_initialized} => Boolean
    #   * {Types::GetComponentTypeResponse#is_singleton #is_singleton} => Boolean
    #   * {Types::GetComponentTypeResponse#property_definitions #property_definitions} => Hash&lt;String,Types::PropertyDefinitionResponse&gt;
    #   * {Types::GetComponentTypeResponse#status #status} => Types::Status
    #   * {Types::GetComponentTypeResponse#update_date_time #update_date_time} => Time
    #   * {Types::GetComponentTypeResponse#workspace_id #workspace_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component_type({
    #     component_type_id: "ComponentTypeId", # required
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.component_type_id #=> String
    #   resp.creation_date_time #=> Time
    #   resp.description #=> String
    #   resp.extends_from #=> Array
    #   resp.extends_from[0] #=> String
    #   resp.functions #=> Hash
    #   resp.functions["Name"].implemented_by.is_native #=> Boolean
    #   resp.functions["Name"].implemented_by.lambda.arn #=> String
    #   resp.functions["Name"].is_inherited #=> Boolean
    #   resp.functions["Name"].required_properties #=> Array
    #   resp.functions["Name"].required_properties[0] #=> String
    #   resp.functions["Name"].scope #=> String, one of "ENTITY", "WORKSPACE"
    #   resp.is_abstract #=> Boolean
    #   resp.is_schema_initialized #=> Boolean
    #   resp.is_singleton #=> Boolean
    #   resp.property_definitions #=> Hash
    #   resp.property_definitions["Name"].configuration #=> Hash
    #   resp.property_definitions["Name"].configuration["Name"] #=> String
    #   resp.property_definitions["Name"].data_type.allowed_values #=> Array
    #   resp.property_definitions["Name"].data_type.allowed_values[0].boolean_value #=> Boolean
    #   resp.property_definitions["Name"].data_type.allowed_values[0].double_value #=> Float
    #   resp.property_definitions["Name"].data_type.allowed_values[0].expression #=> String
    #   resp.property_definitions["Name"].data_type.allowed_values[0].integer_value #=> Integer
    #   resp.property_definitions["Name"].data_type.allowed_values[0].list_value #=> Types::DataValueList
    #   resp.property_definitions["Name"].data_type.allowed_values[0].long_value #=> Integer
    #   resp.property_definitions["Name"].data_type.allowed_values[0].map_value #=> Hash
    #   resp.property_definitions["Name"].data_type.allowed_values[0].map_value["String"] #=> Types::DataValue
    #   resp.property_definitions["Name"].data_type.allowed_values[0].relationship_value.target_component_name #=> String
    #   resp.property_definitions["Name"].data_type.allowed_values[0].relationship_value.target_entity_id #=> String
    #   resp.property_definitions["Name"].data_type.allowed_values[0].string_value #=> String
    #   resp.property_definitions["Name"].data_type.nested_type #=> Types::DataType
    #   resp.property_definitions["Name"].data_type.relationship.relationship_type #=> String
    #   resp.property_definitions["Name"].data_type.relationship.target_component_type_id #=> String
    #   resp.property_definitions["Name"].data_type.type #=> String, one of "RELATIONSHIP", "STRING", "LONG", "BOOLEAN", "INTEGER", "DOUBLE", "LIST", "MAP"
    #   resp.property_definitions["Name"].data_type.unit_of_measure #=> String
    #   resp.property_definitions["Name"].default_value.boolean_value #=> Boolean
    #   resp.property_definitions["Name"].default_value.double_value #=> Float
    #   resp.property_definitions["Name"].default_value.expression #=> String
    #   resp.property_definitions["Name"].default_value.integer_value #=> Integer
    #   resp.property_definitions["Name"].default_value.list_value #=> Array
    #   resp.property_definitions["Name"].default_value.list_value[0] #=> Types::DataValue
    #   resp.property_definitions["Name"].default_value.long_value #=> Integer
    #   resp.property_definitions["Name"].default_value.map_value #=> Hash
    #   resp.property_definitions["Name"].default_value.map_value["String"] #=> Types::DataValue
    #   resp.property_definitions["Name"].default_value.relationship_value.target_component_name #=> String
    #   resp.property_definitions["Name"].default_value.relationship_value.target_entity_id #=> String
    #   resp.property_definitions["Name"].default_value.string_value #=> String
    #   resp.property_definitions["Name"].is_external_id #=> Boolean
    #   resp.property_definitions["Name"].is_final #=> Boolean
    #   resp.property_definitions["Name"].is_imported #=> Boolean
    #   resp.property_definitions["Name"].is_inherited #=> Boolean
    #   resp.property_definitions["Name"].is_required_in_entity #=> Boolean
    #   resp.property_definitions["Name"].is_stored_externally #=> Boolean
    #   resp.property_definitions["Name"].is_time_series #=> Boolean
    #   resp.status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.status.error.message #=> String
    #   resp.status.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"
    #   resp.update_date_time #=> Time
    #   resp.workspace_id #=> String
    #
    # @overload get_component_type(params = {})
    # @param [Hash] params ({})
    def get_component_type(params = {}, options = {})
      req = build_request(:get_component_type, params)
      req.send_request(options)
    end

    # Retrieves information about an entity.
    #
    # @option params [required, String] :entity_id
    #   The ID of the entity.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace.
    #
    # @return [Types::GetEntityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEntityResponse#arn #arn} => String
    #   * {Types::GetEntityResponse#components #components} => Hash&lt;String,Types::ComponentResponse&gt;
    #   * {Types::GetEntityResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::GetEntityResponse#description #description} => String
    #   * {Types::GetEntityResponse#entity_id #entity_id} => String
    #   * {Types::GetEntityResponse#entity_name #entity_name} => String
    #   * {Types::GetEntityResponse#has_child_entities #has_child_entities} => Boolean
    #   * {Types::GetEntityResponse#parent_entity_id #parent_entity_id} => String
    #   * {Types::GetEntityResponse#status #status} => Types::Status
    #   * {Types::GetEntityResponse#update_date_time #update_date_time} => Time
    #   * {Types::GetEntityResponse#workspace_id #workspace_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_entity({
    #     entity_id: "EntityId", # required
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.components #=> Hash
    #   resp.components["Name"].component_name #=> String
    #   resp.components["Name"].component_type_id #=> String
    #   resp.components["Name"].defined_in #=> String
    #   resp.components["Name"].description #=> String
    #   resp.components["Name"].properties #=> Hash
    #   resp.components["Name"].properties["Name"].definition.configuration #=> Hash
    #   resp.components["Name"].properties["Name"].definition.configuration["Name"] #=> String
    #   resp.components["Name"].properties["Name"].definition.data_type.allowed_values #=> Array
    #   resp.components["Name"].properties["Name"].definition.data_type.allowed_values[0].boolean_value #=> Boolean
    #   resp.components["Name"].properties["Name"].definition.data_type.allowed_values[0].double_value #=> Float
    #   resp.components["Name"].properties["Name"].definition.data_type.allowed_values[0].expression #=> String
    #   resp.components["Name"].properties["Name"].definition.data_type.allowed_values[0].integer_value #=> Integer
    #   resp.components["Name"].properties["Name"].definition.data_type.allowed_values[0].list_value #=> Types::DataValueList
    #   resp.components["Name"].properties["Name"].definition.data_type.allowed_values[0].long_value #=> Integer
    #   resp.components["Name"].properties["Name"].definition.data_type.allowed_values[0].map_value #=> Hash
    #   resp.components["Name"].properties["Name"].definition.data_type.allowed_values[0].map_value["String"] #=> Types::DataValue
    #   resp.components["Name"].properties["Name"].definition.data_type.allowed_values[0].relationship_value.target_component_name #=> String
    #   resp.components["Name"].properties["Name"].definition.data_type.allowed_values[0].relationship_value.target_entity_id #=> String
    #   resp.components["Name"].properties["Name"].definition.data_type.allowed_values[0].string_value #=> String
    #   resp.components["Name"].properties["Name"].definition.data_type.nested_type #=> Types::DataType
    #   resp.components["Name"].properties["Name"].definition.data_type.relationship.relationship_type #=> String
    #   resp.components["Name"].properties["Name"].definition.data_type.relationship.target_component_type_id #=> String
    #   resp.components["Name"].properties["Name"].definition.data_type.type #=> String, one of "RELATIONSHIP", "STRING", "LONG", "BOOLEAN", "INTEGER", "DOUBLE", "LIST", "MAP"
    #   resp.components["Name"].properties["Name"].definition.data_type.unit_of_measure #=> String
    #   resp.components["Name"].properties["Name"].definition.default_value.boolean_value #=> Boolean
    #   resp.components["Name"].properties["Name"].definition.default_value.double_value #=> Float
    #   resp.components["Name"].properties["Name"].definition.default_value.expression #=> String
    #   resp.components["Name"].properties["Name"].definition.default_value.integer_value #=> Integer
    #   resp.components["Name"].properties["Name"].definition.default_value.list_value #=> Array
    #   resp.components["Name"].properties["Name"].definition.default_value.list_value[0] #=> Types::DataValue
    #   resp.components["Name"].properties["Name"].definition.default_value.long_value #=> Integer
    #   resp.components["Name"].properties["Name"].definition.default_value.map_value #=> Hash
    #   resp.components["Name"].properties["Name"].definition.default_value.map_value["String"] #=> Types::DataValue
    #   resp.components["Name"].properties["Name"].definition.default_value.relationship_value.target_component_name #=> String
    #   resp.components["Name"].properties["Name"].definition.default_value.relationship_value.target_entity_id #=> String
    #   resp.components["Name"].properties["Name"].definition.default_value.string_value #=> String
    #   resp.components["Name"].properties["Name"].definition.is_external_id #=> Boolean
    #   resp.components["Name"].properties["Name"].definition.is_final #=> Boolean
    #   resp.components["Name"].properties["Name"].definition.is_imported #=> Boolean
    #   resp.components["Name"].properties["Name"].definition.is_inherited #=> Boolean
    #   resp.components["Name"].properties["Name"].definition.is_required_in_entity #=> Boolean
    #   resp.components["Name"].properties["Name"].definition.is_stored_externally #=> Boolean
    #   resp.components["Name"].properties["Name"].definition.is_time_series #=> Boolean
    #   resp.components["Name"].properties["Name"].value.boolean_value #=> Boolean
    #   resp.components["Name"].properties["Name"].value.double_value #=> Float
    #   resp.components["Name"].properties["Name"].value.expression #=> String
    #   resp.components["Name"].properties["Name"].value.integer_value #=> Integer
    #   resp.components["Name"].properties["Name"].value.list_value #=> Array
    #   resp.components["Name"].properties["Name"].value.list_value[0] #=> Types::DataValue
    #   resp.components["Name"].properties["Name"].value.long_value #=> Integer
    #   resp.components["Name"].properties["Name"].value.map_value #=> Hash
    #   resp.components["Name"].properties["Name"].value.map_value["String"] #=> Types::DataValue
    #   resp.components["Name"].properties["Name"].value.relationship_value.target_component_name #=> String
    #   resp.components["Name"].properties["Name"].value.relationship_value.target_entity_id #=> String
    #   resp.components["Name"].properties["Name"].value.string_value #=> String
    #   resp.components["Name"].status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.components["Name"].status.error.message #=> String
    #   resp.components["Name"].status.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"
    #   resp.creation_date_time #=> Time
    #   resp.description #=> String
    #   resp.entity_id #=> String
    #   resp.entity_name #=> String
    #   resp.has_child_entities #=> Boolean
    #   resp.parent_entity_id #=> String
    #   resp.status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.status.error.message #=> String
    #   resp.status.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"
    #   resp.update_date_time #=> Time
    #   resp.workspace_id #=> String
    #
    # @overload get_entity(params = {})
    # @param [Hash] params ({})
    def get_entity(params = {}, options = {})
      req = build_request(:get_entity, params)
      req.send_request(options)
    end

    # Gets the property values for a component, component type, entity, or
    # workspace.
    #
    # You must specify a value for either `componentName`,
    # `componentTypeId`, `entityId`, or `workspaceId`.
    #
    # @option params [String] :component_name
    #   The name of the component whose property values the operation returns.
    #
    # @option params [String] :component_type_id
    #   The ID of the component type whose property values the operation
    #   returns.
    #
    # @option params [String] :entity_id
    #   The ID of the entity whose property values the operation returns.
    #
    # @option params [required, Array<String>] :selected_properties
    #   The properties whose values the operation returns.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace whose values the operation returns.
    #
    # @return [Types::GetPropertyValueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPropertyValueResponse#property_values #property_values} => Hash&lt;String,Types::PropertyLatestValue&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_property_value({
    #     component_name: "Name",
    #     component_type_id: "ComponentTypeId",
    #     entity_id: "EntityId",
    #     selected_properties: ["String"], # required
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.property_values #=> Hash
    #   resp.property_values["Name"].property_reference.component_name #=> String
    #   resp.property_values["Name"].property_reference.entity_id #=> String
    #   resp.property_values["Name"].property_reference.external_id_property #=> Hash
    #   resp.property_values["Name"].property_reference.external_id_property["String"] #=> String
    #   resp.property_values["Name"].property_reference.property_name #=> String
    #   resp.property_values["Name"].property_value.boolean_value #=> Boolean
    #   resp.property_values["Name"].property_value.double_value #=> Float
    #   resp.property_values["Name"].property_value.expression #=> String
    #   resp.property_values["Name"].property_value.integer_value #=> Integer
    #   resp.property_values["Name"].property_value.list_value #=> Array
    #   resp.property_values["Name"].property_value.list_value[0] #=> Types::DataValue
    #   resp.property_values["Name"].property_value.long_value #=> Integer
    #   resp.property_values["Name"].property_value.map_value #=> Hash
    #   resp.property_values["Name"].property_value.map_value["String"] #=> Types::DataValue
    #   resp.property_values["Name"].property_value.relationship_value.target_component_name #=> String
    #   resp.property_values["Name"].property_value.relationship_value.target_entity_id #=> String
    #   resp.property_values["Name"].property_value.string_value #=> String
    #
    # @overload get_property_value(params = {})
    # @param [Hash] params ({})
    def get_property_value(params = {}, options = {})
      req = build_request(:get_property_value, params)
      req.send_request(options)
    end

    # Retrieves information about the history of a time series property
    # value for a component, component type, entity, or workspace.
    #
    # You must specify a value for `workspaceId`. For entity-specific
    # queries, specify values for `componentName` and `entityId`. For
    # cross-entity quries, specify a value for `componentTypeId`.
    #
    # @option params [String] :component_name
    #   The name of the component.
    #
    # @option params [String] :component_type_id
    #   The ID of the component type.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_date_time
    #   The date and time of the latest property value to return.
    #
    # @option params [String] :entity_id
    #   The ID of the entity.
    #
    # @option params [Types::InterpolationParameters] :interpolation
    #   An object that specifies the interpolation type and the interval over
    #   which to interpolate data.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results.
    #
    # @option params [String] :order_by_time
    #   The time direction to use in the result order.
    #
    # @option params [Array<Types::PropertyFilter>] :property_filters
    #   A list of objects that filter the property value history request.
    #
    # @option params [required, Array<String>] :selected_properties
    #   A list of properties whose value histories the request retrieves.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_date_time
    #   The date and time of the earliest property value to return.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace.
    #
    # @return [Types::GetPropertyValueHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPropertyValueHistoryResponse#next_token #next_token} => String
    #   * {Types::GetPropertyValueHistoryResponse#property_values #property_values} => Array&lt;Types::PropertyValueHistory&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_property_value_history({
    #     component_name: "Name",
    #     component_type_id: "ComponentTypeId",
    #     end_date_time: Time.now, # required
    #     entity_id: "EntityId",
    #     interpolation: {
    #       interpolation_type: "LINEAR", # accepts LINEAR
    #       interval_in_seconds: 1,
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     order_by_time: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     property_filters: [
    #       {
    #         operator: "String",
    #         property_name: "String",
    #         value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           expression: "Expression",
    #           integer_value: 1,
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             },
    #           ],
    #           long_value: 1,
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             },
    #           },
    #           relationship_value: {
    #             target_component_name: "Name",
    #             target_entity_id: "EntityId",
    #           },
    #           string_value: "String",
    #         },
    #       },
    #     ],
    #     selected_properties: ["String"], # required
    #     start_date_time: Time.now, # required
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.property_values #=> Array
    #   resp.property_values[0].entity_property_reference.component_name #=> String
    #   resp.property_values[0].entity_property_reference.entity_id #=> String
    #   resp.property_values[0].entity_property_reference.external_id_property #=> Hash
    #   resp.property_values[0].entity_property_reference.external_id_property["String"] #=> String
    #   resp.property_values[0].entity_property_reference.property_name #=> String
    #   resp.property_values[0].values #=> Array
    #   resp.property_values[0].values[0].timestamp #=> Time
    #   resp.property_values[0].values[0].value.boolean_value #=> Boolean
    #   resp.property_values[0].values[0].value.double_value #=> Float
    #   resp.property_values[0].values[0].value.expression #=> String
    #   resp.property_values[0].values[0].value.integer_value #=> Integer
    #   resp.property_values[0].values[0].value.list_value #=> Array
    #   resp.property_values[0].values[0].value.list_value[0] #=> Types::DataValue
    #   resp.property_values[0].values[0].value.long_value #=> Integer
    #   resp.property_values[0].values[0].value.map_value #=> Hash
    #   resp.property_values[0].values[0].value.map_value["String"] #=> Types::DataValue
    #   resp.property_values[0].values[0].value.relationship_value.target_component_name #=> String
    #   resp.property_values[0].values[0].value.relationship_value.target_entity_id #=> String
    #   resp.property_values[0].values[0].value.string_value #=> String
    #
    # @overload get_property_value_history(params = {})
    # @param [Hash] params ({})
    def get_property_value_history(params = {}, options = {})
      req = build_request(:get_property_value_history, params)
      req.send_request(options)
    end

    # Retrieves information about a scene.
    #
    # @option params [required, String] :scene_id
    #   The ID of the scene.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace that contains the scene.
    #
    # @return [Types::GetSceneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSceneResponse#arn #arn} => String
    #   * {Types::GetSceneResponse#capabilities #capabilities} => Array&lt;String&gt;
    #   * {Types::GetSceneResponse#content_location #content_location} => String
    #   * {Types::GetSceneResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::GetSceneResponse#description #description} => String
    #   * {Types::GetSceneResponse#scene_id #scene_id} => String
    #   * {Types::GetSceneResponse#update_date_time #update_date_time} => Time
    #   * {Types::GetSceneResponse#workspace_id #workspace_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_scene({
    #     scene_id: "Id", # required
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.capabilities #=> Array
    #   resp.capabilities[0] #=> String
    #   resp.content_location #=> String
    #   resp.creation_date_time #=> Time
    #   resp.description #=> String
    #   resp.scene_id #=> String
    #   resp.update_date_time #=> Time
    #   resp.workspace_id #=> String
    #
    # @overload get_scene(params = {})
    # @param [Hash] params ({})
    def get_scene(params = {}, options = {})
      req = build_request(:get_scene, params)
      req.send_request(options)
    end

    # Retrieves information about a workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace.
    #
    # @return [Types::GetWorkspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkspaceResponse#arn #arn} => String
    #   * {Types::GetWorkspaceResponse#creation_date_time #creation_date_time} => Time
    #   * {Types::GetWorkspaceResponse#description #description} => String
    #   * {Types::GetWorkspaceResponse#role #role} => String
    #   * {Types::GetWorkspaceResponse#s3_location #s3_location} => String
    #   * {Types::GetWorkspaceResponse#update_date_time #update_date_time} => Time
    #   * {Types::GetWorkspaceResponse#workspace_id #workspace_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workspace({
    #     workspace_id: "IdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_date_time #=> Time
    #   resp.description #=> String
    #   resp.role #=> String
    #   resp.s3_location #=> String
    #   resp.update_date_time #=> Time
    #   resp.workspace_id #=> String
    #
    # @overload get_workspace(params = {})
    # @param [Hash] params ({})
    def get_workspace(params = {}, options = {})
      req = build_request(:get_workspace, params)
      req.send_request(options)
    end

    # Lists all component types in a workspace.
    #
    # @option params [Array<Types::ListComponentTypesFilter>] :filters
    #   A list of objects that filter the request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace.
    #
    # @return [Types::ListComponentTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentTypesResponse#component_type_summaries #component_type_summaries} => Array&lt;Types::ComponentTypeSummary&gt;
    #   * {Types::ListComponentTypesResponse#max_results #max_results} => Integer
    #   * {Types::ListComponentTypesResponse#next_token #next_token} => String
    #   * {Types::ListComponentTypesResponse#workspace_id #workspace_id} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_component_types({
    #     filters: [
    #       {
    #         extends_from: "ComponentTypeId",
    #         is_abstract: false,
    #         namespace: "String",
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.component_type_summaries #=> Array
    #   resp.component_type_summaries[0].arn #=> String
    #   resp.component_type_summaries[0].component_type_id #=> String
    #   resp.component_type_summaries[0].creation_date_time #=> Time
    #   resp.component_type_summaries[0].description #=> String
    #   resp.component_type_summaries[0].status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.component_type_summaries[0].status.error.message #=> String
    #   resp.component_type_summaries[0].status.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"
    #   resp.component_type_summaries[0].update_date_time #=> Time
    #   resp.max_results #=> Integer
    #   resp.next_token #=> String
    #   resp.workspace_id #=> String
    #
    # @overload list_component_types(params = {})
    # @param [Hash] params ({})
    def list_component_types(params = {}, options = {})
      req = build_request(:list_component_types, params)
      req.send_request(options)
    end

    # Lists all entities in a workspace.
    #
    # @option params [Array<Types::ListEntitiesFilter>] :filters
    #   A list of objects that filter the request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace.
    #
    # @return [Types::ListEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntitiesResponse#entity_summaries #entity_summaries} => Array&lt;Types::EntitySummary&gt;
    #   * {Types::ListEntitiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entities({
    #     filters: [
    #       {
    #         component_type_id: "ComponentTypeId",
    #         parent_entity_id: "ParentEntityId",
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entity_summaries #=> Array
    #   resp.entity_summaries[0].arn #=> String
    #   resp.entity_summaries[0].creation_date_time #=> Time
    #   resp.entity_summaries[0].description #=> String
    #   resp.entity_summaries[0].entity_id #=> String
    #   resp.entity_summaries[0].entity_name #=> String
    #   resp.entity_summaries[0].has_child_entities #=> Boolean
    #   resp.entity_summaries[0].parent_entity_id #=> String
    #   resp.entity_summaries[0].status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.entity_summaries[0].status.error.message #=> String
    #   resp.entity_summaries[0].status.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"
    #   resp.entity_summaries[0].update_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_entities(params = {})
    # @param [Hash] params ({})
    def list_entities(params = {}, options = {})
      req = build_request(:list_entities, params)
      req.send_request(options)
    end

    # Lists all scenes in a workspace.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of results to display.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace that contains the scenes.
    #
    # @return [Types::ListScenesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScenesResponse#next_token #next_token} => String
    #   * {Types::ListScenesResponse#scene_summaries #scene_summaries} => Array&lt;Types::SceneSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scenes({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.scene_summaries #=> Array
    #   resp.scene_summaries[0].arn #=> String
    #   resp.scene_summaries[0].content_location #=> String
    #   resp.scene_summaries[0].creation_date_time #=> Time
    #   resp.scene_summaries[0].description #=> String
    #   resp.scene_summaries[0].scene_id #=> String
    #   resp.scene_summaries[0].update_date_time #=> Time
    #
    # @overload list_scenes(params = {})
    # @param [Hash] params ({})
    def list_scenes(params = {}, options = {})
      req = build_request(:list_scenes, params)
      req.send_request(options)
    end

    # Lists all tags associated with a resource.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     resource_arn: "TwinMakerArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieves information about workspaces in the current account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to display.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results.
    #
    # @return [Types::ListWorkspacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkspacesResponse#next_token #next_token} => String
    #   * {Types::ListWorkspacesResponse#workspace_summaries #workspace_summaries} => Array&lt;Types::WorkspaceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workspaces({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.workspace_summaries #=> Array
    #   resp.workspace_summaries[0].arn #=> String
    #   resp.workspace_summaries[0].creation_date_time #=> Time
    #   resp.workspace_summaries[0].description #=> String
    #   resp.workspace_summaries[0].update_date_time #=> Time
    #   resp.workspace_summaries[0].workspace_id #=> String
    #
    # @overload list_workspaces(params = {})
    # @param [Hash] params ({})
    def list_workspaces(params = {}, options = {})
      req = build_request(:list_workspaces, params)
      req.send_request(options)
    end

    # Adds tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Metadata to add to this resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TwinMakerArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
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
    #   The ARN of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag key names to remove from the resource. You don't
    #   specify the value. Both the key and its associated value are removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TwinMakerArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates information in a component type.
    #
    # @option params [required, String] :component_type_id
    #   The ID of the component type.
    #
    # @option params [String] :description
    #   The description of the component type.
    #
    # @option params [Array<String>] :extends_from
    #   Specifies the component type that this component type extends.
    #
    # @option params [Hash<String,Types::FunctionRequest>] :functions
    #   An object that maps strings to the functions in the component type.
    #   Each string in the mapping must be unique to this object.
    #
    # @option params [Boolean] :is_singleton
    #   A Boolean value that specifies whether an entity can have more than
    #   one component of this type.
    #
    # @option params [Hash<String,Types::PropertyDefinitionRequest>] :property_definitions
    #   An object that maps strings to the property definitions in the
    #   component type. Each string in the mapping must be unique to this
    #   object.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace that contains the component type.
    #
    # @return [Types::UpdateComponentTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateComponentTypeResponse#arn #arn} => String
    #   * {Types::UpdateComponentTypeResponse#component_type_id #component_type_id} => String
    #   * {Types::UpdateComponentTypeResponse#state #state} => String
    #   * {Types::UpdateComponentTypeResponse#workspace_id #workspace_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_component_type({
    #     component_type_id: "ComponentTypeId", # required
    #     description: "Description",
    #     extends_from: ["ComponentTypeId"],
    #     functions: {
    #       "Name" => {
    #         implemented_by: {
    #           is_native: false,
    #           lambda: {
    #             arn: "LambdaArn", # required
    #           },
    #         },
    #         required_properties: ["Name"],
    #         scope: "ENTITY", # accepts ENTITY, WORKSPACE
    #       },
    #     },
    #     is_singleton: false,
    #     property_definitions: {
    #       "Name" => {
    #         configuration: {
    #           "Name" => "Value",
    #         },
    #         data_type: {
    #           allowed_values: [
    #             {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: {
    #                 # recursive DataValueList
    #               },
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #           ],
    #           nested_type: {
    #             # recursive DataType
    #           },
    #           relationship: {
    #             relationship_type: "String",
    #             target_component_type_id: "ComponentTypeId",
    #           },
    #           type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #           unit_of_measure: "String",
    #         },
    #         default_value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           expression: "Expression",
    #           integer_value: 1,
    #           list_value: [
    #             {
    #               # recursive DataValue
    #             },
    #           ],
    #           long_value: 1,
    #           map_value: {
    #             "String" => {
    #               # recursive DataValue
    #             },
    #           },
    #           relationship_value: {
    #             target_component_name: "Name",
    #             target_entity_id: "EntityId",
    #           },
    #           string_value: "String",
    #         },
    #         is_external_id: false,
    #         is_required_in_entity: false,
    #         is_stored_externally: false,
    #         is_time_series: false,
    #       },
    #     },
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.component_type_id #=> String
    #   resp.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"
    #   resp.workspace_id #=> String
    #
    # @overload update_component_type(params = {})
    # @param [Hash] params ({})
    def update_component_type(params = {}, options = {})
      req = build_request(:update_component_type, params)
      req.send_request(options)
    end

    # Updates an entity.
    #
    # @option params [Hash<String,Types::ComponentUpdateRequest>] :component_updates
    #   An object that maps strings to the component updates in the request.
    #   Each string in the mapping must be unique to this object.
    #
    # @option params [String] :description
    #   The description of the entity.
    #
    # @option params [required, String] :entity_id
    #   The ID of the entity.
    #
    # @option params [String] :entity_name
    #   The name of the entity.
    #
    # @option params [Types::ParentEntityUpdateRequest] :parent_entity_update
    #   An object that describes the update request for a parent entity.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace that contains the entity.
    #
    # @return [Types::UpdateEntityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEntityResponse#state #state} => String
    #   * {Types::UpdateEntityResponse#update_date_time #update_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_entity({
    #     component_updates: {
    #       "Name" => {
    #         component_type_id: "ComponentTypeId",
    #         description: "Description",
    #         property_updates: {
    #           "Name" => {
    #             definition: {
    #               configuration: {
    #                 "Name" => "Value",
    #               },
    #               data_type: {
    #                 allowed_values: [
    #                   {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     expression: "Expression",
    #                     integer_value: 1,
    #                     list_value: {
    #                       # recursive DataValueList
    #                     },
    #                     long_value: 1,
    #                     map_value: {
    #                       "String" => {
    #                         # recursive DataValue
    #                       },
    #                     },
    #                     relationship_value: {
    #                       target_component_name: "Name",
    #                       target_entity_id: "EntityId",
    #                     },
    #                     string_value: "String",
    #                   },
    #                 ],
    #                 nested_type: {
    #                   # recursive DataType
    #                 },
    #                 relationship: {
    #                   relationship_type: "String",
    #                   target_component_type_id: "ComponentTypeId",
    #                 },
    #                 type: "RELATIONSHIP", # required, accepts RELATIONSHIP, STRING, LONG, BOOLEAN, INTEGER, DOUBLE, LIST, MAP
    #                 unit_of_measure: "String",
    #               },
    #               default_value: {
    #                 boolean_value: false,
    #                 double_value: 1.0,
    #                 expression: "Expression",
    #                 integer_value: 1,
    #                 list_value: [
    #                   {
    #                     # recursive DataValue
    #                   },
    #                 ],
    #                 long_value: 1,
    #                 map_value: {
    #                   "String" => {
    #                     # recursive DataValue
    #                   },
    #                 },
    #                 relationship_value: {
    #                   target_component_name: "Name",
    #                   target_entity_id: "EntityId",
    #                 },
    #                 string_value: "String",
    #               },
    #               is_external_id: false,
    #               is_required_in_entity: false,
    #               is_stored_externally: false,
    #               is_time_series: false,
    #             },
    #             update_type: "UPDATE", # accepts UPDATE, DELETE
    #             value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               expression: "Expression",
    #               integer_value: 1,
    #               list_value: [
    #                 {
    #                   # recursive DataValue
    #                 },
    #               ],
    #               long_value: 1,
    #               map_value: {
    #                 "String" => {
    #                   # recursive DataValue
    #                 },
    #               },
    #               relationship_value: {
    #                 target_component_name: "Name",
    #                 target_entity_id: "EntityId",
    #               },
    #               string_value: "String",
    #             },
    #           },
    #         },
    #         update_type: "CREATE", # accepts CREATE, UPDATE, DELETE
    #       },
    #     },
    #     description: "Description",
    #     entity_id: "EntityId", # required
    #     entity_name: "EntityName",
    #     parent_entity_update: {
    #       parent_entity_id: "ParentEntityId",
    #       update_type: "UPDATE", # required, accepts UPDATE, DELETE
    #     },
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.state #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"
    #   resp.update_date_time #=> Time
    #
    # @overload update_entity(params = {})
    # @param [Hash] params ({})
    def update_entity(params = {}, options = {})
      req = build_request(:update_entity, params)
      req.send_request(options)
    end

    # Updates a scene.
    #
    # @option params [Array<String>] :capabilities
    #   A list of capabilities that the scene uses to render.
    #
    # @option params [String] :content_location
    #   The relative path that specifies the location of the content
    #   definition file.
    #
    # @option params [String] :description
    #   The description of this scene.
    #
    # @option params [required, String] :scene_id
    #   The ID of the scene.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace that contains the scene.
    #
    # @return [Types::UpdateSceneResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSceneResponse#update_date_time #update_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scene({
    #     capabilities: ["SceneCapability"],
    #     content_location: "S3Url",
    #     description: "Description",
    #     scene_id: "Id", # required
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.update_date_time #=> Time
    #
    # @overload update_scene(params = {})
    # @param [Hash] params ({})
    def update_scene(params = {}, options = {})
      req = build_request(:update_scene, params)
      req.send_request(options)
    end

    # Updates a workspace.
    #
    # @option params [String] :description
    #   The description of the workspace.
    #
    # @option params [String] :role
    #   The ARN of the execution role associated with the workspace.
    #
    # @option params [required, String] :workspace_id
    #   The ID of the workspace.
    #
    # @return [Types::UpdateWorkspaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkspaceResponse#update_date_time #update_date_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace({
    #     description: "Description",
    #     role: "RoleArn",
    #     workspace_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.update_date_time #=> Time
    #
    # @overload update_workspace(params = {})
    # @param [Hash] params ({})
    def update_workspace(params = {}, options = {})
      req = build_request(:update_workspace, params)
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
      context[:gem_name] = 'aws-sdk-iottwinmaker'
      context[:gem_version] = '1.1.0'
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
