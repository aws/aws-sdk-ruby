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
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::AmplifyUIBuilder::Plugins::Endpoints)

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
    #   @option options [Aws::AmplifyUIBuilder::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::AmplifyUIBuilder::EndpointParameters`
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
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
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
    # @return [Types::CreateComponentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateComponentResponse#entity #entity} => Types::Component
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     client_token: "String",
    #     component_to_create: { # required
    #       name: "ComponentName", # required
    #       source_id: "String",
    #       component_type: "ComponentType", # required
    #       properties: { # required
    #         "String" => {
    #           value: "String",
    #           binding_properties: {
    #             property: "String", # required
    #             field: "String",
    #           },
    #           collection_binding_properties: {
    #             property: "String", # required
    #             field: "String",
    #           },
    #           default_value: "String",
    #           model: "String",
    #           bindings: {
    #             "String" => {
    #               element: "String", # required
    #               property: "String", # required
    #             },
    #           },
    #           event: "String",
    #           user_attribute: "String",
    #           concat: [
    #             {
    #               # recursive ComponentProperty
    #             },
    #           ],
    #           condition: {
    #             property: "String",
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             then: {
    #               # recursive ComponentProperty
    #             },
    #             else: {
    #               # recursive ComponentProperty
    #             },
    #             operand_type: "String",
    #           },
    #           configured: false,
    #           type: "String",
    #           imported_value: "String",
    #           component_name: "String",
    #           property: "String",
    #         },
    #       },
    #       children: [
    #         {
    #           component_type: "String", # required
    #           name: "String", # required
    #           properties: { # required
    #             "String" => {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #           },
    #           children: {
    #             # recursive ComponentChildList
    #           },
    #           events: {
    #             "String" => {
    #               action: "String",
    #               parameters: {
    #                 type: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String",
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String",
    #                 },
    #                 url: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String",
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String",
    #                 },
    #                 anchor: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String",
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String",
    #                 },
    #                 target: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String",
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String",
    #                 },
    #                 global: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String",
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String",
    #                 },
    #                 model: "String",
    #                 id: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String",
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String",
    #                 },
    #                 fields: {
    #                   "String" => {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String",
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String",
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       },
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       },
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String",
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String",
    #                   },
    #                 },
    #                 state: {
    #                   component_name: "String", # required
    #                   property: "String", # required
    #                   set: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String",
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String",
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       },
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       },
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String",
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String",
    #                   },
    #                 },
    #               },
    #               binding_event: "String",
    #             },
    #           },
    #           source_id: "String",
    #         },
    #       ],
    #       variants: [ # required
    #         {
    #           variant_values: {
    #             "String" => "String",
    #           },
    #           overrides: {
    #             "String" => {
    #               "String" => "String",
    #             },
    #           },
    #         },
    #       ],
    #       overrides: { # required
    #         "String" => {
    #           "String" => "String",
    #         },
    #       },
    #       binding_properties: { # required
    #         "String" => {
    #           type: "String",
    #           binding_properties: {
    #             model: "String",
    #             field: "String",
    #             predicates: [
    #               {
    #                 or: {
    #                   # recursive PredicateList
    #                 },
    #                 and: {
    #                   # recursive PredicateList
    #                 },
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 operand_type: "OperandType",
    #               },
    #             ],
    #             user_attribute: "String",
    #             bucket: "String",
    #             key: "String",
    #             default_value: "String",
    #             slot_name: "String",
    #           },
    #           default_value: "String",
    #         },
    #       },
    #       collection_properties: {
    #         "String" => {
    #           model: "String", # required
    #           sort: [
    #             {
    #               field: "String", # required
    #               direction: "ASC", # required, accepts ASC, DESC
    #             },
    #           ],
    #           predicate: {
    #             or: [
    #               {
    #                 # recursive Predicate
    #               },
    #             ],
    #             and: [
    #               {
    #                 # recursive Predicate
    #               },
    #             ],
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             operand_type: "OperandType",
    #           },
    #           identifiers: ["String"],
    #         },
    #       },
    #       tags: {
    #         "TagKey" => "TagValue",
    #       },
    #       events: {
    #         "String" => {
    #           action: "String",
    #           parameters: {
    #             type: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #             url: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #             anchor: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #             target: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #             global: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #             model: "String",
    #             id: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #             fields: {
    #               "String" => {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String",
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String",
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   },
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   },
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String",
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String",
    #               },
    #             },
    #             state: {
    #               component_name: "String", # required
    #               property: "String", # required
    #               set: { # required
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String",
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String",
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   },
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   },
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String",
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String",
    #               },
    #             },
    #           },
    #           binding_event: "String",
    #         },
    #       },
    #       schema_version: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entity.app_id #=> String
    #   resp.entity.environment_name #=> String
    #   resp.entity.source_id #=> String
    #   resp.entity.id #=> String
    #   resp.entity.name #=> String
    #   resp.entity.component_type #=> String
    #   resp.entity.properties #=> Hash
    #   resp.entity.properties["String"].value #=> String
    #   resp.entity.properties["String"].binding_properties.property #=> String
    #   resp.entity.properties["String"].binding_properties.field #=> String
    #   resp.entity.properties["String"].collection_binding_properties.property #=> String
    #   resp.entity.properties["String"].collection_binding_properties.field #=> String
    #   resp.entity.properties["String"].default_value #=> String
    #   resp.entity.properties["String"].model #=> String
    #   resp.entity.properties["String"].bindings #=> Hash
    #   resp.entity.properties["String"].bindings["String"].element #=> String
    #   resp.entity.properties["String"].bindings["String"].property #=> String
    #   resp.entity.properties["String"].event #=> String
    #   resp.entity.properties["String"].user_attribute #=> String
    #   resp.entity.properties["String"].concat #=> Array
    #   resp.entity.properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entity.properties["String"].condition.property #=> String
    #   resp.entity.properties["String"].condition.field #=> String
    #   resp.entity.properties["String"].condition.operator #=> String
    #   resp.entity.properties["String"].condition.operand #=> String
    #   resp.entity.properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.entity.properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.entity.properties["String"].condition.operand_type #=> String
    #   resp.entity.properties["String"].configured #=> Boolean
    #   resp.entity.properties["String"].type #=> String
    #   resp.entity.properties["String"].imported_value #=> String
    #   resp.entity.properties["String"].component_name #=> String
    #   resp.entity.properties["String"].property #=> String
    #   resp.entity.children #=> Array
    #   resp.entity.children[0].component_type #=> String
    #   resp.entity.children[0].name #=> String
    #   resp.entity.children[0].properties #=> Hash
    #   resp.entity.children[0].properties["String"].value #=> String
    #   resp.entity.children[0].properties["String"].binding_properties.property #=> String
    #   resp.entity.children[0].properties["String"].binding_properties.field #=> String
    #   resp.entity.children[0].properties["String"].collection_binding_properties.property #=> String
    #   resp.entity.children[0].properties["String"].collection_binding_properties.field #=> String
    #   resp.entity.children[0].properties["String"].default_value #=> String
    #   resp.entity.children[0].properties["String"].model #=> String
    #   resp.entity.children[0].properties["String"].bindings #=> Hash
    #   resp.entity.children[0].properties["String"].bindings["String"].element #=> String
    #   resp.entity.children[0].properties["String"].bindings["String"].property #=> String
    #   resp.entity.children[0].properties["String"].event #=> String
    #   resp.entity.children[0].properties["String"].user_attribute #=> String
    #   resp.entity.children[0].properties["String"].concat #=> Array
    #   resp.entity.children[0].properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].properties["String"].condition.property #=> String
    #   resp.entity.children[0].properties["String"].condition.field #=> String
    #   resp.entity.children[0].properties["String"].condition.operator #=> String
    #   resp.entity.children[0].properties["String"].condition.operand #=> String
    #   resp.entity.children[0].properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].properties["String"].condition.operand_type #=> String
    #   resp.entity.children[0].properties["String"].configured #=> Boolean
    #   resp.entity.children[0].properties["String"].type #=> String
    #   resp.entity.children[0].properties["String"].imported_value #=> String
    #   resp.entity.children[0].properties["String"].component_name #=> String
    #   resp.entity.children[0].properties["String"].property #=> String
    #   resp.entity.children[0].children #=> Types::ComponentChildList
    #   resp.entity.children[0].events #=> Hash
    #   resp.entity.children[0].events["String"].action #=> String
    #   resp.entity.children[0].events["String"].parameters.type.value #=> String
    #   resp.entity.children[0].events["String"].parameters.type.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.type.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.type.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.type.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.type.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.type.model #=> String
    #   resp.entity.children[0].events["String"].parameters.type.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.type.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.type.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.type.event #=> String
    #   resp.entity.children[0].events["String"].parameters.type.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.type.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.type.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.type.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.type.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.type.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.type.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.type.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.type.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.type.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.type.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.type.type #=> String
    #   resp.entity.children[0].events["String"].parameters.type.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.type.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.type.property #=> String
    #   resp.entity.children[0].events["String"].parameters.url.value #=> String
    #   resp.entity.children[0].events["String"].parameters.url.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.url.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.url.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.url.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.url.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.url.model #=> String
    #   resp.entity.children[0].events["String"].parameters.url.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.url.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.url.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.url.event #=> String
    #   resp.entity.children[0].events["String"].parameters.url.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.url.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.url.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.url.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.url.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.url.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.url.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.url.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.url.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.url.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.url.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.url.type #=> String
    #   resp.entity.children[0].events["String"].parameters.url.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.url.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.url.property #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.value #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.model #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.anchor.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.event #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.anchor.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.anchor.type #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.property #=> String
    #   resp.entity.children[0].events["String"].parameters.target.value #=> String
    #   resp.entity.children[0].events["String"].parameters.target.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.target.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.target.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.target.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.target.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.target.model #=> String
    #   resp.entity.children[0].events["String"].parameters.target.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.target.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.target.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.target.event #=> String
    #   resp.entity.children[0].events["String"].parameters.target.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.target.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.target.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.target.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.target.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.target.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.target.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.target.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.target.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.target.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.target.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.target.type #=> String
    #   resp.entity.children[0].events["String"].parameters.target.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.target.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.target.property #=> String
    #   resp.entity.children[0].events["String"].parameters.global.value #=> String
    #   resp.entity.children[0].events["String"].parameters.global.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.global.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.global.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.global.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.global.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.global.model #=> String
    #   resp.entity.children[0].events["String"].parameters.global.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.global.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.global.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.global.event #=> String
    #   resp.entity.children[0].events["String"].parameters.global.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.global.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.global.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.global.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.global.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.global.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.global.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.global.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.global.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.global.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.global.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.global.type #=> String
    #   resp.entity.children[0].events["String"].parameters.global.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.global.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.global.property #=> String
    #   resp.entity.children[0].events["String"].parameters.model #=> String
    #   resp.entity.children[0].events["String"].parameters.id.value #=> String
    #   resp.entity.children[0].events["String"].parameters.id.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.id.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.id.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.id.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.id.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.id.model #=> String
    #   resp.entity.children[0].events["String"].parameters.id.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.id.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.id.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.id.event #=> String
    #   resp.entity.children[0].events["String"].parameters.id.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.id.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.id.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.id.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.id.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.id.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.id.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.id.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.id.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.id.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.id.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.id.type #=> String
    #   resp.entity.children[0].events["String"].parameters.id.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.id.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.id.property #=> String
    #   resp.entity.children[0].events["String"].parameters.fields #=> Hash
    #   resp.entity.children[0].events["String"].parameters.fields["String"].value #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].model #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.fields["String"].bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].event #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.fields["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.fields["String"].type #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.state.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.state.property #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.value #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.model #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.state.set.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.event #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.state.set.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.state.set.type #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.property #=> String
    #   resp.entity.children[0].events["String"].binding_event #=> String
    #   resp.entity.children[0].source_id #=> String
    #   resp.entity.variants #=> Array
    #   resp.entity.variants[0].variant_values #=> Hash
    #   resp.entity.variants[0].variant_values["String"] #=> String
    #   resp.entity.variants[0].overrides #=> Hash
    #   resp.entity.variants[0].overrides["String"] #=> Hash
    #   resp.entity.variants[0].overrides["String"]["String"] #=> String
    #   resp.entity.overrides #=> Hash
    #   resp.entity.overrides["String"] #=> Hash
    #   resp.entity.overrides["String"]["String"] #=> String
    #   resp.entity.binding_properties #=> Hash
    #   resp.entity.binding_properties["String"].type #=> String
    #   resp.entity.binding_properties["String"].binding_properties.model #=> String
    #   resp.entity.binding_properties["String"].binding_properties.field #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates #=> Array
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].or #=> Types::PredicateList
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].and #=> Types::PredicateList
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].field #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].operator #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].operand #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].operand_type #=> String
    #   resp.entity.binding_properties["String"].binding_properties.user_attribute #=> String
    #   resp.entity.binding_properties["String"].binding_properties.bucket #=> String
    #   resp.entity.binding_properties["String"].binding_properties.key #=> String
    #   resp.entity.binding_properties["String"].binding_properties.default_value #=> String
    #   resp.entity.binding_properties["String"].binding_properties.slot_name #=> String
    #   resp.entity.binding_properties["String"].default_value #=> String
    #   resp.entity.collection_properties #=> Hash
    #   resp.entity.collection_properties["String"].model #=> String
    #   resp.entity.collection_properties["String"].sort #=> Array
    #   resp.entity.collection_properties["String"].sort[0].field #=> String
    #   resp.entity.collection_properties["String"].sort[0].direction #=> String, one of "ASC", "DESC"
    #   resp.entity.collection_properties["String"].predicate.or #=> Array
    #   resp.entity.collection_properties["String"].predicate.or[0] #=> Types::Predicate
    #   resp.entity.collection_properties["String"].predicate.and #=> Array
    #   resp.entity.collection_properties["String"].predicate.and[0] #=> Types::Predicate
    #   resp.entity.collection_properties["String"].predicate.field #=> String
    #   resp.entity.collection_properties["String"].predicate.operator #=> String
    #   resp.entity.collection_properties["String"].predicate.operand #=> String
    #   resp.entity.collection_properties["String"].predicate.operand_type #=> String
    #   resp.entity.collection_properties["String"].identifiers #=> Array
    #   resp.entity.collection_properties["String"].identifiers[0] #=> String
    #   resp.entity.created_at #=> Time
    #   resp.entity.modified_at #=> Time
    #   resp.entity.tags #=> Hash
    #   resp.entity.tags["TagKey"] #=> String
    #   resp.entity.events #=> Hash
    #   resp.entity.events["String"].action #=> String
    #   resp.entity.events["String"].parameters.type.value #=> String
    #   resp.entity.events["String"].parameters.type.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.type.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.type.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.type.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.type.default_value #=> String
    #   resp.entity.events["String"].parameters.type.model #=> String
    #   resp.entity.events["String"].parameters.type.bindings #=> Hash
    #   resp.entity.events["String"].parameters.type.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.type.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.type.event #=> String
    #   resp.entity.events["String"].parameters.type.user_attribute #=> String
    #   resp.entity.events["String"].parameters.type.concat #=> Array
    #   resp.entity.events["String"].parameters.type.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.type.condition.property #=> String
    #   resp.entity.events["String"].parameters.type.condition.field #=> String
    #   resp.entity.events["String"].parameters.type.condition.operator #=> String
    #   resp.entity.events["String"].parameters.type.condition.operand #=> String
    #   resp.entity.events["String"].parameters.type.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.type.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.type.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.type.configured #=> Boolean
    #   resp.entity.events["String"].parameters.type.type #=> String
    #   resp.entity.events["String"].parameters.type.imported_value #=> String
    #   resp.entity.events["String"].parameters.type.component_name #=> String
    #   resp.entity.events["String"].parameters.type.property #=> String
    #   resp.entity.events["String"].parameters.url.value #=> String
    #   resp.entity.events["String"].parameters.url.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.url.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.url.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.url.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.url.default_value #=> String
    #   resp.entity.events["String"].parameters.url.model #=> String
    #   resp.entity.events["String"].parameters.url.bindings #=> Hash
    #   resp.entity.events["String"].parameters.url.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.url.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.url.event #=> String
    #   resp.entity.events["String"].parameters.url.user_attribute #=> String
    #   resp.entity.events["String"].parameters.url.concat #=> Array
    #   resp.entity.events["String"].parameters.url.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.url.condition.property #=> String
    #   resp.entity.events["String"].parameters.url.condition.field #=> String
    #   resp.entity.events["String"].parameters.url.condition.operator #=> String
    #   resp.entity.events["String"].parameters.url.condition.operand #=> String
    #   resp.entity.events["String"].parameters.url.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.url.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.url.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.url.configured #=> Boolean
    #   resp.entity.events["String"].parameters.url.type #=> String
    #   resp.entity.events["String"].parameters.url.imported_value #=> String
    #   resp.entity.events["String"].parameters.url.component_name #=> String
    #   resp.entity.events["String"].parameters.url.property #=> String
    #   resp.entity.events["String"].parameters.anchor.value #=> String
    #   resp.entity.events["String"].parameters.anchor.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.anchor.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.anchor.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.anchor.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.anchor.default_value #=> String
    #   resp.entity.events["String"].parameters.anchor.model #=> String
    #   resp.entity.events["String"].parameters.anchor.bindings #=> Hash
    #   resp.entity.events["String"].parameters.anchor.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.anchor.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.anchor.event #=> String
    #   resp.entity.events["String"].parameters.anchor.user_attribute #=> String
    #   resp.entity.events["String"].parameters.anchor.concat #=> Array
    #   resp.entity.events["String"].parameters.anchor.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.anchor.condition.property #=> String
    #   resp.entity.events["String"].parameters.anchor.condition.field #=> String
    #   resp.entity.events["String"].parameters.anchor.condition.operator #=> String
    #   resp.entity.events["String"].parameters.anchor.condition.operand #=> String
    #   resp.entity.events["String"].parameters.anchor.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.anchor.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.anchor.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.anchor.configured #=> Boolean
    #   resp.entity.events["String"].parameters.anchor.type #=> String
    #   resp.entity.events["String"].parameters.anchor.imported_value #=> String
    #   resp.entity.events["String"].parameters.anchor.component_name #=> String
    #   resp.entity.events["String"].parameters.anchor.property #=> String
    #   resp.entity.events["String"].parameters.target.value #=> String
    #   resp.entity.events["String"].parameters.target.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.target.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.target.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.target.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.target.default_value #=> String
    #   resp.entity.events["String"].parameters.target.model #=> String
    #   resp.entity.events["String"].parameters.target.bindings #=> Hash
    #   resp.entity.events["String"].parameters.target.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.target.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.target.event #=> String
    #   resp.entity.events["String"].parameters.target.user_attribute #=> String
    #   resp.entity.events["String"].parameters.target.concat #=> Array
    #   resp.entity.events["String"].parameters.target.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.target.condition.property #=> String
    #   resp.entity.events["String"].parameters.target.condition.field #=> String
    #   resp.entity.events["String"].parameters.target.condition.operator #=> String
    #   resp.entity.events["String"].parameters.target.condition.operand #=> String
    #   resp.entity.events["String"].parameters.target.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.target.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.target.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.target.configured #=> Boolean
    #   resp.entity.events["String"].parameters.target.type #=> String
    #   resp.entity.events["String"].parameters.target.imported_value #=> String
    #   resp.entity.events["String"].parameters.target.component_name #=> String
    #   resp.entity.events["String"].parameters.target.property #=> String
    #   resp.entity.events["String"].parameters.global.value #=> String
    #   resp.entity.events["String"].parameters.global.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.global.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.global.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.global.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.global.default_value #=> String
    #   resp.entity.events["String"].parameters.global.model #=> String
    #   resp.entity.events["String"].parameters.global.bindings #=> Hash
    #   resp.entity.events["String"].parameters.global.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.global.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.global.event #=> String
    #   resp.entity.events["String"].parameters.global.user_attribute #=> String
    #   resp.entity.events["String"].parameters.global.concat #=> Array
    #   resp.entity.events["String"].parameters.global.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.global.condition.property #=> String
    #   resp.entity.events["String"].parameters.global.condition.field #=> String
    #   resp.entity.events["String"].parameters.global.condition.operator #=> String
    #   resp.entity.events["String"].parameters.global.condition.operand #=> String
    #   resp.entity.events["String"].parameters.global.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.global.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.global.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.global.configured #=> Boolean
    #   resp.entity.events["String"].parameters.global.type #=> String
    #   resp.entity.events["String"].parameters.global.imported_value #=> String
    #   resp.entity.events["String"].parameters.global.component_name #=> String
    #   resp.entity.events["String"].parameters.global.property #=> String
    #   resp.entity.events["String"].parameters.model #=> String
    #   resp.entity.events["String"].parameters.id.value #=> String
    #   resp.entity.events["String"].parameters.id.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.id.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.id.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.id.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.id.default_value #=> String
    #   resp.entity.events["String"].parameters.id.model #=> String
    #   resp.entity.events["String"].parameters.id.bindings #=> Hash
    #   resp.entity.events["String"].parameters.id.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.id.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.id.event #=> String
    #   resp.entity.events["String"].parameters.id.user_attribute #=> String
    #   resp.entity.events["String"].parameters.id.concat #=> Array
    #   resp.entity.events["String"].parameters.id.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.id.condition.property #=> String
    #   resp.entity.events["String"].parameters.id.condition.field #=> String
    #   resp.entity.events["String"].parameters.id.condition.operator #=> String
    #   resp.entity.events["String"].parameters.id.condition.operand #=> String
    #   resp.entity.events["String"].parameters.id.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.id.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.id.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.id.configured #=> Boolean
    #   resp.entity.events["String"].parameters.id.type #=> String
    #   resp.entity.events["String"].parameters.id.imported_value #=> String
    #   resp.entity.events["String"].parameters.id.component_name #=> String
    #   resp.entity.events["String"].parameters.id.property #=> String
    #   resp.entity.events["String"].parameters.fields #=> Hash
    #   resp.entity.events["String"].parameters.fields["String"].value #=> String
    #   resp.entity.events["String"].parameters.fields["String"].binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.fields["String"].binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.fields["String"].collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.fields["String"].collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.fields["String"].default_value #=> String
    #   resp.entity.events["String"].parameters.fields["String"].model #=> String
    #   resp.entity.events["String"].parameters.fields["String"].bindings #=> Hash
    #   resp.entity.events["String"].parameters.fields["String"].bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.fields["String"].bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.fields["String"].event #=> String
    #   resp.entity.events["String"].parameters.fields["String"].user_attribute #=> String
    #   resp.entity.events["String"].parameters.fields["String"].concat #=> Array
    #   resp.entity.events["String"].parameters.fields["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.fields["String"].condition.property #=> String
    #   resp.entity.events["String"].parameters.fields["String"].condition.field #=> String
    #   resp.entity.events["String"].parameters.fields["String"].condition.operator #=> String
    #   resp.entity.events["String"].parameters.fields["String"].condition.operand #=> String
    #   resp.entity.events["String"].parameters.fields["String"].condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.fields["String"].condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.fields["String"].condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.fields["String"].configured #=> Boolean
    #   resp.entity.events["String"].parameters.fields["String"].type #=> String
    #   resp.entity.events["String"].parameters.fields["String"].imported_value #=> String
    #   resp.entity.events["String"].parameters.fields["String"].component_name #=> String
    #   resp.entity.events["String"].parameters.fields["String"].property #=> String
    #   resp.entity.events["String"].parameters.state.component_name #=> String
    #   resp.entity.events["String"].parameters.state.property #=> String
    #   resp.entity.events["String"].parameters.state.set.value #=> String
    #   resp.entity.events["String"].parameters.state.set.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.state.set.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.state.set.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.state.set.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.state.set.default_value #=> String
    #   resp.entity.events["String"].parameters.state.set.model #=> String
    #   resp.entity.events["String"].parameters.state.set.bindings #=> Hash
    #   resp.entity.events["String"].parameters.state.set.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.state.set.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.state.set.event #=> String
    #   resp.entity.events["String"].parameters.state.set.user_attribute #=> String
    #   resp.entity.events["String"].parameters.state.set.concat #=> Array
    #   resp.entity.events["String"].parameters.state.set.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.state.set.condition.property #=> String
    #   resp.entity.events["String"].parameters.state.set.condition.field #=> String
    #   resp.entity.events["String"].parameters.state.set.condition.operator #=> String
    #   resp.entity.events["String"].parameters.state.set.condition.operand #=> String
    #   resp.entity.events["String"].parameters.state.set.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.state.set.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.state.set.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.state.set.configured #=> Boolean
    #   resp.entity.events["String"].parameters.state.set.type #=> String
    #   resp.entity.events["String"].parameters.state.set.imported_value #=> String
    #   resp.entity.events["String"].parameters.state.set.component_name #=> String
    #   resp.entity.events["String"].parameters.state.set.property #=> String
    #   resp.entity.events["String"].binding_event #=> String
    #   resp.entity.schema_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateComponent AWS API Documentation
    #
    # @overload create_component(params = {})
    # @param [Hash] params ({})
    def create_component(params = {}, options = {})
      req = build_request(:create_component, params)
      req.send_request(options)
    end

    # Creates a new form for an Amplify.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app to associate with the form.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @option params [String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::CreateFormData] :form_to_create
    #   Represents the configuration of the form to create.
    #
    # @return [Types::CreateFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFormResponse#entity #entity} => Types::Form
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_form({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     client_token: "String",
    #     form_to_create: { # required
    #       name: "FormName", # required
    #       data_type: { # required
    #         data_source_type: "DataStore", # required, accepts DataStore, Custom
    #         data_type_name: "String", # required
    #       },
    #       form_action_type: "create", # required, accepts create, update
    #       fields: { # required
    #         "String" => {
    #           label: "String",
    #           position: {
    #             fixed: "first", # accepts first
    #             right_of: "String",
    #             below: "String",
    #           },
    #           excluded: false,
    #           input_type: {
    #             type: "String", # required
    #             required: false,
    #             read_only: false,
    #             placeholder: "String",
    #             default_value: "String",
    #             descriptive_text: "String",
    #             default_checked: false,
    #             default_country_code: "String",
    #             value_mappings: {
    #               values: [ # required
    #                 {
    #                   display_value: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String",
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       },
    #                     ],
    #                   },
    #                   value: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String",
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #               binding_properties: {
    #                 "String" => {
    #                   type: "String",
    #                   binding_properties: {
    #                     model: "String",
    #                   },
    #                 },
    #               },
    #             },
    #             name: "String",
    #             min_value: 1.0,
    #             max_value: 1.0,
    #             step: 1.0,
    #             value: "String",
    #             is_array: false,
    #             file_uploader_config: {
    #               access_level: "public", # required, accepts public, protected, private
    #               accepted_file_types: ["String"], # required
    #               show_thumbnails: false,
    #               is_resumable: false,
    #               max_file_count: 1,
    #               max_size: 1,
    #             },
    #           },
    #           validations: [
    #             {
    #               type: "String", # required
    #               str_values: ["String"],
    #               num_values: [1],
    #               validation_message: "String",
    #             },
    #           ],
    #         },
    #       },
    #       style: { # required
    #         horizontal_gap: {
    #           token_reference: "String",
    #           value: "String",
    #         },
    #         vertical_gap: {
    #           token_reference: "String",
    #           value: "String",
    #         },
    #         outer_padding: {
    #           token_reference: "String",
    #           value: "String",
    #         },
    #       },
    #       sectional_elements: { # required
    #         "String" => {
    #           type: "String", # required
    #           position: {
    #             fixed: "first", # accepts first
    #             right_of: "String",
    #             below: "String",
    #           },
    #           text: "String",
    #           level: 1,
    #           orientation: "String",
    #           excluded: false,
    #         },
    #       },
    #       schema_version: "String", # required
    #       cta: {
    #         position: "top", # accepts top, bottom, top_and_bottom
    #         clear: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             fixed: "first", # accepts first
    #             right_of: "String",
    #             below: "String",
    #           },
    #         },
    #         cancel: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             fixed: "first", # accepts first
    #             right_of: "String",
    #             below: "String",
    #           },
    #         },
    #         submit: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             fixed: "first", # accepts first
    #             right_of: "String",
    #             below: "String",
    #           },
    #         },
    #       },
    #       tags: {
    #         "TagKey" => "TagValue",
    #       },
    #       label_decorator: "required", # accepts required, optional, none
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entity.app_id #=> String
    #   resp.entity.environment_name #=> String
    #   resp.entity.id #=> String
    #   resp.entity.name #=> String
    #   resp.entity.form_action_type #=> String, one of "create", "update"
    #   resp.entity.style.horizontal_gap.token_reference #=> String
    #   resp.entity.style.horizontal_gap.value #=> String
    #   resp.entity.style.vertical_gap.token_reference #=> String
    #   resp.entity.style.vertical_gap.value #=> String
    #   resp.entity.style.outer_padding.token_reference #=> String
    #   resp.entity.style.outer_padding.value #=> String
    #   resp.entity.data_type.data_source_type #=> String, one of "DataStore", "Custom"
    #   resp.entity.data_type.data_type_name #=> String
    #   resp.entity.fields #=> Hash
    #   resp.entity.fields["String"].label #=> String
    #   resp.entity.fields["String"].position.fixed #=> String, one of "first"
    #   resp.entity.fields["String"].position.right_of #=> String
    #   resp.entity.fields["String"].position.below #=> String
    #   resp.entity.fields["String"].excluded #=> Boolean
    #   resp.entity.fields["String"].input_type.type #=> String
    #   resp.entity.fields["String"].input_type.required #=> Boolean
    #   resp.entity.fields["String"].input_type.read_only #=> Boolean
    #   resp.entity.fields["String"].input_type.placeholder #=> String
    #   resp.entity.fields["String"].input_type.default_value #=> String
    #   resp.entity.fields["String"].input_type.descriptive_text #=> String
    #   resp.entity.fields["String"].input_type.default_checked #=> Boolean
    #   resp.entity.fields["String"].input_type.default_country_code #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values #=> Array
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].display_value.value #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].display_value.binding_properties.property #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].display_value.binding_properties.field #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].display_value.concat #=> Array
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].display_value.concat[0] #=> Types::FormInputValueProperty
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].value.value #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].value.binding_properties.property #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].value.binding_properties.field #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].value.concat #=> Array
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].value.concat[0] #=> Types::FormInputValueProperty
    #   resp.entity.fields["String"].input_type.value_mappings.binding_properties #=> Hash
    #   resp.entity.fields["String"].input_type.value_mappings.binding_properties["String"].type #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.binding_properties["String"].binding_properties.model #=> String
    #   resp.entity.fields["String"].input_type.name #=> String
    #   resp.entity.fields["String"].input_type.min_value #=> Float
    #   resp.entity.fields["String"].input_type.max_value #=> Float
    #   resp.entity.fields["String"].input_type.step #=> Float
    #   resp.entity.fields["String"].input_type.value #=> String
    #   resp.entity.fields["String"].input_type.is_array #=> Boolean
    #   resp.entity.fields["String"].input_type.file_uploader_config.access_level #=> String, one of "public", "protected", "private"
    #   resp.entity.fields["String"].input_type.file_uploader_config.accepted_file_types #=> Array
    #   resp.entity.fields["String"].input_type.file_uploader_config.accepted_file_types[0] #=> String
    #   resp.entity.fields["String"].input_type.file_uploader_config.show_thumbnails #=> Boolean
    #   resp.entity.fields["String"].input_type.file_uploader_config.is_resumable #=> Boolean
    #   resp.entity.fields["String"].input_type.file_uploader_config.max_file_count #=> Integer
    #   resp.entity.fields["String"].input_type.file_uploader_config.max_size #=> Integer
    #   resp.entity.fields["String"].validations #=> Array
    #   resp.entity.fields["String"].validations[0].type #=> String
    #   resp.entity.fields["String"].validations[0].str_values #=> Array
    #   resp.entity.fields["String"].validations[0].str_values[0] #=> String
    #   resp.entity.fields["String"].validations[0].num_values #=> Array
    #   resp.entity.fields["String"].validations[0].num_values[0] #=> Integer
    #   resp.entity.fields["String"].validations[0].validation_message #=> String
    #   resp.entity.sectional_elements #=> Hash
    #   resp.entity.sectional_elements["String"].type #=> String
    #   resp.entity.sectional_elements["String"].position.fixed #=> String, one of "first"
    #   resp.entity.sectional_elements["String"].position.right_of #=> String
    #   resp.entity.sectional_elements["String"].position.below #=> String
    #   resp.entity.sectional_elements["String"].text #=> String
    #   resp.entity.sectional_elements["String"].level #=> Integer
    #   resp.entity.sectional_elements["String"].orientation #=> String
    #   resp.entity.sectional_elements["String"].excluded #=> Boolean
    #   resp.entity.schema_version #=> String
    #   resp.entity.tags #=> Hash
    #   resp.entity.tags["TagKey"] #=> String
    #   resp.entity.cta.position #=> String, one of "top", "bottom", "top_and_bottom"
    #   resp.entity.cta.clear.excluded #=> Boolean
    #   resp.entity.cta.clear.children #=> String
    #   resp.entity.cta.clear.position.fixed #=> String, one of "first"
    #   resp.entity.cta.clear.position.right_of #=> String
    #   resp.entity.cta.clear.position.below #=> String
    #   resp.entity.cta.cancel.excluded #=> Boolean
    #   resp.entity.cta.cancel.children #=> String
    #   resp.entity.cta.cancel.position.fixed #=> String, one of "first"
    #   resp.entity.cta.cancel.position.right_of #=> String
    #   resp.entity.cta.cancel.position.below #=> String
    #   resp.entity.cta.submit.excluded #=> Boolean
    #   resp.entity.cta.submit.children #=> String
    #   resp.entity.cta.submit.position.fixed #=> String, one of "first"
    #   resp.entity.cta.submit.position.right_of #=> String
    #   resp.entity.cta.submit.position.below #=> String
    #   resp.entity.label_decorator #=> String, one of "required", "optional", "none"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/CreateForm AWS API Documentation
    #
    # @overload create_form(params = {})
    # @param [Hash] params ({})
    def create_form(params = {}, options = {})
      req = build_request(:create_form, params)
      req.send_request(options)
    end

    # Creates a theme to apply to the components in an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app associated with the theme.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @option params [String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
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
    #     environment_name: "String", # required
    #     client_token: "String",
    #     theme_to_create: { # required
    #       name: "ThemeName", # required
    #       values: [ # required
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             },
    #           },
    #         },
    #       ],
    #       overrides: [
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             },
    #           },
    #         },
    #       ],
    #       tags: {
    #         "TagKey" => "TagValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entity.app_id #=> String
    #   resp.entity.environment_name #=> String
    #   resp.entity.id #=> String
    #   resp.entity.name #=> String
    #   resp.entity.created_at #=> Time
    #   resp.entity.modified_at #=> Time
    #   resp.entity.values #=> Array
    #   resp.entity.values[0].key #=> String
    #   resp.entity.values[0].value.value #=> String
    #   resp.entity.values[0].value.children #=> Types::ThemeValuesList
    #   resp.entity.overrides #=> Array
    #   resp.entity.overrides[0].key #=> String
    #   resp.entity.overrides[0].value.value #=> String
    #   resp.entity.overrides[0].value.children #=> Types::ThemeValuesList
    #   resp.entity.tags #=> Hash
    #   resp.entity.tags["TagKey"] #=> String
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

    # Deletes a form from an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app associated with the form to delete.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @option params [required, String] :id
    #   The unique ID of the form to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_form({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/DeleteForm AWS API Documentation
    #
    # @overload delete_form(params = {})
    # @param [Hash] params ({})
    def delete_form(params = {}, options = {})
      req = build_request(:delete_form, params)
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
    #       code: "SensitiveString", # required
    #       redirect_uri: "String", # required
    #       client_id: "SensitiveString",
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
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @return [Types::ExportComponentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportComponentsResponse#entities #entities} => Array&lt;Types::Component&gt;
    #   * {Types::ExportComponentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_components({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].app_id #=> String
    #   resp.entities[0].environment_name #=> String
    #   resp.entities[0].source_id #=> String
    #   resp.entities[0].id #=> String
    #   resp.entities[0].name #=> String
    #   resp.entities[0].component_type #=> String
    #   resp.entities[0].properties #=> Hash
    #   resp.entities[0].properties["String"].value #=> String
    #   resp.entities[0].properties["String"].binding_properties.property #=> String
    #   resp.entities[0].properties["String"].binding_properties.field #=> String
    #   resp.entities[0].properties["String"].collection_binding_properties.property #=> String
    #   resp.entities[0].properties["String"].collection_binding_properties.field #=> String
    #   resp.entities[0].properties["String"].default_value #=> String
    #   resp.entities[0].properties["String"].model #=> String
    #   resp.entities[0].properties["String"].bindings #=> Hash
    #   resp.entities[0].properties["String"].bindings["String"].element #=> String
    #   resp.entities[0].properties["String"].bindings["String"].property #=> String
    #   resp.entities[0].properties["String"].event #=> String
    #   resp.entities[0].properties["String"].user_attribute #=> String
    #   resp.entities[0].properties["String"].concat #=> Array
    #   resp.entities[0].properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].properties["String"].condition.property #=> String
    #   resp.entities[0].properties["String"].condition.field #=> String
    #   resp.entities[0].properties["String"].condition.operator #=> String
    #   resp.entities[0].properties["String"].condition.operand #=> String
    #   resp.entities[0].properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.entities[0].properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.entities[0].properties["String"].condition.operand_type #=> String
    #   resp.entities[0].properties["String"].configured #=> Boolean
    #   resp.entities[0].properties["String"].type #=> String
    #   resp.entities[0].properties["String"].imported_value #=> String
    #   resp.entities[0].properties["String"].component_name #=> String
    #   resp.entities[0].properties["String"].property #=> String
    #   resp.entities[0].children #=> Array
    #   resp.entities[0].children[0].component_type #=> String
    #   resp.entities[0].children[0].name #=> String
    #   resp.entities[0].children[0].properties #=> Hash
    #   resp.entities[0].children[0].properties["String"].value #=> String
    #   resp.entities[0].children[0].properties["String"].binding_properties.property #=> String
    #   resp.entities[0].children[0].properties["String"].binding_properties.field #=> String
    #   resp.entities[0].children[0].properties["String"].collection_binding_properties.property #=> String
    #   resp.entities[0].children[0].properties["String"].collection_binding_properties.field #=> String
    #   resp.entities[0].children[0].properties["String"].default_value #=> String
    #   resp.entities[0].children[0].properties["String"].model #=> String
    #   resp.entities[0].children[0].properties["String"].bindings #=> Hash
    #   resp.entities[0].children[0].properties["String"].bindings["String"].element #=> String
    #   resp.entities[0].children[0].properties["String"].bindings["String"].property #=> String
    #   resp.entities[0].children[0].properties["String"].event #=> String
    #   resp.entities[0].children[0].properties["String"].user_attribute #=> String
    #   resp.entities[0].children[0].properties["String"].concat #=> Array
    #   resp.entities[0].children[0].properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].children[0].properties["String"].condition.property #=> String
    #   resp.entities[0].children[0].properties["String"].condition.field #=> String
    #   resp.entities[0].children[0].properties["String"].condition.operator #=> String
    #   resp.entities[0].children[0].properties["String"].condition.operand #=> String
    #   resp.entities[0].children[0].properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.entities[0].children[0].properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.entities[0].children[0].properties["String"].condition.operand_type #=> String
    #   resp.entities[0].children[0].properties["String"].configured #=> Boolean
    #   resp.entities[0].children[0].properties["String"].type #=> String
    #   resp.entities[0].children[0].properties["String"].imported_value #=> String
    #   resp.entities[0].children[0].properties["String"].component_name #=> String
    #   resp.entities[0].children[0].properties["String"].property #=> String
    #   resp.entities[0].children[0].children #=> Types::ComponentChildList
    #   resp.entities[0].children[0].events #=> Hash
    #   resp.entities[0].children[0].events["String"].action #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.collection_binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.collection_binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.default_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.model #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.bindings #=> Hash
    #   resp.entities[0].children[0].events["String"].parameters.type.bindings["String"].element #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.bindings["String"].property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.event #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.user_attribute #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.concat #=> Array
    #   resp.entities[0].children[0].events["String"].parameters.type.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.type.condition.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.condition.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.condition.operator #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.condition.operand #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.type.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.type.condition.operand_type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.configured #=> Boolean
    #   resp.entities[0].children[0].events["String"].parameters.type.type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.imported_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.component_name #=> String
    #   resp.entities[0].children[0].events["String"].parameters.type.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.collection_binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.collection_binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.default_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.model #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.bindings #=> Hash
    #   resp.entities[0].children[0].events["String"].parameters.url.bindings["String"].element #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.bindings["String"].property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.event #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.user_attribute #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.concat #=> Array
    #   resp.entities[0].children[0].events["String"].parameters.url.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.url.condition.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.condition.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.condition.operator #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.condition.operand #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.url.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.url.condition.operand_type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.configured #=> Boolean
    #   resp.entities[0].children[0].events["String"].parameters.url.type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.imported_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.component_name #=> String
    #   resp.entities[0].children[0].events["String"].parameters.url.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.collection_binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.collection_binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.default_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.model #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.bindings #=> Hash
    #   resp.entities[0].children[0].events["String"].parameters.anchor.bindings["String"].element #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.bindings["String"].property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.event #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.user_attribute #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.concat #=> Array
    #   resp.entities[0].children[0].events["String"].parameters.anchor.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.anchor.condition.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.condition.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.condition.operator #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.condition.operand #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.anchor.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.anchor.condition.operand_type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.configured #=> Boolean
    #   resp.entities[0].children[0].events["String"].parameters.anchor.type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.imported_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.component_name #=> String
    #   resp.entities[0].children[0].events["String"].parameters.anchor.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.collection_binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.collection_binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.default_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.model #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.bindings #=> Hash
    #   resp.entities[0].children[0].events["String"].parameters.target.bindings["String"].element #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.bindings["String"].property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.event #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.user_attribute #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.concat #=> Array
    #   resp.entities[0].children[0].events["String"].parameters.target.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.target.condition.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.condition.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.condition.operator #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.condition.operand #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.target.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.target.condition.operand_type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.configured #=> Boolean
    #   resp.entities[0].children[0].events["String"].parameters.target.type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.imported_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.component_name #=> String
    #   resp.entities[0].children[0].events["String"].parameters.target.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.collection_binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.collection_binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.default_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.model #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.bindings #=> Hash
    #   resp.entities[0].children[0].events["String"].parameters.global.bindings["String"].element #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.bindings["String"].property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.event #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.user_attribute #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.concat #=> Array
    #   resp.entities[0].children[0].events["String"].parameters.global.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.global.condition.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.condition.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.condition.operator #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.condition.operand #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.global.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.global.condition.operand_type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.configured #=> Boolean
    #   resp.entities[0].children[0].events["String"].parameters.global.type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.imported_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.component_name #=> String
    #   resp.entities[0].children[0].events["String"].parameters.global.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.model #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.collection_binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.collection_binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.default_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.model #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.bindings #=> Hash
    #   resp.entities[0].children[0].events["String"].parameters.id.bindings["String"].element #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.bindings["String"].property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.event #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.user_attribute #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.concat #=> Array
    #   resp.entities[0].children[0].events["String"].parameters.id.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.id.condition.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.condition.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.condition.operator #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.condition.operand #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.id.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.id.condition.operand_type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.configured #=> Boolean
    #   resp.entities[0].children[0].events["String"].parameters.id.type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.imported_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.component_name #=> String
    #   resp.entities[0].children[0].events["String"].parameters.id.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields #=> Hash
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].collection_binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].collection_binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].default_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].model #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].bindings #=> Hash
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].bindings["String"].element #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].bindings["String"].property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].event #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].user_attribute #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].concat #=> Array
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].condition.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].condition.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].condition.operator #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].condition.operand #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].condition.then #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].condition.else #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].condition.operand_type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].configured #=> Boolean
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].imported_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].component_name #=> String
    #   resp.entities[0].children[0].events["String"].parameters.fields["String"].property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.component_name #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.collection_binding_properties.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.collection_binding_properties.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.default_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.model #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.bindings #=> Hash
    #   resp.entities[0].children[0].events["String"].parameters.state.set.bindings["String"].element #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.bindings["String"].property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.event #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.user_attribute #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.concat #=> Array
    #   resp.entities[0].children[0].events["String"].parameters.state.set.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.state.set.condition.property #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.condition.field #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.condition.operator #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.condition.operand #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.state.set.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].children[0].events["String"].parameters.state.set.condition.operand_type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.configured #=> Boolean
    #   resp.entities[0].children[0].events["String"].parameters.state.set.type #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.imported_value #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.component_name #=> String
    #   resp.entities[0].children[0].events["String"].parameters.state.set.property #=> String
    #   resp.entities[0].children[0].events["String"].binding_event #=> String
    #   resp.entities[0].children[0].source_id #=> String
    #   resp.entities[0].variants #=> Array
    #   resp.entities[0].variants[0].variant_values #=> Hash
    #   resp.entities[0].variants[0].variant_values["String"] #=> String
    #   resp.entities[0].variants[0].overrides #=> Hash
    #   resp.entities[0].variants[0].overrides["String"] #=> Hash
    #   resp.entities[0].variants[0].overrides["String"]["String"] #=> String
    #   resp.entities[0].overrides #=> Hash
    #   resp.entities[0].overrides["String"] #=> Hash
    #   resp.entities[0].overrides["String"]["String"] #=> String
    #   resp.entities[0].binding_properties #=> Hash
    #   resp.entities[0].binding_properties["String"].type #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.model #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.field #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates #=> Array
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates[0].or #=> Types::PredicateList
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates[0].and #=> Types::PredicateList
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates[0].field #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates[0].operator #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates[0].operand #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.predicates[0].operand_type #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.user_attribute #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.bucket #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.key #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.default_value #=> String
    #   resp.entities[0].binding_properties["String"].binding_properties.slot_name #=> String
    #   resp.entities[0].binding_properties["String"].default_value #=> String
    #   resp.entities[0].collection_properties #=> Hash
    #   resp.entities[0].collection_properties["String"].model #=> String
    #   resp.entities[0].collection_properties["String"].sort #=> Array
    #   resp.entities[0].collection_properties["String"].sort[0].field #=> String
    #   resp.entities[0].collection_properties["String"].sort[0].direction #=> String, one of "ASC", "DESC"
    #   resp.entities[0].collection_properties["String"].predicate.or #=> Array
    #   resp.entities[0].collection_properties["String"].predicate.or[0] #=> Types::Predicate
    #   resp.entities[0].collection_properties["String"].predicate.and #=> Array
    #   resp.entities[0].collection_properties["String"].predicate.and[0] #=> Types::Predicate
    #   resp.entities[0].collection_properties["String"].predicate.field #=> String
    #   resp.entities[0].collection_properties["String"].predicate.operator #=> String
    #   resp.entities[0].collection_properties["String"].predicate.operand #=> String
    #   resp.entities[0].collection_properties["String"].predicate.operand_type #=> String
    #   resp.entities[0].collection_properties["String"].identifiers #=> Array
    #   resp.entities[0].collection_properties["String"].identifiers[0] #=> String
    #   resp.entities[0].created_at #=> Time
    #   resp.entities[0].modified_at #=> Time
    #   resp.entities[0].tags #=> Hash
    #   resp.entities[0].tags["TagKey"] #=> String
    #   resp.entities[0].events #=> Hash
    #   resp.entities[0].events["String"].action #=> String
    #   resp.entities[0].events["String"].parameters.type.value #=> String
    #   resp.entities[0].events["String"].parameters.type.binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.type.binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.type.collection_binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.type.collection_binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.type.default_value #=> String
    #   resp.entities[0].events["String"].parameters.type.model #=> String
    #   resp.entities[0].events["String"].parameters.type.bindings #=> Hash
    #   resp.entities[0].events["String"].parameters.type.bindings["String"].element #=> String
    #   resp.entities[0].events["String"].parameters.type.bindings["String"].property #=> String
    #   resp.entities[0].events["String"].parameters.type.event #=> String
    #   resp.entities[0].events["String"].parameters.type.user_attribute #=> String
    #   resp.entities[0].events["String"].parameters.type.concat #=> Array
    #   resp.entities[0].events["String"].parameters.type.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.type.condition.property #=> String
    #   resp.entities[0].events["String"].parameters.type.condition.field #=> String
    #   resp.entities[0].events["String"].parameters.type.condition.operator #=> String
    #   resp.entities[0].events["String"].parameters.type.condition.operand #=> String
    #   resp.entities[0].events["String"].parameters.type.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.type.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.type.condition.operand_type #=> String
    #   resp.entities[0].events["String"].parameters.type.configured #=> Boolean
    #   resp.entities[0].events["String"].parameters.type.type #=> String
    #   resp.entities[0].events["String"].parameters.type.imported_value #=> String
    #   resp.entities[0].events["String"].parameters.type.component_name #=> String
    #   resp.entities[0].events["String"].parameters.type.property #=> String
    #   resp.entities[0].events["String"].parameters.url.value #=> String
    #   resp.entities[0].events["String"].parameters.url.binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.url.binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.url.collection_binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.url.collection_binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.url.default_value #=> String
    #   resp.entities[0].events["String"].parameters.url.model #=> String
    #   resp.entities[0].events["String"].parameters.url.bindings #=> Hash
    #   resp.entities[0].events["String"].parameters.url.bindings["String"].element #=> String
    #   resp.entities[0].events["String"].parameters.url.bindings["String"].property #=> String
    #   resp.entities[0].events["String"].parameters.url.event #=> String
    #   resp.entities[0].events["String"].parameters.url.user_attribute #=> String
    #   resp.entities[0].events["String"].parameters.url.concat #=> Array
    #   resp.entities[0].events["String"].parameters.url.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.url.condition.property #=> String
    #   resp.entities[0].events["String"].parameters.url.condition.field #=> String
    #   resp.entities[0].events["String"].parameters.url.condition.operator #=> String
    #   resp.entities[0].events["String"].parameters.url.condition.operand #=> String
    #   resp.entities[0].events["String"].parameters.url.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.url.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.url.condition.operand_type #=> String
    #   resp.entities[0].events["String"].parameters.url.configured #=> Boolean
    #   resp.entities[0].events["String"].parameters.url.type #=> String
    #   resp.entities[0].events["String"].parameters.url.imported_value #=> String
    #   resp.entities[0].events["String"].parameters.url.component_name #=> String
    #   resp.entities[0].events["String"].parameters.url.property #=> String
    #   resp.entities[0].events["String"].parameters.anchor.value #=> String
    #   resp.entities[0].events["String"].parameters.anchor.binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.anchor.binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.anchor.collection_binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.anchor.collection_binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.anchor.default_value #=> String
    #   resp.entities[0].events["String"].parameters.anchor.model #=> String
    #   resp.entities[0].events["String"].parameters.anchor.bindings #=> Hash
    #   resp.entities[0].events["String"].parameters.anchor.bindings["String"].element #=> String
    #   resp.entities[0].events["String"].parameters.anchor.bindings["String"].property #=> String
    #   resp.entities[0].events["String"].parameters.anchor.event #=> String
    #   resp.entities[0].events["String"].parameters.anchor.user_attribute #=> String
    #   resp.entities[0].events["String"].parameters.anchor.concat #=> Array
    #   resp.entities[0].events["String"].parameters.anchor.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.anchor.condition.property #=> String
    #   resp.entities[0].events["String"].parameters.anchor.condition.field #=> String
    #   resp.entities[0].events["String"].parameters.anchor.condition.operator #=> String
    #   resp.entities[0].events["String"].parameters.anchor.condition.operand #=> String
    #   resp.entities[0].events["String"].parameters.anchor.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.anchor.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.anchor.condition.operand_type #=> String
    #   resp.entities[0].events["String"].parameters.anchor.configured #=> Boolean
    #   resp.entities[0].events["String"].parameters.anchor.type #=> String
    #   resp.entities[0].events["String"].parameters.anchor.imported_value #=> String
    #   resp.entities[0].events["String"].parameters.anchor.component_name #=> String
    #   resp.entities[0].events["String"].parameters.anchor.property #=> String
    #   resp.entities[0].events["String"].parameters.target.value #=> String
    #   resp.entities[0].events["String"].parameters.target.binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.target.binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.target.collection_binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.target.collection_binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.target.default_value #=> String
    #   resp.entities[0].events["String"].parameters.target.model #=> String
    #   resp.entities[0].events["String"].parameters.target.bindings #=> Hash
    #   resp.entities[0].events["String"].parameters.target.bindings["String"].element #=> String
    #   resp.entities[0].events["String"].parameters.target.bindings["String"].property #=> String
    #   resp.entities[0].events["String"].parameters.target.event #=> String
    #   resp.entities[0].events["String"].parameters.target.user_attribute #=> String
    #   resp.entities[0].events["String"].parameters.target.concat #=> Array
    #   resp.entities[0].events["String"].parameters.target.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.target.condition.property #=> String
    #   resp.entities[0].events["String"].parameters.target.condition.field #=> String
    #   resp.entities[0].events["String"].parameters.target.condition.operator #=> String
    #   resp.entities[0].events["String"].parameters.target.condition.operand #=> String
    #   resp.entities[0].events["String"].parameters.target.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.target.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.target.condition.operand_type #=> String
    #   resp.entities[0].events["String"].parameters.target.configured #=> Boolean
    #   resp.entities[0].events["String"].parameters.target.type #=> String
    #   resp.entities[0].events["String"].parameters.target.imported_value #=> String
    #   resp.entities[0].events["String"].parameters.target.component_name #=> String
    #   resp.entities[0].events["String"].parameters.target.property #=> String
    #   resp.entities[0].events["String"].parameters.global.value #=> String
    #   resp.entities[0].events["String"].parameters.global.binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.global.binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.global.collection_binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.global.collection_binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.global.default_value #=> String
    #   resp.entities[0].events["String"].parameters.global.model #=> String
    #   resp.entities[0].events["String"].parameters.global.bindings #=> Hash
    #   resp.entities[0].events["String"].parameters.global.bindings["String"].element #=> String
    #   resp.entities[0].events["String"].parameters.global.bindings["String"].property #=> String
    #   resp.entities[0].events["String"].parameters.global.event #=> String
    #   resp.entities[0].events["String"].parameters.global.user_attribute #=> String
    #   resp.entities[0].events["String"].parameters.global.concat #=> Array
    #   resp.entities[0].events["String"].parameters.global.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.global.condition.property #=> String
    #   resp.entities[0].events["String"].parameters.global.condition.field #=> String
    #   resp.entities[0].events["String"].parameters.global.condition.operator #=> String
    #   resp.entities[0].events["String"].parameters.global.condition.operand #=> String
    #   resp.entities[0].events["String"].parameters.global.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.global.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.global.condition.operand_type #=> String
    #   resp.entities[0].events["String"].parameters.global.configured #=> Boolean
    #   resp.entities[0].events["String"].parameters.global.type #=> String
    #   resp.entities[0].events["String"].parameters.global.imported_value #=> String
    #   resp.entities[0].events["String"].parameters.global.component_name #=> String
    #   resp.entities[0].events["String"].parameters.global.property #=> String
    #   resp.entities[0].events["String"].parameters.model #=> String
    #   resp.entities[0].events["String"].parameters.id.value #=> String
    #   resp.entities[0].events["String"].parameters.id.binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.id.binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.id.collection_binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.id.collection_binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.id.default_value #=> String
    #   resp.entities[0].events["String"].parameters.id.model #=> String
    #   resp.entities[0].events["String"].parameters.id.bindings #=> Hash
    #   resp.entities[0].events["String"].parameters.id.bindings["String"].element #=> String
    #   resp.entities[0].events["String"].parameters.id.bindings["String"].property #=> String
    #   resp.entities[0].events["String"].parameters.id.event #=> String
    #   resp.entities[0].events["String"].parameters.id.user_attribute #=> String
    #   resp.entities[0].events["String"].parameters.id.concat #=> Array
    #   resp.entities[0].events["String"].parameters.id.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.id.condition.property #=> String
    #   resp.entities[0].events["String"].parameters.id.condition.field #=> String
    #   resp.entities[0].events["String"].parameters.id.condition.operator #=> String
    #   resp.entities[0].events["String"].parameters.id.condition.operand #=> String
    #   resp.entities[0].events["String"].parameters.id.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.id.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.id.condition.operand_type #=> String
    #   resp.entities[0].events["String"].parameters.id.configured #=> Boolean
    #   resp.entities[0].events["String"].parameters.id.type #=> String
    #   resp.entities[0].events["String"].parameters.id.imported_value #=> String
    #   resp.entities[0].events["String"].parameters.id.component_name #=> String
    #   resp.entities[0].events["String"].parameters.id.property #=> String
    #   resp.entities[0].events["String"].parameters.fields #=> Hash
    #   resp.entities[0].events["String"].parameters.fields["String"].value #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].collection_binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].collection_binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].default_value #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].model #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].bindings #=> Hash
    #   resp.entities[0].events["String"].parameters.fields["String"].bindings["String"].element #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].bindings["String"].property #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].event #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].user_attribute #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].concat #=> Array
    #   resp.entities[0].events["String"].parameters.fields["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.fields["String"].condition.property #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].condition.field #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].condition.operator #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].condition.operand #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].condition.then #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.fields["String"].condition.else #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.fields["String"].condition.operand_type #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].configured #=> Boolean
    #   resp.entities[0].events["String"].parameters.fields["String"].type #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].imported_value #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].component_name #=> String
    #   resp.entities[0].events["String"].parameters.fields["String"].property #=> String
    #   resp.entities[0].events["String"].parameters.state.component_name #=> String
    #   resp.entities[0].events["String"].parameters.state.property #=> String
    #   resp.entities[0].events["String"].parameters.state.set.value #=> String
    #   resp.entities[0].events["String"].parameters.state.set.binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.state.set.binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.state.set.collection_binding_properties.property #=> String
    #   resp.entities[0].events["String"].parameters.state.set.collection_binding_properties.field #=> String
    #   resp.entities[0].events["String"].parameters.state.set.default_value #=> String
    #   resp.entities[0].events["String"].parameters.state.set.model #=> String
    #   resp.entities[0].events["String"].parameters.state.set.bindings #=> Hash
    #   resp.entities[0].events["String"].parameters.state.set.bindings["String"].element #=> String
    #   resp.entities[0].events["String"].parameters.state.set.bindings["String"].property #=> String
    #   resp.entities[0].events["String"].parameters.state.set.event #=> String
    #   resp.entities[0].events["String"].parameters.state.set.user_attribute #=> String
    #   resp.entities[0].events["String"].parameters.state.set.concat #=> Array
    #   resp.entities[0].events["String"].parameters.state.set.concat[0] #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.state.set.condition.property #=> String
    #   resp.entities[0].events["String"].parameters.state.set.condition.field #=> String
    #   resp.entities[0].events["String"].parameters.state.set.condition.operator #=> String
    #   resp.entities[0].events["String"].parameters.state.set.condition.operand #=> String
    #   resp.entities[0].events["String"].parameters.state.set.condition.then #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.state.set.condition.else #=> Types::ComponentProperty
    #   resp.entities[0].events["String"].parameters.state.set.condition.operand_type #=> String
    #   resp.entities[0].events["String"].parameters.state.set.configured #=> Boolean
    #   resp.entities[0].events["String"].parameters.state.set.type #=> String
    #   resp.entities[0].events["String"].parameters.state.set.imported_value #=> String
    #   resp.entities[0].events["String"].parameters.state.set.component_name #=> String
    #   resp.entities[0].events["String"].parameters.state.set.property #=> String
    #   resp.entities[0].events["String"].binding_event #=> String
    #   resp.entities[0].schema_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportComponents AWS API Documentation
    #
    # @overload export_components(params = {})
    # @param [Hash] params ({})
    def export_components(params = {}, options = {})
      req = build_request(:export_components, params)
      req.send_request(options)
    end

    # Exports form configurations to code that is ready to integrate into an
    # Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app to export forms to.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @return [Types::ExportFormsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportFormsResponse#entities #entities} => Array&lt;Types::Form&gt;
    #   * {Types::ExportFormsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_forms({
    #     app_id: "String", # required
    #     environment_name: "String", # required
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
    #   resp.entities[0].form_action_type #=> String, one of "create", "update"
    #   resp.entities[0].style.horizontal_gap.token_reference #=> String
    #   resp.entities[0].style.horizontal_gap.value #=> String
    #   resp.entities[0].style.vertical_gap.token_reference #=> String
    #   resp.entities[0].style.vertical_gap.value #=> String
    #   resp.entities[0].style.outer_padding.token_reference #=> String
    #   resp.entities[0].style.outer_padding.value #=> String
    #   resp.entities[0].data_type.data_source_type #=> String, one of "DataStore", "Custom"
    #   resp.entities[0].data_type.data_type_name #=> String
    #   resp.entities[0].fields #=> Hash
    #   resp.entities[0].fields["String"].label #=> String
    #   resp.entities[0].fields["String"].position.fixed #=> String, one of "first"
    #   resp.entities[0].fields["String"].position.right_of #=> String
    #   resp.entities[0].fields["String"].position.below #=> String
    #   resp.entities[0].fields["String"].excluded #=> Boolean
    #   resp.entities[0].fields["String"].input_type.type #=> String
    #   resp.entities[0].fields["String"].input_type.required #=> Boolean
    #   resp.entities[0].fields["String"].input_type.read_only #=> Boolean
    #   resp.entities[0].fields["String"].input_type.placeholder #=> String
    #   resp.entities[0].fields["String"].input_type.default_value #=> String
    #   resp.entities[0].fields["String"].input_type.descriptive_text #=> String
    #   resp.entities[0].fields["String"].input_type.default_checked #=> Boolean
    #   resp.entities[0].fields["String"].input_type.default_country_code #=> String
    #   resp.entities[0].fields["String"].input_type.value_mappings.values #=> Array
    #   resp.entities[0].fields["String"].input_type.value_mappings.values[0].display_value.value #=> String
    #   resp.entities[0].fields["String"].input_type.value_mappings.values[0].display_value.binding_properties.property #=> String
    #   resp.entities[0].fields["String"].input_type.value_mappings.values[0].display_value.binding_properties.field #=> String
    #   resp.entities[0].fields["String"].input_type.value_mappings.values[0].display_value.concat #=> Array
    #   resp.entities[0].fields["String"].input_type.value_mappings.values[0].display_value.concat[0] #=> Types::FormInputValueProperty
    #   resp.entities[0].fields["String"].input_type.value_mappings.values[0].value.value #=> String
    #   resp.entities[0].fields["String"].input_type.value_mappings.values[0].value.binding_properties.property #=> String
    #   resp.entities[0].fields["String"].input_type.value_mappings.values[0].value.binding_properties.field #=> String
    #   resp.entities[0].fields["String"].input_type.value_mappings.values[0].value.concat #=> Array
    #   resp.entities[0].fields["String"].input_type.value_mappings.values[0].value.concat[0] #=> Types::FormInputValueProperty
    #   resp.entities[0].fields["String"].input_type.value_mappings.binding_properties #=> Hash
    #   resp.entities[0].fields["String"].input_type.value_mappings.binding_properties["String"].type #=> String
    #   resp.entities[0].fields["String"].input_type.value_mappings.binding_properties["String"].binding_properties.model #=> String
    #   resp.entities[0].fields["String"].input_type.name #=> String
    #   resp.entities[0].fields["String"].input_type.min_value #=> Float
    #   resp.entities[0].fields["String"].input_type.max_value #=> Float
    #   resp.entities[0].fields["String"].input_type.step #=> Float
    #   resp.entities[0].fields["String"].input_type.value #=> String
    #   resp.entities[0].fields["String"].input_type.is_array #=> Boolean
    #   resp.entities[0].fields["String"].input_type.file_uploader_config.access_level #=> String, one of "public", "protected", "private"
    #   resp.entities[0].fields["String"].input_type.file_uploader_config.accepted_file_types #=> Array
    #   resp.entities[0].fields["String"].input_type.file_uploader_config.accepted_file_types[0] #=> String
    #   resp.entities[0].fields["String"].input_type.file_uploader_config.show_thumbnails #=> Boolean
    #   resp.entities[0].fields["String"].input_type.file_uploader_config.is_resumable #=> Boolean
    #   resp.entities[0].fields["String"].input_type.file_uploader_config.max_file_count #=> Integer
    #   resp.entities[0].fields["String"].input_type.file_uploader_config.max_size #=> Integer
    #   resp.entities[0].fields["String"].validations #=> Array
    #   resp.entities[0].fields["String"].validations[0].type #=> String
    #   resp.entities[0].fields["String"].validations[0].str_values #=> Array
    #   resp.entities[0].fields["String"].validations[0].str_values[0] #=> String
    #   resp.entities[0].fields["String"].validations[0].num_values #=> Array
    #   resp.entities[0].fields["String"].validations[0].num_values[0] #=> Integer
    #   resp.entities[0].fields["String"].validations[0].validation_message #=> String
    #   resp.entities[0].sectional_elements #=> Hash
    #   resp.entities[0].sectional_elements["String"].type #=> String
    #   resp.entities[0].sectional_elements["String"].position.fixed #=> String, one of "first"
    #   resp.entities[0].sectional_elements["String"].position.right_of #=> String
    #   resp.entities[0].sectional_elements["String"].position.below #=> String
    #   resp.entities[0].sectional_elements["String"].text #=> String
    #   resp.entities[0].sectional_elements["String"].level #=> Integer
    #   resp.entities[0].sectional_elements["String"].orientation #=> String
    #   resp.entities[0].sectional_elements["String"].excluded #=> Boolean
    #   resp.entities[0].schema_version #=> String
    #   resp.entities[0].tags #=> Hash
    #   resp.entities[0].tags["TagKey"] #=> String
    #   resp.entities[0].cta.position #=> String, one of "top", "bottom", "top_and_bottom"
    #   resp.entities[0].cta.clear.excluded #=> Boolean
    #   resp.entities[0].cta.clear.children #=> String
    #   resp.entities[0].cta.clear.position.fixed #=> String, one of "first"
    #   resp.entities[0].cta.clear.position.right_of #=> String
    #   resp.entities[0].cta.clear.position.below #=> String
    #   resp.entities[0].cta.cancel.excluded #=> Boolean
    #   resp.entities[0].cta.cancel.children #=> String
    #   resp.entities[0].cta.cancel.position.fixed #=> String, one of "first"
    #   resp.entities[0].cta.cancel.position.right_of #=> String
    #   resp.entities[0].cta.cancel.position.below #=> String
    #   resp.entities[0].cta.submit.excluded #=> Boolean
    #   resp.entities[0].cta.submit.children #=> String
    #   resp.entities[0].cta.submit.position.fixed #=> String, one of "first"
    #   resp.entities[0].cta.submit.position.right_of #=> String
    #   resp.entities[0].cta.submit.position.below #=> String
    #   resp.entities[0].label_decorator #=> String, one of "required", "optional", "none"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportForms AWS API Documentation
    #
    # @overload export_forms(params = {})
    # @param [Hash] params ({})
    def export_forms(params = {}, options = {})
      req = build_request(:export_forms, params)
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
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @return [Types::ExportThemesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportThemesResponse#entities #entities} => Array&lt;Types::Theme&gt;
    #   * {Types::ExportThemesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_themes({
    #     app_id: "String", # required
    #     environment_name: "String", # required
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
    #   resp.entities[0].created_at #=> Time
    #   resp.entities[0].modified_at #=> Time
    #   resp.entities[0].values #=> Array
    #   resp.entities[0].values[0].key #=> String
    #   resp.entities[0].values[0].value.value #=> String
    #   resp.entities[0].values[0].value.children #=> Types::ThemeValuesList
    #   resp.entities[0].overrides #=> Array
    #   resp.entities[0].overrides[0].key #=> String
    #   resp.entities[0].overrides[0].value.value #=> String
    #   resp.entities[0].overrides[0].value.children #=> Types::ThemeValuesList
    #   resp.entities[0].tags #=> Hash
    #   resp.entities[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ExportThemes AWS API Documentation
    #
    # @overload export_themes(params = {})
    # @param [Hash] params ({})
    def export_themes(params = {}, options = {})
      req = build_request(:export_themes, params)
      req.send_request(options)
    end

    # Returns an existing code generation job.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app associated with the code generation
    #   job.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app
    #   associated with the code generation job.
    #
    # @option params [required, String] :id
    #   The unique ID of the code generation job.
    #
    # @return [Types::GetCodegenJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCodegenJobResponse#job #job} => Types::CodegenJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_codegen_job({
    #     app_id: "AppId", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.id #=> String
    #   resp.job.app_id #=> String
    #   resp.job.environment_name #=> String
    #   resp.job.render_config.react.module #=> String, one of "es2020", "esnext"
    #   resp.job.render_config.react.target #=> String, one of "es2015", "es2020"
    #   resp.job.render_config.react.script #=> String, one of "jsx", "tsx", "js"
    #   resp.job.render_config.react.render_type_declarations #=> Boolean
    #   resp.job.render_config.react.inline_source_map #=> Boolean
    #   resp.job.generic_data_schema.data_source_type #=> String, one of "DataStore"
    #   resp.job.generic_data_schema.models #=> Hash
    #   resp.job.generic_data_schema.models["String"].fields #=> Hash
    #   resp.job.generic_data_schema.models["String"].fields["String"].data_type #=> String, one of "ID", "String", "Int", "Float", "AWSDate", "AWSTime", "AWSDateTime", "AWSTimestamp", "AWSEmail", "AWSURL", "AWSIPAddress", "Boolean", "AWSJSON", "AWSPhone", "Enum", "Model", "NonModel"
    #   resp.job.generic_data_schema.models["String"].fields["String"].data_type_value #=> String
    #   resp.job.generic_data_schema.models["String"].fields["String"].required #=> Boolean
    #   resp.job.generic_data_schema.models["String"].fields["String"].read_only #=> Boolean
    #   resp.job.generic_data_schema.models["String"].fields["String"].is_array #=> Boolean
    #   resp.job.generic_data_schema.models["String"].fields["String"].relationship.type #=> String, one of "HAS_MANY", "HAS_ONE", "BELONGS_TO"
    #   resp.job.generic_data_schema.models["String"].fields["String"].relationship.related_model_name #=> String
    #   resp.job.generic_data_schema.models["String"].fields["String"].relationship.related_model_fields #=> Array
    #   resp.job.generic_data_schema.models["String"].fields["String"].relationship.related_model_fields[0] #=> String
    #   resp.job.generic_data_schema.models["String"].fields["String"].relationship.can_unlink_associated_model #=> Boolean
    #   resp.job.generic_data_schema.models["String"].fields["String"].relationship.related_join_field_name #=> String
    #   resp.job.generic_data_schema.models["String"].fields["String"].relationship.related_join_table_name #=> String
    #   resp.job.generic_data_schema.models["String"].fields["String"].relationship.belongs_to_field_on_related_model #=> String
    #   resp.job.generic_data_schema.models["String"].fields["String"].relationship.associated_fields #=> Array
    #   resp.job.generic_data_schema.models["String"].fields["String"].relationship.associated_fields[0] #=> String
    #   resp.job.generic_data_schema.models["String"].fields["String"].relationship.is_has_many_index #=> Boolean
    #   resp.job.generic_data_schema.models["String"].is_join_table #=> Boolean
    #   resp.job.generic_data_schema.models["String"].primary_keys #=> Array
    #   resp.job.generic_data_schema.models["String"].primary_keys[0] #=> String
    #   resp.job.generic_data_schema.enums #=> Hash
    #   resp.job.generic_data_schema.enums["String"].values #=> Array
    #   resp.job.generic_data_schema.enums["String"].values[0] #=> String
    #   resp.job.generic_data_schema.non_models #=> Hash
    #   resp.job.generic_data_schema.non_models["String"].fields #=> Hash
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].data_type #=> String, one of "ID", "String", "Int", "Float", "AWSDate", "AWSTime", "AWSDateTime", "AWSTimestamp", "AWSEmail", "AWSURL", "AWSIPAddress", "Boolean", "AWSJSON", "AWSPhone", "Enum", "Model", "NonModel"
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].data_type_value #=> String
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].required #=> Boolean
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].read_only #=> Boolean
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].is_array #=> Boolean
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].relationship.type #=> String, one of "HAS_MANY", "HAS_ONE", "BELONGS_TO"
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].relationship.related_model_name #=> String
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].relationship.related_model_fields #=> Array
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].relationship.related_model_fields[0] #=> String
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].relationship.can_unlink_associated_model #=> Boolean
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].relationship.related_join_field_name #=> String
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].relationship.related_join_table_name #=> String
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].relationship.belongs_to_field_on_related_model #=> String
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].relationship.associated_fields #=> Array
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].relationship.associated_fields[0] #=> String
    #   resp.job.generic_data_schema.non_models["String"].fields["String"].relationship.is_has_many_index #=> Boolean
    #   resp.job.auto_generate_forms #=> Boolean
    #   resp.job.features.is_relationship_supported #=> Boolean
    #   resp.job.features.is_non_model_supported #=> Boolean
    #   resp.job.status #=> String, one of "in_progress", "failed", "succeeded"
    #   resp.job.status_message #=> String
    #   resp.job.asset.download_url #=> String
    #   resp.job.tags #=> Hash
    #   resp.job.tags["TagKey"] #=> String
    #   resp.job.created_at #=> Time
    #   resp.job.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetCodegenJob AWS API Documentation
    #
    # @overload get_codegen_job(params = {})
    # @param [Hash] params ({})
    def get_codegen_job(params = {}, options = {})
      req = build_request(:get_codegen_job, params)
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
    #   resp.component.environment_name #=> String
    #   resp.component.source_id #=> String
    #   resp.component.id #=> String
    #   resp.component.name #=> String
    #   resp.component.component_type #=> String
    #   resp.component.properties #=> Hash
    #   resp.component.properties["String"].value #=> String
    #   resp.component.properties["String"].binding_properties.property #=> String
    #   resp.component.properties["String"].binding_properties.field #=> String
    #   resp.component.properties["String"].collection_binding_properties.property #=> String
    #   resp.component.properties["String"].collection_binding_properties.field #=> String
    #   resp.component.properties["String"].default_value #=> String
    #   resp.component.properties["String"].model #=> String
    #   resp.component.properties["String"].bindings #=> Hash
    #   resp.component.properties["String"].bindings["String"].element #=> String
    #   resp.component.properties["String"].bindings["String"].property #=> String
    #   resp.component.properties["String"].event #=> String
    #   resp.component.properties["String"].user_attribute #=> String
    #   resp.component.properties["String"].concat #=> Array
    #   resp.component.properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.component.properties["String"].condition.property #=> String
    #   resp.component.properties["String"].condition.field #=> String
    #   resp.component.properties["String"].condition.operator #=> String
    #   resp.component.properties["String"].condition.operand #=> String
    #   resp.component.properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.component.properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.component.properties["String"].condition.operand_type #=> String
    #   resp.component.properties["String"].configured #=> Boolean
    #   resp.component.properties["String"].type #=> String
    #   resp.component.properties["String"].imported_value #=> String
    #   resp.component.properties["String"].component_name #=> String
    #   resp.component.properties["String"].property #=> String
    #   resp.component.children #=> Array
    #   resp.component.children[0].component_type #=> String
    #   resp.component.children[0].name #=> String
    #   resp.component.children[0].properties #=> Hash
    #   resp.component.children[0].properties["String"].value #=> String
    #   resp.component.children[0].properties["String"].binding_properties.property #=> String
    #   resp.component.children[0].properties["String"].binding_properties.field #=> String
    #   resp.component.children[0].properties["String"].collection_binding_properties.property #=> String
    #   resp.component.children[0].properties["String"].collection_binding_properties.field #=> String
    #   resp.component.children[0].properties["String"].default_value #=> String
    #   resp.component.children[0].properties["String"].model #=> String
    #   resp.component.children[0].properties["String"].bindings #=> Hash
    #   resp.component.children[0].properties["String"].bindings["String"].element #=> String
    #   resp.component.children[0].properties["String"].bindings["String"].property #=> String
    #   resp.component.children[0].properties["String"].event #=> String
    #   resp.component.children[0].properties["String"].user_attribute #=> String
    #   resp.component.children[0].properties["String"].concat #=> Array
    #   resp.component.children[0].properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.component.children[0].properties["String"].condition.property #=> String
    #   resp.component.children[0].properties["String"].condition.field #=> String
    #   resp.component.children[0].properties["String"].condition.operator #=> String
    #   resp.component.children[0].properties["String"].condition.operand #=> String
    #   resp.component.children[0].properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.component.children[0].properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.component.children[0].properties["String"].condition.operand_type #=> String
    #   resp.component.children[0].properties["String"].configured #=> Boolean
    #   resp.component.children[0].properties["String"].type #=> String
    #   resp.component.children[0].properties["String"].imported_value #=> String
    #   resp.component.children[0].properties["String"].component_name #=> String
    #   resp.component.children[0].properties["String"].property #=> String
    #   resp.component.children[0].children #=> Types::ComponentChildList
    #   resp.component.children[0].events #=> Hash
    #   resp.component.children[0].events["String"].action #=> String
    #   resp.component.children[0].events["String"].parameters.type.value #=> String
    #   resp.component.children[0].events["String"].parameters.type.binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.type.binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.type.collection_binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.type.collection_binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.type.default_value #=> String
    #   resp.component.children[0].events["String"].parameters.type.model #=> String
    #   resp.component.children[0].events["String"].parameters.type.bindings #=> Hash
    #   resp.component.children[0].events["String"].parameters.type.bindings["String"].element #=> String
    #   resp.component.children[0].events["String"].parameters.type.bindings["String"].property #=> String
    #   resp.component.children[0].events["String"].parameters.type.event #=> String
    #   resp.component.children[0].events["String"].parameters.type.user_attribute #=> String
    #   resp.component.children[0].events["String"].parameters.type.concat #=> Array
    #   resp.component.children[0].events["String"].parameters.type.concat[0] #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.type.condition.property #=> String
    #   resp.component.children[0].events["String"].parameters.type.condition.field #=> String
    #   resp.component.children[0].events["String"].parameters.type.condition.operator #=> String
    #   resp.component.children[0].events["String"].parameters.type.condition.operand #=> String
    #   resp.component.children[0].events["String"].parameters.type.condition.then #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.type.condition.else #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.type.condition.operand_type #=> String
    #   resp.component.children[0].events["String"].parameters.type.configured #=> Boolean
    #   resp.component.children[0].events["String"].parameters.type.type #=> String
    #   resp.component.children[0].events["String"].parameters.type.imported_value #=> String
    #   resp.component.children[0].events["String"].parameters.type.component_name #=> String
    #   resp.component.children[0].events["String"].parameters.type.property #=> String
    #   resp.component.children[0].events["String"].parameters.url.value #=> String
    #   resp.component.children[0].events["String"].parameters.url.binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.url.binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.url.collection_binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.url.collection_binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.url.default_value #=> String
    #   resp.component.children[0].events["String"].parameters.url.model #=> String
    #   resp.component.children[0].events["String"].parameters.url.bindings #=> Hash
    #   resp.component.children[0].events["String"].parameters.url.bindings["String"].element #=> String
    #   resp.component.children[0].events["String"].parameters.url.bindings["String"].property #=> String
    #   resp.component.children[0].events["String"].parameters.url.event #=> String
    #   resp.component.children[0].events["String"].parameters.url.user_attribute #=> String
    #   resp.component.children[0].events["String"].parameters.url.concat #=> Array
    #   resp.component.children[0].events["String"].parameters.url.concat[0] #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.url.condition.property #=> String
    #   resp.component.children[0].events["String"].parameters.url.condition.field #=> String
    #   resp.component.children[0].events["String"].parameters.url.condition.operator #=> String
    #   resp.component.children[0].events["String"].parameters.url.condition.operand #=> String
    #   resp.component.children[0].events["String"].parameters.url.condition.then #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.url.condition.else #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.url.condition.operand_type #=> String
    #   resp.component.children[0].events["String"].parameters.url.configured #=> Boolean
    #   resp.component.children[0].events["String"].parameters.url.type #=> String
    #   resp.component.children[0].events["String"].parameters.url.imported_value #=> String
    #   resp.component.children[0].events["String"].parameters.url.component_name #=> String
    #   resp.component.children[0].events["String"].parameters.url.property #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.value #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.collection_binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.collection_binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.default_value #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.model #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.bindings #=> Hash
    #   resp.component.children[0].events["String"].parameters.anchor.bindings["String"].element #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.bindings["String"].property #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.event #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.user_attribute #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.concat #=> Array
    #   resp.component.children[0].events["String"].parameters.anchor.concat[0] #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.anchor.condition.property #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.condition.field #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.condition.operator #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.condition.operand #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.condition.then #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.anchor.condition.else #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.anchor.condition.operand_type #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.configured #=> Boolean
    #   resp.component.children[0].events["String"].parameters.anchor.type #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.imported_value #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.component_name #=> String
    #   resp.component.children[0].events["String"].parameters.anchor.property #=> String
    #   resp.component.children[0].events["String"].parameters.target.value #=> String
    #   resp.component.children[0].events["String"].parameters.target.binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.target.binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.target.collection_binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.target.collection_binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.target.default_value #=> String
    #   resp.component.children[0].events["String"].parameters.target.model #=> String
    #   resp.component.children[0].events["String"].parameters.target.bindings #=> Hash
    #   resp.component.children[0].events["String"].parameters.target.bindings["String"].element #=> String
    #   resp.component.children[0].events["String"].parameters.target.bindings["String"].property #=> String
    #   resp.component.children[0].events["String"].parameters.target.event #=> String
    #   resp.component.children[0].events["String"].parameters.target.user_attribute #=> String
    #   resp.component.children[0].events["String"].parameters.target.concat #=> Array
    #   resp.component.children[0].events["String"].parameters.target.concat[0] #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.target.condition.property #=> String
    #   resp.component.children[0].events["String"].parameters.target.condition.field #=> String
    #   resp.component.children[0].events["String"].parameters.target.condition.operator #=> String
    #   resp.component.children[0].events["String"].parameters.target.condition.operand #=> String
    #   resp.component.children[0].events["String"].parameters.target.condition.then #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.target.condition.else #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.target.condition.operand_type #=> String
    #   resp.component.children[0].events["String"].parameters.target.configured #=> Boolean
    #   resp.component.children[0].events["String"].parameters.target.type #=> String
    #   resp.component.children[0].events["String"].parameters.target.imported_value #=> String
    #   resp.component.children[0].events["String"].parameters.target.component_name #=> String
    #   resp.component.children[0].events["String"].parameters.target.property #=> String
    #   resp.component.children[0].events["String"].parameters.global.value #=> String
    #   resp.component.children[0].events["String"].parameters.global.binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.global.binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.global.collection_binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.global.collection_binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.global.default_value #=> String
    #   resp.component.children[0].events["String"].parameters.global.model #=> String
    #   resp.component.children[0].events["String"].parameters.global.bindings #=> Hash
    #   resp.component.children[0].events["String"].parameters.global.bindings["String"].element #=> String
    #   resp.component.children[0].events["String"].parameters.global.bindings["String"].property #=> String
    #   resp.component.children[0].events["String"].parameters.global.event #=> String
    #   resp.component.children[0].events["String"].parameters.global.user_attribute #=> String
    #   resp.component.children[0].events["String"].parameters.global.concat #=> Array
    #   resp.component.children[0].events["String"].parameters.global.concat[0] #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.global.condition.property #=> String
    #   resp.component.children[0].events["String"].parameters.global.condition.field #=> String
    #   resp.component.children[0].events["String"].parameters.global.condition.operator #=> String
    #   resp.component.children[0].events["String"].parameters.global.condition.operand #=> String
    #   resp.component.children[0].events["String"].parameters.global.condition.then #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.global.condition.else #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.global.condition.operand_type #=> String
    #   resp.component.children[0].events["String"].parameters.global.configured #=> Boolean
    #   resp.component.children[0].events["String"].parameters.global.type #=> String
    #   resp.component.children[0].events["String"].parameters.global.imported_value #=> String
    #   resp.component.children[0].events["String"].parameters.global.component_name #=> String
    #   resp.component.children[0].events["String"].parameters.global.property #=> String
    #   resp.component.children[0].events["String"].parameters.model #=> String
    #   resp.component.children[0].events["String"].parameters.id.value #=> String
    #   resp.component.children[0].events["String"].parameters.id.binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.id.binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.id.collection_binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.id.collection_binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.id.default_value #=> String
    #   resp.component.children[0].events["String"].parameters.id.model #=> String
    #   resp.component.children[0].events["String"].parameters.id.bindings #=> Hash
    #   resp.component.children[0].events["String"].parameters.id.bindings["String"].element #=> String
    #   resp.component.children[0].events["String"].parameters.id.bindings["String"].property #=> String
    #   resp.component.children[0].events["String"].parameters.id.event #=> String
    #   resp.component.children[0].events["String"].parameters.id.user_attribute #=> String
    #   resp.component.children[0].events["String"].parameters.id.concat #=> Array
    #   resp.component.children[0].events["String"].parameters.id.concat[0] #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.id.condition.property #=> String
    #   resp.component.children[0].events["String"].parameters.id.condition.field #=> String
    #   resp.component.children[0].events["String"].parameters.id.condition.operator #=> String
    #   resp.component.children[0].events["String"].parameters.id.condition.operand #=> String
    #   resp.component.children[0].events["String"].parameters.id.condition.then #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.id.condition.else #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.id.condition.operand_type #=> String
    #   resp.component.children[0].events["String"].parameters.id.configured #=> Boolean
    #   resp.component.children[0].events["String"].parameters.id.type #=> String
    #   resp.component.children[0].events["String"].parameters.id.imported_value #=> String
    #   resp.component.children[0].events["String"].parameters.id.component_name #=> String
    #   resp.component.children[0].events["String"].parameters.id.property #=> String
    #   resp.component.children[0].events["String"].parameters.fields #=> Hash
    #   resp.component.children[0].events["String"].parameters.fields["String"].value #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].collection_binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].collection_binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].default_value #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].model #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].bindings #=> Hash
    #   resp.component.children[0].events["String"].parameters.fields["String"].bindings["String"].element #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].bindings["String"].property #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].event #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].user_attribute #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].concat #=> Array
    #   resp.component.children[0].events["String"].parameters.fields["String"].concat[0] #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.fields["String"].condition.property #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].condition.field #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].condition.operator #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].condition.operand #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].condition.then #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.fields["String"].condition.else #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.fields["String"].condition.operand_type #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].configured #=> Boolean
    #   resp.component.children[0].events["String"].parameters.fields["String"].type #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].imported_value #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].component_name #=> String
    #   resp.component.children[0].events["String"].parameters.fields["String"].property #=> String
    #   resp.component.children[0].events["String"].parameters.state.component_name #=> String
    #   resp.component.children[0].events["String"].parameters.state.property #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.value #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.collection_binding_properties.property #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.collection_binding_properties.field #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.default_value #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.model #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.bindings #=> Hash
    #   resp.component.children[0].events["String"].parameters.state.set.bindings["String"].element #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.bindings["String"].property #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.event #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.user_attribute #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.concat #=> Array
    #   resp.component.children[0].events["String"].parameters.state.set.concat[0] #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.state.set.condition.property #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.condition.field #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.condition.operator #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.condition.operand #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.condition.then #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.state.set.condition.else #=> Types::ComponentProperty
    #   resp.component.children[0].events["String"].parameters.state.set.condition.operand_type #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.configured #=> Boolean
    #   resp.component.children[0].events["String"].parameters.state.set.type #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.imported_value #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.component_name #=> String
    #   resp.component.children[0].events["String"].parameters.state.set.property #=> String
    #   resp.component.children[0].events["String"].binding_event #=> String
    #   resp.component.children[0].source_id #=> String
    #   resp.component.variants #=> Array
    #   resp.component.variants[0].variant_values #=> Hash
    #   resp.component.variants[0].variant_values["String"] #=> String
    #   resp.component.variants[0].overrides #=> Hash
    #   resp.component.variants[0].overrides["String"] #=> Hash
    #   resp.component.variants[0].overrides["String"]["String"] #=> String
    #   resp.component.overrides #=> Hash
    #   resp.component.overrides["String"] #=> Hash
    #   resp.component.overrides["String"]["String"] #=> String
    #   resp.component.binding_properties #=> Hash
    #   resp.component.binding_properties["String"].type #=> String
    #   resp.component.binding_properties["String"].binding_properties.model #=> String
    #   resp.component.binding_properties["String"].binding_properties.field #=> String
    #   resp.component.binding_properties["String"].binding_properties.predicates #=> Array
    #   resp.component.binding_properties["String"].binding_properties.predicates[0].or #=> Types::PredicateList
    #   resp.component.binding_properties["String"].binding_properties.predicates[0].and #=> Types::PredicateList
    #   resp.component.binding_properties["String"].binding_properties.predicates[0].field #=> String
    #   resp.component.binding_properties["String"].binding_properties.predicates[0].operator #=> String
    #   resp.component.binding_properties["String"].binding_properties.predicates[0].operand #=> String
    #   resp.component.binding_properties["String"].binding_properties.predicates[0].operand_type #=> String
    #   resp.component.binding_properties["String"].binding_properties.user_attribute #=> String
    #   resp.component.binding_properties["String"].binding_properties.bucket #=> String
    #   resp.component.binding_properties["String"].binding_properties.key #=> String
    #   resp.component.binding_properties["String"].binding_properties.default_value #=> String
    #   resp.component.binding_properties["String"].binding_properties.slot_name #=> String
    #   resp.component.binding_properties["String"].default_value #=> String
    #   resp.component.collection_properties #=> Hash
    #   resp.component.collection_properties["String"].model #=> String
    #   resp.component.collection_properties["String"].sort #=> Array
    #   resp.component.collection_properties["String"].sort[0].field #=> String
    #   resp.component.collection_properties["String"].sort[0].direction #=> String, one of "ASC", "DESC"
    #   resp.component.collection_properties["String"].predicate.or #=> Array
    #   resp.component.collection_properties["String"].predicate.or[0] #=> Types::Predicate
    #   resp.component.collection_properties["String"].predicate.and #=> Array
    #   resp.component.collection_properties["String"].predicate.and[0] #=> Types::Predicate
    #   resp.component.collection_properties["String"].predicate.field #=> String
    #   resp.component.collection_properties["String"].predicate.operator #=> String
    #   resp.component.collection_properties["String"].predicate.operand #=> String
    #   resp.component.collection_properties["String"].predicate.operand_type #=> String
    #   resp.component.collection_properties["String"].identifiers #=> Array
    #   resp.component.collection_properties["String"].identifiers[0] #=> String
    #   resp.component.created_at #=> Time
    #   resp.component.modified_at #=> Time
    #   resp.component.tags #=> Hash
    #   resp.component.tags["TagKey"] #=> String
    #   resp.component.events #=> Hash
    #   resp.component.events["String"].action #=> String
    #   resp.component.events["String"].parameters.type.value #=> String
    #   resp.component.events["String"].parameters.type.binding_properties.property #=> String
    #   resp.component.events["String"].parameters.type.binding_properties.field #=> String
    #   resp.component.events["String"].parameters.type.collection_binding_properties.property #=> String
    #   resp.component.events["String"].parameters.type.collection_binding_properties.field #=> String
    #   resp.component.events["String"].parameters.type.default_value #=> String
    #   resp.component.events["String"].parameters.type.model #=> String
    #   resp.component.events["String"].parameters.type.bindings #=> Hash
    #   resp.component.events["String"].parameters.type.bindings["String"].element #=> String
    #   resp.component.events["String"].parameters.type.bindings["String"].property #=> String
    #   resp.component.events["String"].parameters.type.event #=> String
    #   resp.component.events["String"].parameters.type.user_attribute #=> String
    #   resp.component.events["String"].parameters.type.concat #=> Array
    #   resp.component.events["String"].parameters.type.concat[0] #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.type.condition.property #=> String
    #   resp.component.events["String"].parameters.type.condition.field #=> String
    #   resp.component.events["String"].parameters.type.condition.operator #=> String
    #   resp.component.events["String"].parameters.type.condition.operand #=> String
    #   resp.component.events["String"].parameters.type.condition.then #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.type.condition.else #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.type.condition.operand_type #=> String
    #   resp.component.events["String"].parameters.type.configured #=> Boolean
    #   resp.component.events["String"].parameters.type.type #=> String
    #   resp.component.events["String"].parameters.type.imported_value #=> String
    #   resp.component.events["String"].parameters.type.component_name #=> String
    #   resp.component.events["String"].parameters.type.property #=> String
    #   resp.component.events["String"].parameters.url.value #=> String
    #   resp.component.events["String"].parameters.url.binding_properties.property #=> String
    #   resp.component.events["String"].parameters.url.binding_properties.field #=> String
    #   resp.component.events["String"].parameters.url.collection_binding_properties.property #=> String
    #   resp.component.events["String"].parameters.url.collection_binding_properties.field #=> String
    #   resp.component.events["String"].parameters.url.default_value #=> String
    #   resp.component.events["String"].parameters.url.model #=> String
    #   resp.component.events["String"].parameters.url.bindings #=> Hash
    #   resp.component.events["String"].parameters.url.bindings["String"].element #=> String
    #   resp.component.events["String"].parameters.url.bindings["String"].property #=> String
    #   resp.component.events["String"].parameters.url.event #=> String
    #   resp.component.events["String"].parameters.url.user_attribute #=> String
    #   resp.component.events["String"].parameters.url.concat #=> Array
    #   resp.component.events["String"].parameters.url.concat[0] #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.url.condition.property #=> String
    #   resp.component.events["String"].parameters.url.condition.field #=> String
    #   resp.component.events["String"].parameters.url.condition.operator #=> String
    #   resp.component.events["String"].parameters.url.condition.operand #=> String
    #   resp.component.events["String"].parameters.url.condition.then #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.url.condition.else #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.url.condition.operand_type #=> String
    #   resp.component.events["String"].parameters.url.configured #=> Boolean
    #   resp.component.events["String"].parameters.url.type #=> String
    #   resp.component.events["String"].parameters.url.imported_value #=> String
    #   resp.component.events["String"].parameters.url.component_name #=> String
    #   resp.component.events["String"].parameters.url.property #=> String
    #   resp.component.events["String"].parameters.anchor.value #=> String
    #   resp.component.events["String"].parameters.anchor.binding_properties.property #=> String
    #   resp.component.events["String"].parameters.anchor.binding_properties.field #=> String
    #   resp.component.events["String"].parameters.anchor.collection_binding_properties.property #=> String
    #   resp.component.events["String"].parameters.anchor.collection_binding_properties.field #=> String
    #   resp.component.events["String"].parameters.anchor.default_value #=> String
    #   resp.component.events["String"].parameters.anchor.model #=> String
    #   resp.component.events["String"].parameters.anchor.bindings #=> Hash
    #   resp.component.events["String"].parameters.anchor.bindings["String"].element #=> String
    #   resp.component.events["String"].parameters.anchor.bindings["String"].property #=> String
    #   resp.component.events["String"].parameters.anchor.event #=> String
    #   resp.component.events["String"].parameters.anchor.user_attribute #=> String
    #   resp.component.events["String"].parameters.anchor.concat #=> Array
    #   resp.component.events["String"].parameters.anchor.concat[0] #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.anchor.condition.property #=> String
    #   resp.component.events["String"].parameters.anchor.condition.field #=> String
    #   resp.component.events["String"].parameters.anchor.condition.operator #=> String
    #   resp.component.events["String"].parameters.anchor.condition.operand #=> String
    #   resp.component.events["String"].parameters.anchor.condition.then #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.anchor.condition.else #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.anchor.condition.operand_type #=> String
    #   resp.component.events["String"].parameters.anchor.configured #=> Boolean
    #   resp.component.events["String"].parameters.anchor.type #=> String
    #   resp.component.events["String"].parameters.anchor.imported_value #=> String
    #   resp.component.events["String"].parameters.anchor.component_name #=> String
    #   resp.component.events["String"].parameters.anchor.property #=> String
    #   resp.component.events["String"].parameters.target.value #=> String
    #   resp.component.events["String"].parameters.target.binding_properties.property #=> String
    #   resp.component.events["String"].parameters.target.binding_properties.field #=> String
    #   resp.component.events["String"].parameters.target.collection_binding_properties.property #=> String
    #   resp.component.events["String"].parameters.target.collection_binding_properties.field #=> String
    #   resp.component.events["String"].parameters.target.default_value #=> String
    #   resp.component.events["String"].parameters.target.model #=> String
    #   resp.component.events["String"].parameters.target.bindings #=> Hash
    #   resp.component.events["String"].parameters.target.bindings["String"].element #=> String
    #   resp.component.events["String"].parameters.target.bindings["String"].property #=> String
    #   resp.component.events["String"].parameters.target.event #=> String
    #   resp.component.events["String"].parameters.target.user_attribute #=> String
    #   resp.component.events["String"].parameters.target.concat #=> Array
    #   resp.component.events["String"].parameters.target.concat[0] #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.target.condition.property #=> String
    #   resp.component.events["String"].parameters.target.condition.field #=> String
    #   resp.component.events["String"].parameters.target.condition.operator #=> String
    #   resp.component.events["String"].parameters.target.condition.operand #=> String
    #   resp.component.events["String"].parameters.target.condition.then #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.target.condition.else #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.target.condition.operand_type #=> String
    #   resp.component.events["String"].parameters.target.configured #=> Boolean
    #   resp.component.events["String"].parameters.target.type #=> String
    #   resp.component.events["String"].parameters.target.imported_value #=> String
    #   resp.component.events["String"].parameters.target.component_name #=> String
    #   resp.component.events["String"].parameters.target.property #=> String
    #   resp.component.events["String"].parameters.global.value #=> String
    #   resp.component.events["String"].parameters.global.binding_properties.property #=> String
    #   resp.component.events["String"].parameters.global.binding_properties.field #=> String
    #   resp.component.events["String"].parameters.global.collection_binding_properties.property #=> String
    #   resp.component.events["String"].parameters.global.collection_binding_properties.field #=> String
    #   resp.component.events["String"].parameters.global.default_value #=> String
    #   resp.component.events["String"].parameters.global.model #=> String
    #   resp.component.events["String"].parameters.global.bindings #=> Hash
    #   resp.component.events["String"].parameters.global.bindings["String"].element #=> String
    #   resp.component.events["String"].parameters.global.bindings["String"].property #=> String
    #   resp.component.events["String"].parameters.global.event #=> String
    #   resp.component.events["String"].parameters.global.user_attribute #=> String
    #   resp.component.events["String"].parameters.global.concat #=> Array
    #   resp.component.events["String"].parameters.global.concat[0] #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.global.condition.property #=> String
    #   resp.component.events["String"].parameters.global.condition.field #=> String
    #   resp.component.events["String"].parameters.global.condition.operator #=> String
    #   resp.component.events["String"].parameters.global.condition.operand #=> String
    #   resp.component.events["String"].parameters.global.condition.then #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.global.condition.else #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.global.condition.operand_type #=> String
    #   resp.component.events["String"].parameters.global.configured #=> Boolean
    #   resp.component.events["String"].parameters.global.type #=> String
    #   resp.component.events["String"].parameters.global.imported_value #=> String
    #   resp.component.events["String"].parameters.global.component_name #=> String
    #   resp.component.events["String"].parameters.global.property #=> String
    #   resp.component.events["String"].parameters.model #=> String
    #   resp.component.events["String"].parameters.id.value #=> String
    #   resp.component.events["String"].parameters.id.binding_properties.property #=> String
    #   resp.component.events["String"].parameters.id.binding_properties.field #=> String
    #   resp.component.events["String"].parameters.id.collection_binding_properties.property #=> String
    #   resp.component.events["String"].parameters.id.collection_binding_properties.field #=> String
    #   resp.component.events["String"].parameters.id.default_value #=> String
    #   resp.component.events["String"].parameters.id.model #=> String
    #   resp.component.events["String"].parameters.id.bindings #=> Hash
    #   resp.component.events["String"].parameters.id.bindings["String"].element #=> String
    #   resp.component.events["String"].parameters.id.bindings["String"].property #=> String
    #   resp.component.events["String"].parameters.id.event #=> String
    #   resp.component.events["String"].parameters.id.user_attribute #=> String
    #   resp.component.events["String"].parameters.id.concat #=> Array
    #   resp.component.events["String"].parameters.id.concat[0] #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.id.condition.property #=> String
    #   resp.component.events["String"].parameters.id.condition.field #=> String
    #   resp.component.events["String"].parameters.id.condition.operator #=> String
    #   resp.component.events["String"].parameters.id.condition.operand #=> String
    #   resp.component.events["String"].parameters.id.condition.then #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.id.condition.else #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.id.condition.operand_type #=> String
    #   resp.component.events["String"].parameters.id.configured #=> Boolean
    #   resp.component.events["String"].parameters.id.type #=> String
    #   resp.component.events["String"].parameters.id.imported_value #=> String
    #   resp.component.events["String"].parameters.id.component_name #=> String
    #   resp.component.events["String"].parameters.id.property #=> String
    #   resp.component.events["String"].parameters.fields #=> Hash
    #   resp.component.events["String"].parameters.fields["String"].value #=> String
    #   resp.component.events["String"].parameters.fields["String"].binding_properties.property #=> String
    #   resp.component.events["String"].parameters.fields["String"].binding_properties.field #=> String
    #   resp.component.events["String"].parameters.fields["String"].collection_binding_properties.property #=> String
    #   resp.component.events["String"].parameters.fields["String"].collection_binding_properties.field #=> String
    #   resp.component.events["String"].parameters.fields["String"].default_value #=> String
    #   resp.component.events["String"].parameters.fields["String"].model #=> String
    #   resp.component.events["String"].parameters.fields["String"].bindings #=> Hash
    #   resp.component.events["String"].parameters.fields["String"].bindings["String"].element #=> String
    #   resp.component.events["String"].parameters.fields["String"].bindings["String"].property #=> String
    #   resp.component.events["String"].parameters.fields["String"].event #=> String
    #   resp.component.events["String"].parameters.fields["String"].user_attribute #=> String
    #   resp.component.events["String"].parameters.fields["String"].concat #=> Array
    #   resp.component.events["String"].parameters.fields["String"].concat[0] #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.fields["String"].condition.property #=> String
    #   resp.component.events["String"].parameters.fields["String"].condition.field #=> String
    #   resp.component.events["String"].parameters.fields["String"].condition.operator #=> String
    #   resp.component.events["String"].parameters.fields["String"].condition.operand #=> String
    #   resp.component.events["String"].parameters.fields["String"].condition.then #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.fields["String"].condition.else #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.fields["String"].condition.operand_type #=> String
    #   resp.component.events["String"].parameters.fields["String"].configured #=> Boolean
    #   resp.component.events["String"].parameters.fields["String"].type #=> String
    #   resp.component.events["String"].parameters.fields["String"].imported_value #=> String
    #   resp.component.events["String"].parameters.fields["String"].component_name #=> String
    #   resp.component.events["String"].parameters.fields["String"].property #=> String
    #   resp.component.events["String"].parameters.state.component_name #=> String
    #   resp.component.events["String"].parameters.state.property #=> String
    #   resp.component.events["String"].parameters.state.set.value #=> String
    #   resp.component.events["String"].parameters.state.set.binding_properties.property #=> String
    #   resp.component.events["String"].parameters.state.set.binding_properties.field #=> String
    #   resp.component.events["String"].parameters.state.set.collection_binding_properties.property #=> String
    #   resp.component.events["String"].parameters.state.set.collection_binding_properties.field #=> String
    #   resp.component.events["String"].parameters.state.set.default_value #=> String
    #   resp.component.events["String"].parameters.state.set.model #=> String
    #   resp.component.events["String"].parameters.state.set.bindings #=> Hash
    #   resp.component.events["String"].parameters.state.set.bindings["String"].element #=> String
    #   resp.component.events["String"].parameters.state.set.bindings["String"].property #=> String
    #   resp.component.events["String"].parameters.state.set.event #=> String
    #   resp.component.events["String"].parameters.state.set.user_attribute #=> String
    #   resp.component.events["String"].parameters.state.set.concat #=> Array
    #   resp.component.events["String"].parameters.state.set.concat[0] #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.state.set.condition.property #=> String
    #   resp.component.events["String"].parameters.state.set.condition.field #=> String
    #   resp.component.events["String"].parameters.state.set.condition.operator #=> String
    #   resp.component.events["String"].parameters.state.set.condition.operand #=> String
    #   resp.component.events["String"].parameters.state.set.condition.then #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.state.set.condition.else #=> Types::ComponentProperty
    #   resp.component.events["String"].parameters.state.set.condition.operand_type #=> String
    #   resp.component.events["String"].parameters.state.set.configured #=> Boolean
    #   resp.component.events["String"].parameters.state.set.type #=> String
    #   resp.component.events["String"].parameters.state.set.imported_value #=> String
    #   resp.component.events["String"].parameters.state.set.component_name #=> String
    #   resp.component.events["String"].parameters.state.set.property #=> String
    #   resp.component.events["String"].binding_event #=> String
    #   resp.component.schema_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetComponent AWS API Documentation
    #
    # @overload get_component(params = {})
    # @param [Hash] params ({})
    def get_component(params = {}, options = {})
      req = build_request(:get_component, params)
      req.send_request(options)
    end

    # Returns an existing form for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #
    # @option params [required, String] :id
    #   The unique ID of the form.
    #
    # @return [Types::GetFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFormResponse#form #form} => Types::Form
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_form({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.form.app_id #=> String
    #   resp.form.environment_name #=> String
    #   resp.form.id #=> String
    #   resp.form.name #=> String
    #   resp.form.form_action_type #=> String, one of "create", "update"
    #   resp.form.style.horizontal_gap.token_reference #=> String
    #   resp.form.style.horizontal_gap.value #=> String
    #   resp.form.style.vertical_gap.token_reference #=> String
    #   resp.form.style.vertical_gap.value #=> String
    #   resp.form.style.outer_padding.token_reference #=> String
    #   resp.form.style.outer_padding.value #=> String
    #   resp.form.data_type.data_source_type #=> String, one of "DataStore", "Custom"
    #   resp.form.data_type.data_type_name #=> String
    #   resp.form.fields #=> Hash
    #   resp.form.fields["String"].label #=> String
    #   resp.form.fields["String"].position.fixed #=> String, one of "first"
    #   resp.form.fields["String"].position.right_of #=> String
    #   resp.form.fields["String"].position.below #=> String
    #   resp.form.fields["String"].excluded #=> Boolean
    #   resp.form.fields["String"].input_type.type #=> String
    #   resp.form.fields["String"].input_type.required #=> Boolean
    #   resp.form.fields["String"].input_type.read_only #=> Boolean
    #   resp.form.fields["String"].input_type.placeholder #=> String
    #   resp.form.fields["String"].input_type.default_value #=> String
    #   resp.form.fields["String"].input_type.descriptive_text #=> String
    #   resp.form.fields["String"].input_type.default_checked #=> Boolean
    #   resp.form.fields["String"].input_type.default_country_code #=> String
    #   resp.form.fields["String"].input_type.value_mappings.values #=> Array
    #   resp.form.fields["String"].input_type.value_mappings.values[0].display_value.value #=> String
    #   resp.form.fields["String"].input_type.value_mappings.values[0].display_value.binding_properties.property #=> String
    #   resp.form.fields["String"].input_type.value_mappings.values[0].display_value.binding_properties.field #=> String
    #   resp.form.fields["String"].input_type.value_mappings.values[0].display_value.concat #=> Array
    #   resp.form.fields["String"].input_type.value_mappings.values[0].display_value.concat[0] #=> Types::FormInputValueProperty
    #   resp.form.fields["String"].input_type.value_mappings.values[0].value.value #=> String
    #   resp.form.fields["String"].input_type.value_mappings.values[0].value.binding_properties.property #=> String
    #   resp.form.fields["String"].input_type.value_mappings.values[0].value.binding_properties.field #=> String
    #   resp.form.fields["String"].input_type.value_mappings.values[0].value.concat #=> Array
    #   resp.form.fields["String"].input_type.value_mappings.values[0].value.concat[0] #=> Types::FormInputValueProperty
    #   resp.form.fields["String"].input_type.value_mappings.binding_properties #=> Hash
    #   resp.form.fields["String"].input_type.value_mappings.binding_properties["String"].type #=> String
    #   resp.form.fields["String"].input_type.value_mappings.binding_properties["String"].binding_properties.model #=> String
    #   resp.form.fields["String"].input_type.name #=> String
    #   resp.form.fields["String"].input_type.min_value #=> Float
    #   resp.form.fields["String"].input_type.max_value #=> Float
    #   resp.form.fields["String"].input_type.step #=> Float
    #   resp.form.fields["String"].input_type.value #=> String
    #   resp.form.fields["String"].input_type.is_array #=> Boolean
    #   resp.form.fields["String"].input_type.file_uploader_config.access_level #=> String, one of "public", "protected", "private"
    #   resp.form.fields["String"].input_type.file_uploader_config.accepted_file_types #=> Array
    #   resp.form.fields["String"].input_type.file_uploader_config.accepted_file_types[0] #=> String
    #   resp.form.fields["String"].input_type.file_uploader_config.show_thumbnails #=> Boolean
    #   resp.form.fields["String"].input_type.file_uploader_config.is_resumable #=> Boolean
    #   resp.form.fields["String"].input_type.file_uploader_config.max_file_count #=> Integer
    #   resp.form.fields["String"].input_type.file_uploader_config.max_size #=> Integer
    #   resp.form.fields["String"].validations #=> Array
    #   resp.form.fields["String"].validations[0].type #=> String
    #   resp.form.fields["String"].validations[0].str_values #=> Array
    #   resp.form.fields["String"].validations[0].str_values[0] #=> String
    #   resp.form.fields["String"].validations[0].num_values #=> Array
    #   resp.form.fields["String"].validations[0].num_values[0] #=> Integer
    #   resp.form.fields["String"].validations[0].validation_message #=> String
    #   resp.form.sectional_elements #=> Hash
    #   resp.form.sectional_elements["String"].type #=> String
    #   resp.form.sectional_elements["String"].position.fixed #=> String, one of "first"
    #   resp.form.sectional_elements["String"].position.right_of #=> String
    #   resp.form.sectional_elements["String"].position.below #=> String
    #   resp.form.sectional_elements["String"].text #=> String
    #   resp.form.sectional_elements["String"].level #=> Integer
    #   resp.form.sectional_elements["String"].orientation #=> String
    #   resp.form.sectional_elements["String"].excluded #=> Boolean
    #   resp.form.schema_version #=> String
    #   resp.form.tags #=> Hash
    #   resp.form.tags["TagKey"] #=> String
    #   resp.form.cta.position #=> String, one of "top", "bottom", "top_and_bottom"
    #   resp.form.cta.clear.excluded #=> Boolean
    #   resp.form.cta.clear.children #=> String
    #   resp.form.cta.clear.position.fixed #=> String, one of "first"
    #   resp.form.cta.clear.position.right_of #=> String
    #   resp.form.cta.clear.position.below #=> String
    #   resp.form.cta.cancel.excluded #=> Boolean
    #   resp.form.cta.cancel.children #=> String
    #   resp.form.cta.cancel.position.fixed #=> String, one of "first"
    #   resp.form.cta.cancel.position.right_of #=> String
    #   resp.form.cta.cancel.position.below #=> String
    #   resp.form.cta.submit.excluded #=> Boolean
    #   resp.form.cta.submit.children #=> String
    #   resp.form.cta.submit.position.fixed #=> String, one of "first"
    #   resp.form.cta.submit.position.right_of #=> String
    #   resp.form.cta.submit.position.below #=> String
    #   resp.form.label_decorator #=> String, one of "required", "optional", "none"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetForm AWS API Documentation
    #
    # @overload get_form(params = {})
    # @param [Hash] params ({})
    def get_form(params = {}, options = {})
      req = build_request(:get_form, params)
      req.send_request(options)
    end

    # Returns existing metadata for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID of the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #
    # @return [Types::GetMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetadataResponse#features #features} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metadata({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.features #=> Hash
    #   resp.features["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetMetadata AWS API Documentation
    #
    # @overload get_metadata(params = {})
    # @param [Hash] params ({})
    def get_metadata(params = {}, options = {})
      req = build_request(:get_metadata, params)
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
    #   resp.theme.environment_name #=> String
    #   resp.theme.id #=> String
    #   resp.theme.name #=> String
    #   resp.theme.created_at #=> Time
    #   resp.theme.modified_at #=> Time
    #   resp.theme.values #=> Array
    #   resp.theme.values[0].key #=> String
    #   resp.theme.values[0].value.value #=> String
    #   resp.theme.values[0].value.children #=> Types::ThemeValuesList
    #   resp.theme.overrides #=> Array
    #   resp.theme.overrides[0].key #=> String
    #   resp.theme.overrides[0].value.value #=> String
    #   resp.theme.overrides[0].value.children #=> Types::ThemeValuesList
    #   resp.theme.tags #=> Hash
    #   resp.theme.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/GetTheme AWS API Documentation
    #
    # @overload get_theme(params = {})
    # @param [Hash] params ({})
    def get_theme(params = {}, options = {})
      req = build_request(:get_theme, params)
      req.send_request(options)
    end

    # Retrieves a list of code generation jobs for a specified Amplify app
    # and backend environment.
    #
    # @option params [required, String] :app_id
    #   The unique ID for the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to retrieve.
    #
    # @return [Types::ListCodegenJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodegenJobsResponse#entities #entities} => Array&lt;Types::CodegenJobSummary&gt;
    #   * {Types::ListCodegenJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_codegen_jobs({
    #     app_id: "AppId", # required
    #     environment_name: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].app_id #=> String
    #   resp.entities[0].environment_name #=> String
    #   resp.entities[0].id #=> String
    #   resp.entities[0].created_at #=> Time
    #   resp.entities[0].modified_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListCodegenJobs AWS API Documentation
    #
    # @overload list_codegen_jobs(params = {})
    # @param [Hash] params ({})
    def list_codegen_jobs(params = {}, options = {})
      req = build_request(:list_codegen_jobs, params)
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
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of components to retrieve.
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
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].app_id #=> String
    #   resp.entities[0].environment_name #=> String
    #   resp.entities[0].id #=> String
    #   resp.entities[0].name #=> String
    #   resp.entities[0].component_type #=> String
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

    # Retrieves a list of forms for a specified Amplify app and backend
    # environment.
    #
    # @option params [required, String] :app_id
    #   The unique ID for the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of forms to retrieve.
    #
    # @return [Types::ListFormsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFormsResponse#entities #entities} => Array&lt;Types::FormSummary&gt;
    #   * {Types::ListFormsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_forms({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].app_id #=> String
    #   resp.entities[0].data_type.data_source_type #=> String, one of "DataStore", "Custom"
    #   resp.entities[0].data_type.data_type_name #=> String
    #   resp.entities[0].environment_name #=> String
    #   resp.entities[0].form_action_type #=> String, one of "create", "update"
    #   resp.entities[0].id #=> String
    #   resp.entities[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/ListForms AWS API Documentation
    #
    # @overload list_forms(params = {})
    # @param [Hash] params ({})
    def list_forms(params = {}, options = {})
      req = build_request(:list_forms, params)
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
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of theme results to return in the response.
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
    #     next_token: "String",
    #     max_results: 1,
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

    # Stores the metadata information about a feature on a form.
    #
    # @option params [required, String] :app_id
    #   The unique ID for the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #
    # @option params [required, String] :feature_name
    #   The name of the feature associated with the metadata.
    #
    # @option params [required, Types::PutMetadataFlagBody] :body
    #   The metadata information to store.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_metadata_flag({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     feature_name: "String", # required
    #     body: { # required
    #       new_value: "String", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/PutMetadataFlag AWS API Documentation
    #
    # @overload put_metadata_flag(params = {})
    # @param [Hash] params ({})
    def put_metadata_flag(params = {}, options = {})
      req = build_request(:put_metadata_flag, params)
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
    #       token: "SensitiveString", # required
    #       client_id: "SensitiveString",
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

    # Starts a code generation job for for a specified Amplify app and
    # backend environment.
    #
    # @option params [required, String] :app_id
    #   The unique ID for the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is a part of the Amplify app.
    #
    # @option params [String] :client_token
    #   The idempotency token used to ensure that the code generation job
    #   request completes only once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::StartCodegenJobData] :codegen_job_to_create
    #   The code generation job resource configuration.
    #
    # @return [Types::StartCodegenJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCodegenJobResponse#entity #entity} => Types::CodegenJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_codegen_job({
    #     app_id: "AppId", # required
    #     environment_name: "String", # required
    #     client_token: "String",
    #     codegen_job_to_create: { # required
    #       render_config: { # required
    #         react: {
    #           module: "es2020", # accepts es2020, esnext
    #           target: "es2015", # accepts es2015, es2020
    #           script: "jsx", # accepts jsx, tsx, js
    #           render_type_declarations: false,
    #           inline_source_map: false,
    #         },
    #       },
    #       generic_data_schema: {
    #         data_source_type: "DataStore", # required, accepts DataStore
    #         models: { # required
    #           "String" => {
    #             fields: { # required
    #               "String" => {
    #                 data_type: "ID", # required, accepts ID, String, Int, Float, AWSDate, AWSTime, AWSDateTime, AWSTimestamp, AWSEmail, AWSURL, AWSIPAddress, Boolean, AWSJSON, AWSPhone, Enum, Model, NonModel
    #                 data_type_value: "String", # required
    #                 required: false, # required
    #                 read_only: false, # required
    #                 is_array: false, # required
    #                 relationship: {
    #                   type: "HAS_MANY", # required, accepts HAS_MANY, HAS_ONE, BELONGS_TO
    #                   related_model_name: "String", # required
    #                   related_model_fields: ["String"],
    #                   can_unlink_associated_model: false,
    #                   related_join_field_name: "String",
    #                   related_join_table_name: "String",
    #                   belongs_to_field_on_related_model: "String",
    #                   associated_fields: ["String"],
    #                   is_has_many_index: false,
    #                 },
    #               },
    #             },
    #             is_join_table: false,
    #             primary_keys: ["String"], # required
    #           },
    #         },
    #         enums: { # required
    #           "String" => {
    #             values: ["String"], # required
    #           },
    #         },
    #         non_models: { # required
    #           "String" => {
    #             fields: { # required
    #               "String" => {
    #                 data_type: "ID", # required, accepts ID, String, Int, Float, AWSDate, AWSTime, AWSDateTime, AWSTimestamp, AWSEmail, AWSURL, AWSIPAddress, Boolean, AWSJSON, AWSPhone, Enum, Model, NonModel
    #                 data_type_value: "String", # required
    #                 required: false, # required
    #                 read_only: false, # required
    #                 is_array: false, # required
    #                 relationship: {
    #                   type: "HAS_MANY", # required, accepts HAS_MANY, HAS_ONE, BELONGS_TO
    #                   related_model_name: "String", # required
    #                   related_model_fields: ["String"],
    #                   can_unlink_associated_model: false,
    #                   related_join_field_name: "String",
    #                   related_join_table_name: "String",
    #                   belongs_to_field_on_related_model: "String",
    #                   associated_fields: ["String"],
    #                   is_has_many_index: false,
    #                 },
    #               },
    #             },
    #           },
    #         },
    #       },
    #       auto_generate_forms: false,
    #       features: {
    #         is_relationship_supported: false,
    #         is_non_model_supported: false,
    #       },
    #       tags: {
    #         "TagKey" => "TagValue",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entity.id #=> String
    #   resp.entity.app_id #=> String
    #   resp.entity.environment_name #=> String
    #   resp.entity.render_config.react.module #=> String, one of "es2020", "esnext"
    #   resp.entity.render_config.react.target #=> String, one of "es2015", "es2020"
    #   resp.entity.render_config.react.script #=> String, one of "jsx", "tsx", "js"
    #   resp.entity.render_config.react.render_type_declarations #=> Boolean
    #   resp.entity.render_config.react.inline_source_map #=> Boolean
    #   resp.entity.generic_data_schema.data_source_type #=> String, one of "DataStore"
    #   resp.entity.generic_data_schema.models #=> Hash
    #   resp.entity.generic_data_schema.models["String"].fields #=> Hash
    #   resp.entity.generic_data_schema.models["String"].fields["String"].data_type #=> String, one of "ID", "String", "Int", "Float", "AWSDate", "AWSTime", "AWSDateTime", "AWSTimestamp", "AWSEmail", "AWSURL", "AWSIPAddress", "Boolean", "AWSJSON", "AWSPhone", "Enum", "Model", "NonModel"
    #   resp.entity.generic_data_schema.models["String"].fields["String"].data_type_value #=> String
    #   resp.entity.generic_data_schema.models["String"].fields["String"].required #=> Boolean
    #   resp.entity.generic_data_schema.models["String"].fields["String"].read_only #=> Boolean
    #   resp.entity.generic_data_schema.models["String"].fields["String"].is_array #=> Boolean
    #   resp.entity.generic_data_schema.models["String"].fields["String"].relationship.type #=> String, one of "HAS_MANY", "HAS_ONE", "BELONGS_TO"
    #   resp.entity.generic_data_schema.models["String"].fields["String"].relationship.related_model_name #=> String
    #   resp.entity.generic_data_schema.models["String"].fields["String"].relationship.related_model_fields #=> Array
    #   resp.entity.generic_data_schema.models["String"].fields["String"].relationship.related_model_fields[0] #=> String
    #   resp.entity.generic_data_schema.models["String"].fields["String"].relationship.can_unlink_associated_model #=> Boolean
    #   resp.entity.generic_data_schema.models["String"].fields["String"].relationship.related_join_field_name #=> String
    #   resp.entity.generic_data_schema.models["String"].fields["String"].relationship.related_join_table_name #=> String
    #   resp.entity.generic_data_schema.models["String"].fields["String"].relationship.belongs_to_field_on_related_model #=> String
    #   resp.entity.generic_data_schema.models["String"].fields["String"].relationship.associated_fields #=> Array
    #   resp.entity.generic_data_schema.models["String"].fields["String"].relationship.associated_fields[0] #=> String
    #   resp.entity.generic_data_schema.models["String"].fields["String"].relationship.is_has_many_index #=> Boolean
    #   resp.entity.generic_data_schema.models["String"].is_join_table #=> Boolean
    #   resp.entity.generic_data_schema.models["String"].primary_keys #=> Array
    #   resp.entity.generic_data_schema.models["String"].primary_keys[0] #=> String
    #   resp.entity.generic_data_schema.enums #=> Hash
    #   resp.entity.generic_data_schema.enums["String"].values #=> Array
    #   resp.entity.generic_data_schema.enums["String"].values[0] #=> String
    #   resp.entity.generic_data_schema.non_models #=> Hash
    #   resp.entity.generic_data_schema.non_models["String"].fields #=> Hash
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].data_type #=> String, one of "ID", "String", "Int", "Float", "AWSDate", "AWSTime", "AWSDateTime", "AWSTimestamp", "AWSEmail", "AWSURL", "AWSIPAddress", "Boolean", "AWSJSON", "AWSPhone", "Enum", "Model", "NonModel"
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].data_type_value #=> String
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].required #=> Boolean
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].read_only #=> Boolean
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].is_array #=> Boolean
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].relationship.type #=> String, one of "HAS_MANY", "HAS_ONE", "BELONGS_TO"
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].relationship.related_model_name #=> String
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].relationship.related_model_fields #=> Array
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].relationship.related_model_fields[0] #=> String
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].relationship.can_unlink_associated_model #=> Boolean
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].relationship.related_join_field_name #=> String
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].relationship.related_join_table_name #=> String
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].relationship.belongs_to_field_on_related_model #=> String
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].relationship.associated_fields #=> Array
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].relationship.associated_fields[0] #=> String
    #   resp.entity.generic_data_schema.non_models["String"].fields["String"].relationship.is_has_many_index #=> Boolean
    #   resp.entity.auto_generate_forms #=> Boolean
    #   resp.entity.features.is_relationship_supported #=> Boolean
    #   resp.entity.features.is_non_model_supported #=> Boolean
    #   resp.entity.status #=> String, one of "in_progress", "failed", "succeeded"
    #   resp.entity.status_message #=> String
    #   resp.entity.asset.download_url #=> String
    #   resp.entity.tags #=> Hash
    #   resp.entity.tags["TagKey"] #=> String
    #   resp.entity.created_at #=> Time
    #   resp.entity.modified_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/StartCodegenJob AWS API Documentation
    #
    # @overload start_codegen_job(params = {})
    # @param [Hash] params ({})
    def start_codegen_job(params = {}, options = {})
      req = build_request(:start_codegen_job, params)
      req.send_request(options)
    end

    # Updates an existing component.
    #
    # @option params [required, String] :app_id
    #   The unique ID for the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #
    # @option params [required, String] :id
    #   The unique ID for the component.
    #
    # @option params [String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
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
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #     client_token: "String",
    #     updated_component: { # required
    #       id: "Uuid",
    #       name: "ComponentName",
    #       source_id: "String",
    #       component_type: "ComponentType",
    #       properties: {
    #         "String" => {
    #           value: "String",
    #           binding_properties: {
    #             property: "String", # required
    #             field: "String",
    #           },
    #           collection_binding_properties: {
    #             property: "String", # required
    #             field: "String",
    #           },
    #           default_value: "String",
    #           model: "String",
    #           bindings: {
    #             "String" => {
    #               element: "String", # required
    #               property: "String", # required
    #             },
    #           },
    #           event: "String",
    #           user_attribute: "String",
    #           concat: [
    #             {
    #               # recursive ComponentProperty
    #             },
    #           ],
    #           condition: {
    #             property: "String",
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             then: {
    #               # recursive ComponentProperty
    #             },
    #             else: {
    #               # recursive ComponentProperty
    #             },
    #             operand_type: "String",
    #           },
    #           configured: false,
    #           type: "String",
    #           imported_value: "String",
    #           component_name: "String",
    #           property: "String",
    #         },
    #       },
    #       children: [
    #         {
    #           component_type: "String", # required
    #           name: "String", # required
    #           properties: { # required
    #             "String" => {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #           },
    #           children: {
    #             # recursive ComponentChildList
    #           },
    #           events: {
    #             "String" => {
    #               action: "String",
    #               parameters: {
    #                 type: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String",
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String",
    #                 },
    #                 url: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String",
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String",
    #                 },
    #                 anchor: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String",
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String",
    #                 },
    #                 target: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String",
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String",
    #                 },
    #                 global: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String",
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String",
    #                 },
    #                 model: "String",
    #                 id: {
    #                   value: "String",
    #                   binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   collection_binding_properties: {
    #                     property: "String", # required
    #                     field: "String",
    #                   },
    #                   default_value: "String",
    #                   model: "String",
    #                   bindings: {
    #                     "String" => {
    #                       element: "String", # required
    #                       property: "String", # required
    #                     },
    #                   },
    #                   event: "String",
    #                   user_attribute: "String",
    #                   concat: [
    #                     {
    #                       # recursive ComponentProperty
    #                     },
    #                   ],
    #                   condition: {
    #                     property: "String",
    #                     field: "String",
    #                     operator: "String",
    #                     operand: "String",
    #                     then: {
    #                       # recursive ComponentProperty
    #                     },
    #                     else: {
    #                       # recursive ComponentProperty
    #                     },
    #                     operand_type: "String",
    #                   },
    #                   configured: false,
    #                   type: "String",
    #                   imported_value: "String",
    #                   component_name: "String",
    #                   property: "String",
    #                 },
    #                 fields: {
    #                   "String" => {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String",
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String",
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       },
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       },
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String",
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String",
    #                   },
    #                 },
    #                 state: {
    #                   component_name: "String", # required
    #                   property: "String", # required
    #                   set: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String",
    #                     },
    #                     collection_binding_properties: {
    #                       property: "String", # required
    #                       field: "String",
    #                     },
    #                     default_value: "String",
    #                     model: "String",
    #                     bindings: {
    #                       "String" => {
    #                         element: "String", # required
    #                         property: "String", # required
    #                       },
    #                     },
    #                     event: "String",
    #                     user_attribute: "String",
    #                     concat: [
    #                       {
    #                         # recursive ComponentProperty
    #                       },
    #                     ],
    #                     condition: {
    #                       property: "String",
    #                       field: "String",
    #                       operator: "String",
    #                       operand: "String",
    #                       then: {
    #                         # recursive ComponentProperty
    #                       },
    #                       else: {
    #                         # recursive ComponentProperty
    #                       },
    #                       operand_type: "String",
    #                     },
    #                     configured: false,
    #                     type: "String",
    #                     imported_value: "String",
    #                     component_name: "String",
    #                     property: "String",
    #                   },
    #                 },
    #               },
    #               binding_event: "String",
    #             },
    #           },
    #           source_id: "String",
    #         },
    #       ],
    #       variants: [
    #         {
    #           variant_values: {
    #             "String" => "String",
    #           },
    #           overrides: {
    #             "String" => {
    #               "String" => "String",
    #             },
    #           },
    #         },
    #       ],
    #       overrides: {
    #         "String" => {
    #           "String" => "String",
    #         },
    #       },
    #       binding_properties: {
    #         "String" => {
    #           type: "String",
    #           binding_properties: {
    #             model: "String",
    #             field: "String",
    #             predicates: [
    #               {
    #                 or: {
    #                   # recursive PredicateList
    #                 },
    #                 and: {
    #                   # recursive PredicateList
    #                 },
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 operand_type: "OperandType",
    #               },
    #             ],
    #             user_attribute: "String",
    #             bucket: "String",
    #             key: "String",
    #             default_value: "String",
    #             slot_name: "String",
    #           },
    #           default_value: "String",
    #         },
    #       },
    #       collection_properties: {
    #         "String" => {
    #           model: "String", # required
    #           sort: [
    #             {
    #               field: "String", # required
    #               direction: "ASC", # required, accepts ASC, DESC
    #             },
    #           ],
    #           predicate: {
    #             or: [
    #               {
    #                 # recursive Predicate
    #               },
    #             ],
    #             and: [
    #               {
    #                 # recursive Predicate
    #               },
    #             ],
    #             field: "String",
    #             operator: "String",
    #             operand: "String",
    #             operand_type: "OperandType",
    #           },
    #           identifiers: ["String"],
    #         },
    #       },
    #       events: {
    #         "String" => {
    #           action: "String",
    #           parameters: {
    #             type: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #             url: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #             anchor: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #             target: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #             global: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #             model: "String",
    #             id: {
    #               value: "String",
    #               binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               collection_binding_properties: {
    #                 property: "String", # required
    #                 field: "String",
    #               },
    #               default_value: "String",
    #               model: "String",
    #               bindings: {
    #                 "String" => {
    #                   element: "String", # required
    #                   property: "String", # required
    #                 },
    #               },
    #               event: "String",
    #               user_attribute: "String",
    #               concat: [
    #                 {
    #                   # recursive ComponentProperty
    #                 },
    #               ],
    #               condition: {
    #                 property: "String",
    #                 field: "String",
    #                 operator: "String",
    #                 operand: "String",
    #                 then: {
    #                   # recursive ComponentProperty
    #                 },
    #                 else: {
    #                   # recursive ComponentProperty
    #                 },
    #                 operand_type: "String",
    #               },
    #               configured: false,
    #               type: "String",
    #               imported_value: "String",
    #               component_name: "String",
    #               property: "String",
    #             },
    #             fields: {
    #               "String" => {
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String",
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String",
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   },
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   },
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String",
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String",
    #               },
    #             },
    #             state: {
    #               component_name: "String", # required
    #               property: "String", # required
    #               set: { # required
    #                 value: "String",
    #                 binding_properties: {
    #                   property: "String", # required
    #                   field: "String",
    #                 },
    #                 collection_binding_properties: {
    #                   property: "String", # required
    #                   field: "String",
    #                 },
    #                 default_value: "String",
    #                 model: "String",
    #                 bindings: {
    #                   "String" => {
    #                     element: "String", # required
    #                     property: "String", # required
    #                   },
    #                 },
    #                 event: "String",
    #                 user_attribute: "String",
    #                 concat: [
    #                   {
    #                     # recursive ComponentProperty
    #                   },
    #                 ],
    #                 condition: {
    #                   property: "String",
    #                   field: "String",
    #                   operator: "String",
    #                   operand: "String",
    #                   then: {
    #                     # recursive ComponentProperty
    #                   },
    #                   else: {
    #                     # recursive ComponentProperty
    #                   },
    #                   operand_type: "String",
    #                 },
    #                 configured: false,
    #                 type: "String",
    #                 imported_value: "String",
    #                 component_name: "String",
    #                 property: "String",
    #               },
    #             },
    #           },
    #           binding_event: "String",
    #         },
    #       },
    #       schema_version: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entity.app_id #=> String
    #   resp.entity.environment_name #=> String
    #   resp.entity.source_id #=> String
    #   resp.entity.id #=> String
    #   resp.entity.name #=> String
    #   resp.entity.component_type #=> String
    #   resp.entity.properties #=> Hash
    #   resp.entity.properties["String"].value #=> String
    #   resp.entity.properties["String"].binding_properties.property #=> String
    #   resp.entity.properties["String"].binding_properties.field #=> String
    #   resp.entity.properties["String"].collection_binding_properties.property #=> String
    #   resp.entity.properties["String"].collection_binding_properties.field #=> String
    #   resp.entity.properties["String"].default_value #=> String
    #   resp.entity.properties["String"].model #=> String
    #   resp.entity.properties["String"].bindings #=> Hash
    #   resp.entity.properties["String"].bindings["String"].element #=> String
    #   resp.entity.properties["String"].bindings["String"].property #=> String
    #   resp.entity.properties["String"].event #=> String
    #   resp.entity.properties["String"].user_attribute #=> String
    #   resp.entity.properties["String"].concat #=> Array
    #   resp.entity.properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entity.properties["String"].condition.property #=> String
    #   resp.entity.properties["String"].condition.field #=> String
    #   resp.entity.properties["String"].condition.operator #=> String
    #   resp.entity.properties["String"].condition.operand #=> String
    #   resp.entity.properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.entity.properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.entity.properties["String"].condition.operand_type #=> String
    #   resp.entity.properties["String"].configured #=> Boolean
    #   resp.entity.properties["String"].type #=> String
    #   resp.entity.properties["String"].imported_value #=> String
    #   resp.entity.properties["String"].component_name #=> String
    #   resp.entity.properties["String"].property #=> String
    #   resp.entity.children #=> Array
    #   resp.entity.children[0].component_type #=> String
    #   resp.entity.children[0].name #=> String
    #   resp.entity.children[0].properties #=> Hash
    #   resp.entity.children[0].properties["String"].value #=> String
    #   resp.entity.children[0].properties["String"].binding_properties.property #=> String
    #   resp.entity.children[0].properties["String"].binding_properties.field #=> String
    #   resp.entity.children[0].properties["String"].collection_binding_properties.property #=> String
    #   resp.entity.children[0].properties["String"].collection_binding_properties.field #=> String
    #   resp.entity.children[0].properties["String"].default_value #=> String
    #   resp.entity.children[0].properties["String"].model #=> String
    #   resp.entity.children[0].properties["String"].bindings #=> Hash
    #   resp.entity.children[0].properties["String"].bindings["String"].element #=> String
    #   resp.entity.children[0].properties["String"].bindings["String"].property #=> String
    #   resp.entity.children[0].properties["String"].event #=> String
    #   resp.entity.children[0].properties["String"].user_attribute #=> String
    #   resp.entity.children[0].properties["String"].concat #=> Array
    #   resp.entity.children[0].properties["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].properties["String"].condition.property #=> String
    #   resp.entity.children[0].properties["String"].condition.field #=> String
    #   resp.entity.children[0].properties["String"].condition.operator #=> String
    #   resp.entity.children[0].properties["String"].condition.operand #=> String
    #   resp.entity.children[0].properties["String"].condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].properties["String"].condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].properties["String"].condition.operand_type #=> String
    #   resp.entity.children[0].properties["String"].configured #=> Boolean
    #   resp.entity.children[0].properties["String"].type #=> String
    #   resp.entity.children[0].properties["String"].imported_value #=> String
    #   resp.entity.children[0].properties["String"].component_name #=> String
    #   resp.entity.children[0].properties["String"].property #=> String
    #   resp.entity.children[0].children #=> Types::ComponentChildList
    #   resp.entity.children[0].events #=> Hash
    #   resp.entity.children[0].events["String"].action #=> String
    #   resp.entity.children[0].events["String"].parameters.type.value #=> String
    #   resp.entity.children[0].events["String"].parameters.type.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.type.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.type.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.type.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.type.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.type.model #=> String
    #   resp.entity.children[0].events["String"].parameters.type.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.type.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.type.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.type.event #=> String
    #   resp.entity.children[0].events["String"].parameters.type.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.type.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.type.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.type.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.type.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.type.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.type.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.type.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.type.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.type.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.type.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.type.type #=> String
    #   resp.entity.children[0].events["String"].parameters.type.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.type.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.type.property #=> String
    #   resp.entity.children[0].events["String"].parameters.url.value #=> String
    #   resp.entity.children[0].events["String"].parameters.url.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.url.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.url.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.url.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.url.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.url.model #=> String
    #   resp.entity.children[0].events["String"].parameters.url.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.url.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.url.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.url.event #=> String
    #   resp.entity.children[0].events["String"].parameters.url.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.url.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.url.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.url.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.url.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.url.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.url.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.url.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.url.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.url.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.url.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.url.type #=> String
    #   resp.entity.children[0].events["String"].parameters.url.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.url.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.url.property #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.value #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.model #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.anchor.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.event #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.anchor.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.anchor.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.anchor.type #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.anchor.property #=> String
    #   resp.entity.children[0].events["String"].parameters.target.value #=> String
    #   resp.entity.children[0].events["String"].parameters.target.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.target.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.target.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.target.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.target.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.target.model #=> String
    #   resp.entity.children[0].events["String"].parameters.target.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.target.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.target.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.target.event #=> String
    #   resp.entity.children[0].events["String"].parameters.target.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.target.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.target.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.target.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.target.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.target.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.target.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.target.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.target.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.target.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.target.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.target.type #=> String
    #   resp.entity.children[0].events["String"].parameters.target.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.target.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.target.property #=> String
    #   resp.entity.children[0].events["String"].parameters.global.value #=> String
    #   resp.entity.children[0].events["String"].parameters.global.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.global.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.global.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.global.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.global.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.global.model #=> String
    #   resp.entity.children[0].events["String"].parameters.global.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.global.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.global.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.global.event #=> String
    #   resp.entity.children[0].events["String"].parameters.global.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.global.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.global.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.global.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.global.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.global.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.global.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.global.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.global.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.global.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.global.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.global.type #=> String
    #   resp.entity.children[0].events["String"].parameters.global.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.global.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.global.property #=> String
    #   resp.entity.children[0].events["String"].parameters.model #=> String
    #   resp.entity.children[0].events["String"].parameters.id.value #=> String
    #   resp.entity.children[0].events["String"].parameters.id.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.id.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.id.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.id.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.id.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.id.model #=> String
    #   resp.entity.children[0].events["String"].parameters.id.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.id.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.id.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.id.event #=> String
    #   resp.entity.children[0].events["String"].parameters.id.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.id.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.id.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.id.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.id.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.id.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.id.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.id.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.id.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.id.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.id.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.id.type #=> String
    #   resp.entity.children[0].events["String"].parameters.id.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.id.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.id.property #=> String
    #   resp.entity.children[0].events["String"].parameters.fields #=> Hash
    #   resp.entity.children[0].events["String"].parameters.fields["String"].value #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].model #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.fields["String"].bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].event #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.fields["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.fields["String"].condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.fields["String"].type #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.fields["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.state.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.state.property #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.value #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.collection_binding_properties.property #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.collection_binding_properties.field #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.default_value #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.model #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.bindings #=> Hash
    #   resp.entity.children[0].events["String"].parameters.state.set.bindings["String"].element #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.bindings["String"].property #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.event #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.user_attribute #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.concat #=> Array
    #   resp.entity.children[0].events["String"].parameters.state.set.concat[0] #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.property #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.field #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.operator #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.operand #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.then #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.else #=> Types::ComponentProperty
    #   resp.entity.children[0].events["String"].parameters.state.set.condition.operand_type #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.configured #=> Boolean
    #   resp.entity.children[0].events["String"].parameters.state.set.type #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.imported_value #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.component_name #=> String
    #   resp.entity.children[0].events["String"].parameters.state.set.property #=> String
    #   resp.entity.children[0].events["String"].binding_event #=> String
    #   resp.entity.children[0].source_id #=> String
    #   resp.entity.variants #=> Array
    #   resp.entity.variants[0].variant_values #=> Hash
    #   resp.entity.variants[0].variant_values["String"] #=> String
    #   resp.entity.variants[0].overrides #=> Hash
    #   resp.entity.variants[0].overrides["String"] #=> Hash
    #   resp.entity.variants[0].overrides["String"]["String"] #=> String
    #   resp.entity.overrides #=> Hash
    #   resp.entity.overrides["String"] #=> Hash
    #   resp.entity.overrides["String"]["String"] #=> String
    #   resp.entity.binding_properties #=> Hash
    #   resp.entity.binding_properties["String"].type #=> String
    #   resp.entity.binding_properties["String"].binding_properties.model #=> String
    #   resp.entity.binding_properties["String"].binding_properties.field #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates #=> Array
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].or #=> Types::PredicateList
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].and #=> Types::PredicateList
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].field #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].operator #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].operand #=> String
    #   resp.entity.binding_properties["String"].binding_properties.predicates[0].operand_type #=> String
    #   resp.entity.binding_properties["String"].binding_properties.user_attribute #=> String
    #   resp.entity.binding_properties["String"].binding_properties.bucket #=> String
    #   resp.entity.binding_properties["String"].binding_properties.key #=> String
    #   resp.entity.binding_properties["String"].binding_properties.default_value #=> String
    #   resp.entity.binding_properties["String"].binding_properties.slot_name #=> String
    #   resp.entity.binding_properties["String"].default_value #=> String
    #   resp.entity.collection_properties #=> Hash
    #   resp.entity.collection_properties["String"].model #=> String
    #   resp.entity.collection_properties["String"].sort #=> Array
    #   resp.entity.collection_properties["String"].sort[0].field #=> String
    #   resp.entity.collection_properties["String"].sort[0].direction #=> String, one of "ASC", "DESC"
    #   resp.entity.collection_properties["String"].predicate.or #=> Array
    #   resp.entity.collection_properties["String"].predicate.or[0] #=> Types::Predicate
    #   resp.entity.collection_properties["String"].predicate.and #=> Array
    #   resp.entity.collection_properties["String"].predicate.and[0] #=> Types::Predicate
    #   resp.entity.collection_properties["String"].predicate.field #=> String
    #   resp.entity.collection_properties["String"].predicate.operator #=> String
    #   resp.entity.collection_properties["String"].predicate.operand #=> String
    #   resp.entity.collection_properties["String"].predicate.operand_type #=> String
    #   resp.entity.collection_properties["String"].identifiers #=> Array
    #   resp.entity.collection_properties["String"].identifiers[0] #=> String
    #   resp.entity.created_at #=> Time
    #   resp.entity.modified_at #=> Time
    #   resp.entity.tags #=> Hash
    #   resp.entity.tags["TagKey"] #=> String
    #   resp.entity.events #=> Hash
    #   resp.entity.events["String"].action #=> String
    #   resp.entity.events["String"].parameters.type.value #=> String
    #   resp.entity.events["String"].parameters.type.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.type.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.type.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.type.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.type.default_value #=> String
    #   resp.entity.events["String"].parameters.type.model #=> String
    #   resp.entity.events["String"].parameters.type.bindings #=> Hash
    #   resp.entity.events["String"].parameters.type.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.type.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.type.event #=> String
    #   resp.entity.events["String"].parameters.type.user_attribute #=> String
    #   resp.entity.events["String"].parameters.type.concat #=> Array
    #   resp.entity.events["String"].parameters.type.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.type.condition.property #=> String
    #   resp.entity.events["String"].parameters.type.condition.field #=> String
    #   resp.entity.events["String"].parameters.type.condition.operator #=> String
    #   resp.entity.events["String"].parameters.type.condition.operand #=> String
    #   resp.entity.events["String"].parameters.type.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.type.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.type.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.type.configured #=> Boolean
    #   resp.entity.events["String"].parameters.type.type #=> String
    #   resp.entity.events["String"].parameters.type.imported_value #=> String
    #   resp.entity.events["String"].parameters.type.component_name #=> String
    #   resp.entity.events["String"].parameters.type.property #=> String
    #   resp.entity.events["String"].parameters.url.value #=> String
    #   resp.entity.events["String"].parameters.url.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.url.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.url.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.url.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.url.default_value #=> String
    #   resp.entity.events["String"].parameters.url.model #=> String
    #   resp.entity.events["String"].parameters.url.bindings #=> Hash
    #   resp.entity.events["String"].parameters.url.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.url.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.url.event #=> String
    #   resp.entity.events["String"].parameters.url.user_attribute #=> String
    #   resp.entity.events["String"].parameters.url.concat #=> Array
    #   resp.entity.events["String"].parameters.url.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.url.condition.property #=> String
    #   resp.entity.events["String"].parameters.url.condition.field #=> String
    #   resp.entity.events["String"].parameters.url.condition.operator #=> String
    #   resp.entity.events["String"].parameters.url.condition.operand #=> String
    #   resp.entity.events["String"].parameters.url.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.url.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.url.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.url.configured #=> Boolean
    #   resp.entity.events["String"].parameters.url.type #=> String
    #   resp.entity.events["String"].parameters.url.imported_value #=> String
    #   resp.entity.events["String"].parameters.url.component_name #=> String
    #   resp.entity.events["String"].parameters.url.property #=> String
    #   resp.entity.events["String"].parameters.anchor.value #=> String
    #   resp.entity.events["String"].parameters.anchor.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.anchor.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.anchor.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.anchor.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.anchor.default_value #=> String
    #   resp.entity.events["String"].parameters.anchor.model #=> String
    #   resp.entity.events["String"].parameters.anchor.bindings #=> Hash
    #   resp.entity.events["String"].parameters.anchor.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.anchor.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.anchor.event #=> String
    #   resp.entity.events["String"].parameters.anchor.user_attribute #=> String
    #   resp.entity.events["String"].parameters.anchor.concat #=> Array
    #   resp.entity.events["String"].parameters.anchor.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.anchor.condition.property #=> String
    #   resp.entity.events["String"].parameters.anchor.condition.field #=> String
    #   resp.entity.events["String"].parameters.anchor.condition.operator #=> String
    #   resp.entity.events["String"].parameters.anchor.condition.operand #=> String
    #   resp.entity.events["String"].parameters.anchor.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.anchor.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.anchor.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.anchor.configured #=> Boolean
    #   resp.entity.events["String"].parameters.anchor.type #=> String
    #   resp.entity.events["String"].parameters.anchor.imported_value #=> String
    #   resp.entity.events["String"].parameters.anchor.component_name #=> String
    #   resp.entity.events["String"].parameters.anchor.property #=> String
    #   resp.entity.events["String"].parameters.target.value #=> String
    #   resp.entity.events["String"].parameters.target.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.target.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.target.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.target.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.target.default_value #=> String
    #   resp.entity.events["String"].parameters.target.model #=> String
    #   resp.entity.events["String"].parameters.target.bindings #=> Hash
    #   resp.entity.events["String"].parameters.target.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.target.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.target.event #=> String
    #   resp.entity.events["String"].parameters.target.user_attribute #=> String
    #   resp.entity.events["String"].parameters.target.concat #=> Array
    #   resp.entity.events["String"].parameters.target.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.target.condition.property #=> String
    #   resp.entity.events["String"].parameters.target.condition.field #=> String
    #   resp.entity.events["String"].parameters.target.condition.operator #=> String
    #   resp.entity.events["String"].parameters.target.condition.operand #=> String
    #   resp.entity.events["String"].parameters.target.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.target.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.target.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.target.configured #=> Boolean
    #   resp.entity.events["String"].parameters.target.type #=> String
    #   resp.entity.events["String"].parameters.target.imported_value #=> String
    #   resp.entity.events["String"].parameters.target.component_name #=> String
    #   resp.entity.events["String"].parameters.target.property #=> String
    #   resp.entity.events["String"].parameters.global.value #=> String
    #   resp.entity.events["String"].parameters.global.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.global.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.global.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.global.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.global.default_value #=> String
    #   resp.entity.events["String"].parameters.global.model #=> String
    #   resp.entity.events["String"].parameters.global.bindings #=> Hash
    #   resp.entity.events["String"].parameters.global.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.global.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.global.event #=> String
    #   resp.entity.events["String"].parameters.global.user_attribute #=> String
    #   resp.entity.events["String"].parameters.global.concat #=> Array
    #   resp.entity.events["String"].parameters.global.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.global.condition.property #=> String
    #   resp.entity.events["String"].parameters.global.condition.field #=> String
    #   resp.entity.events["String"].parameters.global.condition.operator #=> String
    #   resp.entity.events["String"].parameters.global.condition.operand #=> String
    #   resp.entity.events["String"].parameters.global.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.global.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.global.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.global.configured #=> Boolean
    #   resp.entity.events["String"].parameters.global.type #=> String
    #   resp.entity.events["String"].parameters.global.imported_value #=> String
    #   resp.entity.events["String"].parameters.global.component_name #=> String
    #   resp.entity.events["String"].parameters.global.property #=> String
    #   resp.entity.events["String"].parameters.model #=> String
    #   resp.entity.events["String"].parameters.id.value #=> String
    #   resp.entity.events["String"].parameters.id.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.id.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.id.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.id.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.id.default_value #=> String
    #   resp.entity.events["String"].parameters.id.model #=> String
    #   resp.entity.events["String"].parameters.id.bindings #=> Hash
    #   resp.entity.events["String"].parameters.id.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.id.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.id.event #=> String
    #   resp.entity.events["String"].parameters.id.user_attribute #=> String
    #   resp.entity.events["String"].parameters.id.concat #=> Array
    #   resp.entity.events["String"].parameters.id.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.id.condition.property #=> String
    #   resp.entity.events["String"].parameters.id.condition.field #=> String
    #   resp.entity.events["String"].parameters.id.condition.operator #=> String
    #   resp.entity.events["String"].parameters.id.condition.operand #=> String
    #   resp.entity.events["String"].parameters.id.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.id.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.id.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.id.configured #=> Boolean
    #   resp.entity.events["String"].parameters.id.type #=> String
    #   resp.entity.events["String"].parameters.id.imported_value #=> String
    #   resp.entity.events["String"].parameters.id.component_name #=> String
    #   resp.entity.events["String"].parameters.id.property #=> String
    #   resp.entity.events["String"].parameters.fields #=> Hash
    #   resp.entity.events["String"].parameters.fields["String"].value #=> String
    #   resp.entity.events["String"].parameters.fields["String"].binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.fields["String"].binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.fields["String"].collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.fields["String"].collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.fields["String"].default_value #=> String
    #   resp.entity.events["String"].parameters.fields["String"].model #=> String
    #   resp.entity.events["String"].parameters.fields["String"].bindings #=> Hash
    #   resp.entity.events["String"].parameters.fields["String"].bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.fields["String"].bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.fields["String"].event #=> String
    #   resp.entity.events["String"].parameters.fields["String"].user_attribute #=> String
    #   resp.entity.events["String"].parameters.fields["String"].concat #=> Array
    #   resp.entity.events["String"].parameters.fields["String"].concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.fields["String"].condition.property #=> String
    #   resp.entity.events["String"].parameters.fields["String"].condition.field #=> String
    #   resp.entity.events["String"].parameters.fields["String"].condition.operator #=> String
    #   resp.entity.events["String"].parameters.fields["String"].condition.operand #=> String
    #   resp.entity.events["String"].parameters.fields["String"].condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.fields["String"].condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.fields["String"].condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.fields["String"].configured #=> Boolean
    #   resp.entity.events["String"].parameters.fields["String"].type #=> String
    #   resp.entity.events["String"].parameters.fields["String"].imported_value #=> String
    #   resp.entity.events["String"].parameters.fields["String"].component_name #=> String
    #   resp.entity.events["String"].parameters.fields["String"].property #=> String
    #   resp.entity.events["String"].parameters.state.component_name #=> String
    #   resp.entity.events["String"].parameters.state.property #=> String
    #   resp.entity.events["String"].parameters.state.set.value #=> String
    #   resp.entity.events["String"].parameters.state.set.binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.state.set.binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.state.set.collection_binding_properties.property #=> String
    #   resp.entity.events["String"].parameters.state.set.collection_binding_properties.field #=> String
    #   resp.entity.events["String"].parameters.state.set.default_value #=> String
    #   resp.entity.events["String"].parameters.state.set.model #=> String
    #   resp.entity.events["String"].parameters.state.set.bindings #=> Hash
    #   resp.entity.events["String"].parameters.state.set.bindings["String"].element #=> String
    #   resp.entity.events["String"].parameters.state.set.bindings["String"].property #=> String
    #   resp.entity.events["String"].parameters.state.set.event #=> String
    #   resp.entity.events["String"].parameters.state.set.user_attribute #=> String
    #   resp.entity.events["String"].parameters.state.set.concat #=> Array
    #   resp.entity.events["String"].parameters.state.set.concat[0] #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.state.set.condition.property #=> String
    #   resp.entity.events["String"].parameters.state.set.condition.field #=> String
    #   resp.entity.events["String"].parameters.state.set.condition.operator #=> String
    #   resp.entity.events["String"].parameters.state.set.condition.operand #=> String
    #   resp.entity.events["String"].parameters.state.set.condition.then #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.state.set.condition.else #=> Types::ComponentProperty
    #   resp.entity.events["String"].parameters.state.set.condition.operand_type #=> String
    #   resp.entity.events["String"].parameters.state.set.configured #=> Boolean
    #   resp.entity.events["String"].parameters.state.set.type #=> String
    #   resp.entity.events["String"].parameters.state.set.imported_value #=> String
    #   resp.entity.events["String"].parameters.state.set.component_name #=> String
    #   resp.entity.events["String"].parameters.state.set.property #=> String
    #   resp.entity.events["String"].binding_event #=> String
    #   resp.entity.schema_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateComponent AWS API Documentation
    #
    # @overload update_component(params = {})
    # @param [Hash] params ({})
    def update_component(params = {}, options = {})
      req = build_request(:update_component, params)
      req.send_request(options)
    end

    # Updates an existing form.
    #
    # @option params [required, String] :app_id
    #   The unique ID for the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #
    # @option params [required, String] :id
    #   The unique ID for the form.
    #
    # @option params [String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::UpdateFormData] :updated_form
    #   The request accepts the following data in JSON format.
    #
    # @return [Types::UpdateFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFormResponse#entity #entity} => Types::Form
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_form({
    #     app_id: "String", # required
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #     client_token: "String",
    #     updated_form: { # required
    #       name: "FormName",
    #       data_type: {
    #         data_source_type: "DataStore", # required, accepts DataStore, Custom
    #         data_type_name: "String", # required
    #       },
    #       form_action_type: "create", # accepts create, update
    #       fields: {
    #         "String" => {
    #           label: "String",
    #           position: {
    #             fixed: "first", # accepts first
    #             right_of: "String",
    #             below: "String",
    #           },
    #           excluded: false,
    #           input_type: {
    #             type: "String", # required
    #             required: false,
    #             read_only: false,
    #             placeholder: "String",
    #             default_value: "String",
    #             descriptive_text: "String",
    #             default_checked: false,
    #             default_country_code: "String",
    #             value_mappings: {
    #               values: [ # required
    #                 {
    #                   display_value: {
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String",
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       },
    #                     ],
    #                   },
    #                   value: { # required
    #                     value: "String",
    #                     binding_properties: {
    #                       property: "String", # required
    #                       field: "String",
    #                     },
    #                     concat: [
    #                       {
    #                         # recursive FormInputValueProperty
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #               binding_properties: {
    #                 "String" => {
    #                   type: "String",
    #                   binding_properties: {
    #                     model: "String",
    #                   },
    #                 },
    #               },
    #             },
    #             name: "String",
    #             min_value: 1.0,
    #             max_value: 1.0,
    #             step: 1.0,
    #             value: "String",
    #             is_array: false,
    #             file_uploader_config: {
    #               access_level: "public", # required, accepts public, protected, private
    #               accepted_file_types: ["String"], # required
    #               show_thumbnails: false,
    #               is_resumable: false,
    #               max_file_count: 1,
    #               max_size: 1,
    #             },
    #           },
    #           validations: [
    #             {
    #               type: "String", # required
    #               str_values: ["String"],
    #               num_values: [1],
    #               validation_message: "String",
    #             },
    #           ],
    #         },
    #       },
    #       style: {
    #         horizontal_gap: {
    #           token_reference: "String",
    #           value: "String",
    #         },
    #         vertical_gap: {
    #           token_reference: "String",
    #           value: "String",
    #         },
    #         outer_padding: {
    #           token_reference: "String",
    #           value: "String",
    #         },
    #       },
    #       sectional_elements: {
    #         "String" => {
    #           type: "String", # required
    #           position: {
    #             fixed: "first", # accepts first
    #             right_of: "String",
    #             below: "String",
    #           },
    #           text: "String",
    #           level: 1,
    #           orientation: "String",
    #           excluded: false,
    #         },
    #       },
    #       schema_version: "String",
    #       cta: {
    #         position: "top", # accepts top, bottom, top_and_bottom
    #         clear: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             fixed: "first", # accepts first
    #             right_of: "String",
    #             below: "String",
    #           },
    #         },
    #         cancel: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             fixed: "first", # accepts first
    #             right_of: "String",
    #             below: "String",
    #           },
    #         },
    #         submit: {
    #           excluded: false,
    #           children: "String",
    #           position: {
    #             fixed: "first", # accepts first
    #             right_of: "String",
    #             below: "String",
    #           },
    #         },
    #       },
    #       label_decorator: "required", # accepts required, optional, none
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entity.app_id #=> String
    #   resp.entity.environment_name #=> String
    #   resp.entity.id #=> String
    #   resp.entity.name #=> String
    #   resp.entity.form_action_type #=> String, one of "create", "update"
    #   resp.entity.style.horizontal_gap.token_reference #=> String
    #   resp.entity.style.horizontal_gap.value #=> String
    #   resp.entity.style.vertical_gap.token_reference #=> String
    #   resp.entity.style.vertical_gap.value #=> String
    #   resp.entity.style.outer_padding.token_reference #=> String
    #   resp.entity.style.outer_padding.value #=> String
    #   resp.entity.data_type.data_source_type #=> String, one of "DataStore", "Custom"
    #   resp.entity.data_type.data_type_name #=> String
    #   resp.entity.fields #=> Hash
    #   resp.entity.fields["String"].label #=> String
    #   resp.entity.fields["String"].position.fixed #=> String, one of "first"
    #   resp.entity.fields["String"].position.right_of #=> String
    #   resp.entity.fields["String"].position.below #=> String
    #   resp.entity.fields["String"].excluded #=> Boolean
    #   resp.entity.fields["String"].input_type.type #=> String
    #   resp.entity.fields["String"].input_type.required #=> Boolean
    #   resp.entity.fields["String"].input_type.read_only #=> Boolean
    #   resp.entity.fields["String"].input_type.placeholder #=> String
    #   resp.entity.fields["String"].input_type.default_value #=> String
    #   resp.entity.fields["String"].input_type.descriptive_text #=> String
    #   resp.entity.fields["String"].input_type.default_checked #=> Boolean
    #   resp.entity.fields["String"].input_type.default_country_code #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values #=> Array
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].display_value.value #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].display_value.binding_properties.property #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].display_value.binding_properties.field #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].display_value.concat #=> Array
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].display_value.concat[0] #=> Types::FormInputValueProperty
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].value.value #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].value.binding_properties.property #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].value.binding_properties.field #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].value.concat #=> Array
    #   resp.entity.fields["String"].input_type.value_mappings.values[0].value.concat[0] #=> Types::FormInputValueProperty
    #   resp.entity.fields["String"].input_type.value_mappings.binding_properties #=> Hash
    #   resp.entity.fields["String"].input_type.value_mappings.binding_properties["String"].type #=> String
    #   resp.entity.fields["String"].input_type.value_mappings.binding_properties["String"].binding_properties.model #=> String
    #   resp.entity.fields["String"].input_type.name #=> String
    #   resp.entity.fields["String"].input_type.min_value #=> Float
    #   resp.entity.fields["String"].input_type.max_value #=> Float
    #   resp.entity.fields["String"].input_type.step #=> Float
    #   resp.entity.fields["String"].input_type.value #=> String
    #   resp.entity.fields["String"].input_type.is_array #=> Boolean
    #   resp.entity.fields["String"].input_type.file_uploader_config.access_level #=> String, one of "public", "protected", "private"
    #   resp.entity.fields["String"].input_type.file_uploader_config.accepted_file_types #=> Array
    #   resp.entity.fields["String"].input_type.file_uploader_config.accepted_file_types[0] #=> String
    #   resp.entity.fields["String"].input_type.file_uploader_config.show_thumbnails #=> Boolean
    #   resp.entity.fields["String"].input_type.file_uploader_config.is_resumable #=> Boolean
    #   resp.entity.fields["String"].input_type.file_uploader_config.max_file_count #=> Integer
    #   resp.entity.fields["String"].input_type.file_uploader_config.max_size #=> Integer
    #   resp.entity.fields["String"].validations #=> Array
    #   resp.entity.fields["String"].validations[0].type #=> String
    #   resp.entity.fields["String"].validations[0].str_values #=> Array
    #   resp.entity.fields["String"].validations[0].str_values[0] #=> String
    #   resp.entity.fields["String"].validations[0].num_values #=> Array
    #   resp.entity.fields["String"].validations[0].num_values[0] #=> Integer
    #   resp.entity.fields["String"].validations[0].validation_message #=> String
    #   resp.entity.sectional_elements #=> Hash
    #   resp.entity.sectional_elements["String"].type #=> String
    #   resp.entity.sectional_elements["String"].position.fixed #=> String, one of "first"
    #   resp.entity.sectional_elements["String"].position.right_of #=> String
    #   resp.entity.sectional_elements["String"].position.below #=> String
    #   resp.entity.sectional_elements["String"].text #=> String
    #   resp.entity.sectional_elements["String"].level #=> Integer
    #   resp.entity.sectional_elements["String"].orientation #=> String
    #   resp.entity.sectional_elements["String"].excluded #=> Boolean
    #   resp.entity.schema_version #=> String
    #   resp.entity.tags #=> Hash
    #   resp.entity.tags["TagKey"] #=> String
    #   resp.entity.cta.position #=> String, one of "top", "bottom", "top_and_bottom"
    #   resp.entity.cta.clear.excluded #=> Boolean
    #   resp.entity.cta.clear.children #=> String
    #   resp.entity.cta.clear.position.fixed #=> String, one of "first"
    #   resp.entity.cta.clear.position.right_of #=> String
    #   resp.entity.cta.clear.position.below #=> String
    #   resp.entity.cta.cancel.excluded #=> Boolean
    #   resp.entity.cta.cancel.children #=> String
    #   resp.entity.cta.cancel.position.fixed #=> String, one of "first"
    #   resp.entity.cta.cancel.position.right_of #=> String
    #   resp.entity.cta.cancel.position.below #=> String
    #   resp.entity.cta.submit.excluded #=> Boolean
    #   resp.entity.cta.submit.children #=> String
    #   resp.entity.cta.submit.position.fixed #=> String, one of "first"
    #   resp.entity.cta.submit.position.right_of #=> String
    #   resp.entity.cta.submit.position.below #=> String
    #   resp.entity.label_decorator #=> String, one of "required", "optional", "none"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplifyuibuilder-2021-08-11/UpdateForm AWS API Documentation
    #
    # @overload update_form(params = {})
    # @param [Hash] params ({})
    def update_form(params = {}, options = {})
      req = build_request(:update_form, params)
      req.send_request(options)
    end

    # Updates an existing theme.
    #
    # @option params [required, String] :app_id
    #   The unique ID for the Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of the backend environment that is part of the Amplify app.
    #
    # @option params [required, String] :id
    #   The unique ID for the theme.
    #
    # @option params [String] :client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
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
    #     environment_name: "String", # required
    #     id: "Uuid", # required
    #     client_token: "String",
    #     updated_theme: { # required
    #       id: "Uuid",
    #       name: "ThemeName",
    #       values: [ # required
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             },
    #           },
    #         },
    #       ],
    #       overrides: [
    #         {
    #           key: "String",
    #           value: {
    #             value: "String",
    #             children: {
    #               # recursive ThemeValuesList
    #             },
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.entity.app_id #=> String
    #   resp.entity.environment_name #=> String
    #   resp.entity.id #=> String
    #   resp.entity.name #=> String
    #   resp.entity.created_at #=> Time
    #   resp.entity.modified_at #=> Time
    #   resp.entity.values #=> Array
    #   resp.entity.values[0].key #=> String
    #   resp.entity.values[0].value.value #=> String
    #   resp.entity.values[0].value.children #=> Types::ThemeValuesList
    #   resp.entity.overrides #=> Array
    #   resp.entity.overrides[0].key #=> String
    #   resp.entity.overrides[0].value.value #=> String
    #   resp.entity.overrides[0].value.children #=> Types::ThemeValuesList
    #   resp.entity.tags #=> Hash
    #   resp.entity.tags["TagKey"] #=> String
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
