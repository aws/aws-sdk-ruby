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

Aws::Plugins::GlobalConfiguration.add_identifier(:apigatewayv2)

module Aws::ApiGatewayV2
  # An API client for ApiGatewayV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ApiGatewayV2::Client.new(
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

    @identifier = :apigatewayv2

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

    # Creates an Api resource.
    #
    # @option params [String] :api_key_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [Types::Cors] :cors_configuration
    #   Represents a CORS configuration. Supported only for HTTP APIs. See
    #   [Configuring CORS][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html
    #
    # @option params [String] :credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #
    # @option params [String] :description
    #   A string with a length between \[0-1024\].
    #
    # @option params [Boolean] :disable_schema_validation
    #
    # @option params [Boolean] :disable_execute_api_endpoint
    #
    # @option params [required, String] :name
    #   A string with a length between \[1-128\].
    #
    # @option params [required, String] :protocol_type
    #   Represents a protocol type.
    #
    # @option params [String] :route_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [String] :route_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [Hash<String,String>] :tags
    #   Represents a collection of tags associated with the resource.
    #
    # @option params [String] :target
    #   A string representation of a URI with a length between \[1-2048\].
    #
    # @option params [String] :version
    #   A string with a length between \[1-64\].
    #
    # @return [Types::CreateApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApiResponse#api_endpoint #api_endpoint} => String
    #   * {Types::CreateApiResponse#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::CreateApiResponse#api_id #api_id} => String
    #   * {Types::CreateApiResponse#api_key_selection_expression #api_key_selection_expression} => String
    #   * {Types::CreateApiResponse#cors_configuration #cors_configuration} => Types::Cors
    #   * {Types::CreateApiResponse#created_date #created_date} => Time
    #   * {Types::CreateApiResponse#description #description} => String
    #   * {Types::CreateApiResponse#disable_schema_validation #disable_schema_validation} => Boolean
    #   * {Types::CreateApiResponse#disable_execute_api_endpoint #disable_execute_api_endpoint} => Boolean
    #   * {Types::CreateApiResponse#import_info #import_info} => Array&lt;String&gt;
    #   * {Types::CreateApiResponse#name #name} => String
    #   * {Types::CreateApiResponse#protocol_type #protocol_type} => String
    #   * {Types::CreateApiResponse#route_selection_expression #route_selection_expression} => String
    #   * {Types::CreateApiResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateApiResponse#version #version} => String
    #   * {Types::CreateApiResponse#warnings #warnings} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api({
    #     api_key_selection_expression: "SelectionExpression",
    #     cors_configuration: {
    #       allow_credentials: false,
    #       allow_headers: ["__string"],
    #       allow_methods: ["StringWithLengthBetween1And64"],
    #       allow_origins: ["__string"],
    #       expose_headers: ["__string"],
    #       max_age: 1,
    #     },
    #     credentials_arn: "Arn",
    #     description: "StringWithLengthBetween0And1024",
    #     disable_schema_validation: false,
    #     disable_execute_api_endpoint: false,
    #     name: "StringWithLengthBetween1And128", # required
    #     protocol_type: "WEBSOCKET", # required, accepts WEBSOCKET, HTTP
    #     route_key: "SelectionKey",
    #     route_selection_expression: "SelectionExpression",
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600",
    #     },
    #     target: "UriWithLengthBetween1And2048",
    #     version: "StringWithLengthBetween1And64",
    #   })
    #
    # @example Response structure
    #
    #   resp.api_endpoint #=> String
    #   resp.api_gateway_managed #=> Boolean
    #   resp.api_id #=> String
    #   resp.api_key_selection_expression #=> String
    #   resp.cors_configuration.allow_credentials #=> Boolean
    #   resp.cors_configuration.allow_headers #=> Array
    #   resp.cors_configuration.allow_headers[0] #=> String
    #   resp.cors_configuration.allow_methods #=> Array
    #   resp.cors_configuration.allow_methods[0] #=> String
    #   resp.cors_configuration.allow_origins #=> Array
    #   resp.cors_configuration.allow_origins[0] #=> String
    #   resp.cors_configuration.expose_headers #=> Array
    #   resp.cors_configuration.expose_headers[0] #=> String
    #   resp.cors_configuration.max_age #=> Integer
    #   resp.created_date #=> Time
    #   resp.description #=> String
    #   resp.disable_schema_validation #=> Boolean
    #   resp.disable_execute_api_endpoint #=> Boolean
    #   resp.import_info #=> Array
    #   resp.import_info[0] #=> String
    #   resp.name #=> String
    #   resp.protocol_type #=> String, one of "WEBSOCKET", "HTTP"
    #   resp.route_selection_expression #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.version #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #
    # @overload create_api(params = {})
    # @param [Hash] params ({})
    def create_api(params = {}, options = {})
      req = build_request(:create_api, params)
      req.send_request(options)
    end

    # Creates an API mapping.
    #
    # @option params [required, String] :api_id
    #   The identifier.
    #
    # @option params [String] :api_mapping_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [required, String] :domain_name
    #
    # @option params [required, String] :stage
    #   A string with a length between \[1-128\].
    #
    # @return [Types::CreateApiMappingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApiMappingResponse#api_id #api_id} => String
    #   * {Types::CreateApiMappingResponse#api_mapping_id #api_mapping_id} => String
    #   * {Types::CreateApiMappingResponse#api_mapping_key #api_mapping_key} => String
    #   * {Types::CreateApiMappingResponse#stage #stage} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api_mapping({
    #     api_id: "Id", # required
    #     api_mapping_key: "SelectionKey",
    #     domain_name: "__string", # required
    #     stage: "StringWithLengthBetween1And128", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_id #=> String
    #   resp.api_mapping_id #=> String
    #   resp.api_mapping_key #=> String
    #   resp.stage #=> String
    #
    # @overload create_api_mapping(params = {})
    # @param [Hash] params ({})
    def create_api_mapping(params = {}, options = {})
      req = build_request(:create_api_mapping, params)
      req.send_request(options)
    end

    # Creates an Authorizer for an API.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :authorizer_credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #
    # @option params [Integer] :authorizer_result_ttl_in_seconds
    #   An integer with a value between \[0-3600\].
    #
    # @option params [required, String] :authorizer_type
    #   The authorizer type. Specify REQUEST for a Lambda function using
    #   incoming request parameters. Specify JWT to use JSON Web Tokens
    #   (supported only for HTTP APIs).
    #
    # @option params [String] :authorizer_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #
    # @option params [required, Array<String>] :identity_source
    #   The identity source for which authorization is requested. For the
    #   REQUEST authorizer, this is required when authorization caching is
    #   enabled. The value is a comma-separated string of one or more mapping
    #   expressions of the specified request parameters. For example, if an
    #   Auth header, a Name query string parameter are defined as identity
    #   sources, this value is $method.request.header.Auth,
    #   $method.request.querystring.Name. These parameters will be used to
    #   derive the authorization caching key and to perform runtime validation
    #   of the REQUEST authorizer by verifying all of the identity-related
    #   request parameters are present, not null and non-empty. Only when this
    #   is true does the authorizer invoke the authorizer Lambda function,
    #   otherwise, it returns a 401 Unauthorized response without calling the
    #   Lambda function. The valid value is a string of comma-separated
    #   mapping expressions of the specified request parameters. When the
    #   authorization caching is not enabled, this property is optional.
    #
    # @option params [String] :identity_validation_expression
    #   A string with a length between \[0-1024\].
    #
    # @option params [Types::JWTConfiguration] :jwt_configuration
    #   Represents the configuration of a JWT authorizer. Required for the JWT
    #   authorizer type. Supported only for HTTP APIs.
    #
    # @option params [required, String] :name
    #   A string with a length between \[1-128\].
    #
    # @option params [String] :authorizer_payload_format_version
    #   A string with a length between \[1-64\].
    #
    # @option params [Boolean] :enable_simple_responses
    #
    # @return [Types::CreateAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAuthorizerResponse#authorizer_credentials_arn #authorizer_credentials_arn} => String
    #   * {Types::CreateAuthorizerResponse#authorizer_id #authorizer_id} => String
    #   * {Types::CreateAuthorizerResponse#authorizer_result_ttl_in_seconds #authorizer_result_ttl_in_seconds} => Integer
    #   * {Types::CreateAuthorizerResponse#authorizer_type #authorizer_type} => String
    #   * {Types::CreateAuthorizerResponse#authorizer_uri #authorizer_uri} => String
    #   * {Types::CreateAuthorizerResponse#identity_source #identity_source} => Array&lt;String&gt;
    #   * {Types::CreateAuthorizerResponse#identity_validation_expression #identity_validation_expression} => String
    #   * {Types::CreateAuthorizerResponse#jwt_configuration #jwt_configuration} => Types::JWTConfiguration
    #   * {Types::CreateAuthorizerResponse#name #name} => String
    #   * {Types::CreateAuthorizerResponse#authorizer_payload_format_version #authorizer_payload_format_version} => String
    #   * {Types::CreateAuthorizerResponse#enable_simple_responses #enable_simple_responses} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_authorizer({
    #     api_id: "__string", # required
    #     authorizer_credentials_arn: "Arn",
    #     authorizer_result_ttl_in_seconds: 1,
    #     authorizer_type: "REQUEST", # required, accepts REQUEST, JWT
    #     authorizer_uri: "UriWithLengthBetween1And2048",
    #     identity_source: ["__string"], # required
    #     identity_validation_expression: "StringWithLengthBetween0And1024",
    #     jwt_configuration: {
    #       audience: ["__string"],
    #       issuer: "UriWithLengthBetween1And2048",
    #     },
    #     name: "StringWithLengthBetween1And128", # required
    #     authorizer_payload_format_version: "StringWithLengthBetween1And64",
    #     enable_simple_responses: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_credentials_arn #=> String
    #   resp.authorizer_id #=> String
    #   resp.authorizer_result_ttl_in_seconds #=> Integer
    #   resp.authorizer_type #=> String, one of "REQUEST", "JWT"
    #   resp.authorizer_uri #=> String
    #   resp.identity_source #=> Array
    #   resp.identity_source[0] #=> String
    #   resp.identity_validation_expression #=> String
    #   resp.jwt_configuration.audience #=> Array
    #   resp.jwt_configuration.audience[0] #=> String
    #   resp.jwt_configuration.issuer #=> String
    #   resp.name #=> String
    #   resp.authorizer_payload_format_version #=> String
    #   resp.enable_simple_responses #=> Boolean
    #
    # @overload create_authorizer(params = {})
    # @param [Hash] params ({})
    def create_authorizer(params = {}, options = {})
      req = build_request(:create_authorizer, params)
      req.send_request(options)
    end

    # Creates a Deployment for an API.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :description
    #   A string with a length between \[0-1024\].
    #
    # @option params [String] :stage_name
    #   A string with a length between \[1-128\].
    #
    # @return [Types::CreateDeploymentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeploymentResponse#auto_deployed #auto_deployed} => Boolean
    #   * {Types::CreateDeploymentResponse#created_date #created_date} => Time
    #   * {Types::CreateDeploymentResponse#deployment_id #deployment_id} => String
    #   * {Types::CreateDeploymentResponse#deployment_status #deployment_status} => String
    #   * {Types::CreateDeploymentResponse#deployment_status_message #deployment_status_message} => String
    #   * {Types::CreateDeploymentResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment({
    #     api_id: "__string", # required
    #     description: "StringWithLengthBetween0And1024",
    #     stage_name: "StringWithLengthBetween1And128",
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_deployed #=> Boolean
    #   resp.created_date #=> Time
    #   resp.deployment_id #=> String
    #   resp.deployment_status #=> String, one of "PENDING", "FAILED", "DEPLOYED"
    #   resp.deployment_status_message #=> String
    #   resp.description #=> String
    #
    # @overload create_deployment(params = {})
    # @param [Hash] params ({})
    def create_deployment(params = {}, options = {})
      req = build_request(:create_deployment, params)
      req.send_request(options)
    end

    # Creates a domain name.
    #
    # @option params [required, String] :domain_name
    #   A string with a length between \[1-512\].
    #
    # @option params [Array<Types::DomainNameConfiguration>] :domain_name_configurations
    #   The domain name configurations.
    #
    # @option params [Types::MutualTlsAuthenticationInput] :mutual_tls_authentication
    #   If specified, API Gateway performs two-way authentication between the
    #   client and the server. Clients must present a trusted certificate to
    #   access your API.
    #
    # @option params [Hash<String,String>] :tags
    #   Represents a collection of tags associated with the resource.
    #
    # @return [Types::CreateDomainNameResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainNameResponse#api_mapping_selection_expression #api_mapping_selection_expression} => String
    #   * {Types::CreateDomainNameResponse#domain_name #domain_name} => String
    #   * {Types::CreateDomainNameResponse#domain_name_configurations #domain_name_configurations} => Array&lt;Types::DomainNameConfiguration&gt;
    #   * {Types::CreateDomainNameResponse#mutual_tls_authentication #mutual_tls_authentication} => Types::MutualTlsAuthentication
    #   * {Types::CreateDomainNameResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_name({
    #     domain_name: "StringWithLengthBetween1And512", # required
    #     domain_name_configurations: [
    #       {
    #         api_gateway_domain_name: "__string",
    #         certificate_arn: "Arn",
    #         certificate_name: "StringWithLengthBetween1And128",
    #         certificate_upload_date: Time.now,
    #         domain_name_status: "AVAILABLE", # accepts AVAILABLE, UPDATING
    #         domain_name_status_message: "__string",
    #         endpoint_type: "REGIONAL", # accepts REGIONAL, EDGE
    #         hosted_zone_id: "__string",
    #         security_policy: "TLS_1_0", # accepts TLS_1_0, TLS_1_2
    #       },
    #     ],
    #     mutual_tls_authentication: {
    #       truststore_uri: "UriWithLengthBetween1And2048",
    #       truststore_version: "StringWithLengthBetween1And64",
    #     },
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.api_mapping_selection_expression #=> String
    #   resp.domain_name #=> String
    #   resp.domain_name_configurations #=> Array
    #   resp.domain_name_configurations[0].api_gateway_domain_name #=> String
    #   resp.domain_name_configurations[0].certificate_arn #=> String
    #   resp.domain_name_configurations[0].certificate_name #=> String
    #   resp.domain_name_configurations[0].certificate_upload_date #=> Time
    #   resp.domain_name_configurations[0].domain_name_status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.domain_name_configurations[0].domain_name_status_message #=> String
    #   resp.domain_name_configurations[0].endpoint_type #=> String, one of "REGIONAL", "EDGE"
    #   resp.domain_name_configurations[0].hosted_zone_id #=> String
    #   resp.domain_name_configurations[0].security_policy #=> String, one of "TLS_1_0", "TLS_1_2"
    #   resp.mutual_tls_authentication.truststore_uri #=> String
    #   resp.mutual_tls_authentication.truststore_version #=> String
    #   resp.mutual_tls_authentication.truststore_warnings #=> Array
    #   resp.mutual_tls_authentication.truststore_warnings[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @overload create_domain_name(params = {})
    # @param [Hash] params ({})
    def create_domain_name(params = {}, options = {})
      req = build_request(:create_domain_name, params)
      req.send_request(options)
    end

    # Creates an Integration.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :connection_id
    #   A string with a length between \[1-1024\].
    #
    # @option params [String] :connection_type
    #   Represents a connection type.
    #
    # @option params [String] :content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #
    # @option params [String] :credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #
    # @option params [String] :description
    #   A string with a length between \[0-1024\].
    #
    # @option params [String] :integration_method
    #   A string with a length between \[1-64\].
    #
    # @option params [String] :integration_subtype
    #   A string with a length between \[1-128\].
    #
    # @option params [required, String] :integration_type
    #   Represents an API method integration type.
    #
    # @option params [String] :integration_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #
    # @option params [String] :passthrough_behavior
    #   Represents passthrough behavior for an integration response. Supported
    #   only for WebSocket APIs.
    #
    # @option params [String] :payload_format_version
    #   A string with a length between \[1-64\].
    #
    # @option params [Hash<String,String>] :request_parameters
    #   A key-value map specifying response parameters that are passed to the
    #   method response from the backend. The key is a method response header
    #   parameter name and the mapped value is an integration response header
    #   value, a static value enclosed within a pair of single quotes, or a
    #   JSON expression from the integration response body. The mapping key
    #   must match the pattern of method.response.header.\\\{name\\}, where
    #   name is a valid and unique header name. The mapped non-static value
    #   must match the pattern of integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #
    # @option params [Hash<String,String>] :request_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #
    # @option params [String] :template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [Integer] :timeout_in_millis
    #   An integer with a value between \[50-30000\].
    #
    # @option params [Types::TlsConfigInput] :tls_config
    #   The TLS configuration for a private integration. If you specify a TLS
    #   configuration, private integration traffic uses the HTTPS protocol.
    #   Supported only for HTTP APIs.
    #
    # @return [Types::CreateIntegrationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIntegrationResult#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::CreateIntegrationResult#connection_id #connection_id} => String
    #   * {Types::CreateIntegrationResult#connection_type #connection_type} => String
    #   * {Types::CreateIntegrationResult#content_handling_strategy #content_handling_strategy} => String
    #   * {Types::CreateIntegrationResult#credentials_arn #credentials_arn} => String
    #   * {Types::CreateIntegrationResult#description #description} => String
    #   * {Types::CreateIntegrationResult#integration_id #integration_id} => String
    #   * {Types::CreateIntegrationResult#integration_method #integration_method} => String
    #   * {Types::CreateIntegrationResult#integration_response_selection_expression #integration_response_selection_expression} => String
    #   * {Types::CreateIntegrationResult#integration_subtype #integration_subtype} => String
    #   * {Types::CreateIntegrationResult#integration_type #integration_type} => String
    #   * {Types::CreateIntegrationResult#integration_uri #integration_uri} => String
    #   * {Types::CreateIntegrationResult#passthrough_behavior #passthrough_behavior} => String
    #   * {Types::CreateIntegrationResult#payload_format_version #payload_format_version} => String
    #   * {Types::CreateIntegrationResult#request_parameters #request_parameters} => Hash&lt;String,String&gt;
    #   * {Types::CreateIntegrationResult#request_templates #request_templates} => Hash&lt;String,String&gt;
    #   * {Types::CreateIntegrationResult#template_selection_expression #template_selection_expression} => String
    #   * {Types::CreateIntegrationResult#timeout_in_millis #timeout_in_millis} => Integer
    #   * {Types::CreateIntegrationResult#tls_config #tls_config} => Types::TlsConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration({
    #     api_id: "__string", # required
    #     connection_id: "StringWithLengthBetween1And1024",
    #     connection_type: "INTERNET", # accepts INTERNET, VPC_LINK
    #     content_handling_strategy: "CONVERT_TO_BINARY", # accepts CONVERT_TO_BINARY, CONVERT_TO_TEXT
    #     credentials_arn: "Arn",
    #     description: "StringWithLengthBetween0And1024",
    #     integration_method: "StringWithLengthBetween1And64",
    #     integration_subtype: "StringWithLengthBetween1And128",
    #     integration_type: "AWS", # required, accepts AWS, HTTP, MOCK, HTTP_PROXY, AWS_PROXY
    #     integration_uri: "UriWithLengthBetween1And2048",
    #     passthrough_behavior: "WHEN_NO_MATCH", # accepts WHEN_NO_MATCH, NEVER, WHEN_NO_TEMPLATES
    #     payload_format_version: "StringWithLengthBetween1And64",
    #     request_parameters: {
    #       "__string" => "StringWithLengthBetween1And512",
    #     },
    #     request_templates: {
    #       "__string" => "StringWithLengthBetween0And32K",
    #     },
    #     template_selection_expression: "SelectionExpression",
    #     timeout_in_millis: 1,
    #     tls_config: {
    #       server_name_to_verify: "StringWithLengthBetween1And512",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.api_gateway_managed #=> Boolean
    #   resp.connection_id #=> String
    #   resp.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.content_handling_strategy #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.credentials_arn #=> String
    #   resp.description #=> String
    #   resp.integration_id #=> String
    #   resp.integration_method #=> String
    #   resp.integration_response_selection_expression #=> String
    #   resp.integration_subtype #=> String
    #   resp.integration_type #=> String, one of "AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.integration_uri #=> String
    #   resp.passthrough_behavior #=> String, one of "WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"
    #   resp.payload_format_version #=> String
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["__string"] #=> String
    #   resp.request_templates #=> Hash
    #   resp.request_templates["__string"] #=> String
    #   resp.template_selection_expression #=> String
    #   resp.timeout_in_millis #=> Integer
    #   resp.tls_config.server_name_to_verify #=> String
    #
    # @overload create_integration(params = {})
    # @param [Hash] params ({})
    def create_integration(params = {}, options = {})
      req = build_request(:create_integration, params)
      req.send_request(options)
    end

    # Creates an IntegrationResponses.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #
    # @option params [required, String] :integration_id
    #
    # @option params [required, String] :integration_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [Hash<String,String>] :response_parameters
    #   A key-value map specifying response parameters that are passed to the
    #   method response from the backend. The key is a method response header
    #   parameter name and the mapped value is an integration response header
    #   value, a static value enclosed within a pair of single quotes, or a
    #   JSON expression from the integration response body. The mapping key
    #   must match the pattern of method.response.header.\\\{name\\}, where
    #   name is a valid and unique header name. The mapped non-static value
    #   must match the pattern of integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #
    # @option params [Hash<String,String>] :response_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #
    # @option params [String] :template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @return [Types::CreateIntegrationResponseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIntegrationResponseResponse#content_handling_strategy #content_handling_strategy} => String
    #   * {Types::CreateIntegrationResponseResponse#integration_response_id #integration_response_id} => String
    #   * {Types::CreateIntegrationResponseResponse#integration_response_key #integration_response_key} => String
    #   * {Types::CreateIntegrationResponseResponse#response_parameters #response_parameters} => Hash&lt;String,String&gt;
    #   * {Types::CreateIntegrationResponseResponse#response_templates #response_templates} => Hash&lt;String,String&gt;
    #   * {Types::CreateIntegrationResponseResponse#template_selection_expression #template_selection_expression} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration_response({
    #     api_id: "__string", # required
    #     content_handling_strategy: "CONVERT_TO_BINARY", # accepts CONVERT_TO_BINARY, CONVERT_TO_TEXT
    #     integration_id: "__string", # required
    #     integration_response_key: "SelectionKey", # required
    #     response_parameters: {
    #       "__string" => "StringWithLengthBetween1And512",
    #     },
    #     response_templates: {
    #       "__string" => "StringWithLengthBetween0And32K",
    #     },
    #     template_selection_expression: "SelectionExpression",
    #   })
    #
    # @example Response structure
    #
    #   resp.content_handling_strategy #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.integration_response_id #=> String
    #   resp.integration_response_key #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["__string"] #=> String
    #   resp.response_templates #=> Hash
    #   resp.response_templates["__string"] #=> String
    #   resp.template_selection_expression #=> String
    #
    # @overload create_integration_response(params = {})
    # @param [Hash] params ({})
    def create_integration_response(params = {}, options = {})
      req = build_request(:create_integration_response, params)
      req.send_request(options)
    end

    # Creates a Model for an API.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :content_type
    #   A string with a length between \[1-256\].
    #
    # @option params [String] :description
    #   A string with a length between \[0-1024\].
    #
    # @option params [required, String] :name
    #   A string with a length between \[1-128\].
    #
    # @option params [required, String] :schema
    #   A string with a length between \[0-32768\].
    #
    # @return [Types::CreateModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelResponse#content_type #content_type} => String
    #   * {Types::CreateModelResponse#description #description} => String
    #   * {Types::CreateModelResponse#model_id #model_id} => String
    #   * {Types::CreateModelResponse#name #name} => String
    #   * {Types::CreateModelResponse#schema #schema} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model({
    #     api_id: "__string", # required
    #     content_type: "StringWithLengthBetween1And256",
    #     description: "StringWithLengthBetween0And1024",
    #     name: "StringWithLengthBetween1And128", # required
    #     schema: "StringWithLengthBetween0And32K", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.description #=> String
    #   resp.model_id #=> String
    #   resp.name #=> String
    #   resp.schema #=> String
    #
    # @overload create_model(params = {})
    # @param [Hash] params ({})
    def create_model(params = {}, options = {})
      req = build_request(:create_model, params)
      req.send_request(options)
    end

    # Creates a Route for an API.
    #
    # @option params [required, String] :api_id
    #
    # @option params [Boolean] :api_key_required
    #
    # @option params [Array<String>] :authorization_scopes
    #   A list of authorization scopes configured on a route. The scopes are
    #   used with a JWT authorizer to authorize the method invocation. The
    #   authorization works by matching the route scopes against the scopes
    #   parsed from the access token in the incoming request. The method
    #   invocation is authorized if any route scope matches a claimed scope in
    #   the access token. Otherwise, the invocation is not authorized. When
    #   the route scope is configured, the client must provide an access token
    #   instead of an identity token for authorization purposes.
    #
    # @option params [String] :authorization_type
    #   The authorization type. For WebSocket APIs, valid values are NONE for
    #   open access, AWS\_IAM for using AWS IAM permissions, and CUSTOM for
    #   using a Lambda authorizer. For HTTP APIs, valid values are NONE for
    #   open access, JWT for using JSON Web Tokens, AWS\_IAM for using AWS IAM
    #   permissions, and CUSTOM for using a Lambda authorizer.
    #
    # @option params [String] :authorizer_id
    #   The identifier.
    #
    # @option params [String] :model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [String] :operation_name
    #   A string with a length between \[1-64\].
    #
    # @option params [Hash<String,String>] :request_models
    #   The route models.
    #
    # @option params [Hash<String,Types::ParameterConstraints>] :request_parameters
    #   The route parameters.
    #
    # @option params [required, String] :route_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [String] :route_response_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [String] :target
    #   A string with a length between \[1-128\].
    #
    # @return [Types::CreateRouteResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRouteResult#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::CreateRouteResult#api_key_required #api_key_required} => Boolean
    #   * {Types::CreateRouteResult#authorization_scopes #authorization_scopes} => Array&lt;String&gt;
    #   * {Types::CreateRouteResult#authorization_type #authorization_type} => String
    #   * {Types::CreateRouteResult#authorizer_id #authorizer_id} => String
    #   * {Types::CreateRouteResult#model_selection_expression #model_selection_expression} => String
    #   * {Types::CreateRouteResult#operation_name #operation_name} => String
    #   * {Types::CreateRouteResult#request_models #request_models} => Hash&lt;String,String&gt;
    #   * {Types::CreateRouteResult#request_parameters #request_parameters} => Hash&lt;String,Types::ParameterConstraints&gt;
    #   * {Types::CreateRouteResult#route_id #route_id} => String
    #   * {Types::CreateRouteResult#route_key #route_key} => String
    #   * {Types::CreateRouteResult#route_response_selection_expression #route_response_selection_expression} => String
    #   * {Types::CreateRouteResult#target #target} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_route({
    #     api_id: "__string", # required
    #     api_key_required: false,
    #     authorization_scopes: ["StringWithLengthBetween1And64"],
    #     authorization_type: "NONE", # accepts NONE, AWS_IAM, CUSTOM, JWT
    #     authorizer_id: "Id",
    #     model_selection_expression: "SelectionExpression",
    #     operation_name: "StringWithLengthBetween1And64",
    #     request_models: {
    #       "__string" => "StringWithLengthBetween1And128",
    #     },
    #     request_parameters: {
    #       "__string" => {
    #         required: false,
    #       },
    #     },
    #     route_key: "SelectionKey", # required
    #     route_response_selection_expression: "SelectionExpression",
    #     target: "StringWithLengthBetween1And128",
    #   })
    #
    # @example Response structure
    #
    #   resp.api_gateway_managed #=> Boolean
    #   resp.api_key_required #=> Boolean
    #   resp.authorization_scopes #=> Array
    #   resp.authorization_scopes[0] #=> String
    #   resp.authorization_type #=> String, one of "NONE", "AWS_IAM", "CUSTOM", "JWT"
    #   resp.authorizer_id #=> String
    #   resp.model_selection_expression #=> String
    #   resp.operation_name #=> String
    #   resp.request_models #=> Hash
    #   resp.request_models["__string"] #=> String
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["__string"].required #=> Boolean
    #   resp.route_id #=> String
    #   resp.route_key #=> String
    #   resp.route_response_selection_expression #=> String
    #   resp.target #=> String
    #
    # @overload create_route(params = {})
    # @param [Hash] params ({})
    def create_route(params = {}, options = {})
      req = build_request(:create_route, params)
      req.send_request(options)
    end

    # Creates a RouteResponse for a Route.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [Hash<String,String>] :response_models
    #   The route models.
    #
    # @option params [Hash<String,Types::ParameterConstraints>] :response_parameters
    #   The route parameters.
    #
    # @option params [required, String] :route_id
    #
    # @option params [required, String] :route_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @return [Types::CreateRouteResponseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRouteResponseResponse#model_selection_expression #model_selection_expression} => String
    #   * {Types::CreateRouteResponseResponse#response_models #response_models} => Hash&lt;String,String&gt;
    #   * {Types::CreateRouteResponseResponse#response_parameters #response_parameters} => Hash&lt;String,Types::ParameterConstraints&gt;
    #   * {Types::CreateRouteResponseResponse#route_response_id #route_response_id} => String
    #   * {Types::CreateRouteResponseResponse#route_response_key #route_response_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_route_response({
    #     api_id: "__string", # required
    #     model_selection_expression: "SelectionExpression",
    #     response_models: {
    #       "__string" => "StringWithLengthBetween1And128",
    #     },
    #     response_parameters: {
    #       "__string" => {
    #         required: false,
    #       },
    #     },
    #     route_id: "__string", # required
    #     route_response_key: "SelectionKey", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_selection_expression #=> String
    #   resp.response_models #=> Hash
    #   resp.response_models["__string"] #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["__string"].required #=> Boolean
    #   resp.route_response_id #=> String
    #   resp.route_response_key #=> String
    #
    # @overload create_route_response(params = {})
    # @param [Hash] params ({})
    def create_route_response(params = {}, options = {})
      req = build_request(:create_route_response, params)
      req.send_request(options)
    end

    # Creates a Stage for an API.
    #
    # @option params [Types::AccessLogSettings] :access_log_settings
    #   Settings for logging access in a stage.
    #
    # @option params [required, String] :api_id
    #
    # @option params [Boolean] :auto_deploy
    #
    # @option params [String] :client_certificate_id
    #   The identifier.
    #
    # @option params [Types::RouteSettings] :default_route_settings
    #   Represents a collection of route settings.
    #
    # @option params [String] :deployment_id
    #   The identifier.
    #
    # @option params [String] :description
    #   A string with a length between \[0-1024\].
    #
    # @option params [Hash<String,Types::RouteSettings>] :route_settings
    #   The route settings map.
    #
    # @option params [required, String] :stage_name
    #   A string with a length between \[1-128\].
    #
    # @option params [Hash<String,String>] :stage_variables
    #   The stage variable map.
    #
    # @option params [Hash<String,String>] :tags
    #   Represents a collection of tags associated with the resource.
    #
    # @return [Types::CreateStageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStageResponse#access_log_settings #access_log_settings} => Types::AccessLogSettings
    #   * {Types::CreateStageResponse#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::CreateStageResponse#auto_deploy #auto_deploy} => Boolean
    #   * {Types::CreateStageResponse#client_certificate_id #client_certificate_id} => String
    #   * {Types::CreateStageResponse#created_date #created_date} => Time
    #   * {Types::CreateStageResponse#default_route_settings #default_route_settings} => Types::RouteSettings
    #   * {Types::CreateStageResponse#deployment_id #deployment_id} => String
    #   * {Types::CreateStageResponse#description #description} => String
    #   * {Types::CreateStageResponse#last_deployment_status_message #last_deployment_status_message} => String
    #   * {Types::CreateStageResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::CreateStageResponse#route_settings #route_settings} => Hash&lt;String,Types::RouteSettings&gt;
    #   * {Types::CreateStageResponse#stage_name #stage_name} => String
    #   * {Types::CreateStageResponse#stage_variables #stage_variables} => Hash&lt;String,String&gt;
    #   * {Types::CreateStageResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stage({
    #     access_log_settings: {
    #       destination_arn: "Arn",
    #       format: "StringWithLengthBetween1And1024",
    #     },
    #     api_id: "__string", # required
    #     auto_deploy: false,
    #     client_certificate_id: "Id",
    #     default_route_settings: {
    #       data_trace_enabled: false,
    #       detailed_metrics_enabled: false,
    #       logging_level: "ERROR", # accepts ERROR, INFO, OFF
    #       throttling_burst_limit: 1,
    #       throttling_rate_limit: 1.0,
    #     },
    #     deployment_id: "Id",
    #     description: "StringWithLengthBetween0And1024",
    #     route_settings: {
    #       "__string" => {
    #         data_trace_enabled: false,
    #         detailed_metrics_enabled: false,
    #         logging_level: "ERROR", # accepts ERROR, INFO, OFF
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0,
    #       },
    #     },
    #     stage_name: "StringWithLengthBetween1And128", # required
    #     stage_variables: {
    #       "__string" => "StringWithLengthBetween0And2048",
    #     },
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.access_log_settings.destination_arn #=> String
    #   resp.access_log_settings.format #=> String
    #   resp.api_gateway_managed #=> Boolean
    #   resp.auto_deploy #=> Boolean
    #   resp.client_certificate_id #=> String
    #   resp.created_date #=> Time
    #   resp.default_route_settings.data_trace_enabled #=> Boolean
    #   resp.default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.default_route_settings.logging_level #=> String, one of "ERROR", "INFO", "OFF"
    #   resp.default_route_settings.throttling_burst_limit #=> Integer
    #   resp.default_route_settings.throttling_rate_limit #=> Float
    #   resp.deployment_id #=> String
    #   resp.description #=> String
    #   resp.last_deployment_status_message #=> String
    #   resp.last_updated_date #=> Time
    #   resp.route_settings #=> Hash
    #   resp.route_settings["__string"].data_trace_enabled #=> Boolean
    #   resp.route_settings["__string"].detailed_metrics_enabled #=> Boolean
    #   resp.route_settings["__string"].logging_level #=> String, one of "ERROR", "INFO", "OFF"
    #   resp.route_settings["__string"].throttling_burst_limit #=> Integer
    #   resp.route_settings["__string"].throttling_rate_limit #=> Float
    #   resp.stage_name #=> String
    #   resp.stage_variables #=> Hash
    #   resp.stage_variables["__string"] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @overload create_stage(params = {})
    # @param [Hash] params ({})
    def create_stage(params = {}, options = {})
      req = build_request(:create_stage, params)
      req.send_request(options)
    end

    # Creates a VPC link.
    #
    # @option params [required, String] :name
    #   A string with a length between \[1-128\].
    #
    # @option params [Array<String>] :security_group_ids
    #   A list of security group IDs for the VPC link.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of subnet IDs to include in the VPC link.
    #
    # @option params [Hash<String,String>] :tags
    #   Represents a collection of tags associated with the resource.
    #
    # @return [Types::CreateVpcLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpcLinkResponse#created_date #created_date} => Time
    #   * {Types::CreateVpcLinkResponse#name #name} => String
    #   * {Types::CreateVpcLinkResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #   * {Types::CreateVpcLinkResponse#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::CreateVpcLinkResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateVpcLinkResponse#vpc_link_id #vpc_link_id} => String
    #   * {Types::CreateVpcLinkResponse#vpc_link_status #vpc_link_status} => String
    #   * {Types::CreateVpcLinkResponse#vpc_link_status_message #vpc_link_status_message} => String
    #   * {Types::CreateVpcLinkResponse#vpc_link_version #vpc_link_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_link({
    #     name: "StringWithLengthBetween1And128", # required
    #     security_group_ids: ["__string"],
    #     subnet_ids: ["__string"], # required
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.created_date #=> Time
    #   resp.name #=> String
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.vpc_link_id #=> String
    #   resp.vpc_link_status #=> String, one of "PENDING", "AVAILABLE", "DELETING", "FAILED", "INACTIVE"
    #   resp.vpc_link_status_message #=> String
    #   resp.vpc_link_version #=> String, one of "V2"
    #
    # @overload create_vpc_link(params = {})
    # @param [Hash] params ({})
    def create_vpc_link(params = {}, options = {})
      req = build_request(:create_vpc_link, params)
      req.send_request(options)
    end

    # Deletes the AccessLogSettings for a Stage. To disable access logging
    # for a Stage, delete its AccessLogSettings.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :stage_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_log_settings({
    #     api_id: "__string", # required
    #     stage_name: "__string", # required
    #   })
    #
    # @overload delete_access_log_settings(params = {})
    # @param [Hash] params ({})
    def delete_access_log_settings(params = {}, options = {})
      req = build_request(:delete_access_log_settings, params)
      req.send_request(options)
    end

    # Deletes an Api resource.
    #
    # @option params [required, String] :api_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_api({
    #     api_id: "__string", # required
    #   })
    #
    # @overload delete_api(params = {})
    # @param [Hash] params ({})
    def delete_api(params = {}, options = {})
      req = build_request(:delete_api, params)
      req.send_request(options)
    end

    # Deletes an API mapping.
    #
    # @option params [required, String] :api_mapping_id
    #
    # @option params [required, String] :domain_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_api_mapping({
    #     api_mapping_id: "__string", # required
    #     domain_name: "__string", # required
    #   })
    #
    # @overload delete_api_mapping(params = {})
    # @param [Hash] params ({})
    def delete_api_mapping(params = {}, options = {})
      req = build_request(:delete_api_mapping, params)
      req.send_request(options)
    end

    # Deletes an Authorizer.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :authorizer_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_authorizer({
    #     api_id: "__string", # required
    #     authorizer_id: "__string", # required
    #   })
    #
    # @overload delete_authorizer(params = {})
    # @param [Hash] params ({})
    def delete_authorizer(params = {}, options = {})
      req = build_request(:delete_authorizer, params)
      req.send_request(options)
    end

    # Deletes a CORS configuration.
    #
    # @option params [required, String] :api_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cors_configuration({
    #     api_id: "__string", # required
    #   })
    #
    # @overload delete_cors_configuration(params = {})
    # @param [Hash] params ({})
    def delete_cors_configuration(params = {}, options = {})
      req = build_request(:delete_cors_configuration, params)
      req.send_request(options)
    end

    # Deletes a Deployment.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :deployment_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment({
    #     api_id: "__string", # required
    #     deployment_id: "__string", # required
    #   })
    #
    # @overload delete_deployment(params = {})
    # @param [Hash] params ({})
    def delete_deployment(params = {}, options = {})
      req = build_request(:delete_deployment, params)
      req.send_request(options)
    end

    # Deletes a domain name.
    #
    # @option params [required, String] :domain_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_name({
    #     domain_name: "__string", # required
    #   })
    #
    # @overload delete_domain_name(params = {})
    # @param [Hash] params ({})
    def delete_domain_name(params = {}, options = {})
      req = build_request(:delete_domain_name, params)
      req.send_request(options)
    end

    # Deletes an Integration.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :integration_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration({
    #     api_id: "__string", # required
    #     integration_id: "__string", # required
    #   })
    #
    # @overload delete_integration(params = {})
    # @param [Hash] params ({})
    def delete_integration(params = {}, options = {})
      req = build_request(:delete_integration, params)
      req.send_request(options)
    end

    # Deletes an IntegrationResponses.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :integration_id
    #
    # @option params [required, String] :integration_response_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration_response({
    #     api_id: "__string", # required
    #     integration_id: "__string", # required
    #     integration_response_id: "__string", # required
    #   })
    #
    # @overload delete_integration_response(params = {})
    # @param [Hash] params ({})
    def delete_integration_response(params = {}, options = {})
      req = build_request(:delete_integration_response, params)
      req.send_request(options)
    end

    # Deletes a Model.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :model_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model({
    #     api_id: "__string", # required
    #     model_id: "__string", # required
    #   })
    #
    # @overload delete_model(params = {})
    # @param [Hash] params ({})
    def delete_model(params = {}, options = {})
      req = build_request(:delete_model, params)
      req.send_request(options)
    end

    # Deletes a Route.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :route_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route({
    #     api_id: "__string", # required
    #     route_id: "__string", # required
    #   })
    #
    # @overload delete_route(params = {})
    # @param [Hash] params ({})
    def delete_route(params = {}, options = {})
      req = build_request(:delete_route, params)
      req.send_request(options)
    end

    # Deletes a route request parameter.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :request_parameter_key
    #
    # @option params [required, String] :route_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route_request_parameter({
    #     api_id: "__string", # required
    #     request_parameter_key: "__string", # required
    #     route_id: "__string", # required
    #   })
    #
    # @overload delete_route_request_parameter(params = {})
    # @param [Hash] params ({})
    def delete_route_request_parameter(params = {}, options = {})
      req = build_request(:delete_route_request_parameter, params)
      req.send_request(options)
    end

    # Deletes a RouteResponse.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :route_id
    #
    # @option params [required, String] :route_response_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route_response({
    #     api_id: "__string", # required
    #     route_id: "__string", # required
    #     route_response_id: "__string", # required
    #   })
    #
    # @overload delete_route_response(params = {})
    # @param [Hash] params ({})
    def delete_route_response(params = {}, options = {})
      req = build_request(:delete_route_response, params)
      req.send_request(options)
    end

    # Deletes the RouteSettings for a stage.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :route_key
    #
    # @option params [required, String] :stage_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_route_settings({
    #     api_id: "__string", # required
    #     route_key: "__string", # required
    #     stage_name: "__string", # required
    #   })
    #
    # @overload delete_route_settings(params = {})
    # @param [Hash] params ({})
    def delete_route_settings(params = {}, options = {})
      req = build_request(:delete_route_settings, params)
      req.send_request(options)
    end

    # Deletes a Stage.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :stage_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stage({
    #     api_id: "__string", # required
    #     stage_name: "__string", # required
    #   })
    #
    # @overload delete_stage(params = {})
    # @param [Hash] params ({})
    def delete_stage(params = {}, options = {})
      req = build_request(:delete_stage, params)
      req.send_request(options)
    end

    # Deletes a VPC link.
    #
    # @option params [required, String] :vpc_link_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_link({
    #     vpc_link_id: "__string", # required
    #   })
    #
    # @overload delete_vpc_link(params = {})
    # @param [Hash] params ({})
    def delete_vpc_link(params = {}, options = {})
      req = build_request(:delete_vpc_link, params)
      req.send_request(options)
    end

    # Exports a definition of an API in a particular output format and
    # specification.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :export_version
    #
    # @option params [Boolean] :include_extensions
    #
    # @option params [required, String] :output_type
    #
    # @option params [required, String] :specification
    #
    # @option params [String] :stage_name
    #
    # @return [Types::ExportApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportApiResponse#body #body} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_api({
    #     api_id: "__string", # required
    #     export_version: "__string",
    #     include_extensions: false,
    #     output_type: "__string", # required
    #     specification: "__string", # required
    #     stage_name: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.body #=> String
    #
    # @overload export_api(params = {})
    # @param [Hash] params ({})
    def export_api(params = {}, options = {})
      req = build_request(:export_api, params)
      req.send_request(options)
    end

    # Resets all authorizer cache entries for the specified stage. Supported
    # only for HTTP API Lambda authorizers.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :stage_name
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_authorizers_cache({
    #     api_id: "__string", # required
    #     stage_name: "__string", # required
    #   })
    #
    # @overload reset_authorizers_cache(params = {})
    # @param [Hash] params ({})
    def reset_authorizers_cache(params = {}, options = {})
      req = build_request(:reset_authorizers_cache, params)
      req.send_request(options)
    end

    # Gets an Api resource.
    #
    # @option params [required, String] :api_id
    #
    # @return [Types::GetApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApiResponse#api_endpoint #api_endpoint} => String
    #   * {Types::GetApiResponse#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::GetApiResponse#api_id #api_id} => String
    #   * {Types::GetApiResponse#api_key_selection_expression #api_key_selection_expression} => String
    #   * {Types::GetApiResponse#cors_configuration #cors_configuration} => Types::Cors
    #   * {Types::GetApiResponse#created_date #created_date} => Time
    #   * {Types::GetApiResponse#description #description} => String
    #   * {Types::GetApiResponse#disable_schema_validation #disable_schema_validation} => Boolean
    #   * {Types::GetApiResponse#disable_execute_api_endpoint #disable_execute_api_endpoint} => Boolean
    #   * {Types::GetApiResponse#import_info #import_info} => Array&lt;String&gt;
    #   * {Types::GetApiResponse#name #name} => String
    #   * {Types::GetApiResponse#protocol_type #protocol_type} => String
    #   * {Types::GetApiResponse#route_selection_expression #route_selection_expression} => String
    #   * {Types::GetApiResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetApiResponse#version #version} => String
    #   * {Types::GetApiResponse#warnings #warnings} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api({
    #     api_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_endpoint #=> String
    #   resp.api_gateway_managed #=> Boolean
    #   resp.api_id #=> String
    #   resp.api_key_selection_expression #=> String
    #   resp.cors_configuration.allow_credentials #=> Boolean
    #   resp.cors_configuration.allow_headers #=> Array
    #   resp.cors_configuration.allow_headers[0] #=> String
    #   resp.cors_configuration.allow_methods #=> Array
    #   resp.cors_configuration.allow_methods[0] #=> String
    #   resp.cors_configuration.allow_origins #=> Array
    #   resp.cors_configuration.allow_origins[0] #=> String
    #   resp.cors_configuration.expose_headers #=> Array
    #   resp.cors_configuration.expose_headers[0] #=> String
    #   resp.cors_configuration.max_age #=> Integer
    #   resp.created_date #=> Time
    #   resp.description #=> String
    #   resp.disable_schema_validation #=> Boolean
    #   resp.disable_execute_api_endpoint #=> Boolean
    #   resp.import_info #=> Array
    #   resp.import_info[0] #=> String
    #   resp.name #=> String
    #   resp.protocol_type #=> String, one of "WEBSOCKET", "HTTP"
    #   resp.route_selection_expression #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.version #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #
    # @overload get_api(params = {})
    # @param [Hash] params ({})
    def get_api(params = {}, options = {})
      req = build_request(:get_api, params)
      req.send_request(options)
    end

    # Gets an API mapping.
    #
    # @option params [required, String] :api_mapping_id
    #
    # @option params [required, String] :domain_name
    #
    # @return [Types::GetApiMappingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApiMappingResponse#api_id #api_id} => String
    #   * {Types::GetApiMappingResponse#api_mapping_id #api_mapping_id} => String
    #   * {Types::GetApiMappingResponse#api_mapping_key #api_mapping_key} => String
    #   * {Types::GetApiMappingResponse#stage #stage} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_mapping({
    #     api_mapping_id: "__string", # required
    #     domain_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_id #=> String
    #   resp.api_mapping_id #=> String
    #   resp.api_mapping_key #=> String
    #   resp.stage #=> String
    #
    # @overload get_api_mapping(params = {})
    # @param [Hash] params ({})
    def get_api_mapping(params = {}, options = {})
      req = build_request(:get_api_mapping, params)
      req.send_request(options)
    end

    # Gets API mappings.
    #
    # @option params [required, String] :domain_name
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::GetApiMappingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApiMappingsResponse#items #items} => Array&lt;Types::ApiMapping&gt;
    #   * {Types::GetApiMappingsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_mappings({
    #     domain_name: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].api_id #=> String
    #   resp.items[0].api_mapping_id #=> String
    #   resp.items[0].api_mapping_key #=> String
    #   resp.items[0].stage #=> String
    #   resp.next_token #=> String
    #
    # @overload get_api_mappings(params = {})
    # @param [Hash] params ({})
    def get_api_mappings(params = {}, options = {})
      req = build_request(:get_api_mappings, params)
      req.send_request(options)
    end

    # Gets a collection of Api resources.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::GetApisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApisResponse#items #items} => Array&lt;Types::Api&gt;
    #   * {Types::GetApisResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apis({
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].api_endpoint #=> String
    #   resp.items[0].api_gateway_managed #=> Boolean
    #   resp.items[0].api_id #=> String
    #   resp.items[0].api_key_selection_expression #=> String
    #   resp.items[0].cors_configuration.allow_credentials #=> Boolean
    #   resp.items[0].cors_configuration.allow_headers #=> Array
    #   resp.items[0].cors_configuration.allow_headers[0] #=> String
    #   resp.items[0].cors_configuration.allow_methods #=> Array
    #   resp.items[0].cors_configuration.allow_methods[0] #=> String
    #   resp.items[0].cors_configuration.allow_origins #=> Array
    #   resp.items[0].cors_configuration.allow_origins[0] #=> String
    #   resp.items[0].cors_configuration.expose_headers #=> Array
    #   resp.items[0].cors_configuration.expose_headers[0] #=> String
    #   resp.items[0].cors_configuration.max_age #=> Integer
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].description #=> String
    #   resp.items[0].disable_schema_validation #=> Boolean
    #   resp.items[0].disable_execute_api_endpoint #=> Boolean
    #   resp.items[0].import_info #=> Array
    #   resp.items[0].import_info[0] #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].protocol_type #=> String, one of "WEBSOCKET", "HTTP"
    #   resp.items[0].route_selection_expression #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["__string"] #=> String
    #   resp.items[0].version #=> String
    #   resp.items[0].warnings #=> Array
    #   resp.items[0].warnings[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload get_apis(params = {})
    # @param [Hash] params ({})
    def get_apis(params = {}, options = {})
      req = build_request(:get_apis, params)
      req.send_request(options)
    end

    # Gets an Authorizer.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :authorizer_id
    #
    # @return [Types::GetAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAuthorizerResponse#authorizer_credentials_arn #authorizer_credentials_arn} => String
    #   * {Types::GetAuthorizerResponse#authorizer_id #authorizer_id} => String
    #   * {Types::GetAuthorizerResponse#authorizer_result_ttl_in_seconds #authorizer_result_ttl_in_seconds} => Integer
    #   * {Types::GetAuthorizerResponse#authorizer_type #authorizer_type} => String
    #   * {Types::GetAuthorizerResponse#authorizer_uri #authorizer_uri} => String
    #   * {Types::GetAuthorizerResponse#identity_source #identity_source} => Array&lt;String&gt;
    #   * {Types::GetAuthorizerResponse#identity_validation_expression #identity_validation_expression} => String
    #   * {Types::GetAuthorizerResponse#jwt_configuration #jwt_configuration} => Types::JWTConfiguration
    #   * {Types::GetAuthorizerResponse#name #name} => String
    #   * {Types::GetAuthorizerResponse#authorizer_payload_format_version #authorizer_payload_format_version} => String
    #   * {Types::GetAuthorizerResponse#enable_simple_responses #enable_simple_responses} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorizer({
    #     api_id: "__string", # required
    #     authorizer_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_credentials_arn #=> String
    #   resp.authorizer_id #=> String
    #   resp.authorizer_result_ttl_in_seconds #=> Integer
    #   resp.authorizer_type #=> String, one of "REQUEST", "JWT"
    #   resp.authorizer_uri #=> String
    #   resp.identity_source #=> Array
    #   resp.identity_source[0] #=> String
    #   resp.identity_validation_expression #=> String
    #   resp.jwt_configuration.audience #=> Array
    #   resp.jwt_configuration.audience[0] #=> String
    #   resp.jwt_configuration.issuer #=> String
    #   resp.name #=> String
    #   resp.authorizer_payload_format_version #=> String
    #   resp.enable_simple_responses #=> Boolean
    #
    # @overload get_authorizer(params = {})
    # @param [Hash] params ({})
    def get_authorizer(params = {}, options = {})
      req = build_request(:get_authorizer, params)
      req.send_request(options)
    end

    # Gets the Authorizers for an API.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::GetAuthorizersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAuthorizersResponse#items #items} => Array&lt;Types::Authorizer&gt;
    #   * {Types::GetAuthorizersResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorizers({
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].authorizer_credentials_arn #=> String
    #   resp.items[0].authorizer_id #=> String
    #   resp.items[0].authorizer_result_ttl_in_seconds #=> Integer
    #   resp.items[0].authorizer_type #=> String, one of "REQUEST", "JWT"
    #   resp.items[0].authorizer_uri #=> String
    #   resp.items[0].identity_source #=> Array
    #   resp.items[0].identity_source[0] #=> String
    #   resp.items[0].identity_validation_expression #=> String
    #   resp.items[0].jwt_configuration.audience #=> Array
    #   resp.items[0].jwt_configuration.audience[0] #=> String
    #   resp.items[0].jwt_configuration.issuer #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].authorizer_payload_format_version #=> String
    #   resp.items[0].enable_simple_responses #=> Boolean
    #   resp.next_token #=> String
    #
    # @overload get_authorizers(params = {})
    # @param [Hash] params ({})
    def get_authorizers(params = {}, options = {})
      req = build_request(:get_authorizers, params)
      req.send_request(options)
    end

    # Gets a Deployment.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :deployment_id
    #
    # @return [Types::GetDeploymentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentResponse#auto_deployed #auto_deployed} => Boolean
    #   * {Types::GetDeploymentResponse#created_date #created_date} => Time
    #   * {Types::GetDeploymentResponse#deployment_id #deployment_id} => String
    #   * {Types::GetDeploymentResponse#deployment_status #deployment_status} => String
    #   * {Types::GetDeploymentResponse#deployment_status_message #deployment_status_message} => String
    #   * {Types::GetDeploymentResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment({
    #     api_id: "__string", # required
    #     deployment_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_deployed #=> Boolean
    #   resp.created_date #=> Time
    #   resp.deployment_id #=> String
    #   resp.deployment_status #=> String, one of "PENDING", "FAILED", "DEPLOYED"
    #   resp.deployment_status_message #=> String
    #   resp.description #=> String
    #
    # @overload get_deployment(params = {})
    # @param [Hash] params ({})
    def get_deployment(params = {}, options = {})
      req = build_request(:get_deployment, params)
      req.send_request(options)
    end

    # Gets the Deployments for an API.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::GetDeploymentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentsResponse#items #items} => Array&lt;Types::Deployment&gt;
    #   * {Types::GetDeploymentsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployments({
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].auto_deployed #=> Boolean
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].deployment_id #=> String
    #   resp.items[0].deployment_status #=> String, one of "PENDING", "FAILED", "DEPLOYED"
    #   resp.items[0].deployment_status_message #=> String
    #   resp.items[0].description #=> String
    #   resp.next_token #=> String
    #
    # @overload get_deployments(params = {})
    # @param [Hash] params ({})
    def get_deployments(params = {}, options = {})
      req = build_request(:get_deployments, params)
      req.send_request(options)
    end

    # Gets a domain name.
    #
    # @option params [required, String] :domain_name
    #
    # @return [Types::GetDomainNameResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainNameResponse#api_mapping_selection_expression #api_mapping_selection_expression} => String
    #   * {Types::GetDomainNameResponse#domain_name #domain_name} => String
    #   * {Types::GetDomainNameResponse#domain_name_configurations #domain_name_configurations} => Array&lt;Types::DomainNameConfiguration&gt;
    #   * {Types::GetDomainNameResponse#mutual_tls_authentication #mutual_tls_authentication} => Types::MutualTlsAuthentication
    #   * {Types::GetDomainNameResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_name({
    #     domain_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_mapping_selection_expression #=> String
    #   resp.domain_name #=> String
    #   resp.domain_name_configurations #=> Array
    #   resp.domain_name_configurations[0].api_gateway_domain_name #=> String
    #   resp.domain_name_configurations[0].certificate_arn #=> String
    #   resp.domain_name_configurations[0].certificate_name #=> String
    #   resp.domain_name_configurations[0].certificate_upload_date #=> Time
    #   resp.domain_name_configurations[0].domain_name_status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.domain_name_configurations[0].domain_name_status_message #=> String
    #   resp.domain_name_configurations[0].endpoint_type #=> String, one of "REGIONAL", "EDGE"
    #   resp.domain_name_configurations[0].hosted_zone_id #=> String
    #   resp.domain_name_configurations[0].security_policy #=> String, one of "TLS_1_0", "TLS_1_2"
    #   resp.mutual_tls_authentication.truststore_uri #=> String
    #   resp.mutual_tls_authentication.truststore_version #=> String
    #   resp.mutual_tls_authentication.truststore_warnings #=> Array
    #   resp.mutual_tls_authentication.truststore_warnings[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @overload get_domain_name(params = {})
    # @param [Hash] params ({})
    def get_domain_name(params = {}, options = {})
      req = build_request(:get_domain_name, params)
      req.send_request(options)
    end

    # Gets the domain names for an AWS account.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::GetDomainNamesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainNamesResponse#items #items} => Array&lt;Types::DomainName&gt;
    #   * {Types::GetDomainNamesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_names({
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].api_mapping_selection_expression #=> String
    #   resp.items[0].domain_name #=> String
    #   resp.items[0].domain_name_configurations #=> Array
    #   resp.items[0].domain_name_configurations[0].api_gateway_domain_name #=> String
    #   resp.items[0].domain_name_configurations[0].certificate_arn #=> String
    #   resp.items[0].domain_name_configurations[0].certificate_name #=> String
    #   resp.items[0].domain_name_configurations[0].certificate_upload_date #=> Time
    #   resp.items[0].domain_name_configurations[0].domain_name_status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.items[0].domain_name_configurations[0].domain_name_status_message #=> String
    #   resp.items[0].domain_name_configurations[0].endpoint_type #=> String, one of "REGIONAL", "EDGE"
    #   resp.items[0].domain_name_configurations[0].hosted_zone_id #=> String
    #   resp.items[0].domain_name_configurations[0].security_policy #=> String, one of "TLS_1_0", "TLS_1_2"
    #   resp.items[0].mutual_tls_authentication.truststore_uri #=> String
    #   resp.items[0].mutual_tls_authentication.truststore_version #=> String
    #   resp.items[0].mutual_tls_authentication.truststore_warnings #=> Array
    #   resp.items[0].mutual_tls_authentication.truststore_warnings[0] #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @overload get_domain_names(params = {})
    # @param [Hash] params ({})
    def get_domain_names(params = {}, options = {})
      req = build_request(:get_domain_names, params)
      req.send_request(options)
    end

    # Gets an Integration.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :integration_id
    #
    # @return [Types::GetIntegrationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntegrationResult#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::GetIntegrationResult#connection_id #connection_id} => String
    #   * {Types::GetIntegrationResult#connection_type #connection_type} => String
    #   * {Types::GetIntegrationResult#content_handling_strategy #content_handling_strategy} => String
    #   * {Types::GetIntegrationResult#credentials_arn #credentials_arn} => String
    #   * {Types::GetIntegrationResult#description #description} => String
    #   * {Types::GetIntegrationResult#integration_id #integration_id} => String
    #   * {Types::GetIntegrationResult#integration_method #integration_method} => String
    #   * {Types::GetIntegrationResult#integration_response_selection_expression #integration_response_selection_expression} => String
    #   * {Types::GetIntegrationResult#integration_subtype #integration_subtype} => String
    #   * {Types::GetIntegrationResult#integration_type #integration_type} => String
    #   * {Types::GetIntegrationResult#integration_uri #integration_uri} => String
    #   * {Types::GetIntegrationResult#passthrough_behavior #passthrough_behavior} => String
    #   * {Types::GetIntegrationResult#payload_format_version #payload_format_version} => String
    #   * {Types::GetIntegrationResult#request_parameters #request_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetIntegrationResult#request_templates #request_templates} => Hash&lt;String,String&gt;
    #   * {Types::GetIntegrationResult#template_selection_expression #template_selection_expression} => String
    #   * {Types::GetIntegrationResult#timeout_in_millis #timeout_in_millis} => Integer
    #   * {Types::GetIntegrationResult#tls_config #tls_config} => Types::TlsConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration({
    #     api_id: "__string", # required
    #     integration_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_gateway_managed #=> Boolean
    #   resp.connection_id #=> String
    #   resp.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.content_handling_strategy #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.credentials_arn #=> String
    #   resp.description #=> String
    #   resp.integration_id #=> String
    #   resp.integration_method #=> String
    #   resp.integration_response_selection_expression #=> String
    #   resp.integration_subtype #=> String
    #   resp.integration_type #=> String, one of "AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.integration_uri #=> String
    #   resp.passthrough_behavior #=> String, one of "WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"
    #   resp.payload_format_version #=> String
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["__string"] #=> String
    #   resp.request_templates #=> Hash
    #   resp.request_templates["__string"] #=> String
    #   resp.template_selection_expression #=> String
    #   resp.timeout_in_millis #=> Integer
    #   resp.tls_config.server_name_to_verify #=> String
    #
    # @overload get_integration(params = {})
    # @param [Hash] params ({})
    def get_integration(params = {}, options = {})
      req = build_request(:get_integration, params)
      req.send_request(options)
    end

    # Gets an IntegrationResponses.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :integration_id
    #
    # @option params [required, String] :integration_response_id
    #
    # @return [Types::GetIntegrationResponseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntegrationResponseResponse#content_handling_strategy #content_handling_strategy} => String
    #   * {Types::GetIntegrationResponseResponse#integration_response_id #integration_response_id} => String
    #   * {Types::GetIntegrationResponseResponse#integration_response_key #integration_response_key} => String
    #   * {Types::GetIntegrationResponseResponse#response_parameters #response_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetIntegrationResponseResponse#response_templates #response_templates} => Hash&lt;String,String&gt;
    #   * {Types::GetIntegrationResponseResponse#template_selection_expression #template_selection_expression} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration_response({
    #     api_id: "__string", # required
    #     integration_id: "__string", # required
    #     integration_response_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_handling_strategy #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.integration_response_id #=> String
    #   resp.integration_response_key #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["__string"] #=> String
    #   resp.response_templates #=> Hash
    #   resp.response_templates["__string"] #=> String
    #   resp.template_selection_expression #=> String
    #
    # @overload get_integration_response(params = {})
    # @param [Hash] params ({})
    def get_integration_response(params = {}, options = {})
      req = build_request(:get_integration_response, params)
      req.send_request(options)
    end

    # Gets the IntegrationResponses for an Integration.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :integration_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::GetIntegrationResponsesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntegrationResponsesResponse#items #items} => Array&lt;Types::IntegrationResponse&gt;
    #   * {Types::GetIntegrationResponsesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration_responses({
    #     api_id: "__string", # required
    #     integration_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].content_handling_strategy #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.items[0].integration_response_id #=> String
    #   resp.items[0].integration_response_key #=> String
    #   resp.items[0].response_parameters #=> Hash
    #   resp.items[0].response_parameters["__string"] #=> String
    #   resp.items[0].response_templates #=> Hash
    #   resp.items[0].response_templates["__string"] #=> String
    #   resp.items[0].template_selection_expression #=> String
    #   resp.next_token #=> String
    #
    # @overload get_integration_responses(params = {})
    # @param [Hash] params ({})
    def get_integration_responses(params = {}, options = {})
      req = build_request(:get_integration_responses, params)
      req.send_request(options)
    end

    # Gets the Integrations for an API.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::GetIntegrationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntegrationsResponse#items #items} => Array&lt;Types::Integration&gt;
    #   * {Types::GetIntegrationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integrations({
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].api_gateway_managed #=> Boolean
    #   resp.items[0].connection_id #=> String
    #   resp.items[0].connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.items[0].content_handling_strategy #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.items[0].credentials_arn #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].integration_id #=> String
    #   resp.items[0].integration_method #=> String
    #   resp.items[0].integration_response_selection_expression #=> String
    #   resp.items[0].integration_subtype #=> String
    #   resp.items[0].integration_type #=> String, one of "AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.items[0].integration_uri #=> String
    #   resp.items[0].passthrough_behavior #=> String, one of "WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"
    #   resp.items[0].payload_format_version #=> String
    #   resp.items[0].request_parameters #=> Hash
    #   resp.items[0].request_parameters["__string"] #=> String
    #   resp.items[0].request_templates #=> Hash
    #   resp.items[0].request_templates["__string"] #=> String
    #   resp.items[0].template_selection_expression #=> String
    #   resp.items[0].timeout_in_millis #=> Integer
    #   resp.items[0].tls_config.server_name_to_verify #=> String
    #   resp.next_token #=> String
    #
    # @overload get_integrations(params = {})
    # @param [Hash] params ({})
    def get_integrations(params = {}, options = {})
      req = build_request(:get_integrations, params)
      req.send_request(options)
    end

    # Gets a Model.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :model_id
    #
    # @return [Types::GetModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelResponse#content_type #content_type} => String
    #   * {Types::GetModelResponse#description #description} => String
    #   * {Types::GetModelResponse#model_id #model_id} => String
    #   * {Types::GetModelResponse#name #name} => String
    #   * {Types::GetModelResponse#schema #schema} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model({
    #     api_id: "__string", # required
    #     model_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.description #=> String
    #   resp.model_id #=> String
    #   resp.name #=> String
    #   resp.schema #=> String
    #
    # @overload get_model(params = {})
    # @param [Hash] params ({})
    def get_model(params = {}, options = {})
      req = build_request(:get_model, params)
      req.send_request(options)
    end

    # Gets a model template.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :model_id
    #
    # @return [Types::GetModelTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelTemplateResponse#value #value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_template({
    #     api_id: "__string", # required
    #     model_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.value #=> String
    #
    # @overload get_model_template(params = {})
    # @param [Hash] params ({})
    def get_model_template(params = {}, options = {})
      req = build_request(:get_model_template, params)
      req.send_request(options)
    end

    # Gets the Models for an API.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::GetModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelsResponse#items #items} => Array&lt;Types::Model&gt;
    #   * {Types::GetModelsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_models({
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].content_type #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].model_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].schema #=> String
    #   resp.next_token #=> String
    #
    # @overload get_models(params = {})
    # @param [Hash] params ({})
    def get_models(params = {}, options = {})
      req = build_request(:get_models, params)
      req.send_request(options)
    end

    # Gets a Route.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :route_id
    #
    # @return [Types::GetRouteResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRouteResult#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::GetRouteResult#api_key_required #api_key_required} => Boolean
    #   * {Types::GetRouteResult#authorization_scopes #authorization_scopes} => Array&lt;String&gt;
    #   * {Types::GetRouteResult#authorization_type #authorization_type} => String
    #   * {Types::GetRouteResult#authorizer_id #authorizer_id} => String
    #   * {Types::GetRouteResult#model_selection_expression #model_selection_expression} => String
    #   * {Types::GetRouteResult#operation_name #operation_name} => String
    #   * {Types::GetRouteResult#request_models #request_models} => Hash&lt;String,String&gt;
    #   * {Types::GetRouteResult#request_parameters #request_parameters} => Hash&lt;String,Types::ParameterConstraints&gt;
    #   * {Types::GetRouteResult#route_id #route_id} => String
    #   * {Types::GetRouteResult#route_key #route_key} => String
    #   * {Types::GetRouteResult#route_response_selection_expression #route_response_selection_expression} => String
    #   * {Types::GetRouteResult#target #target} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_route({
    #     api_id: "__string", # required
    #     route_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_gateway_managed #=> Boolean
    #   resp.api_key_required #=> Boolean
    #   resp.authorization_scopes #=> Array
    #   resp.authorization_scopes[0] #=> String
    #   resp.authorization_type #=> String, one of "NONE", "AWS_IAM", "CUSTOM", "JWT"
    #   resp.authorizer_id #=> String
    #   resp.model_selection_expression #=> String
    #   resp.operation_name #=> String
    #   resp.request_models #=> Hash
    #   resp.request_models["__string"] #=> String
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["__string"].required #=> Boolean
    #   resp.route_id #=> String
    #   resp.route_key #=> String
    #   resp.route_response_selection_expression #=> String
    #   resp.target #=> String
    #
    # @overload get_route(params = {})
    # @param [Hash] params ({})
    def get_route(params = {}, options = {})
      req = build_request(:get_route, params)
      req.send_request(options)
    end

    # Gets a RouteResponse.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :route_id
    #
    # @option params [required, String] :route_response_id
    #
    # @return [Types::GetRouteResponseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRouteResponseResponse#model_selection_expression #model_selection_expression} => String
    #   * {Types::GetRouteResponseResponse#response_models #response_models} => Hash&lt;String,String&gt;
    #   * {Types::GetRouteResponseResponse#response_parameters #response_parameters} => Hash&lt;String,Types::ParameterConstraints&gt;
    #   * {Types::GetRouteResponseResponse#route_response_id #route_response_id} => String
    #   * {Types::GetRouteResponseResponse#route_response_key #route_response_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_route_response({
    #     api_id: "__string", # required
    #     route_id: "__string", # required
    #     route_response_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_selection_expression #=> String
    #   resp.response_models #=> Hash
    #   resp.response_models["__string"] #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["__string"].required #=> Boolean
    #   resp.route_response_id #=> String
    #   resp.route_response_key #=> String
    #
    # @overload get_route_response(params = {})
    # @param [Hash] params ({})
    def get_route_response(params = {}, options = {})
      req = build_request(:get_route_response, params)
      req.send_request(options)
    end

    # Gets the RouteResponses for a Route.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [required, String] :route_id
    #
    # @return [Types::GetRouteResponsesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRouteResponsesResponse#items #items} => Array&lt;Types::RouteResponse&gt;
    #   * {Types::GetRouteResponsesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_route_responses({
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #     route_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].model_selection_expression #=> String
    #   resp.items[0].response_models #=> Hash
    #   resp.items[0].response_models["__string"] #=> String
    #   resp.items[0].response_parameters #=> Hash
    #   resp.items[0].response_parameters["__string"].required #=> Boolean
    #   resp.items[0].route_response_id #=> String
    #   resp.items[0].route_response_key #=> String
    #   resp.next_token #=> String
    #
    # @overload get_route_responses(params = {})
    # @param [Hash] params ({})
    def get_route_responses(params = {}, options = {})
      req = build_request(:get_route_responses, params)
      req.send_request(options)
    end

    # Gets the Routes for an API.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::GetRoutesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRoutesResponse#items #items} => Array&lt;Types::Route&gt;
    #   * {Types::GetRoutesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_routes({
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].api_gateway_managed #=> Boolean
    #   resp.items[0].api_key_required #=> Boolean
    #   resp.items[0].authorization_scopes #=> Array
    #   resp.items[0].authorization_scopes[0] #=> String
    #   resp.items[0].authorization_type #=> String, one of "NONE", "AWS_IAM", "CUSTOM", "JWT"
    #   resp.items[0].authorizer_id #=> String
    #   resp.items[0].model_selection_expression #=> String
    #   resp.items[0].operation_name #=> String
    #   resp.items[0].request_models #=> Hash
    #   resp.items[0].request_models["__string"] #=> String
    #   resp.items[0].request_parameters #=> Hash
    #   resp.items[0].request_parameters["__string"].required #=> Boolean
    #   resp.items[0].route_id #=> String
    #   resp.items[0].route_key #=> String
    #   resp.items[0].route_response_selection_expression #=> String
    #   resp.items[0].target #=> String
    #   resp.next_token #=> String
    #
    # @overload get_routes(params = {})
    # @param [Hash] params ({})
    def get_routes(params = {}, options = {})
      req = build_request(:get_routes, params)
      req.send_request(options)
    end

    # Gets a Stage.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :stage_name
    #
    # @return [Types::GetStageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStageResponse#access_log_settings #access_log_settings} => Types::AccessLogSettings
    #   * {Types::GetStageResponse#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::GetStageResponse#auto_deploy #auto_deploy} => Boolean
    #   * {Types::GetStageResponse#client_certificate_id #client_certificate_id} => String
    #   * {Types::GetStageResponse#created_date #created_date} => Time
    #   * {Types::GetStageResponse#default_route_settings #default_route_settings} => Types::RouteSettings
    #   * {Types::GetStageResponse#deployment_id #deployment_id} => String
    #   * {Types::GetStageResponse#description #description} => String
    #   * {Types::GetStageResponse#last_deployment_status_message #last_deployment_status_message} => String
    #   * {Types::GetStageResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::GetStageResponse#route_settings #route_settings} => Hash&lt;String,Types::RouteSettings&gt;
    #   * {Types::GetStageResponse#stage_name #stage_name} => String
    #   * {Types::GetStageResponse#stage_variables #stage_variables} => Hash&lt;String,String&gt;
    #   * {Types::GetStageResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stage({
    #     api_id: "__string", # required
    #     stage_name: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_log_settings.destination_arn #=> String
    #   resp.access_log_settings.format #=> String
    #   resp.api_gateway_managed #=> Boolean
    #   resp.auto_deploy #=> Boolean
    #   resp.client_certificate_id #=> String
    #   resp.created_date #=> Time
    #   resp.default_route_settings.data_trace_enabled #=> Boolean
    #   resp.default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.default_route_settings.logging_level #=> String, one of "ERROR", "INFO", "OFF"
    #   resp.default_route_settings.throttling_burst_limit #=> Integer
    #   resp.default_route_settings.throttling_rate_limit #=> Float
    #   resp.deployment_id #=> String
    #   resp.description #=> String
    #   resp.last_deployment_status_message #=> String
    #   resp.last_updated_date #=> Time
    #   resp.route_settings #=> Hash
    #   resp.route_settings["__string"].data_trace_enabled #=> Boolean
    #   resp.route_settings["__string"].detailed_metrics_enabled #=> Boolean
    #   resp.route_settings["__string"].logging_level #=> String, one of "ERROR", "INFO", "OFF"
    #   resp.route_settings["__string"].throttling_burst_limit #=> Integer
    #   resp.route_settings["__string"].throttling_rate_limit #=> Float
    #   resp.stage_name #=> String
    #   resp.stage_variables #=> Hash
    #   resp.stage_variables["__string"] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @overload get_stage(params = {})
    # @param [Hash] params ({})
    def get_stage(params = {}, options = {})
      req = build_request(:get_stage, params)
      req.send_request(options)
    end

    # Gets the Stages for an API.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::GetStagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStagesResponse#items #items} => Array&lt;Types::Stage&gt;
    #   * {Types::GetStagesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stages({
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].access_log_settings.destination_arn #=> String
    #   resp.items[0].access_log_settings.format #=> String
    #   resp.items[0].api_gateway_managed #=> Boolean
    #   resp.items[0].auto_deploy #=> Boolean
    #   resp.items[0].client_certificate_id #=> String
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].default_route_settings.data_trace_enabled #=> Boolean
    #   resp.items[0].default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.items[0].default_route_settings.logging_level #=> String, one of "ERROR", "INFO", "OFF"
    #   resp.items[0].default_route_settings.throttling_burst_limit #=> Integer
    #   resp.items[0].default_route_settings.throttling_rate_limit #=> Float
    #   resp.items[0].deployment_id #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].last_deployment_status_message #=> String
    #   resp.items[0].last_updated_date #=> Time
    #   resp.items[0].route_settings #=> Hash
    #   resp.items[0].route_settings["__string"].data_trace_enabled #=> Boolean
    #   resp.items[0].route_settings["__string"].detailed_metrics_enabled #=> Boolean
    #   resp.items[0].route_settings["__string"].logging_level #=> String, one of "ERROR", "INFO", "OFF"
    #   resp.items[0].route_settings["__string"].throttling_burst_limit #=> Integer
    #   resp.items[0].route_settings["__string"].throttling_rate_limit #=> Float
    #   resp.items[0].stage_name #=> String
    #   resp.items[0].stage_variables #=> Hash
    #   resp.items[0].stage_variables["__string"] #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @overload get_stages(params = {})
    # @param [Hash] params ({})
    def get_stages(params = {}, options = {})
      req = build_request(:get_stages, params)
      req.send_request(options)
    end

    # Gets a collection of Tag resources.
    #
    # @option params [required, String] :resource_arn
    #
    # @return [Types::GetTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTagsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @overload get_tags(params = {})
    # @param [Hash] params ({})
    def get_tags(params = {}, options = {})
      req = build_request(:get_tags, params)
      req.send_request(options)
    end

    # Gets a VPC link.
    #
    # @option params [required, String] :vpc_link_id
    #
    # @return [Types::GetVpcLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVpcLinkResponse#created_date #created_date} => Time
    #   * {Types::GetVpcLinkResponse#name #name} => String
    #   * {Types::GetVpcLinkResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #   * {Types::GetVpcLinkResponse#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::GetVpcLinkResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetVpcLinkResponse#vpc_link_id #vpc_link_id} => String
    #   * {Types::GetVpcLinkResponse#vpc_link_status #vpc_link_status} => String
    #   * {Types::GetVpcLinkResponse#vpc_link_status_message #vpc_link_status_message} => String
    #   * {Types::GetVpcLinkResponse#vpc_link_version #vpc_link_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpc_link({
    #     vpc_link_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_date #=> Time
    #   resp.name #=> String
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.vpc_link_id #=> String
    #   resp.vpc_link_status #=> String, one of "PENDING", "AVAILABLE", "DELETING", "FAILED", "INACTIVE"
    #   resp.vpc_link_status_message #=> String
    #   resp.vpc_link_version #=> String, one of "V2"
    #
    # @overload get_vpc_link(params = {})
    # @param [Hash] params ({})
    def get_vpc_link(params = {}, options = {})
      req = build_request(:get_vpc_link, params)
      req.send_request(options)
    end

    # Gets a collection of VPC links.
    #
    # @option params [String] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::GetVpcLinksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVpcLinksResponse#items #items} => Array&lt;Types::VpcLink&gt;
    #   * {Types::GetVpcLinksResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpc_links({
    #     max_results: "__string",
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].name #=> String
    #   resp.items[0].security_group_ids #=> Array
    #   resp.items[0].security_group_ids[0] #=> String
    #   resp.items[0].subnet_ids #=> Array
    #   resp.items[0].subnet_ids[0] #=> String
    #   resp.items[0].tags #=> Hash
    #   resp.items[0].tags["__string"] #=> String
    #   resp.items[0].vpc_link_id #=> String
    #   resp.items[0].vpc_link_status #=> String, one of "PENDING", "AVAILABLE", "DELETING", "FAILED", "INACTIVE"
    #   resp.items[0].vpc_link_status_message #=> String
    #   resp.items[0].vpc_link_version #=> String, one of "V2"
    #   resp.next_token #=> String
    #
    # @overload get_vpc_links(params = {})
    # @param [Hash] params ({})
    def get_vpc_links(params = {}, options = {})
      req = build_request(:get_vpc_links, params)
      req.send_request(options)
    end

    # Imports an API.
    #
    # @option params [String] :basepath
    #
    # @option params [required, String] :body
    #
    # @option params [Boolean] :fail_on_warnings
    #
    # @return [Types::ImportApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportApiResponse#api_endpoint #api_endpoint} => String
    #   * {Types::ImportApiResponse#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::ImportApiResponse#api_id #api_id} => String
    #   * {Types::ImportApiResponse#api_key_selection_expression #api_key_selection_expression} => String
    #   * {Types::ImportApiResponse#cors_configuration #cors_configuration} => Types::Cors
    #   * {Types::ImportApiResponse#created_date #created_date} => Time
    #   * {Types::ImportApiResponse#description #description} => String
    #   * {Types::ImportApiResponse#disable_schema_validation #disable_schema_validation} => Boolean
    #   * {Types::ImportApiResponse#disable_execute_api_endpoint #disable_execute_api_endpoint} => Boolean
    #   * {Types::ImportApiResponse#import_info #import_info} => Array&lt;String&gt;
    #   * {Types::ImportApiResponse#name #name} => String
    #   * {Types::ImportApiResponse#protocol_type #protocol_type} => String
    #   * {Types::ImportApiResponse#route_selection_expression #route_selection_expression} => String
    #   * {Types::ImportApiResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::ImportApiResponse#version #version} => String
    #   * {Types::ImportApiResponse#warnings #warnings} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_api({
    #     basepath: "__string",
    #     body: "__string", # required
    #     fail_on_warnings: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.api_endpoint #=> String
    #   resp.api_gateway_managed #=> Boolean
    #   resp.api_id #=> String
    #   resp.api_key_selection_expression #=> String
    #   resp.cors_configuration.allow_credentials #=> Boolean
    #   resp.cors_configuration.allow_headers #=> Array
    #   resp.cors_configuration.allow_headers[0] #=> String
    #   resp.cors_configuration.allow_methods #=> Array
    #   resp.cors_configuration.allow_methods[0] #=> String
    #   resp.cors_configuration.allow_origins #=> Array
    #   resp.cors_configuration.allow_origins[0] #=> String
    #   resp.cors_configuration.expose_headers #=> Array
    #   resp.cors_configuration.expose_headers[0] #=> String
    #   resp.cors_configuration.max_age #=> Integer
    #   resp.created_date #=> Time
    #   resp.description #=> String
    #   resp.disable_schema_validation #=> Boolean
    #   resp.disable_execute_api_endpoint #=> Boolean
    #   resp.import_info #=> Array
    #   resp.import_info[0] #=> String
    #   resp.name #=> String
    #   resp.protocol_type #=> String, one of "WEBSOCKET", "HTTP"
    #   resp.route_selection_expression #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.version #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #
    # @overload import_api(params = {})
    # @param [Hash] params ({})
    def import_api(params = {}, options = {})
      req = build_request(:import_api, params)
      req.send_request(options)
    end

    # Puts an Api resource.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :basepath
    #
    # @option params [required, String] :body
    #
    # @option params [Boolean] :fail_on_warnings
    #
    # @return [Types::ReimportApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReimportApiResponse#api_endpoint #api_endpoint} => String
    #   * {Types::ReimportApiResponse#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::ReimportApiResponse#api_id #api_id} => String
    #   * {Types::ReimportApiResponse#api_key_selection_expression #api_key_selection_expression} => String
    #   * {Types::ReimportApiResponse#cors_configuration #cors_configuration} => Types::Cors
    #   * {Types::ReimportApiResponse#created_date #created_date} => Time
    #   * {Types::ReimportApiResponse#description #description} => String
    #   * {Types::ReimportApiResponse#disable_schema_validation #disable_schema_validation} => Boolean
    #   * {Types::ReimportApiResponse#disable_execute_api_endpoint #disable_execute_api_endpoint} => Boolean
    #   * {Types::ReimportApiResponse#import_info #import_info} => Array&lt;String&gt;
    #   * {Types::ReimportApiResponse#name #name} => String
    #   * {Types::ReimportApiResponse#protocol_type #protocol_type} => String
    #   * {Types::ReimportApiResponse#route_selection_expression #route_selection_expression} => String
    #   * {Types::ReimportApiResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::ReimportApiResponse#version #version} => String
    #   * {Types::ReimportApiResponse#warnings #warnings} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reimport_api({
    #     api_id: "__string", # required
    #     basepath: "__string",
    #     body: "__string", # required
    #     fail_on_warnings: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.api_endpoint #=> String
    #   resp.api_gateway_managed #=> Boolean
    #   resp.api_id #=> String
    #   resp.api_key_selection_expression #=> String
    #   resp.cors_configuration.allow_credentials #=> Boolean
    #   resp.cors_configuration.allow_headers #=> Array
    #   resp.cors_configuration.allow_headers[0] #=> String
    #   resp.cors_configuration.allow_methods #=> Array
    #   resp.cors_configuration.allow_methods[0] #=> String
    #   resp.cors_configuration.allow_origins #=> Array
    #   resp.cors_configuration.allow_origins[0] #=> String
    #   resp.cors_configuration.expose_headers #=> Array
    #   resp.cors_configuration.expose_headers[0] #=> String
    #   resp.cors_configuration.max_age #=> Integer
    #   resp.created_date #=> Time
    #   resp.description #=> String
    #   resp.disable_schema_validation #=> Boolean
    #   resp.disable_execute_api_endpoint #=> Boolean
    #   resp.import_info #=> Array
    #   resp.import_info[0] #=> String
    #   resp.name #=> String
    #   resp.protocol_type #=> String, one of "WEBSOCKET", "HTTP"
    #   resp.route_selection_expression #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.version #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #
    # @overload reimport_api(params = {})
    # @param [Hash] params ({})
    def reimport_api(params = {}, options = {})
      req = build_request(:reimport_api, params)
      req.send_request(options)
    end

    # Creates a new Tag resource to represent a tag.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [Hash<String,String>] :tags
    #   Represents a collection of tags associated with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "__string", # required
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600",
    #     },
    #   })
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes a Tag.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Array<String>] :tag_keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   })
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an Api resource.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :api_key_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [Types::Cors] :cors_configuration
    #   Represents a CORS configuration. Supported only for HTTP APIs. See
    #   [Configuring CORS][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html
    #
    # @option params [String] :credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #
    # @option params [String] :description
    #   A string with a length between \[0-1024\].
    #
    # @option params [Boolean] :disable_schema_validation
    #
    # @option params [Boolean] :disable_execute_api_endpoint
    #
    # @option params [String] :name
    #   A string with a length between \[1-128\].
    #
    # @option params [String] :route_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [String] :route_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [String] :target
    #   A string representation of a URI with a length between \[1-2048\].
    #
    # @option params [String] :version
    #   A string with a length between \[1-64\].
    #
    # @return [Types::UpdateApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApiResponse#api_endpoint #api_endpoint} => String
    #   * {Types::UpdateApiResponse#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::UpdateApiResponse#api_id #api_id} => String
    #   * {Types::UpdateApiResponse#api_key_selection_expression #api_key_selection_expression} => String
    #   * {Types::UpdateApiResponse#cors_configuration #cors_configuration} => Types::Cors
    #   * {Types::UpdateApiResponse#created_date #created_date} => Time
    #   * {Types::UpdateApiResponse#description #description} => String
    #   * {Types::UpdateApiResponse#disable_schema_validation #disable_schema_validation} => Boolean
    #   * {Types::UpdateApiResponse#disable_execute_api_endpoint #disable_execute_api_endpoint} => Boolean
    #   * {Types::UpdateApiResponse#import_info #import_info} => Array&lt;String&gt;
    #   * {Types::UpdateApiResponse#name #name} => String
    #   * {Types::UpdateApiResponse#protocol_type #protocol_type} => String
    #   * {Types::UpdateApiResponse#route_selection_expression #route_selection_expression} => String
    #   * {Types::UpdateApiResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::UpdateApiResponse#version #version} => String
    #   * {Types::UpdateApiResponse#warnings #warnings} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api({
    #     api_id: "__string", # required
    #     api_key_selection_expression: "SelectionExpression",
    #     cors_configuration: {
    #       allow_credentials: false,
    #       allow_headers: ["__string"],
    #       allow_methods: ["StringWithLengthBetween1And64"],
    #       allow_origins: ["__string"],
    #       expose_headers: ["__string"],
    #       max_age: 1,
    #     },
    #     credentials_arn: "Arn",
    #     description: "StringWithLengthBetween0And1024",
    #     disable_schema_validation: false,
    #     disable_execute_api_endpoint: false,
    #     name: "StringWithLengthBetween1And128",
    #     route_key: "SelectionKey",
    #     route_selection_expression: "SelectionExpression",
    #     target: "UriWithLengthBetween1And2048",
    #     version: "StringWithLengthBetween1And64",
    #   })
    #
    # @example Response structure
    #
    #   resp.api_endpoint #=> String
    #   resp.api_gateway_managed #=> Boolean
    #   resp.api_id #=> String
    #   resp.api_key_selection_expression #=> String
    #   resp.cors_configuration.allow_credentials #=> Boolean
    #   resp.cors_configuration.allow_headers #=> Array
    #   resp.cors_configuration.allow_headers[0] #=> String
    #   resp.cors_configuration.allow_methods #=> Array
    #   resp.cors_configuration.allow_methods[0] #=> String
    #   resp.cors_configuration.allow_origins #=> Array
    #   resp.cors_configuration.allow_origins[0] #=> String
    #   resp.cors_configuration.expose_headers #=> Array
    #   resp.cors_configuration.expose_headers[0] #=> String
    #   resp.cors_configuration.max_age #=> Integer
    #   resp.created_date #=> Time
    #   resp.description #=> String
    #   resp.disable_schema_validation #=> Boolean
    #   resp.disable_execute_api_endpoint #=> Boolean
    #   resp.import_info #=> Array
    #   resp.import_info[0] #=> String
    #   resp.name #=> String
    #   resp.protocol_type #=> String, one of "WEBSOCKET", "HTTP"
    #   resp.route_selection_expression #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.version #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #
    # @overload update_api(params = {})
    # @param [Hash] params ({})
    def update_api(params = {}, options = {})
      req = build_request(:update_api, params)
      req.send_request(options)
    end

    # The API mapping.
    #
    # @option params [required, String] :api_id
    #   The identifier.
    #
    # @option params [required, String] :api_mapping_id
    #
    # @option params [String] :api_mapping_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [required, String] :domain_name
    #
    # @option params [String] :stage
    #   A string with a length between \[1-128\].
    #
    # @return [Types::UpdateApiMappingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApiMappingResponse#api_id #api_id} => String
    #   * {Types::UpdateApiMappingResponse#api_mapping_id #api_mapping_id} => String
    #   * {Types::UpdateApiMappingResponse#api_mapping_key #api_mapping_key} => String
    #   * {Types::UpdateApiMappingResponse#stage #stage} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api_mapping({
    #     api_id: "Id", # required
    #     api_mapping_id: "__string", # required
    #     api_mapping_key: "SelectionKey",
    #     domain_name: "__string", # required
    #     stage: "StringWithLengthBetween1And128",
    #   })
    #
    # @example Response structure
    #
    #   resp.api_id #=> String
    #   resp.api_mapping_id #=> String
    #   resp.api_mapping_key #=> String
    #   resp.stage #=> String
    #
    # @overload update_api_mapping(params = {})
    # @param [Hash] params ({})
    def update_api_mapping(params = {}, options = {})
      req = build_request(:update_api_mapping, params)
      req.send_request(options)
    end

    # Updates an Authorizer.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :authorizer_credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #
    # @option params [required, String] :authorizer_id
    #
    # @option params [Integer] :authorizer_result_ttl_in_seconds
    #   An integer with a value between \[0-3600\].
    #
    # @option params [String] :authorizer_type
    #   The authorizer type. Specify REQUEST for a Lambda function using
    #   incoming request parameters. Specify JWT to use JSON Web Tokens
    #   (supported only for HTTP APIs).
    #
    # @option params [String] :authorizer_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #
    # @option params [Array<String>] :identity_source
    #   The identity source for which authorization is requested. For the
    #   REQUEST authorizer, this is required when authorization caching is
    #   enabled. The value is a comma-separated string of one or more mapping
    #   expressions of the specified request parameters. For example, if an
    #   Auth header, a Name query string parameter are defined as identity
    #   sources, this value is $method.request.header.Auth,
    #   $method.request.querystring.Name. These parameters will be used to
    #   derive the authorization caching key and to perform runtime validation
    #   of the REQUEST authorizer by verifying all of the identity-related
    #   request parameters are present, not null and non-empty. Only when this
    #   is true does the authorizer invoke the authorizer Lambda function,
    #   otherwise, it returns a 401 Unauthorized response without calling the
    #   Lambda function. The valid value is a string of comma-separated
    #   mapping expressions of the specified request parameters. When the
    #   authorization caching is not enabled, this property is optional.
    #
    # @option params [String] :identity_validation_expression
    #   A string with a length between \[0-1024\].
    #
    # @option params [Types::JWTConfiguration] :jwt_configuration
    #   Represents the configuration of a JWT authorizer. Required for the JWT
    #   authorizer type. Supported only for HTTP APIs.
    #
    # @option params [String] :name
    #   A string with a length between \[1-128\].
    #
    # @option params [String] :authorizer_payload_format_version
    #   A string with a length between \[1-64\].
    #
    # @option params [Boolean] :enable_simple_responses
    #
    # @return [Types::UpdateAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAuthorizerResponse#authorizer_credentials_arn #authorizer_credentials_arn} => String
    #   * {Types::UpdateAuthorizerResponse#authorizer_id #authorizer_id} => String
    #   * {Types::UpdateAuthorizerResponse#authorizer_result_ttl_in_seconds #authorizer_result_ttl_in_seconds} => Integer
    #   * {Types::UpdateAuthorizerResponse#authorizer_type #authorizer_type} => String
    #   * {Types::UpdateAuthorizerResponse#authorizer_uri #authorizer_uri} => String
    #   * {Types::UpdateAuthorizerResponse#identity_source #identity_source} => Array&lt;String&gt;
    #   * {Types::UpdateAuthorizerResponse#identity_validation_expression #identity_validation_expression} => String
    #   * {Types::UpdateAuthorizerResponse#jwt_configuration #jwt_configuration} => Types::JWTConfiguration
    #   * {Types::UpdateAuthorizerResponse#name #name} => String
    #   * {Types::UpdateAuthorizerResponse#authorizer_payload_format_version #authorizer_payload_format_version} => String
    #   * {Types::UpdateAuthorizerResponse#enable_simple_responses #enable_simple_responses} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_authorizer({
    #     api_id: "__string", # required
    #     authorizer_credentials_arn: "Arn",
    #     authorizer_id: "__string", # required
    #     authorizer_result_ttl_in_seconds: 1,
    #     authorizer_type: "REQUEST", # accepts REQUEST, JWT
    #     authorizer_uri: "UriWithLengthBetween1And2048",
    #     identity_source: ["__string"],
    #     identity_validation_expression: "StringWithLengthBetween0And1024",
    #     jwt_configuration: {
    #       audience: ["__string"],
    #       issuer: "UriWithLengthBetween1And2048",
    #     },
    #     name: "StringWithLengthBetween1And128",
    #     authorizer_payload_format_version: "StringWithLengthBetween1And64",
    #     enable_simple_responses: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_credentials_arn #=> String
    #   resp.authorizer_id #=> String
    #   resp.authorizer_result_ttl_in_seconds #=> Integer
    #   resp.authorizer_type #=> String, one of "REQUEST", "JWT"
    #   resp.authorizer_uri #=> String
    #   resp.identity_source #=> Array
    #   resp.identity_source[0] #=> String
    #   resp.identity_validation_expression #=> String
    #   resp.jwt_configuration.audience #=> Array
    #   resp.jwt_configuration.audience[0] #=> String
    #   resp.jwt_configuration.issuer #=> String
    #   resp.name #=> String
    #   resp.authorizer_payload_format_version #=> String
    #   resp.enable_simple_responses #=> Boolean
    #
    # @overload update_authorizer(params = {})
    # @param [Hash] params ({})
    def update_authorizer(params = {}, options = {})
      req = build_request(:update_authorizer, params)
      req.send_request(options)
    end

    # Updates a Deployment.
    #
    # @option params [required, String] :api_id
    #
    # @option params [required, String] :deployment_id
    #
    # @option params [String] :description
    #   A string with a length between \[0-1024\].
    #
    # @return [Types::UpdateDeploymentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDeploymentResponse#auto_deployed #auto_deployed} => Boolean
    #   * {Types::UpdateDeploymentResponse#created_date #created_date} => Time
    #   * {Types::UpdateDeploymentResponse#deployment_id #deployment_id} => String
    #   * {Types::UpdateDeploymentResponse#deployment_status #deployment_status} => String
    #   * {Types::UpdateDeploymentResponse#deployment_status_message #deployment_status_message} => String
    #   * {Types::UpdateDeploymentResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_deployment({
    #     api_id: "__string", # required
    #     deployment_id: "__string", # required
    #     description: "StringWithLengthBetween0And1024",
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_deployed #=> Boolean
    #   resp.created_date #=> Time
    #   resp.deployment_id #=> String
    #   resp.deployment_status #=> String, one of "PENDING", "FAILED", "DEPLOYED"
    #   resp.deployment_status_message #=> String
    #   resp.description #=> String
    #
    # @overload update_deployment(params = {})
    # @param [Hash] params ({})
    def update_deployment(params = {}, options = {})
      req = build_request(:update_deployment, params)
      req.send_request(options)
    end

    # Updates a domain name.
    #
    # @option params [required, String] :domain_name
    #
    # @option params [Array<Types::DomainNameConfiguration>] :domain_name_configurations
    #   The domain name configurations.
    #
    # @option params [Types::MutualTlsAuthenticationInput] :mutual_tls_authentication
    #   If specified, API Gateway performs two-way authentication between the
    #   client and the server. Clients must present a trusted certificate to
    #   access your API.
    #
    # @return [Types::UpdateDomainNameResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainNameResponse#api_mapping_selection_expression #api_mapping_selection_expression} => String
    #   * {Types::UpdateDomainNameResponse#domain_name #domain_name} => String
    #   * {Types::UpdateDomainNameResponse#domain_name_configurations #domain_name_configurations} => Array&lt;Types::DomainNameConfiguration&gt;
    #   * {Types::UpdateDomainNameResponse#mutual_tls_authentication #mutual_tls_authentication} => Types::MutualTlsAuthentication
    #   * {Types::UpdateDomainNameResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_name({
    #     domain_name: "__string", # required
    #     domain_name_configurations: [
    #       {
    #         api_gateway_domain_name: "__string",
    #         certificate_arn: "Arn",
    #         certificate_name: "StringWithLengthBetween1And128",
    #         certificate_upload_date: Time.now,
    #         domain_name_status: "AVAILABLE", # accepts AVAILABLE, UPDATING
    #         domain_name_status_message: "__string",
    #         endpoint_type: "REGIONAL", # accepts REGIONAL, EDGE
    #         hosted_zone_id: "__string",
    #         security_policy: "TLS_1_0", # accepts TLS_1_0, TLS_1_2
    #       },
    #     ],
    #     mutual_tls_authentication: {
    #       truststore_uri: "UriWithLengthBetween1And2048",
    #       truststore_version: "StringWithLengthBetween1And64",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.api_mapping_selection_expression #=> String
    #   resp.domain_name #=> String
    #   resp.domain_name_configurations #=> Array
    #   resp.domain_name_configurations[0].api_gateway_domain_name #=> String
    #   resp.domain_name_configurations[0].certificate_arn #=> String
    #   resp.domain_name_configurations[0].certificate_name #=> String
    #   resp.domain_name_configurations[0].certificate_upload_date #=> Time
    #   resp.domain_name_configurations[0].domain_name_status #=> String, one of "AVAILABLE", "UPDATING"
    #   resp.domain_name_configurations[0].domain_name_status_message #=> String
    #   resp.domain_name_configurations[0].endpoint_type #=> String, one of "REGIONAL", "EDGE"
    #   resp.domain_name_configurations[0].hosted_zone_id #=> String
    #   resp.domain_name_configurations[0].security_policy #=> String, one of "TLS_1_0", "TLS_1_2"
    #   resp.mutual_tls_authentication.truststore_uri #=> String
    #   resp.mutual_tls_authentication.truststore_version #=> String
    #   resp.mutual_tls_authentication.truststore_warnings #=> Array
    #   resp.mutual_tls_authentication.truststore_warnings[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @overload update_domain_name(params = {})
    # @param [Hash] params ({})
    def update_domain_name(params = {}, options = {})
      req = build_request(:update_domain_name, params)
      req.send_request(options)
    end

    # Updates an Integration.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :connection_id
    #   A string with a length between \[1-1024\].
    #
    # @option params [String] :connection_type
    #   Represents a connection type.
    #
    # @option params [String] :content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #
    # @option params [String] :credentials_arn
    #   Represents an Amazon Resource Name (ARN).
    #
    # @option params [String] :description
    #   A string with a length between \[0-1024\].
    #
    # @option params [required, String] :integration_id
    #
    # @option params [String] :integration_method
    #   A string with a length between \[1-64\].
    #
    # @option params [String] :integration_subtype
    #   A string with a length between \[1-128\].
    #
    # @option params [String] :integration_type
    #   Represents an API method integration type.
    #
    # @option params [String] :integration_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #
    # @option params [String] :passthrough_behavior
    #   Represents passthrough behavior for an integration response. Supported
    #   only for WebSocket APIs.
    #
    # @option params [String] :payload_format_version
    #   A string with a length between \[1-64\].
    #
    # @option params [Hash<String,String>] :request_parameters
    #   A key-value map specifying response parameters that are passed to the
    #   method response from the backend. The key is a method response header
    #   parameter name and the mapped value is an integration response header
    #   value, a static value enclosed within a pair of single quotes, or a
    #   JSON expression from the integration response body. The mapping key
    #   must match the pattern of method.response.header.\\\{name\\}, where
    #   name is a valid and unique header name. The mapped non-static value
    #   must match the pattern of integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #
    # @option params [Hash<String,String>] :request_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #
    # @option params [String] :template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [Integer] :timeout_in_millis
    #   An integer with a value between \[50-30000\].
    #
    # @option params [Types::TlsConfigInput] :tls_config
    #   The TLS configuration for a private integration. If you specify a TLS
    #   configuration, private integration traffic uses the HTTPS protocol.
    #   Supported only for HTTP APIs.
    #
    # @return [Types::UpdateIntegrationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIntegrationResult#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::UpdateIntegrationResult#connection_id #connection_id} => String
    #   * {Types::UpdateIntegrationResult#connection_type #connection_type} => String
    #   * {Types::UpdateIntegrationResult#content_handling_strategy #content_handling_strategy} => String
    #   * {Types::UpdateIntegrationResult#credentials_arn #credentials_arn} => String
    #   * {Types::UpdateIntegrationResult#description #description} => String
    #   * {Types::UpdateIntegrationResult#integration_id #integration_id} => String
    #   * {Types::UpdateIntegrationResult#integration_method #integration_method} => String
    #   * {Types::UpdateIntegrationResult#integration_response_selection_expression #integration_response_selection_expression} => String
    #   * {Types::UpdateIntegrationResult#integration_subtype #integration_subtype} => String
    #   * {Types::UpdateIntegrationResult#integration_type #integration_type} => String
    #   * {Types::UpdateIntegrationResult#integration_uri #integration_uri} => String
    #   * {Types::UpdateIntegrationResult#passthrough_behavior #passthrough_behavior} => String
    #   * {Types::UpdateIntegrationResult#payload_format_version #payload_format_version} => String
    #   * {Types::UpdateIntegrationResult#request_parameters #request_parameters} => Hash&lt;String,String&gt;
    #   * {Types::UpdateIntegrationResult#request_templates #request_templates} => Hash&lt;String,String&gt;
    #   * {Types::UpdateIntegrationResult#template_selection_expression #template_selection_expression} => String
    #   * {Types::UpdateIntegrationResult#timeout_in_millis #timeout_in_millis} => Integer
    #   * {Types::UpdateIntegrationResult#tls_config #tls_config} => Types::TlsConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_integration({
    #     api_id: "__string", # required
    #     connection_id: "StringWithLengthBetween1And1024",
    #     connection_type: "INTERNET", # accepts INTERNET, VPC_LINK
    #     content_handling_strategy: "CONVERT_TO_BINARY", # accepts CONVERT_TO_BINARY, CONVERT_TO_TEXT
    #     credentials_arn: "Arn",
    #     description: "StringWithLengthBetween0And1024",
    #     integration_id: "__string", # required
    #     integration_method: "StringWithLengthBetween1And64",
    #     integration_subtype: "StringWithLengthBetween1And128",
    #     integration_type: "AWS", # accepts AWS, HTTP, MOCK, HTTP_PROXY, AWS_PROXY
    #     integration_uri: "UriWithLengthBetween1And2048",
    #     passthrough_behavior: "WHEN_NO_MATCH", # accepts WHEN_NO_MATCH, NEVER, WHEN_NO_TEMPLATES
    #     payload_format_version: "StringWithLengthBetween1And64",
    #     request_parameters: {
    #       "__string" => "StringWithLengthBetween1And512",
    #     },
    #     request_templates: {
    #       "__string" => "StringWithLengthBetween0And32K",
    #     },
    #     template_selection_expression: "SelectionExpression",
    #     timeout_in_millis: 1,
    #     tls_config: {
    #       server_name_to_verify: "StringWithLengthBetween1And512",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.api_gateway_managed #=> Boolean
    #   resp.connection_id #=> String
    #   resp.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.content_handling_strategy #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.credentials_arn #=> String
    #   resp.description #=> String
    #   resp.integration_id #=> String
    #   resp.integration_method #=> String
    #   resp.integration_response_selection_expression #=> String
    #   resp.integration_subtype #=> String
    #   resp.integration_type #=> String, one of "AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.integration_uri #=> String
    #   resp.passthrough_behavior #=> String, one of "WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"
    #   resp.payload_format_version #=> String
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["__string"] #=> String
    #   resp.request_templates #=> Hash
    #   resp.request_templates["__string"] #=> String
    #   resp.template_selection_expression #=> String
    #   resp.timeout_in_millis #=> Integer
    #   resp.tls_config.server_name_to_verify #=> String
    #
    # @overload update_integration(params = {})
    # @param [Hash] params ({})
    def update_integration(params = {}, options = {})
      req = build_request(:update_integration, params)
      req.send_request(options)
    end

    # Updates an IntegrationResponses.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :content_handling_strategy
    #   Specifies how to handle response payload content type conversions.
    #   Supported only for WebSocket APIs.
    #
    # @option params [required, String] :integration_id
    #
    # @option params [required, String] :integration_response_id
    #
    # @option params [String] :integration_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [Hash<String,String>] :response_parameters
    #   A key-value map specifying response parameters that are passed to the
    #   method response from the backend. The key is a method response header
    #   parameter name and the mapped value is an integration response header
    #   value, a static value enclosed within a pair of single quotes, or a
    #   JSON expression from the integration response body. The mapping key
    #   must match the pattern of method.response.header.\\\{name\\}, where
    #   name is a valid and unique header name. The mapped non-static value
    #   must match the pattern of integration.response.header.\\\{name\\} or
    #   integration.response.body.\\\{JSON-expression\\}, where name is a
    #   valid and unique response header name and JSON-expression is a valid
    #   JSON expression without the $ prefix.
    #
    # @option params [Hash<String,String>] :response_templates
    #   A mapping of identifier keys to templates. The value is an actual
    #   template script. The key is typically a SelectionKey which is chosen
    #   based on evaluating a selection expression.
    #
    # @option params [String] :template_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @return [Types::UpdateIntegrationResponseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIntegrationResponseResponse#content_handling_strategy #content_handling_strategy} => String
    #   * {Types::UpdateIntegrationResponseResponse#integration_response_id #integration_response_id} => String
    #   * {Types::UpdateIntegrationResponseResponse#integration_response_key #integration_response_key} => String
    #   * {Types::UpdateIntegrationResponseResponse#response_parameters #response_parameters} => Hash&lt;String,String&gt;
    #   * {Types::UpdateIntegrationResponseResponse#response_templates #response_templates} => Hash&lt;String,String&gt;
    #   * {Types::UpdateIntegrationResponseResponse#template_selection_expression #template_selection_expression} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_integration_response({
    #     api_id: "__string", # required
    #     content_handling_strategy: "CONVERT_TO_BINARY", # accepts CONVERT_TO_BINARY, CONVERT_TO_TEXT
    #     integration_id: "__string", # required
    #     integration_response_id: "__string", # required
    #     integration_response_key: "SelectionKey",
    #     response_parameters: {
    #       "__string" => "StringWithLengthBetween1And512",
    #     },
    #     response_templates: {
    #       "__string" => "StringWithLengthBetween0And32K",
    #     },
    #     template_selection_expression: "SelectionExpression",
    #   })
    #
    # @example Response structure
    #
    #   resp.content_handling_strategy #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.integration_response_id #=> String
    #   resp.integration_response_key #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["__string"] #=> String
    #   resp.response_templates #=> Hash
    #   resp.response_templates["__string"] #=> String
    #   resp.template_selection_expression #=> String
    #
    # @overload update_integration_response(params = {})
    # @param [Hash] params ({})
    def update_integration_response(params = {}, options = {})
      req = build_request(:update_integration_response, params)
      req.send_request(options)
    end

    # Updates a Model.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :content_type
    #   A string with a length between \[1-256\].
    #
    # @option params [String] :description
    #   A string with a length between \[0-1024\].
    #
    # @option params [required, String] :model_id
    #
    # @option params [String] :name
    #   A string with a length between \[1-128\].
    #
    # @option params [String] :schema
    #   A string with a length between \[0-32768\].
    #
    # @return [Types::UpdateModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateModelResponse#content_type #content_type} => String
    #   * {Types::UpdateModelResponse#description #description} => String
    #   * {Types::UpdateModelResponse#model_id #model_id} => String
    #   * {Types::UpdateModelResponse#name #name} => String
    #   * {Types::UpdateModelResponse#schema #schema} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_model({
    #     api_id: "__string", # required
    #     content_type: "StringWithLengthBetween1And256",
    #     description: "StringWithLengthBetween0And1024",
    #     model_id: "__string", # required
    #     name: "StringWithLengthBetween1And128",
    #     schema: "StringWithLengthBetween0And32K",
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.description #=> String
    #   resp.model_id #=> String
    #   resp.name #=> String
    #   resp.schema #=> String
    #
    # @overload update_model(params = {})
    # @param [Hash] params ({})
    def update_model(params = {}, options = {})
      req = build_request(:update_model, params)
      req.send_request(options)
    end

    # Updates a Route.
    #
    # @option params [required, String] :api_id
    #
    # @option params [Boolean] :api_key_required
    #
    # @option params [Array<String>] :authorization_scopes
    #   A list of authorization scopes configured on a route. The scopes are
    #   used with a JWT authorizer to authorize the method invocation. The
    #   authorization works by matching the route scopes against the scopes
    #   parsed from the access token in the incoming request. The method
    #   invocation is authorized if any route scope matches a claimed scope in
    #   the access token. Otherwise, the invocation is not authorized. When
    #   the route scope is configured, the client must provide an access token
    #   instead of an identity token for authorization purposes.
    #
    # @option params [String] :authorization_type
    #   The authorization type. For WebSocket APIs, valid values are NONE for
    #   open access, AWS\_IAM for using AWS IAM permissions, and CUSTOM for
    #   using a Lambda authorizer. For HTTP APIs, valid values are NONE for
    #   open access, JWT for using JSON Web Tokens, AWS\_IAM for using AWS IAM
    #   permissions, and CUSTOM for using a Lambda authorizer.
    #
    # @option params [String] :authorizer_id
    #   The identifier.
    #
    # @option params [String] :model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [String] :operation_name
    #   A string with a length between \[1-64\].
    #
    # @option params [Hash<String,String>] :request_models
    #   The route models.
    #
    # @option params [Hash<String,Types::ParameterConstraints>] :request_parameters
    #   The route parameters.
    #
    # @option params [required, String] :route_id
    #
    # @option params [String] :route_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [String] :route_response_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [String] :target
    #   A string with a length between \[1-128\].
    #
    # @return [Types::UpdateRouteResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRouteResult#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::UpdateRouteResult#api_key_required #api_key_required} => Boolean
    #   * {Types::UpdateRouteResult#authorization_scopes #authorization_scopes} => Array&lt;String&gt;
    #   * {Types::UpdateRouteResult#authorization_type #authorization_type} => String
    #   * {Types::UpdateRouteResult#authorizer_id #authorizer_id} => String
    #   * {Types::UpdateRouteResult#model_selection_expression #model_selection_expression} => String
    #   * {Types::UpdateRouteResult#operation_name #operation_name} => String
    #   * {Types::UpdateRouteResult#request_models #request_models} => Hash&lt;String,String&gt;
    #   * {Types::UpdateRouteResult#request_parameters #request_parameters} => Hash&lt;String,Types::ParameterConstraints&gt;
    #   * {Types::UpdateRouteResult#route_id #route_id} => String
    #   * {Types::UpdateRouteResult#route_key #route_key} => String
    #   * {Types::UpdateRouteResult#route_response_selection_expression #route_response_selection_expression} => String
    #   * {Types::UpdateRouteResult#target #target} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_route({
    #     api_id: "__string", # required
    #     api_key_required: false,
    #     authorization_scopes: ["StringWithLengthBetween1And64"],
    #     authorization_type: "NONE", # accepts NONE, AWS_IAM, CUSTOM, JWT
    #     authorizer_id: "Id",
    #     model_selection_expression: "SelectionExpression",
    #     operation_name: "StringWithLengthBetween1And64",
    #     request_models: {
    #       "__string" => "StringWithLengthBetween1And128",
    #     },
    #     request_parameters: {
    #       "__string" => {
    #         required: false,
    #       },
    #     },
    #     route_id: "__string", # required
    #     route_key: "SelectionKey",
    #     route_response_selection_expression: "SelectionExpression",
    #     target: "StringWithLengthBetween1And128",
    #   })
    #
    # @example Response structure
    #
    #   resp.api_gateway_managed #=> Boolean
    #   resp.api_key_required #=> Boolean
    #   resp.authorization_scopes #=> Array
    #   resp.authorization_scopes[0] #=> String
    #   resp.authorization_type #=> String, one of "NONE", "AWS_IAM", "CUSTOM", "JWT"
    #   resp.authorizer_id #=> String
    #   resp.model_selection_expression #=> String
    #   resp.operation_name #=> String
    #   resp.request_models #=> Hash
    #   resp.request_models["__string"] #=> String
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["__string"].required #=> Boolean
    #   resp.route_id #=> String
    #   resp.route_key #=> String
    #   resp.route_response_selection_expression #=> String
    #   resp.target #=> String
    #
    # @overload update_route(params = {})
    # @param [Hash] params ({})
    def update_route(params = {}, options = {})
      req = build_request(:update_route, params)
      req.send_request(options)
    end

    # Updates a RouteResponse.
    #
    # @option params [required, String] :api_id
    #
    # @option params [String] :model_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [Hash<String,String>] :response_models
    #   The route models.
    #
    # @option params [Hash<String,Types::ParameterConstraints>] :response_parameters
    #   The route parameters.
    #
    # @option params [required, String] :route_id
    #
    # @option params [required, String] :route_response_id
    #
    # @option params [String] :route_response_key
    #   After evaluating a selection expression, the result is compared
    #   against one or more selection keys to find a matching key. See
    #   [Selection Expressions][1] for a list of expressions and each
    #   expression's associated selection key type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @return [Types::UpdateRouteResponseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRouteResponseResponse#model_selection_expression #model_selection_expression} => String
    #   * {Types::UpdateRouteResponseResponse#response_models #response_models} => Hash&lt;String,String&gt;
    #   * {Types::UpdateRouteResponseResponse#response_parameters #response_parameters} => Hash&lt;String,Types::ParameterConstraints&gt;
    #   * {Types::UpdateRouteResponseResponse#route_response_id #route_response_id} => String
    #   * {Types::UpdateRouteResponseResponse#route_response_key #route_response_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_route_response({
    #     api_id: "__string", # required
    #     model_selection_expression: "SelectionExpression",
    #     response_models: {
    #       "__string" => "StringWithLengthBetween1And128",
    #     },
    #     response_parameters: {
    #       "__string" => {
    #         required: false,
    #       },
    #     },
    #     route_id: "__string", # required
    #     route_response_id: "__string", # required
    #     route_response_key: "SelectionKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.model_selection_expression #=> String
    #   resp.response_models #=> Hash
    #   resp.response_models["__string"] #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["__string"].required #=> Boolean
    #   resp.route_response_id #=> String
    #   resp.route_response_key #=> String
    #
    # @overload update_route_response(params = {})
    # @param [Hash] params ({})
    def update_route_response(params = {}, options = {})
      req = build_request(:update_route_response, params)
      req.send_request(options)
    end

    # Updates a Stage.
    #
    # @option params [Types::AccessLogSettings] :access_log_settings
    #   Settings for logging access in a stage.
    #
    # @option params [required, String] :api_id
    #
    # @option params [Boolean] :auto_deploy
    #
    # @option params [String] :client_certificate_id
    #   The identifier.
    #
    # @option params [Types::RouteSettings] :default_route_settings
    #   Represents a collection of route settings.
    #
    # @option params [String] :deployment_id
    #   The identifier.
    #
    # @option params [String] :description
    #   A string with a length between \[0-1024\].
    #
    # @option params [Hash<String,Types::RouteSettings>] :route_settings
    #   The route settings map.
    #
    # @option params [required, String] :stage_name
    #
    # @option params [Hash<String,String>] :stage_variables
    #   The stage variable map.
    #
    # @return [Types::UpdateStageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStageResponse#access_log_settings #access_log_settings} => Types::AccessLogSettings
    #   * {Types::UpdateStageResponse#api_gateway_managed #api_gateway_managed} => Boolean
    #   * {Types::UpdateStageResponse#auto_deploy #auto_deploy} => Boolean
    #   * {Types::UpdateStageResponse#client_certificate_id #client_certificate_id} => String
    #   * {Types::UpdateStageResponse#created_date #created_date} => Time
    #   * {Types::UpdateStageResponse#default_route_settings #default_route_settings} => Types::RouteSettings
    #   * {Types::UpdateStageResponse#deployment_id #deployment_id} => String
    #   * {Types::UpdateStageResponse#description #description} => String
    #   * {Types::UpdateStageResponse#last_deployment_status_message #last_deployment_status_message} => String
    #   * {Types::UpdateStageResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::UpdateStageResponse#route_settings #route_settings} => Hash&lt;String,Types::RouteSettings&gt;
    #   * {Types::UpdateStageResponse#stage_name #stage_name} => String
    #   * {Types::UpdateStageResponse#stage_variables #stage_variables} => Hash&lt;String,String&gt;
    #   * {Types::UpdateStageResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stage({
    #     access_log_settings: {
    #       destination_arn: "Arn",
    #       format: "StringWithLengthBetween1And1024",
    #     },
    #     api_id: "__string", # required
    #     auto_deploy: false,
    #     client_certificate_id: "Id",
    #     default_route_settings: {
    #       data_trace_enabled: false,
    #       detailed_metrics_enabled: false,
    #       logging_level: "ERROR", # accepts ERROR, INFO, OFF
    #       throttling_burst_limit: 1,
    #       throttling_rate_limit: 1.0,
    #     },
    #     deployment_id: "Id",
    #     description: "StringWithLengthBetween0And1024",
    #     route_settings: {
    #       "__string" => {
    #         data_trace_enabled: false,
    #         detailed_metrics_enabled: false,
    #         logging_level: "ERROR", # accepts ERROR, INFO, OFF
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0,
    #       },
    #     },
    #     stage_name: "__string", # required
    #     stage_variables: {
    #       "__string" => "StringWithLengthBetween0And2048",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.access_log_settings.destination_arn #=> String
    #   resp.access_log_settings.format #=> String
    #   resp.api_gateway_managed #=> Boolean
    #   resp.auto_deploy #=> Boolean
    #   resp.client_certificate_id #=> String
    #   resp.created_date #=> Time
    #   resp.default_route_settings.data_trace_enabled #=> Boolean
    #   resp.default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.default_route_settings.logging_level #=> String, one of "ERROR", "INFO", "OFF"
    #   resp.default_route_settings.throttling_burst_limit #=> Integer
    #   resp.default_route_settings.throttling_rate_limit #=> Float
    #   resp.deployment_id #=> String
    #   resp.description #=> String
    #   resp.last_deployment_status_message #=> String
    #   resp.last_updated_date #=> Time
    #   resp.route_settings #=> Hash
    #   resp.route_settings["__string"].data_trace_enabled #=> Boolean
    #   resp.route_settings["__string"].detailed_metrics_enabled #=> Boolean
    #   resp.route_settings["__string"].logging_level #=> String, one of "ERROR", "INFO", "OFF"
    #   resp.route_settings["__string"].throttling_burst_limit #=> Integer
    #   resp.route_settings["__string"].throttling_rate_limit #=> Float
    #   resp.stage_name #=> String
    #   resp.stage_variables #=> Hash
    #   resp.stage_variables["__string"] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @overload update_stage(params = {})
    # @param [Hash] params ({})
    def update_stage(params = {}, options = {})
      req = build_request(:update_stage, params)
      req.send_request(options)
    end

    # Updates a VPC link.
    #
    # @option params [String] :name
    #   A string with a length between \[1-128\].
    #
    # @option params [required, String] :vpc_link_id
    #
    # @return [Types::UpdateVpcLinkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVpcLinkResponse#created_date #created_date} => Time
    #   * {Types::UpdateVpcLinkResponse#name #name} => String
    #   * {Types::UpdateVpcLinkResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #   * {Types::UpdateVpcLinkResponse#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::UpdateVpcLinkResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::UpdateVpcLinkResponse#vpc_link_id #vpc_link_id} => String
    #   * {Types::UpdateVpcLinkResponse#vpc_link_status #vpc_link_status} => String
    #   * {Types::UpdateVpcLinkResponse#vpc_link_status_message #vpc_link_status_message} => String
    #   * {Types::UpdateVpcLinkResponse#vpc_link_version #vpc_link_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpc_link({
    #     name: "StringWithLengthBetween1And128",
    #     vpc_link_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_date #=> Time
    #   resp.name #=> String
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.vpc_link_id #=> String
    #   resp.vpc_link_status #=> String, one of "PENDING", "AVAILABLE", "DELETING", "FAILED", "INACTIVE"
    #   resp.vpc_link_status_message #=> String
    #   resp.vpc_link_version #=> String, one of "V2"
    #
    # @overload update_vpc_link(params = {})
    # @param [Hash] params ({})
    def update_vpc_link(params = {}, options = {})
      req = build_request(:update_vpc_link, params)
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
      context[:gem_name] = 'aws-sdk-apigatewayv2'
      context[:gem_version] = '1.29.0'
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
