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
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:amplifyuibuilder)

module Aws::AmplifyUIBuilder
  # An API client for AmplifyUIBuilder.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AmplifyUIBuilder::Client.new(
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

    @identifier = :amplifyuibuilder

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
    add_plugin(Aws::Plugins::RecursionDetection)
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

    # Creates a new component for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app to associate with the component.
    #
    # @option params [String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::CreateComponentData] :component_to_create
    #   Represents the configuration of the component to create.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @return [Types::CreateComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateComponentResponse#entity #entity} => Types::Component
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component({
    #     app_id: "String", # required
    #     client_token: "String",
    #     component_to_create: { # required
    #       binding_properties: { # required
    #         "String" => {
    #           binding_properties: {
    #             bucket: "String",
    #             default_value: "String",
    #             field: "String",
    #             key: "String",
    #             model: "String",
    #             predicates: [
    #               {
    #                 and: {
    #                   # recursive PredicateList
    #                 },
    #                 field: "String",
    #                 operand: "String",
    #                 operator: "String",
    #                 or: {
    #                   # recursive PredicateList
    #                 },
    #               },
    #             ],
    #             user_attribute: "String",
    #           },
    #           default_value: "String",
    #           type: "String",
    #         },
    #       },
    #       children: [
    #         {
    #           children: {
    #             # recursive ComponentChildList
    #           },
    #           component_type: "String", # required
    #           name: "String", # required
    #           properties: { # required
    #             "String" => {
    #               binding_properties: {
    #                 field: "String",
    #                 property: "String", # required
    #               },
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               collection_binding_properties: {
    #                 field: "String",
    #                 property: "String", # required
    #               },
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 field: "String",
    #                 operand: "String",
    #                 operator: "String",
    #                 property: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #               },
    #               configured: false,
    #               default_value: "String",
    #               event: "String",
    #               imported_value: "String",
    #               model: "String",
    #               type: "String",
    #               user_attribute: "String",
    #               value: "String",
    #             },
    #           },
    #         },
    #       ],
    #       collection_properties: {
    #         "String" => {
    #           identifiers: ["String"],
    #           model: "String", # required
    #           predicate: {
    #             and: [
    #               {
    #                 # recursive Predicate
    #               },
    #             ],
    #             field: "String",
    #             operand: "String",
    #             operator: "String",
    #             or: [
    #               {
    #                 # recursive Predicate
    #               },
    #             ],
    #           },
    #           sort: [
    #             {
    #               direction: "ASC", # required, accepts ASC, DESC
    #               field: "String", # required
    #             },
    #           ],
    #         },
    #       },
    #       component_type: "ComponentType", # required
    #       name: "ComponentName", # required
    #       overrides: { # required
    #         "String" => {
    #           "String" => "String",
    #         },
    #       },
    #       properties: { # required
    #         "String" => {
    #           binding_properties: {
    #             field: "String",
    #             property: "String", # required
    #           },
    #           bindings: {
    #             "String" => {
    #               element: "String", # required
    #               property: "String", # required
    #             },
    #           },
    #           collection_binding_properties: {
    #             field: "String",
    #             property: "String", # required
    #           },
    #           concat: [
    #             {
    #               # recursive ComponentProperty
    #             },
    #           ],
    #           condition: {
    #             else: {
    #               # recursive ComponentProperty
    #             },
    #             field: "String",
    #             operand: "String",
    #             operator: "String",
    #             property: "String",
    #             then: {
    #               # recursive ComponentProperty
    #             },
    #           },
    #           configured: false,
    #           default_value: "String",
    #           event: "String",
    #           imported_value: "String",
    #           model: "String",
    #           type: "String",
    #           user_attribute: "String",
    #           value: "String",
    #         },
    #       },
    #       source_id: "String",
    #       tags: {
    #         "TagKey" => "TagValue",
    #       },
    #       variants: [ # required
    #         {
    #           overrides: {
    #             "String" => {
    #               "String" => "String",
    #             },
    #           },
    #           variant_values: {
    #             "String" => "String",
    #           },
    #         },
    #       ],
    #     },
    #     environment_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entity.app_id #=> String
    #   resp.entity.binding_properties #=> Hash
    #   resp.entity.binding_properties["String"].binding_properties.bucket #=> String
    #   resp.entity.binding_properties["String"].binding_properties.default_value #=> String
    #   resp.entity.binding_properties["String"].binding_properties.field #=> String
    #   resp.entity.binding_properties["String"].binding_properties.key #=> String
    #   resp.entity.binding_properties["String"].binding_properties.model #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates #=> Array
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].and #=> Types::PredicateList
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].field #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].operand #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].operator #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].or #=> Types::PredicateList
    #   resp.entity.binding_properties["String"].binding_properties.user_attribute #=> String
    #   resp.entity.binding_properties["String"].default_value #=> String
    #   resp.entity.binding_properties["String"].type #=> String
    #   resp.entity.children #=> Array
    #   resp.entity.children[0].children #=> Types::ComponentChildList
    #   resp.entity.children[0].component_type #=> String
    #   resp.entity.children[0].name #=> String
    #   resp.entity.children[0].properties #=> Hash
    #   resp.entity.children[0].properties["String"].binding_properties.field #=> String
    #   resp.entity.children[0].properties["String"].binding_properties.property #=> String
    #   resp.entity.children[0].properties["String"].bindings #=> Hash
    #   resp.entity.children[0].properties["String"].bindings["String"].element #=> String
    #   resp.entity.children[0].properties["String"].bindings["String"].property #=> String
    #   resp.entity.children[0].properties["String"].collection_binding_properties.field #=> String
    #   resp.entity.children[0].properties["String"].collection_binding_properties.property #=> String
    #   resp.entity.children[0].properties["String"].concat #=> Array
    #   resp.entity.children[0].properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].properties["String"].condition.field #=> String
    #   resp.entity.children[0].properties["String"].condition.operand #=> String
    #   resp.entity.children[0].properties["String"].condition.operator #=> String
    #   resp.entity.children[0].properties["String"].condition.property #=> String
    #   resp.entity.children[0].properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].properties["String"].configured #=> Boolean
    #   resp.entity.children[0].properties["String"].default_value #=> String
    #   resp.entity.children[0].properties["String"].event #=> String
    #   resp.entity.children[0].properties["String"].imported_value #=> String
    #   resp.entity.children[0].properties["String"].model #=> String
    #   resp.entity.children[0].properties["String"].type #=> String
    #   resp.entity.children[0].properties["String"].user_attribute #=> String
    #   resp.entity.children[0].properties["String"].value #=> String
    #   resp.entity.collection_properties #=> Hash
    #   resp.entity.collection_properties["String"].identifiers #=> Array
    #   resp.entity.collection_properties["String"].identifiers[0] #=> String
    #   resp.entity.collection_properties["String"].model #=> String
    #   resp.entity.collection_properties["String"].predicate.and #=> Array
    #   resp.entity.collection_properties["String"].predicate.and[0] #=> Types::Predicate
    #   resp.entity.collection_properties["String"].predicate.field #=> String
    #   resp.entity.collection_properties["String"].predicate.operand #=> String
    #   resp.entity.collection_properties["String"].predicate.operator #=> String
    #   resp.entity.collection_properties["String"].predicate.or #=> Array
    #   resp.entity.collection_properties["String"].predicate.or[0] #=> Types::Predicate
    #   resp.entity.collection_properties["String"].sort #=> Array
    #   resp.entity.collection_properties["String"].sort[0].direction #=> String, one of "ASC", "DESC"
    #   resp.entity.collection_properties["String"].sort[0].field #=> String
    #   resp.entity.component_type #=> String
    #   resp.entity.created_at #=> Time
    #   resp.entity.environment_name #=> String
    #   resp.entity.id #=> String
    #   resp.entity.modified_at #=> Time
    #   resp.entity.name #=> String
    #   resp.entity.overrides #=> Hash
    #   resp.entity.overrides["String"] #=> Hash
    #   resp.entity.overrides["String"]["String"] #=> String
    #   resp.entity.properties #=> Hash
    #   resp.entity.properties["String"].binding_properties.field #=> String
    #   resp.entity.properties["String"].binding_properties.property #=> String
    #   resp.entity.properties["String"].bindings #=> Hash
    #   resp.entity.properties["String"].bindings["String"].element #=> String
    #   resp.entity.properties["String"].bindings["String"].property #=> String
    #   resp.entity.properties["String"].collection_binding_properties.field #=> String
    #   resp.entity.properties["String"].collection_binding_properties.property #=> String
    #   resp.entity.properties["String"].concat #=> Array
    #   resp.entity.properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entity.properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.entity.properties["String"].condition.field #=> String
    #   resp.entity.properties["String"].condition.operand #=> String
    #   resp.entity.properties["String"].condition.operator #=> String
    #   resp.entity.properties["String"].condition.property #=> String
    #   resp.entity.properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.entity.properties["String"].configured #=> Boolean
    #   resp.entity.properties["String"].default_value #=> String
    #   resp.entity.properties["String"].event #=> String
    #   resp.entity.properties["String"].imported_value #=> String
    #   resp.entity.properties["String"].model #=> String
    #   resp.entity.properties["String"].type #=> String
    #   resp.entity.properties["String"].user_attribute #=> String
    #   resp.entity.properties["String"].value #=> String
    #   resp.entity.source_id #=> String
    #   resp.entity.tags #=> Hash
    #   resp.entity.tags["TagKey"] #=> String
    #   resp.entity.variants #=> Array
    #   resp.entity.variants[0].overrides #=> Hash
    #   resp.entity.variants[0].overrides["String"] #=> Hash
    #   resp.entity.variants[0].overrides["String"]["String"] #=> String
    #   resp.entity.variants[0].variant_values #=> Hash
    #   resp.entity.variants[0].variant_values["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateComponent AWS API Documentation
    #
    # @overload create_component(params = {})
    # @param [Hash] params ({})
    def create_component(params = {}, options = {})
      req = build_request(:create_component, params)
      req.send_request(options)
    end

    # Creates a theme to apply to the components in an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app associated with the theme.
    #
    # @option params [String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @option params [required, Types::CreateThemeData] :theme_to_create
    #   Represents the configuration of the theme to create.
    #
    # @return [Types::CreateThemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThemeResponse#entity #entity} => Types::Theme
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_theme({
    #     app_id: "String", # required
    #     client_token: "String",
    #     environment_name: "String", # required
    #     theme_to_create: { # required
    #       name: "ThemeName", # required
    #       overrides: [
    #         {
    #           key: "String",
    #           value: {
    #             children: {
    #               # recursive ThemeValuesList
    #             },
    #             value: "String",
    #           },
    #         },
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue",
    #       },
    #       values: [ # required
    #         {
    #           key: "String",
    #           value: {
    #             children: {
    #               # recursive ThemeValuesList
    #             },
    #             value: "String",
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entity.app_id #=> String
    #   resp.entity.created_at #=> Time
    #   resp.entity.environment_name #=> String
    #   resp.entity.id #=> String
    #   resp.entity.modified_at #=> Time
    #   resp.entity.name #=> String
    #   resp.entity.overrides #=> Array
    #   resp.entity.overrides[0].key #=> String
    #   resp.entity.overrides[0].value.children #=> Types::ThemeValuesList
    #   resp.entity.overrides[0].value.value #=> String
    #   resp.entity.tags #=> Hash
    #   resp.entity.tags["TagKey"] #=> String
    #   resp.entity.values #=> Array
    #   resp.entity.values[0].key #=> String
    #   resp.entity.values[0].value.children #=> Types::ThemeValuesList
    #   resp.entity.values[0].value.value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateTheme AWS API Documentation
    #
    # @overload create_theme(params = {})
    # @param [Hash] params ({})
    def create_theme(params = {}, options = {})
      req = build_request(:create_theme, params)
      req.send_request(options)
    end

    # Deletes a component from an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app associated with the component to
    #   delete.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @option params [required, String] :id
    #   The unique ID of the component to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/DeleteComponent AWS API Documentation
    #
    # @overload delete_component(params = {})
    # @param [Hash] params ({})
    def delete_component(params = {}, options = {})
      req = build_request(:delete_component, params)
      req.send_request(options)
    end

    # Deletes a theme from an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app associated with the theme to delete.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @option params [required, String] :id
    #   The unique ID of the theme to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_theme({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/DeleteTheme AWS API Documentation
    #
    # @overload delete_theme(params = {})
    # @param [Hash] params ({})
    def delete_theme(params = {}, options = {})
      req = build_request(:delete_theme, params)
      req.send_request(options)
    end

    # Exchanges an access code for a token.
    #
    # @option params [required, String] :provider
    #   The third-party provider for the token. The only valid value is
    #   `figma`.
    #
    # @option params [required, Types::ExchangeCodeForTokenRequestBody] :request
    #   Describes the configuration of the request.
    #
    # @return [Types::ExchangeCodeForTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExchangeCodeForTokenResponse#access_token #access_token} => String
    #   * {Types::ExchangeCodeForTokenResponse#expires_in #expires_in} => Integer
    #   * {Types::ExchangeCodeForTokenResponse#refresh_token #refresh_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.exchange_code_for_token({
    #     provider: "figma", # required, accepts figma
    #     request: { # required
    #       code: "SyntheticExchangeCodeForTokenRequestBodyString", # required
    #       redirect_uri: "String", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.access_token #=> String
    #   resp.expires_in #=> Integer
    #   resp.refresh_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExchangeCodeForToken AWS API Documentation
    #
    # @overload exchange_code_for_token(params = {})
    # @param [Hash] params ({})
    def exchange_code_for_token(params = {}, options = {})
      req = build_request(:exchange_code_for_token, params)
      req.send_request(options)
    end

    # Exports component configurations to code that is ready to integrate
    # into an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app to export components to.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @return [Types::ExportComponentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportComponentsResponse#entities #entities} => Array&lt;Types::Component&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_components({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].app_id #=> String
    #   resp.entities[0].binding_properties #=> Hash
    #   resp.entities[0].binding_properties["String"].binding_properties.bucket #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.default_value #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.field #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.key #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.model #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates #=> Array
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates[0].and #=> Types::PredicateList
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates[0].field #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates[0].operand #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates[0].operator #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates[0].or #=> Types::PredicateList
    #   resp.entities[0].binding_properties["String"].binding_properties.user_attribute #=> String
    #   resp.entities[0].binding_properties["String"].default_value #=> String
    #   resp.entities[0].binding_properties["String"].type #=> String
    #   resp.entities[0].children #=> Array
    #   resp.entities[0].children[0].children #=> Types::ComponentChildList
    #   resp.entities[0].children[0].component_type #=> String
    #   resp.entities[0].children[0].name #=> String
    #   resp.entities[0].children[0].properties #=> Hash
    #   resp.entities[0].children[0].properties["String"].binding_properties.field #=> String
    #   resp.entities[0].children[0].properties["String"].binding_properties.property #=> String
    #   resp.entities[0].children[0].properties["String"].bindings #=> Hash
    #   resp.entities[0].children[0].properties["String"].bindings["String"].element #=> String
    #   resp.entities[0].children[0].properties["String"].bindings["String"].property #=> String
    #   resp.entities[0].children[0].properties["String"].collection_binding_properties.field #=> String
    #   resp.entities[0].children[0].properties["String"].collection_binding_properties.property #=> String
    #   resp.entities[0].children[0].properties["String"].concat #=> Array
    #   resp.entities[0].children[0].properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].children[0].properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.entities[0].children[0].properties["String"].condition.field #=> String
    #   resp.entities[0].children[0].properties["String"].condition.operand #=> String
    #   resp.entities[0].children[0].properties["String"].condition.operator #=> String
    #   resp.entities[0].children[0].properties["String"].condition.property #=> String
    #   resp.entities[0].children[0].properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.entities[0].children[0].properties["String"].configured #=> Boolean
    #   resp.entities[0].children[0].properties["String"].default_value #=> String
    #   resp.entities[0].children[0].properties["String"].event #=> String
    #   resp.entities[0].children[0].properties["String"].imported_value #=> String
    #   resp.entities[0].children[0].properties["String"].model #=> String
    #   resp.entities[0].children[0].properties["String"].type #=> String
    #   resp.entities[0].children[0].properties["String"].user_attribute #=> String
    #   resp.entities[0].children[0].properties["String"].value #=> String
    #   resp.entities[0].collection_properties #=> Hash
    #   resp.entities[0].collection_properties["String"].identifiers #=> Array
    #   resp.entities[0].collection_properties["String"].identifiers[0] #=> String
    #   resp.entities[0].collection_properties["String"].model #=> String
    #   resp.entities[0].collection_properties["String"].predicate.and #=> Array
    #   resp.entities[0].collection_properties["String"].predicate.and[0] #=> Types::Predicate
    #   resp.entities[0].collection_properties["String"].predicate.field #=> String
    #   resp.entities[0].collection_properties["String"].predicate.operand #=> String
    #   resp.entities[0].collection_properties["String"].predicate.operator #=> String
    #   resp.entities[0].collection_properties["String"].predicate.or #=> Array
    #   resp.entities[0].collection_properties["String"].predicate.or[0] #=> Types::Predicate
    #   resp.entities[0].collection_properties["String"].sort #=> Array
    #   resp.entities[0].collection_properties["String"].sort[0].direction #=> String, one of "ASC", "DESC"
    #   resp.entities[0].collection_properties["String"].sort[0].field #=> String
    #   resp.entities[0].component_type #=> String
    #   resp.entities[0].created_at #=> Time
    #   resp.entities[0].environment_name #=> String
    #   resp.entities[0].id #=> String
    #   resp.entities[0].modified_at #=> Time
    #   resp.entities[0].name #=> String
    #   resp.entities[0].overrides #=> Hash
    #   resp.entities[0].overrides["String"] #=> Hash
    #   resp.entities[0].overrides["String"]["String"] #=> String
    #   resp.entities[0].properties #=> Hash
    #   resp.entities[0].properties["String"].binding_properties.field #=> String
    #   resp.entities[0].properties["String"].binding_properties.property #=> String
    #   resp.entities[0].properties["String"].bindings #=> Hash
    #   resp.entities[0].properties["String"].bindings["String"].element #=> String
    #   resp.entities[0].properties["String"].bindings["String"].property #=> String
    #   resp.entities[0].properties["String"].collection_binding_properties.field #=> String
    #   resp.entities[0].properties["String"].collection_binding_properties.property #=> String
    #   resp.entities[0].properties["String"].concat #=> Array
    #   resp.entities[0].properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.entities[0].properties["String"].condition.field #=> String
    #   resp.entities[0].properties["String"].condition.operand #=> String
    #   resp.entities[0].properties["String"].condition.operator #=> String
    #   resp.entities[0].properties["String"].condition.property #=> String
    #   resp.entities[0].properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.entities[0].properties["String"].configured #=> Boolean
    #   resp.entities[0].properties["String"].default_value #=> String
    #   resp.entities[0].properties["String"].event #=> String
    #   resp.entities[0].properties["String"].imported_value #=> String
    #   resp.entities[0].properties["String"].model #=> String
    #   resp.entities[0].properties["String"].type #=> String
    #   resp.entities[0].properties["String"].user_attribute #=> String
    #   resp.entities[0].properties["String"].value #=> String
    #   resp.entities[0].source_id #=> String
    #   resp.entities[0].tags #=> Hash
    #   resp.entities[0].tags["TagKey"] #=> String
    #   resp.entities[0].variants #=> Array
    #   resp.entities[0].variants[0].overrides #=> Hash
    #   resp.entities[0].variants[0].overrides["String"] #=> Hash
    #   resp.entities[0].variants[0].overrides["String"]["String"] #=> String
    #   resp.entities[0].variants[0].variant_values #=> Hash
    #   resp.entities[0].variants[0].variant_values["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportComponents AWS API Documentation
    #
    # @overload export_components(params = {})
    # @param [Hash] params ({})
    def export_components(params = {}, options = {})
      req = build_request(:export_components, params)
      req.send_request(options)
    end

    # Exports theme configurations to code that is ready to integrate into
    # an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app to export the themes to.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #
    # @return [Types::ExportThemesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportThemesResponse#entities #entities} => Array&lt;Types::Theme&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_themes({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].app_id #=> String
    #   resp.entities[0].created_at #=> Time
    #   resp.entities[0].environment_name #=> String
    #   resp.entities[0].id #=> String
    #   resp.entities[0].modified_at #=> Time
    #   resp.entities[0].name #=> String
    #   resp.entities[0].overrides #=> Array
    #   resp.entities[0].overrides[0].key #=> String
    #   resp.entities[0].overrides[0].value.children #=> Types::ThemeValuesList
    #   resp.entities[0].overrides[0].value.value #=> String
    #   resp.entities[0].tags #=> Hash
    #   resp.entities[0].tags["TagKey"] #=> String
    #   resp.entities[0].values #=> Array
    #   resp.entities[0].values[0].key #=> String
    #   resp.entities[0].values[0].value.children #=> Types::ThemeValuesList
    #   resp.entities[0].values[0].value.value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportThemes AWS API Documentation
    #
    # @overload export_themes(params = {})
    # @param [Hash] params ({})
    def export_themes(params = {}, options = {})
      req = build_request(:export_themes, params)
      req.send_request(options)
    end

    # Returns an existing component for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #
    # @option params [required, String] :id
    #   The unique ID of the component.
    #
    # @return [Types::GetComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComponentResponse#component #component} => Types::Component
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.component.app_id #=> String
    #   resp.component.binding_properties #=> Hash
    #   resp.component.binding_properties["String"].binding_properties.bucket #=> String
    #   resp.component.binding_properties["String"].binding_properties.default_value #=> String
    #   resp.component.binding_properties["String"].binding_properties.field #=> String
    #   resp.component.binding_properties["String"].binding_properties.key #=> String
    #   resp.component.binding_properties["String"].binding_properties.model #=> String
    #   resp.component.binding_properties["String"].binding_properties.predicates #=> Array
    #   resp.component.binding_properties["String"].binding_properties.predicates[0].and #=> Types::PredicateList
    #   resp.component.binding_properties["String"].binding_properties.predicates[0].field #=> String
    #   resp.component.binding_properties["String"].binding_properties.predicates[0].operand #=> String
    #   resp.component.binding_properties["String"].binding_properties.predicates[0].operator #=> String
    #   resp.component.binding_properties["String"].binding_properties.predicates[0].or #=> Types::PredicateList
    #   resp.component.binding_properties["String"].binding_properties.user_attribute #=> String
    #   resp.component.binding_properties["String"].default_value #=> String
    #   resp.component.binding_properties["String"].type #=> String
    #   resp.component.children #=> Array
    #   resp.component.children[0].children #=> Types::ComponentChildList
    #   resp.component.children[0].component_type #=> String
    #   resp.component.children[0].name #=> String
    #   resp.component.children[0].properties #=> Hash
    #   resp.component.children[0].properties["String"].binding_properties.field #=> String
    #   resp.component.children[0].properties["String"].binding_properties.property #=> String
    #   resp.component.children[0].properties["String"].bindings #=> Hash
    #   resp.component.children[0].properties["String"].bindings["String"].element #=> String
    #   resp.component.children[0].properties["String"].bindings["String"].property #=> String
    #   resp.component.children[0].properties["String"].collection_binding_properties.field #=> String
    #   resp.component.children[0].properties["String"].collection_binding_properties.property #=> String
    #   resp.component.children[0].properties["String"].concat #=> Array
    #   resp.component.children[0].properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.component.children[0].properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.component.children[0].properties["String"].condition.field #=> String
    #   resp.component.children[0].properties["String"].condition.operand #=> String
    #   resp.component.children[0].properties["String"].condition.operator #=> String
    #   resp.component.children[0].properties["String"].condition.property #=> String
    #   resp.component.children[0].properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.component.children[0].properties["String"].configured #=> Boolean
    #   resp.component.children[0].properties["String"].default_value #=> String
    #   resp.component.children[0].properties["String"].event #=> String
    #   resp.component.children[0].properties["String"].imported_value #=> String
    #   resp.component.children[0].properties["String"].model #=> String
    #   resp.component.children[0].properties["String"].type #=> String
    #   resp.component.children[0].properties["String"].user_attribute #=> String
    #   resp.component.children[0].properties["String"].value #=> String
    #   resp.component.collection_properties #=> Hash
    #   resp.component.collection_properties["String"].identifiers #=> Array
    #   resp.component.collection_properties["String"].identifiers[0] #=> String
    #   resp.component.collection_properties["String"].model #=> String
    #   resp.component.collection_properties["String"].predicate.and #=> Array
    #   resp.component.collection_properties["String"].predicate.and[0] #=> Types::Predicate
    #   resp.component.collection_properties["String"].predicate.field #=> String
    #   resp.component.collection_properties["String"].predicate.operand #=> String
    #   resp.component.collection_properties["String"].predicate.operator #=> String
    #   resp.component.collection_properties["String"].predicate.or #=> Array
    #   resp.component.collection_properties["String"].predicate.or[0] #=> Types::Predicate
    #   resp.component.collection_properties["String"].sort #=> Array
    #   resp.component.collection_properties["String"].sort[0].direction #=> String, one of "ASC", "DESC"
    #   resp.component.collection_properties["String"].sort[0].field #=> String
    #   resp.component.component_type #=> String
    #   resp.component.created_at #=> Time
    #   resp.component.environment_name #=> String
    #   resp.component.id #=> String
    #   resp.component.modified_at #=> Time
    #   resp.component.name #=> String
    #   resp.component.overrides #=> Hash
    #   resp.component.overrides["String"] #=> Hash
    #   resp.component.overrides["String"]["String"] #=> String
    #   resp.component.properties #=> Hash
    #   resp.component.properties["String"].binding_properties.field #=> String
    #   resp.component.properties["String"].binding_properties.property #=> String
    #   resp.component.properties["String"].bindings #=> Hash
    #   resp.component.properties["String"].bindings["String"].element #=> String
    #   resp.component.properties["String"].bindings["String"].property #=> String
    #   resp.component.properties["String"].collection_binding_properties.field #=> String
    #   resp.component.properties["String"].collection_binding_properties.property #=> String
    #   resp.component.properties["String"].concat #=> Array
    #   resp.component.properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.component.properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.component.properties["String"].condition.field #=> String
    #   resp.component.properties["String"].condition.operand #=> String
    #   resp.component.properties["String"].condition.operator #=> String
    #   resp.component.properties["String"].condition.property #=> String
    #   resp.component.properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.component.properties["String"].configured #=> Boolean
    #   resp.component.properties["String"].default_value #=> String
    #   resp.component.properties["String"].event #=> String
    #   resp.component.properties["String"].imported_value #=> String
    #   resp.component.properties["String"].model #=> String
    #   resp.component.properties["String"].type #=> String
    #   resp.component.properties["String"].user_attribute #=> String
    #   resp.component.properties["String"].value #=> String
    #   resp.component.source_id #=> String
    #   resp.component.tags #=> Hash
    #   resp.component.tags["TagKey"] #=> String
    #   resp.component.variants #=> Array
    #   resp.component.variants[0].overrides #=> Hash
    #   resp.component.variants[0].overrides["String"] #=> Hash
    #   resp.component.variants[0].overrides["String"]["String"] #=> String
    #   resp.component.variants[0].variant_values #=> Hash
    #   resp.component.variants[0].variant_values["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetComponent AWS API Documentation
    #
    # @overload get_component(params = {})
    # @param [Hash] params ({})
    def get_component(params = {}, options = {})
      req = build_request(:get_component, params)
      req.send_request(options)
    end

    # Returns an existing theme for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #
    # @option params [required, String] :id
    #   The unique ID for the theme.
    #
    # @return [Types::GetThemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetThemeResponse#theme #theme} => Types::Theme
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_theme({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.theme.app_id #=> String
    #   resp.theme.created_at #=> Time
    #   resp.theme.environment_name #=> String
    #   resp.theme.id #=> String
    #   resp.theme.modified_at #=> Time
    #   resp.theme.name #=> String
    #   resp.theme.overrides #=> Array
    #   resp.theme.overrides[0].key #=> String
    #   resp.theme.overrides[0].value.children #=> Types::ThemeValuesList
    #   resp.theme.overrides[0].value.value #=> String
    #   resp.theme.tags #=> Hash
    #   resp.theme.tags["TagKey"] #=> String
    #   resp.theme.values #=> Array
    #   resp.theme.values[0].key #=> String
    #   resp.theme.values[0].value.children #=> Types::ThemeValuesList
    #   resp.theme.values[0].value.value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetTheme AWS API Documentation
    #
    # @overload get_theme(params = {})
    # @param [Hash] params ({})
    def get_theme(params = {}, options = {})
      req = build_request(:get_theme, params)
      req.send_request(options)
    end

    # Retrieves a list of components for a specified Amplify app and backend
    # environment.
    #
    # @option params [required, String] :app_id
    #   The unique ID for the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @option params [Integer] :max_results
    #   The maximum number of components to retrieve.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @return [Types::ListComponentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComponentsResponse#entities #entities} => Array&lt;Types::ComponentSummary&gt;
    #   * {Types::ListComponentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_components({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].app_id #=> String
    #   resp.entities[0].component_type #=> String
    #   resp.entities[0].environment_name #=> String
    #   resp.entities[0].id #=> String
    #   resp.entities[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListComponents AWS API Documentation
    #
    # @overload list_components(params = {})
    # @param [Hash] params ({})
    def list_components(params = {}, options = {})
      req = build_request(:list_components, params)
      req.send_request(options)
    end

    # Retrieves a list of themes for a specified Amplify app and backend
    # environment.
    #
    # @option params [required, String] :app_id
    #   The unique ID for the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @option params [Integer] :max_results
    #   The maximum number of theme results to return in the response.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @return [Types::ListThemesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThemesResponse#entities #entities} => Array&lt;Types::ThemeSummary&gt;
    #   * {Types::ListThemesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_themes({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].app_id #=> String
    #   resp.entities[0].environment_name #=> String
    #   resp.entities[0].id #=> String
    #   resp.entities[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListThemes AWS API Documentation
    #
    # @overload list_themes(params = {})
    # @param [Hash] params ({})
    def list_themes(params = {}, options = {})
      req = build_request(:list_themes, params)
      req.send_request(options)
    end

    # Refreshes a previously issued access token that might have expired.
    #
    # @option params [required, String] :provider
    #   The third-party provider for the token. The only valid value is
    #   `figma`.
    #
    # @option params [required, Types::RefreshTokenRequestBody] :refresh_token_body
    #   Information about the refresh token request.
    #
    # @return [Types::RefreshTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RefreshTokenResponse#access_token #access_token} => String
    #   * {Types::RefreshTokenResponse#expires_in #expires_in} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.refresh_token({
    #     provider: "figma", # required, accepts figma
    #     refresh_token_body: { # required
    #       token: "SyntheticRefreshTokenRequestBodyString", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.access_token #=> String
    #   resp.expires_in #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/RefreshToken AWS API Documentation
    #
    # @overload refresh_token(params = {})
    # @param [Hash] params ({})
    def refresh_token(params = {}, options = {})
      req = build_request(:refresh_token, params)
      req.send_request(options)
    end

    # Updates an existing component.
    #
    # @option params [required, String] :app_id
    #   The unique ID for the Amplify app.
    #
    # @option params [String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #
    # @option params [required, String] :id
    #   The unique ID for the component.
    #
    # @option params [required, Types::UpdateComponentData] :updated_component
    #   The configuration of the updated component.
    #
    # @return [Types::UpdateComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateComponentResponse#entity #entity} => Types::Component
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_component({
    #     app_id: "String", # required
    #     client_token: "String",
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #     updated_component: { # required
    #       binding_properties: {
    #         "String" => {
    #           binding_properties: {
    #             bucket: "String",
    #             default_value: "String",
    #             field: "String",
    #             key: "String",
    #             model: "String",
    #             predicates: [
    #               {
    #                 and: {
    #                   # recursive PredicateList
    #                 },
    #                 field: "String",
    #                 operand: "String",
    #                 operator: "String",
    #                 or: {
    #                   # recursive PredicateList
    #                 },
    #               },
    #             ],
    #             user_attribute: "String",
    #           },
    #           default_value: "String",
    #           type: "String",
    #         },
    #       },
    #       children: [
    #         {
    #           children: {
    #             # recursive ComponentChildList
    #           },
    #           component_type: "String", # required
    #           name: "String", # required
    #           properties: { # required
    #             "String" => {
    #               binding_properties: {
    #                 field: "String",
    #                 property: "String", # required
    #               },
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               collection_binding_properties: {
    #                 field: "String",
    #                 property: "String", # required
    #               },
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 field: "String",
    #                 operand: "String",
    #                 operator: "String",
    #                 property: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #               },
    #               configured: false,
    #               default_value: "String",
    #               event: "String",
    #               imported_value: "String",
    #               model: "String",
    #               type: "String",
    #               user_attribute: "String",
    #               value: "String",
    #             },
    #           },
    #         },
    #       ],
    #       collection_properties: {
    #         "String" => {
    #           identifiers: ["String"],
    #           model: "String", # required
    #           predicate: {
    #             and: [
    #               {
    #                 # recursive Predicate
    #               },
    #             ],
    #             field: "String",
    #             operand: "String",
    #             operator: "String",
    #             or: [
    #               {
    #                 # recursive Predicate
    #               },
    #             ],
    #           },
    #           sort: [
    #             {
    #               direction: "ASC", # required, accepts ASC, DESC
    #               field: "String", # required
    #             },
    #           ],
    #         },
    #       },
    #       component_type: "ComponentType",
    #       id: "Uuid",
    #       name: "ComponentName",
    #       overrides: {
    #         "String" => {
    #           "String" => "String",
    #         },
    #       },
    #       properties: {
    #         "String" => {
    #           binding_properties: {
    #             field: "String",
    #             property: "String", # required
    #           },
    #           bindings: {
    #             "String" => {
    #               element: "String", # required
    #               property: "String", # required
    #             },
    #           },
    #           collection_binding_properties: {
    #             field: "String",
    #             property: "String", # required
    #           },
    #           concat: [
    #             {
    #               # recursive ComponentProperty
    #             },
    #           ],
    #           condition: {
    #             else: {
    #               # recursive ComponentProperty
    #             },
    #             field: "String",
    #             operand: "String",
    #             operator: "String",
    #             property: "String",
    #             then: {
    #               # recursive ComponentProperty
    #             },
    #           },
    #           configured: false,
    #           default_value: "String",
    #           event: "String",
    #           imported_value: "String",
    #           model: "String",
    #           type: "String",
    #           user_attribute: "String",
    #           value: "String",
    #         },
    #       },
    #       source_id: "String",
    #       variants: [
    #         {
    #           overrides: {
    #             "String" => {
    #               "String" => "String",
    #             },
    #           },
    #           variant_values: {
    #             "String" => "String",
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entity.app_id #=> String
    #   resp.entity.binding_properties #=> Hash
    #   resp.entity.binding_properties["String"].binding_properties.bucket #=> String
    #   resp.entity.binding_properties["String"].binding_properties.default_value #=> String
    #   resp.entity.binding_properties["String"].binding_properties.field #=> String
    #   resp.entity.binding_properties["String"].binding_properties.key #=> String
    #   resp.entity.binding_properties["String"].binding_properties.model #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates #=> Array
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].and #=> Types::PredicateList
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].field #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].operand #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].operator #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].or #=> Types::PredicateList
    #   resp.entity.binding_properties["String"].binding_properties.user_attribute #=> String
    #   resp.entity.binding_properties["String"].default_value #=> String
    #   resp.entity.binding_properties["String"].type #=> String
    #   resp.entity.children #=> Array
    #   resp.entity.children[0].children #=> Types::ComponentChildList
    #   resp.entity.children[0].component_type #=> String
    #   resp.entity.children[0].name #=> String
    #   resp.entity.children[0].properties #=> Hash
    #   resp.entity.children[0].properties["String"].binding_properties.field #=> String
    #   resp.entity.children[0].properties["String"].binding_properties.property #=> String
    #   resp.entity.children[0].properties["String"].bindings #=> Hash
    #   resp.entity.children[0].properties["String"].bindings["String"].element #=> String
    #   resp.entity.children[0].properties["String"].bindings["String"].property #=> String
    #   resp.entity.children[0].properties["String"].collection_binding_properties.field #=> String
    #   resp.entity.children[0].properties["String"].collection_binding_properties.property #=> String
    #   resp.entity.children[0].properties["String"].concat #=> Array
    #   resp.entity.children[0].properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].properties["String"].condition.field #=> String
    #   resp.entity.children[0].properties["String"].condition.operand #=> String
    #   resp.entity.children[0].properties["String"].condition.operator #=> String
    #   resp.entity.children[0].properties["String"].condition.property #=> String
    #   resp.entity.children[0].properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].properties["String"].configured #=> Boolean
    #   resp.entity.children[0].properties["String"].default_value #=> String
    #   resp.entity.children[0].properties["String"].event #=> String
    #   resp.entity.children[0].properties["String"].imported_value #=> String
    #   resp.entity.children[0].properties["String"].model #=> String
    #   resp.entity.children[0].properties["String"].type #=> String
    #   resp.entity.children[0].properties["String"].user_attribute #=> String
    #   resp.entity.children[0].properties["String"].value #=> String
    #   resp.entity.collection_properties #=> Hash
    #   resp.entity.collection_properties["String"].identifiers #=> Array
    #   resp.entity.collection_properties["String"].identifiers[0] #=> String
    #   resp.entity.collection_properties["String"].model #=> String
    #   resp.entity.collection_properties["String"].predicate.and #=> Array
    #   resp.entity.collection_properties["String"].predicate.and[0] #=> Types::Predicate
    #   resp.entity.collection_properties["String"].predicate.field #=> String
    #   resp.entity.collection_properties["String"].predicate.operand #=> String
    #   resp.entity.collection_properties["String"].predicate.operator #=> String
    #   resp.entity.collection_properties["String"].predicate.or #=> Array
    #   resp.entity.collection_properties["String"].predicate.or[0] #=> Types::Predicate
    #   resp.entity.collection_properties["String"].sort #=> Array
    #   resp.entity.collection_properties["String"].sort[0].direction #=> String, one of "ASC", "DESC"
    #   resp.entity.collection_properties["String"].sort[0].field #=> String
    #   resp.entity.component_type #=> String
    #   resp.entity.created_at #=> Time
    #   resp.entity.environment_name #=> String
    #   resp.entity.id #=> String
    #   resp.entity.modified_at #=> Time
    #   resp.entity.name #=> String
    #   resp.entity.overrides #=> Hash
    #   resp.entity.overrides["String"] #=> Hash
    #   resp.entity.overrides["String"]["String"] #=> String
    #   resp.entity.properties #=> Hash
    #   resp.entity.properties["String"].binding_properties.field #=> String
    #   resp.entity.properties["String"].binding_properties.property #=> String
    #   resp.entity.properties["String"].bindings #=> Hash
    #   resp.entity.properties["String"].bindings["String"].element #=> String
    #   resp.entity.properties["String"].bindings["String"].property #=> String
    #   resp.entity.properties["String"].collection_binding_properties.field #=> String
    #   resp.entity.properties["String"].collection_binding_properties.property #=> String
    #   resp.entity.properties["String"].concat #=> Array
    #   resp.entity.properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entity.properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.entity.properties["String"].condition.field #=> String
    #   resp.entity.properties["String"].condition.operand #=> String
    #   resp.entity.properties["String"].condition.operator #=> String
    #   resp.entity.properties["String"].condition.property #=> String
    #   resp.entity.properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.entity.properties["String"].configured #=> Boolean
    #   resp.entity.properties["String"].default_value #=> String
    #   resp.entity.properties["String"].event #=> String
    #   resp.entity.properties["String"].imported_value #=> String
    #   resp.entity.properties["String"].model #=> String
    #   resp.entity.properties["String"].type #=> String
    #   resp.entity.properties["String"].user_attribute #=> String
    #   resp.entity.properties["String"].value #=> String
    #   resp.entity.source_id #=> String
    #   resp.entity.tags #=> Hash
    #   resp.entity.tags["TagKey"] #=> String
    #   resp.entity.variants #=> Array
    #   resp.entity.variants[0].overrides #=> Hash
    #   resp.entity.variants[0].overrides["String"] #=> Hash
    #   resp.entity.variants[0].overrides["String"]["String"] #=> String
    #   resp.entity.variants[0].variant_values #=> Hash
    #   resp.entity.variants[0].variant_values["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateComponent AWS API Documentation
    #
    # @overload update_component(params = {})
    # @param [Hash] params ({})
    def update_component(params = {}, options = {})
      req = build_request(:update_component, params)
      req.send_request(options)
    end

    # Updates an existing theme.
    #
    # @option params [required, String] :app_id
    #   The unique ID for the Amplify app.
    #
    # @option params [String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #
    # @option params [required, String] :id
    #   The unique ID for the theme.
    #
    # @option params [required, Types::UpdateThemeData] :updated_theme
    #   The configuration of the updated theme.
    #
    # @return [Types::UpdateThemeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateThemeResponse#entity #entity} => Types::Theme
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_theme({
    #     app_id: "String", # required
    #     client_token: "String",
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #     updated_theme: { # required
    #       id: "Uuid",
    #       name: "ThemeName",
    #       overrides: [
    #         {
    #           key: "String",
    #           value: {
    #             children: {
    #               # recursive ThemeValuesList
    #             },
    #             value: "String",
    #           },
    #         },
    #       ],
    #       values: [ # required
    #         {
    #           key: "String",
    #           value: {
    #             children: {
    #               # recursive ThemeValuesList
    #             },
    #             value: "String",
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entity.app_id #=> String
    #   resp.entity.created_at #=> Time
    #   resp.entity.environment_name #=> String
    #   resp.entity.id #=> String
    #   resp.entity.modified_at #=> Time
    #   resp.entity.name #=> String
    #   resp.entity.overrides #=> Array
    #   resp.entity.overrides[0].key #=> String
    #   resp.entity.overrides[0].value.children #=> Types::ThemeValuesList
    #   resp.entity.overrides[0].value.value #=> String
    #   resp.entity.tags #=> Hash
    #   resp.entity.tags["TagKey"] #=> String
    #   resp.entity.values #=> Array
    #   resp.entity.values[0].key #=> String
    #   resp.entity.values[0].value.children #=> Types::ThemeValuesList
    #   resp.entity.values[0].value.value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateTheme AWS API Documentation
    #
    # @overload update_theme(params = {})
    # @param [Hash] params ({})
    def update_theme(params = {}, options = {})
      req = build_request(:update_theme, params)
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
      context[:gem_name] = 'aws-sdk-amplifyuibuilder'
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
