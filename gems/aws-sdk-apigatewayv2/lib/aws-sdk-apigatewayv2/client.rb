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

Aws::Plugins::GlobalConfiguration.add_identifier(:apigatewayv2)

module Aws::ApiGatewayV2
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
    # @option params [String] :description
    #   A string with a length between \[0-1024\].
    #
    # @option params [Boolean] :disable_schema_validation
    #
    # @option params [required, String] :name
    #   A string with a length between \[1-128\].
    #
    # @option params [required, String] :protocol_type
    #
    # @option params [required, String] :route_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [String] :version
    #   A string with a length between \[1-64\].
    #
    # @return [Types::CreateApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApiResponse#api_endpoint #api_endpoint} => String
    #   * {Types::CreateApiResponse#api_id #api_id} => String
    #   * {Types::CreateApiResponse#api_key_selection_expression #api_key_selection_expression} => String
    #   * {Types::CreateApiResponse#created_date #created_date} => Time
    #   * {Types::CreateApiResponse#description #description} => String
    #   * {Types::CreateApiResponse#disable_schema_validation #disable_schema_validation} => Boolean
    #   * {Types::CreateApiResponse#name #name} => String
    #   * {Types::CreateApiResponse#protocol_type #protocol_type} => String
    #   * {Types::CreateApiResponse#route_selection_expression #route_selection_expression} => String
    #   * {Types::CreateApiResponse#version #version} => String
    #   * {Types::CreateApiResponse#warnings #warnings} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api({
    #     api_key_selection_expression: "SelectionExpression",
    #     description: "StringWithLengthBetween0And1024",
    #     disable_schema_validation: false,
    #     name: "StringWithLengthBetween1And128", # required
    #     protocol_type: "WEBSOCKET", # required, accepts WEBSOCKET
    #     route_selection_expression: "SelectionExpression", # required
    #     version: "StringWithLengthBetween1And64",
    #   })
    #
    # @example Response structure
    #
    #   resp.api_endpoint #=> String
    #   resp.api_id #=> String
    #   resp.api_key_selection_expression #=> String
    #   resp.created_date #=> Time
    #   resp.description #=> String
    #   resp.disable_schema_validation #=> Boolean
    #   resp.name #=> String
    #   resp.protocol_type #=> String, one of "WEBSOCKET"
    #   resp.route_selection_expression #=> String
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
    #   After evaulating a selection expression, the result is compared
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
    #   The authorizer type. Currently the only valid value is REQUEST, for a
    #   Lambda function using incoming request parameters.
    #
    # @option params [required, String] :authorizer_uri
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
    # @option params [required, String] :name
    #   A string with a length between \[1-128\].
    #
    # @option params [Array<String>] :provider_arns
    #   For REQUEST authorizer, this is not defined.
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
    #   * {Types::CreateAuthorizerResponse#name #name} => String
    #   * {Types::CreateAuthorizerResponse#provider_arns #provider_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_authorizer({
    #     api_id: "__string", # required
    #     authorizer_credentials_arn: "Arn",
    #     authorizer_result_ttl_in_seconds: 1,
    #     authorizer_type: "REQUEST", # required, accepts REQUEST
    #     authorizer_uri: "UriWithLengthBetween1And2048", # required
    #     identity_source: ["__string"], # required
    #     identity_validation_expression: "StringWithLengthBetween0And1024",
    #     name: "StringWithLengthBetween1And128", # required
    #     provider_arns: ["Arn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_credentials_arn #=> String
    #   resp.authorizer_id #=> String
    #   resp.authorizer_result_ttl_in_seconds #=> Integer
    #   resp.authorizer_type #=> String, one of "REQUEST"
    #   resp.authorizer_uri #=> String
    #   resp.identity_source #=> Array
    #   resp.identity_source[0] #=> String
    #   resp.identity_validation_expression #=> String
    #   resp.name #=> String
    #   resp.provider_arns #=> Array
    #   resp.provider_arns[0] #=> String
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
    # @return [Types::CreateDomainNameResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainNameResponse#api_mapping_selection_expression #api_mapping_selection_expression} => String
    #   * {Types::CreateDomainNameResponse#domain_name #domain_name} => String
    #   * {Types::CreateDomainNameResponse#domain_name_configurations #domain_name_configurations} => Array&lt;Types::DomainNameConfiguration&gt;
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
    #         endpoint_type: "REGIONAL", # accepts REGIONAL, EDGE
    #         hosted_zone_id: "__string",
    #       },
    #     ],
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
    #   resp.domain_name_configurations[0].endpoint_type #=> String, one of "REGIONAL", "EDGE"
    #   resp.domain_name_configurations[0].hosted_zone_id #=> String
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
    # @option params [required, String] :integration_type
    #   Represents an API method integration type.
    #
    # @option params [String] :integration_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #
    # @option params [String] :passthrough_behavior
    #   Represents passthrough behavior for an integration response.
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
    #   An integer with a value between \[50-29000\].
    #
    # @return [Types::CreateIntegrationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIntegrationResult#connection_id #connection_id} => String
    #   * {Types::CreateIntegrationResult#connection_type #connection_type} => String
    #   * {Types::CreateIntegrationResult#content_handling_strategy #content_handling_strategy} => String
    #   * {Types::CreateIntegrationResult#credentials_arn #credentials_arn} => String
    #   * {Types::CreateIntegrationResult#description #description} => String
    #   * {Types::CreateIntegrationResult#integration_id #integration_id} => String
    #   * {Types::CreateIntegrationResult#integration_method #integration_method} => String
    #   * {Types::CreateIntegrationResult#integration_response_selection_expression #integration_response_selection_expression} => String
    #   * {Types::CreateIntegrationResult#integration_type #integration_type} => String
    #   * {Types::CreateIntegrationResult#integration_uri #integration_uri} => String
    #   * {Types::CreateIntegrationResult#passthrough_behavior #passthrough_behavior} => String
    #   * {Types::CreateIntegrationResult#request_parameters #request_parameters} => Hash&lt;String,String&gt;
    #   * {Types::CreateIntegrationResult#request_templates #request_templates} => Hash&lt;String,String&gt;
    #   * {Types::CreateIntegrationResult#template_selection_expression #template_selection_expression} => String
    #   * {Types::CreateIntegrationResult#timeout_in_millis #timeout_in_millis} => Integer
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
    #     integration_type: "AWS", # required, accepts AWS, HTTP, MOCK, HTTP_PROXY, AWS_PROXY
    #     integration_uri: "UriWithLengthBetween1And2048",
    #     passthrough_behavior: "WHEN_NO_MATCH", # accepts WHEN_NO_MATCH, NEVER, WHEN_NO_TEMPLATES
    #     request_parameters: {
    #       "__string" => "StringWithLengthBetween1And512",
    #     },
    #     request_templates: {
    #       "__string" => "StringWithLengthBetween0And32K",
    #     },
    #     template_selection_expression: "SelectionExpression",
    #     timeout_in_millis: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_id #=> String
    #   resp.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.content_handling_strategy #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.credentials_arn #=> String
    #   resp.description #=> String
    #   resp.integration_id #=> String
    #   resp.integration_method #=> String
    #   resp.integration_response_selection_expression #=> String
    #   resp.integration_type #=> String, one of "AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.integration_uri #=> String
    #   resp.passthrough_behavior #=> String, one of "WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["__string"] #=> String
    #   resp.request_templates #=> Hash
    #   resp.request_templates["__string"] #=> String
    #   resp.template_selection_expression #=> String
    #   resp.timeout_in_millis #=> Integer
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
    #
    # @option params [required, String] :integration_id
    #
    # @option params [required, String] :integration_response_key
    #   After evaulating a selection expression, the result is compared
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
    #   used with a COGNITO\_USER\_POOLS authorizer to authorize the method
    #   invocation. The authorization works by matching the route scopes
    #   against the scopes parsed from the access token in the incoming
    #   request. The method invocation is authorized if any route scope
    #   matches a claimed scope in the access token. Otherwise, the invocation
    #   is not authorized. When the route scope is configured, the client must
    #   provide an access token instead of an identity token for authorization
    #   purposes.
    #
    # @option params [String] :authorization_type
    #   The authorization type. Valid values are NONE for open access,
    #   AWS\_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda
    #   authorizer.
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
    #   After evaulating a selection expression, the result is compared
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
    #     authorization_type: "NONE", # accepts NONE, AWS_IAM, CUSTOM
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
    #   resp.api_key_required #=> Boolean
    #   resp.authorization_scopes #=> Array
    #   resp.authorization_scopes[0] #=> String
    #   resp.authorization_type #=> String, one of "NONE", "AWS_IAM", "CUSTOM"
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
    #   After evaulating a selection expression, the result is compared
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
    # @return [Types::CreateStageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStageResponse#access_log_settings #access_log_settings} => Types::AccessLogSettings
    #   * {Types::CreateStageResponse#client_certificate_id #client_certificate_id} => String
    #   * {Types::CreateStageResponse#created_date #created_date} => Time
    #   * {Types::CreateStageResponse#default_route_settings #default_route_settings} => Types::RouteSettings
    #   * {Types::CreateStageResponse#deployment_id #deployment_id} => String
    #   * {Types::CreateStageResponse#description #description} => String
    #   * {Types::CreateStageResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::CreateStageResponse#route_settings #route_settings} => Hash&lt;String,Types::RouteSettings&gt;
    #   * {Types::CreateStageResponse#stage_name #stage_name} => String
    #   * {Types::CreateStageResponse#stage_variables #stage_variables} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stage({
    #     access_log_settings: {
    #       destination_arn: "Arn",
    #       format: "StringWithLengthBetween1And1024",
    #     },
    #     api_id: "__string", # required
    #     client_certificate_id: "Id",
    #     default_route_settings: {
    #       data_trace_enabled: false,
    #       detailed_metrics_enabled: false,
    #       logging_level: "ERROR", # accepts ERROR, INFO, false
    #       throttling_burst_limit: 1,
    #       throttling_rate_limit: 1.0,
    #     },
    #     deployment_id: "Id",
    #     description: "StringWithLengthBetween0And1024",
    #     route_settings: {
    #       "__string" => {
    #         data_trace_enabled: false,
    #         detailed_metrics_enabled: false,
    #         logging_level: "ERROR", # accepts ERROR, INFO, false
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0,
    #       },
    #     },
    #     stage_name: "StringWithLengthBetween1And128", # required
    #     stage_variables: {
    #       "__string" => "StringWithLengthBetween0And2048",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.access_log_settings.destination_arn #=> String
    #   resp.access_log_settings.format #=> String
    #   resp.client_certificate_id #=> String
    #   resp.created_date #=> Time
    #   resp.default_route_settings.data_trace_enabled #=> Boolean
    #   resp.default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.default_route_settings.logging_level #=> String, one of "ERROR", "INFO", "false"
    #   resp.default_route_settings.throttling_burst_limit #=> Integer
    #   resp.default_route_settings.throttling_rate_limit #=> Float
    #   resp.deployment_id #=> String
    #   resp.description #=> String
    #   resp.last_updated_date #=> Time
    #   resp.route_settings #=> Hash
    #   resp.route_settings["__string"].data_trace_enabled #=> Boolean
    #   resp.route_settings["__string"].detailed_metrics_enabled #=> Boolean
    #   resp.route_settings["__string"].logging_level #=> String, one of "ERROR", "INFO", "false"
    #   resp.route_settings["__string"].throttling_burst_limit #=> Integer
    #   resp.route_settings["__string"].throttling_rate_limit #=> Float
    #   resp.stage_name #=> String
    #   resp.stage_variables #=> Hash
    #   resp.stage_variables["__string"] #=> String
    #
    # @overload create_stage(params = {})
    # @param [Hash] params ({})
    def create_stage(params = {}, options = {})
      req = build_request(:create_stage, params)
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

    # Gets an Api resource.
    #
    # @option params [required, String] :api_id
    #
    # @return [Types::GetApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApiResponse#api_endpoint #api_endpoint} => String
    #   * {Types::GetApiResponse#api_id #api_id} => String
    #   * {Types::GetApiResponse#api_key_selection_expression #api_key_selection_expression} => String
    #   * {Types::GetApiResponse#created_date #created_date} => Time
    #   * {Types::GetApiResponse#description #description} => String
    #   * {Types::GetApiResponse#disable_schema_validation #disable_schema_validation} => Boolean
    #   * {Types::GetApiResponse#name #name} => String
    #   * {Types::GetApiResponse#protocol_type #protocol_type} => String
    #   * {Types::GetApiResponse#route_selection_expression #route_selection_expression} => String
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
    #   resp.api_id #=> String
    #   resp.api_key_selection_expression #=> String
    #   resp.created_date #=> Time
    #   resp.description #=> String
    #   resp.disable_schema_validation #=> Boolean
    #   resp.name #=> String
    #   resp.protocol_type #=> String, one of "WEBSOCKET"
    #   resp.route_selection_expression #=> String
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

    # The API mapping.
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

    # The API mappings.
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
    #   resp.items[0].api_id #=> String
    #   resp.items[0].api_key_selection_expression #=> String
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].description #=> String
    #   resp.items[0].disable_schema_validation #=> Boolean
    #   resp.items[0].name #=> String
    #   resp.items[0].protocol_type #=> String, one of "WEBSOCKET"
    #   resp.items[0].route_selection_expression #=> String
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
    #   * {Types::GetAuthorizerResponse#name #name} => String
    #   * {Types::GetAuthorizerResponse#provider_arns #provider_arns} => Array&lt;String&gt;
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
    #   resp.authorizer_type #=> String, one of "REQUEST"
    #   resp.authorizer_uri #=> String
    #   resp.identity_source #=> Array
    #   resp.identity_source[0] #=> String
    #   resp.identity_validation_expression #=> String
    #   resp.name #=> String
    #   resp.provider_arns #=> Array
    #   resp.provider_arns[0] #=> String
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
    #   resp.items[0].authorizer_type #=> String, one of "REQUEST"
    #   resp.items[0].authorizer_uri #=> String
    #   resp.items[0].identity_source #=> Array
    #   resp.items[0].identity_source[0] #=> String
    #   resp.items[0].identity_validation_expression #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].provider_arns #=> Array
    #   resp.items[0].provider_arns[0] #=> String
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
    #   resp.domain_name_configurations[0].endpoint_type #=> String, one of "REGIONAL", "EDGE"
    #   resp.domain_name_configurations[0].hosted_zone_id #=> String
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
    #   resp.items[0].domain_name_configurations[0].endpoint_type #=> String, one of "REGIONAL", "EDGE"
    #   resp.items[0].domain_name_configurations[0].hosted_zone_id #=> String
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
    #   * {Types::GetIntegrationResult#connection_id #connection_id} => String
    #   * {Types::GetIntegrationResult#connection_type #connection_type} => String
    #   * {Types::GetIntegrationResult#content_handling_strategy #content_handling_strategy} => String
    #   * {Types::GetIntegrationResult#credentials_arn #credentials_arn} => String
    #   * {Types::GetIntegrationResult#description #description} => String
    #   * {Types::GetIntegrationResult#integration_id #integration_id} => String
    #   * {Types::GetIntegrationResult#integration_method #integration_method} => String
    #   * {Types::GetIntegrationResult#integration_response_selection_expression #integration_response_selection_expression} => String
    #   * {Types::GetIntegrationResult#integration_type #integration_type} => String
    #   * {Types::GetIntegrationResult#integration_uri #integration_uri} => String
    #   * {Types::GetIntegrationResult#passthrough_behavior #passthrough_behavior} => String
    #   * {Types::GetIntegrationResult#request_parameters #request_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetIntegrationResult#request_templates #request_templates} => Hash&lt;String,String&gt;
    #   * {Types::GetIntegrationResult#template_selection_expression #template_selection_expression} => String
    #   * {Types::GetIntegrationResult#timeout_in_millis #timeout_in_millis} => Integer
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
    #   resp.connection_id #=> String
    #   resp.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.content_handling_strategy #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.credentials_arn #=> String
    #   resp.description #=> String
    #   resp.integration_id #=> String
    #   resp.integration_method #=> String
    #   resp.integration_response_selection_expression #=> String
    #   resp.integration_type #=> String, one of "AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.integration_uri #=> String
    #   resp.passthrough_behavior #=> String, one of "WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["__string"] #=> String
    #   resp.request_templates #=> Hash
    #   resp.request_templates["__string"] #=> String
    #   resp.template_selection_expression #=> String
    #   resp.timeout_in_millis #=> Integer
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
    #   resp.items[0].connection_id #=> String
    #   resp.items[0].connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.items[0].content_handling_strategy #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.items[0].credentials_arn #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].integration_id #=> String
    #   resp.items[0].integration_method #=> String
    #   resp.items[0].integration_response_selection_expression #=> String
    #   resp.items[0].integration_type #=> String, one of "AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.items[0].integration_uri #=> String
    #   resp.items[0].passthrough_behavior #=> String, one of "WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"
    #   resp.items[0].request_parameters #=> Hash
    #   resp.items[0].request_parameters["__string"] #=> String
    #   resp.items[0].request_templates #=> Hash
    #   resp.items[0].request_templates["__string"] #=> String
    #   resp.items[0].template_selection_expression #=> String
    #   resp.items[0].timeout_in_millis #=> Integer
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
    #   resp.api_key_required #=> Boolean
    #   resp.authorization_scopes #=> Array
    #   resp.authorization_scopes[0] #=> String
    #   resp.authorization_type #=> String, one of "NONE", "AWS_IAM", "CUSTOM"
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
    #   resp.items[0].api_key_required #=> Boolean
    #   resp.items[0].authorization_scopes #=> Array
    #   resp.items[0].authorization_scopes[0] #=> String
    #   resp.items[0].authorization_type #=> String, one of "NONE", "AWS_IAM", "CUSTOM"
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
    #   * {Types::GetStageResponse#client_certificate_id #client_certificate_id} => String
    #   * {Types::GetStageResponse#created_date #created_date} => Time
    #   * {Types::GetStageResponse#default_route_settings #default_route_settings} => Types::RouteSettings
    #   * {Types::GetStageResponse#deployment_id #deployment_id} => String
    #   * {Types::GetStageResponse#description #description} => String
    #   * {Types::GetStageResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::GetStageResponse#route_settings #route_settings} => Hash&lt;String,Types::RouteSettings&gt;
    #   * {Types::GetStageResponse#stage_name #stage_name} => String
    #   * {Types::GetStageResponse#stage_variables #stage_variables} => Hash&lt;String,String&gt;
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
    #   resp.client_certificate_id #=> String
    #   resp.created_date #=> Time
    #   resp.default_route_settings.data_trace_enabled #=> Boolean
    #   resp.default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.default_route_settings.logging_level #=> String, one of "ERROR", "INFO", "false"
    #   resp.default_route_settings.throttling_burst_limit #=> Integer
    #   resp.default_route_settings.throttling_rate_limit #=> Float
    #   resp.deployment_id #=> String
    #   resp.description #=> String
    #   resp.last_updated_date #=> Time
    #   resp.route_settings #=> Hash
    #   resp.route_settings["__string"].data_trace_enabled #=> Boolean
    #   resp.route_settings["__string"].detailed_metrics_enabled #=> Boolean
    #   resp.route_settings["__string"].logging_level #=> String, one of "ERROR", "INFO", "false"
    #   resp.route_settings["__string"].throttling_burst_limit #=> Integer
    #   resp.route_settings["__string"].throttling_rate_limit #=> Float
    #   resp.stage_name #=> String
    #   resp.stage_variables #=> Hash
    #   resp.stage_variables["__string"] #=> String
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
    #   resp.items[0].client_certificate_id #=> String
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].default_route_settings.data_trace_enabled #=> Boolean
    #   resp.items[0].default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.items[0].default_route_settings.logging_level #=> String, one of "ERROR", "INFO", "false"
    #   resp.items[0].default_route_settings.throttling_burst_limit #=> Integer
    #   resp.items[0].default_route_settings.throttling_rate_limit #=> Float
    #   resp.items[0].deployment_id #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].last_updated_date #=> Time
    #   resp.items[0].route_settings #=> Hash
    #   resp.items[0].route_settings["__string"].data_trace_enabled #=> Boolean
    #   resp.items[0].route_settings["__string"].detailed_metrics_enabled #=> Boolean
    #   resp.items[0].route_settings["__string"].logging_level #=> String, one of "ERROR", "INFO", "false"
    #   resp.items[0].route_settings["__string"].throttling_burst_limit #=> Integer
    #   resp.items[0].route_settings["__string"].throttling_rate_limit #=> Float
    #   resp.items[0].stage_name #=> String
    #   resp.items[0].stage_variables #=> Hash
    #   resp.items[0].stage_variables["__string"] #=> String
    #   resp.next_token #=> String
    #
    # @overload get_stages(params = {})
    # @param [Hash] params ({})
    def get_stages(params = {}, options = {})
      req = build_request(:get_stages, params)
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
    # @option params [String] :description
    #   A string with a length between \[0-1024\].
    #
    # @option params [Boolean] :disable_schema_validation
    #
    # @option params [String] :name
    #   A string with a length between \[1-128\].
    #
    # @option params [String] :route_selection_expression
    #   An expression used to extract information at runtime. See [Selection
    #   Expressions][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions
    #
    # @option params [String] :version
    #   A string with a length between \[1-64\].
    #
    # @return [Types::UpdateApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApiResponse#api_endpoint #api_endpoint} => String
    #   * {Types::UpdateApiResponse#api_id #api_id} => String
    #   * {Types::UpdateApiResponse#api_key_selection_expression #api_key_selection_expression} => String
    #   * {Types::UpdateApiResponse#created_date #created_date} => Time
    #   * {Types::UpdateApiResponse#description #description} => String
    #   * {Types::UpdateApiResponse#disable_schema_validation #disable_schema_validation} => Boolean
    #   * {Types::UpdateApiResponse#name #name} => String
    #   * {Types::UpdateApiResponse#protocol_type #protocol_type} => String
    #   * {Types::UpdateApiResponse#route_selection_expression #route_selection_expression} => String
    #   * {Types::UpdateApiResponse#version #version} => String
    #   * {Types::UpdateApiResponse#warnings #warnings} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api({
    #     api_id: "__string", # required
    #     api_key_selection_expression: "SelectionExpression",
    #     description: "StringWithLengthBetween0And1024",
    #     disable_schema_validation: false,
    #     name: "StringWithLengthBetween1And128",
    #     route_selection_expression: "SelectionExpression",
    #     version: "StringWithLengthBetween1And64",
    #   })
    #
    # @example Response structure
    #
    #   resp.api_endpoint #=> String
    #   resp.api_id #=> String
    #   resp.api_key_selection_expression #=> String
    #   resp.created_date #=> Time
    #   resp.description #=> String
    #   resp.disable_schema_validation #=> Boolean
    #   resp.name #=> String
    #   resp.protocol_type #=> String, one of "WEBSOCKET"
    #   resp.route_selection_expression #=> String
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
    #   After evaulating a selection expression, the result is compared
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
    #   The authorizer type. Currently the only valid value is REQUEST, for a
    #   Lambda function using incoming request parameters.
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
    # @option params [String] :name
    #   A string with a length between \[1-128\].
    #
    # @option params [Array<String>] :provider_arns
    #   For REQUEST authorizer, this is not defined.
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
    #   * {Types::UpdateAuthorizerResponse#name #name} => String
    #   * {Types::UpdateAuthorizerResponse#provider_arns #provider_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_authorizer({
    #     api_id: "__string", # required
    #     authorizer_credentials_arn: "Arn",
    #     authorizer_id: "__string", # required
    #     authorizer_result_ttl_in_seconds: 1,
    #     authorizer_type: "REQUEST", # accepts REQUEST
    #     authorizer_uri: "UriWithLengthBetween1And2048",
    #     identity_source: ["__string"],
    #     identity_validation_expression: "StringWithLengthBetween0And1024",
    #     name: "StringWithLengthBetween1And128",
    #     provider_arns: ["Arn"],
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_credentials_arn #=> String
    #   resp.authorizer_id #=> String
    #   resp.authorizer_result_ttl_in_seconds #=> Integer
    #   resp.authorizer_type #=> String, one of "REQUEST"
    #   resp.authorizer_uri #=> String
    #   resp.identity_source #=> Array
    #   resp.identity_source[0] #=> String
    #   resp.identity_validation_expression #=> String
    #   resp.name #=> String
    #   resp.provider_arns #=> Array
    #   resp.provider_arns[0] #=> String
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
    # @return [Types::UpdateDomainNameResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainNameResponse#api_mapping_selection_expression #api_mapping_selection_expression} => String
    #   * {Types::UpdateDomainNameResponse#domain_name #domain_name} => String
    #   * {Types::UpdateDomainNameResponse#domain_name_configurations #domain_name_configurations} => Array&lt;Types::DomainNameConfiguration&gt;
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
    #         endpoint_type: "REGIONAL", # accepts REGIONAL, EDGE
    #         hosted_zone_id: "__string",
    #       },
    #     ],
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
    #   resp.domain_name_configurations[0].endpoint_type #=> String, one of "REGIONAL", "EDGE"
    #   resp.domain_name_configurations[0].hosted_zone_id #=> String
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
    # @option params [String] :integration_type
    #   Represents an API method integration type.
    #
    # @option params [String] :integration_uri
    #   A string representation of a URI with a length between \[1-2048\].
    #
    # @option params [String] :passthrough_behavior
    #   Represents passthrough behavior for an integration response.
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
    #   An integer with a value between \[50-29000\].
    #
    # @return [Types::UpdateIntegrationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIntegrationResult#connection_id #connection_id} => String
    #   * {Types::UpdateIntegrationResult#connection_type #connection_type} => String
    #   * {Types::UpdateIntegrationResult#content_handling_strategy #content_handling_strategy} => String
    #   * {Types::UpdateIntegrationResult#credentials_arn #credentials_arn} => String
    #   * {Types::UpdateIntegrationResult#description #description} => String
    #   * {Types::UpdateIntegrationResult#integration_id #integration_id} => String
    #   * {Types::UpdateIntegrationResult#integration_method #integration_method} => String
    #   * {Types::UpdateIntegrationResult#integration_response_selection_expression #integration_response_selection_expression} => String
    #   * {Types::UpdateIntegrationResult#integration_type #integration_type} => String
    #   * {Types::UpdateIntegrationResult#integration_uri #integration_uri} => String
    #   * {Types::UpdateIntegrationResult#passthrough_behavior #passthrough_behavior} => String
    #   * {Types::UpdateIntegrationResult#request_parameters #request_parameters} => Hash&lt;String,String&gt;
    #   * {Types::UpdateIntegrationResult#request_templates #request_templates} => Hash&lt;String,String&gt;
    #   * {Types::UpdateIntegrationResult#template_selection_expression #template_selection_expression} => String
    #   * {Types::UpdateIntegrationResult#timeout_in_millis #timeout_in_millis} => Integer
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
    #     integration_type: "AWS", # accepts AWS, HTTP, MOCK, HTTP_PROXY, AWS_PROXY
    #     integration_uri: "UriWithLengthBetween1And2048",
    #     passthrough_behavior: "WHEN_NO_MATCH", # accepts WHEN_NO_MATCH, NEVER, WHEN_NO_TEMPLATES
    #     request_parameters: {
    #       "__string" => "StringWithLengthBetween1And512",
    #     },
    #     request_templates: {
    #       "__string" => "StringWithLengthBetween0And32K",
    #     },
    #     template_selection_expression: "SelectionExpression",
    #     timeout_in_millis: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_id #=> String
    #   resp.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.content_handling_strategy #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.credentials_arn #=> String
    #   resp.description #=> String
    #   resp.integration_id #=> String
    #   resp.integration_method #=> String
    #   resp.integration_response_selection_expression #=> String
    #   resp.integration_type #=> String, one of "AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.integration_uri #=> String
    #   resp.passthrough_behavior #=> String, one of "WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["__string"] #=> String
    #   resp.request_templates #=> Hash
    #   resp.request_templates["__string"] #=> String
    #   resp.template_selection_expression #=> String
    #   resp.timeout_in_millis #=> Integer
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
    #
    # @option params [required, String] :integration_id
    #
    # @option params [required, String] :integration_response_id
    #
    # @option params [String] :integration_response_key
    #   After evaulating a selection expression, the result is compared
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
    #   used with a COGNITO\_USER\_POOLS authorizer to authorize the method
    #   invocation. The authorization works by matching the route scopes
    #   against the scopes parsed from the access token in the incoming
    #   request. The method invocation is authorized if any route scope
    #   matches a claimed scope in the access token. Otherwise, the invocation
    #   is not authorized. When the route scope is configured, the client must
    #   provide an access token instead of an identity token for authorization
    #   purposes.
    #
    # @option params [String] :authorization_type
    #   The authorization type. Valid values are NONE for open access,
    #   AWS\_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda
    #   authorizer.
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
    #   After evaulating a selection expression, the result is compared
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
    #     authorization_type: "NONE", # accepts NONE, AWS_IAM, CUSTOM
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
    #   resp.api_key_required #=> Boolean
    #   resp.authorization_scopes #=> Array
    #   resp.authorization_scopes[0] #=> String
    #   resp.authorization_type #=> String, one of "NONE", "AWS_IAM", "CUSTOM"
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
    #   After evaulating a selection expression, the result is compared
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
    #   * {Types::UpdateStageResponse#client_certificate_id #client_certificate_id} => String
    #   * {Types::UpdateStageResponse#created_date #created_date} => Time
    #   * {Types::UpdateStageResponse#default_route_settings #default_route_settings} => Types::RouteSettings
    #   * {Types::UpdateStageResponse#deployment_id #deployment_id} => String
    #   * {Types::UpdateStageResponse#description #description} => String
    #   * {Types::UpdateStageResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::UpdateStageResponse#route_settings #route_settings} => Hash&lt;String,Types::RouteSettings&gt;
    #   * {Types::UpdateStageResponse#stage_name #stage_name} => String
    #   * {Types::UpdateStageResponse#stage_variables #stage_variables} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stage({
    #     access_log_settings: {
    #       destination_arn: "Arn",
    #       format: "StringWithLengthBetween1And1024",
    #     },
    #     api_id: "__string", # required
    #     client_certificate_id: "Id",
    #     default_route_settings: {
    #       data_trace_enabled: false,
    #       detailed_metrics_enabled: false,
    #       logging_level: "ERROR", # accepts ERROR, INFO, false
    #       throttling_burst_limit: 1,
    #       throttling_rate_limit: 1.0,
    #     },
    #     deployment_id: "Id",
    #     description: "StringWithLengthBetween0And1024",
    #     route_settings: {
    #       "__string" => {
    #         data_trace_enabled: false,
    #         detailed_metrics_enabled: false,
    #         logging_level: "ERROR", # accepts ERROR, INFO, false
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
    #   resp.client_certificate_id #=> String
    #   resp.created_date #=> Time
    #   resp.default_route_settings.data_trace_enabled #=> Boolean
    #   resp.default_route_settings.detailed_metrics_enabled #=> Boolean
    #   resp.default_route_settings.logging_level #=> String, one of "ERROR", "INFO", "false"
    #   resp.default_route_settings.throttling_burst_limit #=> Integer
    #   resp.default_route_settings.throttling_rate_limit #=> Float
    #   resp.deployment_id #=> String
    #   resp.description #=> String
    #   resp.last_updated_date #=> Time
    #   resp.route_settings #=> Hash
    #   resp.route_settings["__string"].data_trace_enabled #=> Boolean
    #   resp.route_settings["__string"].detailed_metrics_enabled #=> Boolean
    #   resp.route_settings["__string"].logging_level #=> String, one of "ERROR", "INFO", "false"
    #   resp.route_settings["__string"].throttling_burst_limit #=> Integer
    #   resp.route_settings["__string"].throttling_rate_limit #=> Float
    #   resp.stage_name #=> String
    #   resp.stage_variables #=> Hash
    #   resp.stage_variables["__string"] #=> String
    #
    # @overload update_stage(params = {})
    # @param [Hash] params ({})
    def update_stage(params = {}, options = {})
      req = build_request(:update_stage, params)
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
      context[:gem_version] = '1.7.0'
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
