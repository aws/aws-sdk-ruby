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
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:apigatewayv2)

module Aws::ApiGatewayV2
  # An API client for Aws::ApiGatewayV2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ApiGatewayV2
    @identifier = :apigatewayv2

    add_plugin(::Aws::ApiGatewayV2::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ApiGatewayV2::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
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
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates an Api resource.</p>
    # @param [Hash, Types::CreateApiRequest] params
    # @option params [String] :api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    # @option params [Types::Cors] :cors_configuration
    #   <p>A CORS configuration. Supported only for HTTP APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html">Configuring CORS</a> for more information.</p>
    # @option params [String] :credentials_arn
    #   <p>This property is part of quick create. It specifies the credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null. Currently, this property is not used for HTTP integrations. Supported only for HTTP APIs.</p>
    # @option params [String] :description
    #   <p>The description of the API.</p>
    # @option params [Boolean] :disable_schema_validation
    #   <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    # @option params [Boolean] :disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address types that can invoke the API.</p>
    # @option params [String] :name
    #   <p>The name of the API.</p>
    # @option params [String] :protocol_type
    #   <p>The API protocol.</p>
    # @option params [String] :route_key
    #   <p>This property is part of quick create. If you don't specify a routeKey, a default route of $default is created. The $default route acts as a catch-all for any request made to your API, for a particular stage. The $default route key can't be modified. You can add routes after creating the API, and you can update the route keys of additional routes. Supported only for HTTP APIs.</p>
    # @option params [String] :route_selection_expression
    #   <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    # @option params [String] :target
    #   <p>This property is part of quick create. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. Supported only for HTTP APIs.</p>
    # @option params [String] :version
    #   <p>A version identifier for the API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_key_selection_expression: "SelectionExpression",
    #     cors_configuration: {
    #       allow_credentials: false,
    #       allow_headers: ["__string"],
    #       allow_methods: ["StringWithLengthBetween1And64"],
    #       allow_origins: ["__string"],
    #       expose_headers: ["__string"],
    #       max_age: 1
    #     },
    #     credentials_arn: "Arn",
    #     description: "StringWithLengthBetween0And1024",
    #     disable_schema_validation: false,
    #     disable_execute_api_endpoint: false,
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #     name: "StringWithLengthBetween1And128", # required
    #     protocol_type: "WEBSOCKET" # One of: ["WEBSOCKET", "HTTP"], # required
    #     route_key: "SelectionKey",
    #     route_selection_expression: "SelectionExpression",
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     },
    #     target: "UriWithLengthBetween1And2048",
    #     version: "StringWithLengthBetween1And64"
    #   }
    #   options = {}
    #   response = client.create_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_endpoint: "__string",
    #     api_gateway_managed: false,
    #     api_id: "Id",
    #     api_key_selection_expression: "SelectionExpression",
    #     cors_configuration: {
    #       allow_credentials: false,
    #       allow_headers: ["__string"],
    #       allow_methods: ["StringWithLengthBetween1And64"],
    #       allow_origins: ["__string"],
    #       expose_headers: ["__string"],
    #       max_age: 1
    #     },
    #     created_date: Time.now,
    #     description: "StringWithLengthBetween0And1024",
    #     disable_schema_validation: false,
    #     disable_execute_api_endpoint: false,
    #     import_info: ["__string"],
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #     name: "StringWithLengthBetween1And128",
    #     protocol_type: "WEBSOCKET" # One of: ["WEBSOCKET", "HTTP"],
    #     route_selection_expression: "SelectionExpression",
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     },
    #     version: "StringWithLengthBetween1And64",
    #     warnings: ["__string"]
    #   }
    # @return [Types::CreateApiResponse]
    def create_api(params = {}, options = {})
      request = build_request(:create_api, params)
      request.send_request(options)
    end

    # <p>Creates an API mapping.</p>
    # @param [Hash, Types::CreateApiMappingRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :api_mapping_key
    #   The API mapping key.
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [String] :stage
    #   <p>The API stage.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "Id", # required
    #     api_mapping_key: "SelectionKey",
    #     domain_name: "__string", # required
    #     stage: "StringWithLengthBetween1And128", # required
    #   }
    #   options = {}
    #   response = client.create_api_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_id: "Id",
    #     api_mapping_id: "Id",
    #     api_mapping_key: "SelectionKey",
    #     stage: "StringWithLengthBetween1And128"
    #   }
    # @return [Types::CreateApiMappingResponse]
    def create_api_mapping(params = {}, options = {})
      request = build_request(:create_api_mapping, params)
      request.send_request(options)
    end

    # <p>Creates an Authorizer for an API.</p>
    # @param [Hash, Types::CreateAuthorizerRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :authorizer_credentials_arn
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter. Supported only for REQUEST authorizers.</p>
    # @option params [String] :authorizer_payload_format_version
    #   <p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>
    # @option params [Integer] :authorizer_result_ttl_in_seconds
    #   <p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>
    # @option params [String] :authorizer_type
    #   <p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>
    # @option params [String] :authorizer_uri
    #   <p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
    #                  , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>
    # @option params [Boolean] :enable_simple_responses
    #   <p>Specifies whether a Lambda authorizer returns a response in a simple format. By default, a Lambda authorizer must return an IAM policy. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a></p>
    # @option params [Array<String>] :identity_source
    #   <p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>
    # @option params [String] :identity_validation_expression
    #   <p>This parameter is not used.</p>
    # @option params [Types::JWTConfiguration] :jwt_configuration
    #   <p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>
    # @option params [String] :name
    #   <p>The name of the authorizer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     authorizer_credentials_arn: "Arn",
    #     authorizer_payload_format_version: "StringWithLengthBetween1And64",
    #     authorizer_result_ttl_in_seconds: 1,
    #     authorizer_type: "REQUEST" # One of: ["REQUEST", "JWT"], # required
    #     authorizer_uri: "UriWithLengthBetween1And2048",
    #     enable_simple_responses: false,
    #     identity_source: ["__string"], # required
    #     identity_validation_expression: "StringWithLengthBetween0And1024",
    #     jwt_configuration: {
    #       audience: ["__string"],
    #       issuer: "UriWithLengthBetween1And2048"
    #     },
    #     name: "StringWithLengthBetween1And128", # required
    #   }
    #   options = {}
    #   response = client.create_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorizer_credentials_arn: "Arn",
    #     authorizer_id: "Id",
    #     authorizer_payload_format_version: "StringWithLengthBetween1And64",
    #     authorizer_result_ttl_in_seconds: 1,
    #     authorizer_type: "REQUEST" # One of: ["REQUEST", "JWT"],
    #     authorizer_uri: "UriWithLengthBetween1And2048",
    #     enable_simple_responses: false,
    #     identity_source: ["__string"],
    #     identity_validation_expression: "StringWithLengthBetween0And1024",
    #     jwt_configuration: {
    #       audience: ["__string"],
    #       issuer: "UriWithLengthBetween1And2048"
    #     },
    #     name: "StringWithLengthBetween1And128"
    #   }
    # @return [Types::CreateAuthorizerResponse]
    def create_authorizer(params = {}, options = {})
      request = build_request(:create_authorizer, params)
      request.send_request(options)
    end

    # <p>Creates a Deployment for an API.</p>
    # @param [Hash, Types::CreateDeploymentRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :description
    #   <p>The description for the deployment resource.</p>
    # @option params [String] :stage_name
    #   <p>The name of the Stage resource for the Deployment resource to create.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     description: "StringWithLengthBetween0And1024",
    #     stage_name: "StringWithLengthBetween1And128"
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_deployed: false,
    #     created_date: Time.now,
    #     deployment_id: "Id",
    #     deployment_status: "PENDING" # One of: ["PENDING", "FAILED", "DEPLOYED"],
    #     deployment_status_message: "__string",
    #     description: "StringWithLengthBetween0And1024"
    #   }
    # @return [Types::CreateDeploymentResponse]
    def create_deployment(params = {}, options = {})
      request = build_request(:create_deployment, params)
      request.send_request(options)
    end

    # <p>Creates a domain name.</p>
    # @param [Hash, Types::CreateDomainNameRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [Array<Types::DomainNameConfiguration>] :domain_name_configurations
    #   <p>The domain name configurations.</p>
    # @option params [Types::MutualTlsAuthenticationInput] :mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name.</p>
    # @option params [String] :routing_mode
    #   <p>The routing mode.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The collection of tags associated with a domain name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "StringWithLengthBetween1And512", # required
    #     domain_name_configurations: [
    #       {
    #         api_gateway_domain_name: "__string",
    #         certificate_arn: "Arn",
    #         certificate_name: "StringWithLengthBetween1And128",
    #         certificate_upload_date: Time.now,
    #         domain_name_status: "AVAILABLE" # One of: ["AVAILABLE", "UPDATING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"],
    #         domain_name_status_message: "__string",
    #         endpoint_type: "REGIONAL" # One of: ["REGIONAL", "EDGE"],
    #         hosted_zone_id: "__string",
    #         ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #         security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2"],
    #         ownership_verification_certificate_arn: "Arn"
    #       }
    #     ],
    #     mutual_tls_authentication: {
    #       truststore_uri: "UriWithLengthBetween1And2048",
    #       truststore_version: "StringWithLengthBetween1And64"
    #     },
    #     routing_mode: "API_MAPPING_ONLY" # One of: ["API_MAPPING_ONLY", "ROUTING_RULE_ONLY", "ROUTING_RULE_THEN_API_MAPPING"],
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     }
    #   }
    #   options = {}
    #   response = client.create_domain_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_mapping_selection_expression: "SelectionExpression",
    #     domain_name: "StringWithLengthBetween1And512",
    #     domain_name_arn: "Arn",
    #     domain_name_configurations: [
    #       {
    #         api_gateway_domain_name: "__string",
    #         certificate_arn: "Arn",
    #         certificate_name: "StringWithLengthBetween1And128",
    #         certificate_upload_date: Time.now,
    #         domain_name_status: "AVAILABLE" # One of: ["AVAILABLE", "UPDATING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"],
    #         domain_name_status_message: "__string",
    #         endpoint_type: "REGIONAL" # One of: ["REGIONAL", "EDGE"],
    #         hosted_zone_id: "__string",
    #         ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #         security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2"],
    #         ownership_verification_certificate_arn: "Arn"
    #       }
    #     ],
    #     mutual_tls_authentication: {
    #       truststore_uri: "UriWithLengthBetween1And2048",
    #       truststore_version: "StringWithLengthBetween1And64",
    #       truststore_warnings: ["__string"]
    #     },
    #     routing_mode: "API_MAPPING_ONLY" # One of: ["API_MAPPING_ONLY", "ROUTING_RULE_ONLY", "ROUTING_RULE_THEN_API_MAPPING"],
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     }
    #   }
    # @return [Types::CreateDomainNameResponse]
    def create_domain_name(params = {}, options = {})
      request = build_request(:create_domain_name, params)
      request.send_request(options)
    end

    # <p>Creates an Integration.</p>
    # @param [Hash, Types::CreateIntegrationRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :connection_id
    #   <p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>
    # @option params [String] :connection_type
    #   <p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>
    # @option params [String] :content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    # @option params [String] :credentials_arn
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>
    # @option params [String] :description
    #   <p>The description of the integration.</p>
    # @option params [String] :integration_method
    #   <p>Specifies the integration's HTTP method type.</p>
    # @option params [String] :integration_subtype
    #   <p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html">Integration subtype reference</a>.</p>
    # @option params [String] :integration_type
    #   <p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration. For HTTP API private integrations, use an HTTP_PROXY integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a "loopback" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>
    # @option params [String] :integration_uri
    #   <p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>
    # @option params [String] :passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>
    # @option params [String] :payload_format_version
    #   <p>Specifies the format of the payload sent to an integration. Required for HTTP APIs. Supported values for Lambda proxy integrations are 1.0 and 2.0. For all other integrations, 1.0 is the only supported value. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html">Working with AWS Lambda proxy integrations for HTTP APIs</a>.</p>
    # @option params [Hash<String, String>] :request_parameters
    #   <p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
    #                  , where 
    #                     <replaceable>{location}</replaceable>
    #                   is querystring, path, or header; and 
    #                     <replaceable>{name}</replaceable>
    #                   must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to the backend. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt; where action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    # @option params [Hash<String, String>] :request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>
    # @option params [Hash<String, Hash<String, String>>] :response_parameters
    #   <p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    # @option params [String] :template_selection_expression
    #   <p>The template selection expression for the integration.</p>
    # @option params [Integer] :timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>
    # @option params [Types::TlsConfigInput] :tls_config
    #   <p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     connection_id: "StringWithLengthBetween1And1024",
    #     connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #     content_handling_strategy: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     credentials_arn: "Arn",
    #     description: "StringWithLengthBetween0And1024",
    #     integration_method: "StringWithLengthBetween1And64",
    #     integration_subtype: "StringWithLengthBetween1And128",
    #     integration_type: "AWS" # One of: ["AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"], # required
    #     integration_uri: "UriWithLengthBetween1And2048",
    #     passthrough_behavior: "WHEN_NO_MATCH" # One of: ["WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"],
    #     payload_format_version: "StringWithLengthBetween1And64",
    #     request_parameters: {
    #       "__string" => "StringWithLengthBetween1And512"
    #     },
    #     request_templates: {
    #       "__string" => "StringWithLengthBetween0And32K"
    #     },
    #     response_parameters: {
    #       "__string" => {
    #         "__string" => "StringWithLengthBetween1And512"
    #       }
    #     },
    #     template_selection_expression: "SelectionExpression",
    #     timeout_in_millis: 1,
    #     tls_config: {
    #       server_name_to_verify: "StringWithLengthBetween1And512"
    #     }
    #   }
    #   options = {}
    #   response = client.create_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_gateway_managed: false,
    #     connection_id: "StringWithLengthBetween1And1024",
    #     connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #     content_handling_strategy: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     credentials_arn: "Arn",
    #     description: "StringWithLengthBetween0And1024",
    #     integration_id: "Id",
    #     integration_method: "StringWithLengthBetween1And64",
    #     integration_response_selection_expression: "SelectionExpression",
    #     integration_subtype: "StringWithLengthBetween1And128",
    #     integration_type: "AWS" # One of: ["AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #     integration_uri: "UriWithLengthBetween1And2048",
    #     passthrough_behavior: "WHEN_NO_MATCH" # One of: ["WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"],
    #     payload_format_version: "StringWithLengthBetween1And64",
    #     request_parameters: {
    #       "__string" => "StringWithLengthBetween1And512"
    #     },
    #     request_templates: {
    #       "__string" => "StringWithLengthBetween0And32K"
    #     },
    #     response_parameters: {
    #       "__string" => {
    #         "__string" => "StringWithLengthBetween1And512"
    #       }
    #     },
    #     template_selection_expression: "SelectionExpression",
    #     timeout_in_millis: 1,
    #     tls_config: {
    #       server_name_to_verify: "StringWithLengthBetween1And512"
    #     }
    #   }
    # @return [Types::CreateIntegrationResult]
    def create_integration(params = {}, options = {})
      request = build_request(:create_integration, params)
      request.send_request(options)
    end

    # <p>Creates an IntegrationResponses.</p>
    # @param [Hash, Types::CreateIntegrationResponseRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :content_handling_strategy
    #   <p>Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    # @option params [String] :integration_response_key
    #   <p>The integration response key.</p>
    # @option params [Hash<String, String>] :response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.{name}, where {name} is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.{name} or integration.response.body.{JSON-expression}, where {name} is a valid and unique response header name and {JSON-expression} is a valid JSON expression without the $ prefix.</p>
    # @option params [Hash<String, String>] :response_templates
    #   <p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    # @option params [String] :template_selection_expression
    #   <p>The template selection expression for the integration response. Supported only for WebSocket APIs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     content_handling_strategy: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     integration_id: "__string", # required
    #     integration_response_key: "SelectionKey", # required
    #     response_parameters: {
    #       "__string" => "StringWithLengthBetween1And512"
    #     },
    #     response_templates: {
    #       "__string" => "StringWithLengthBetween0And32K"
    #     },
    #     template_selection_expression: "SelectionExpression"
    #   }
    #   options = {}
    #   response = client.create_integration_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_handling_strategy: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     integration_response_id: "Id",
    #     integration_response_key: "SelectionKey",
    #     response_parameters: {
    #       "__string" => "StringWithLengthBetween1And512"
    #     },
    #     response_templates: {
    #       "__string" => "StringWithLengthBetween0And32K"
    #     },
    #     template_selection_expression: "SelectionExpression"
    #   }
    # @return [Types::CreateIntegrationResponseResponse]
    def create_integration_response(params = {}, options = {})
      request = build_request(:create_integration_response, params)
      request.send_request(options)
    end

    # <p>Creates a Model for an API.</p>
    # @param [Hash, Types::CreateModelRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :content_type
    #   <p>The content-type for the model, for example, "application/json".</p>
    # @option params [String] :description
    #   <p>The description of the model.</p>
    # @option params [String] :name
    #   <p>The name of the model. Must be alphanumeric.</p>
    # @option params [String] :schema
    #   <p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     content_type: "StringWithLengthBetween1And256",
    #     description: "StringWithLengthBetween0And1024",
    #     name: "StringWithLengthBetween1And128", # required
    #     schema: "StringWithLengthBetween0And32K", # required
    #   }
    #   options = {}
    #   response = client.create_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "StringWithLengthBetween1And256",
    #     description: "StringWithLengthBetween0And1024",
    #     model_id: "Id",
    #     name: "StringWithLengthBetween1And128",
    #     schema: "StringWithLengthBetween0And32K"
    #   }
    # @return [Types::CreateModelResponse]
    def create_model(params = {}, options = {})
      request = build_request(:create_model, params)
      request.send_request(options)
    end

    # <p>Creates a Route for an API.</p>
    # @param [Hash, Types::CreateRouteRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [Boolean] :api_key_required
    #   <p>Specifies whether an API key is required for the route. Supported only for WebSocket APIs.</p>
    # @option params [Array<String>] :authorization_scopes
    #   <p>The authorization scopes supported by this route.</p>
    # @option params [String] :authorization_type
    #   <p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>
    # @option params [String] :authorizer_id
    #   <p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    # @option params [String] :model_selection_expression
    #   <p>The model selection expression for the route. Supported only for WebSocket APIs.</p>
    # @option params [String] :operation_name
    #   <p>The operation name for the route.</p>
    # @option params [Hash<String, String>] :request_models
    #   <p>The request models for the route. Supported only for WebSocket APIs.</p>
    # @option params [Hash<String, Types::ParameterConstraints>] :request_parameters
    #   <p>The request parameters for the route. Supported only for WebSocket APIs.</p>
    # @option params [String] :route_key
    #   <p>The route key for the route.</p>
    # @option params [String] :route_response_selection_expression
    #   <p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>
    # @option params [String] :target
    #   <p>The target for the route.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     api_key_required: false,
    #     authorization_scopes: ["StringWithLengthBetween1And64"],
    #     authorization_type: "NONE" # One of: ["NONE", "AWS_IAM", "CUSTOM", "JWT"],
    #     authorizer_id: "Id",
    #     model_selection_expression: "SelectionExpression",
    #     operation_name: "StringWithLengthBetween1And64",
    #     request_models: {
    #       "__string" => "StringWithLengthBetween1And128"
    #     },
    #     request_parameters: {
    #       "__string" => {
    #         required: false
    #       }
    #     },
    #     route_key: "SelectionKey", # required
    #     route_response_selection_expression: "SelectionExpression",
    #     target: "StringWithLengthBetween1And128"
    #   }
    #   options = {}
    #   response = client.create_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_gateway_managed: false,
    #     api_key_required: false,
    #     authorization_scopes: ["StringWithLengthBetween1And64"],
    #     authorization_type: "NONE" # One of: ["NONE", "AWS_IAM", "CUSTOM", "JWT"],
    #     authorizer_id: "Id",
    #     model_selection_expression: "SelectionExpression",
    #     operation_name: "StringWithLengthBetween1And64",
    #     request_models: {
    #       "__string" => "StringWithLengthBetween1And128"
    #     },
    #     request_parameters: {
    #       "__string" => {
    #         required: false
    #       }
    #     },
    #     route_id: "Id",
    #     route_key: "SelectionKey",
    #     route_response_selection_expression: "SelectionExpression",
    #     target: "StringWithLengthBetween1And128"
    #   }
    # @return [Types::CreateRouteResult]
    def create_route(params = {}, options = {})
      request = build_request(:create_route, params)
      request.send_request(options)
    end

    # <p>Creates a RouteResponse for a Route.</p>
    # @param [Hash, Types::CreateRouteResponseRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :model_selection_expression
    #   <p>The model selection expression for the route response. Supported only for WebSocket APIs.</p>
    # @option params [Hash<String, String>] :response_models
    #   <p>The response models for the route response.</p>
    # @option params [Hash<String, Types::ParameterConstraints>] :response_parameters
    #   <p>The route response parameters.</p>
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    # @option params [String] :route_response_key
    #   <p>The route response key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     model_selection_expression: "SelectionExpression",
    #     response_models: {
    #       "__string" => "StringWithLengthBetween1And128"
    #     },
    #     response_parameters: {
    #       "__string" => {
    #         required: false
    #       }
    #     },
    #     route_id: "__string", # required
    #     route_response_key: "SelectionKey", # required
    #   }
    #   options = {}
    #   response = client.create_route_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_selection_expression: "SelectionExpression",
    #     response_models: {
    #       "__string" => "StringWithLengthBetween1And128"
    #     },
    #     response_parameters: {
    #       "__string" => {
    #         required: false
    #       }
    #     },
    #     route_response_id: "Id",
    #     route_response_key: "SelectionKey"
    #   }
    # @return [Types::CreateRouteResponseResponse]
    def create_route_response(params = {}, options = {})
      request = build_request(:create_route_response, params)
      request.send_request(options)
    end

    # <p>Creates a RoutingRule.</p>
    # @param [Hash, Types::CreateRoutingRuleRequest] params
    # @option params [Array<Types::RoutingRuleAction>] :actions
    #   <p>Represents a routing rule action. The only supported action is invokeApi.</p>
    # @option params [Array<Types::RoutingRuleCondition>] :conditions
    #   <p>Represents a condition. Conditions can contain up to two matchHeaders conditions and one matchBasePaths conditions. API Gateway evaluates header conditions and base path conditions together. You can only use AND between header and base path conditions.</p>
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [String] :domain_name_id
    #   <p>The domain name ID.</p>
    # @option params [Integer] :priority
    #   Represents the priority of the routing rule.
    # @example Request syntax with placeholder values
    #   params = {
    #     actions: [ # required
    #       {
    #         invoke_api: { # required
    #           api_id: "Id", # required
    #           stage: "StringWithLengthBetween1And128", # required
    #           strip_base_path: false
    #         }
    #       }
    #     ],
    #     conditions: [ # required
    #       {
    #         match_base_paths: {
    #           any_of: ["SelectionKey"], # required
    #         },
    #         match_headers: {
    #           any_of: [ # required
    #             {
    #               header: "SelectionKey", # required
    #               value_glob: "SelectionExpression", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     domain_name: "__string", # required
    #     domain_name_id: "__string",
    #     priority: 1, # required
    #   }
    #   options = {}
    #   response = client.create_routing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     actions: [
    #       {
    #         invoke_api: { # required
    #           api_id: "Id", # required
    #           stage: "StringWithLengthBetween1And128", # required
    #           strip_base_path: false
    #         }
    #       }
    #     ],
    #     conditions: [
    #       {
    #         match_base_paths: {
    #           any_of: ["SelectionKey"], # required
    #         },
    #         match_headers: {
    #           any_of: [ # required
    #             {
    #               header: "SelectionKey", # required
    #               value_glob: "SelectionExpression", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     priority: 1,
    #     routing_rule_arn: "Arn",
    #     routing_rule_id: "Id"
    #   }
    # @return [Types::CreateRoutingRuleResponse]
    def create_routing_rule(params = {}, options = {})
      request = build_request(:create_routing_rule, params)
      request.send_request(options)
    end

    # <p>Creates a Stage for an API.</p>
    # @param [Hash, Types::CreateStageRequest] params
    # @option params [Types::AccessLogSettings] :access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [Boolean] :auto_deploy
    #   <p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>
    # @option params [String] :client_certificate_id
    #   <p>The identifier of a client certificate for a Stage. Supported only for WebSocket APIs.</p>
    # @option params [Types::RouteSettings] :default_route_settings
    #   <p>The default route settings for the stage.</p>
    # @option params [String] :deployment_id
    #   <p>The deployment identifier of the API stage.</p>
    # @option params [String] :description
    #   <p>The description for the API stage.</p>
    # @option params [Hash<String, Types::RouteSettings>] :route_settings
    #   <p>Route settings for the stage, by routeKey.</p>
    # @option params [String] :stage_name
    #   <p>The name of the stage.</p>
    # @option params [Hash<String, String>] :stage_variables
    #   <p>A map that defines the stage variables for a Stage. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_log_settings: {
    #       destination_arn: "Arn",
    #       format: "StringWithLengthBetween1And1024"
    #     },
    #     api_id: "__string", # required
    #     auto_deploy: false,
    #     client_certificate_id: "Id",
    #     default_route_settings: {
    #       data_trace_enabled: false,
    #       detailed_metrics_enabled: false,
    #       logging_level: "ERROR" # One of: ["ERROR", "INFO", "OFF"],
    #       throttling_burst_limit: 1,
    #       throttling_rate_limit: 1.0
    #     },
    #     deployment_id: "Id",
    #     description: "StringWithLengthBetween0And1024",
    #     route_settings: {
    #       "__string" => {
    #         data_trace_enabled: false,
    #         detailed_metrics_enabled: false,
    #         logging_level: "ERROR" # One of: ["ERROR", "INFO", "OFF"],
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0
    #       }
    #     },
    #     stage_name: "StringWithLengthBetween1And128", # required
    #     stage_variables: {
    #       "__string" => "StringWithLengthBetween0And2048"
    #     },
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     }
    #   }
    #   options = {}
    #   response = client.create_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_log_settings: {
    #       destination_arn: "Arn",
    #       format: "StringWithLengthBetween1And1024"
    #     },
    #     api_gateway_managed: false,
    #     auto_deploy: false,
    #     client_certificate_id: "Id",
    #     created_date: Time.now,
    #     default_route_settings: {
    #       data_trace_enabled: false,
    #       detailed_metrics_enabled: false,
    #       logging_level: "ERROR" # One of: ["ERROR", "INFO", "OFF"],
    #       throttling_burst_limit: 1,
    #       throttling_rate_limit: 1.0
    #     },
    #     deployment_id: "Id",
    #     description: "StringWithLengthBetween0And1024",
    #     last_deployment_status_message: "__string",
    #     last_updated_date: Time.now,
    #     route_settings: {
    #       "__string" => {
    #         data_trace_enabled: false,
    #         detailed_metrics_enabled: false,
    #         logging_level: "ERROR" # One of: ["ERROR", "INFO", "OFF"],
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0
    #       }
    #     },
    #     stage_name: "StringWithLengthBetween1And128",
    #     stage_variables: {
    #       "__string" => "StringWithLengthBetween0And2048"
    #     },
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     }
    #   }
    # @return [Types::CreateStageResponse]
    def create_stage(params = {}, options = {})
      request = build_request(:create_stage, params)
      request.send_request(options)
    end

    # <p>Creates a VPC link.</p>
    # @param [Hash, Types::CreateVpcLinkRequest] params
    # @option params [String] :name
    #   <p>The name of the VPC link.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of security group IDs for the VPC link.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of subnet IDs to include in the VPC link.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StringWithLengthBetween1And128", # required
    #     security_group_ids: ["__string"],
    #     subnet_ids: ["__string"], # required
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     }
    #   }
    #   options = {}
    #   response = client.create_vpc_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_date: Time.now,
    #     name: "StringWithLengthBetween1And128",
    #     security_group_ids: ["__string"],
    #     subnet_ids: ["__string"],
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     },
    #     vpc_link_id: "Id",
    #     vpc_link_status: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "FAILED", "INACTIVE"],
    #     vpc_link_status_message: "StringWithLengthBetween0And1024",
    #     vpc_link_version: "V2" # One of: ["V2"]
    #   }
    # @return [Types::CreateVpcLinkResponse]
    def create_vpc_link(params = {}, options = {})
      request = build_request(:create_vpc_link, params)
      request.send_request(options)
    end

    # <p>Deletes the AccessLogSettings for a Stage. To disable access logging for a Stage, delete its AccessLogSettings.</p>
    # @param [Hash, Types::DeleteAccessLogSettingsRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :stage_name
    #   <p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     stage_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_access_log_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_access_log_settings(params = {}, options = {})
      request = build_request(:delete_access_log_settings, params)
      request.send_request(options)
    end

    # <p>Deletes an Api resource.</p>
    # @param [Hash, Types::DeleteApiRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_api(params = {}, options = {})
      request = build_request(:delete_api, params)
      request.send_request(options)
    end

    # <p>Deletes an API mapping.</p>
    # @param [Hash, Types::DeleteApiMappingRequest] params
    # @option params [String] :api_mapping_id
    #   <p>The API mapping identifier.</p>
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_mapping_id: "__string", # required
    #     domain_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_api_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_api_mapping(params = {}, options = {})
      request = build_request(:delete_api_mapping, params)
      request.send_request(options)
    end

    # <p>Deletes an Authorizer.</p>
    # @param [Hash, Types::DeleteAuthorizerRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :authorizer_id
    #   <p>The authorizer identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     authorizer_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_authorizer(params = {}, options = {})
      request = build_request(:delete_authorizer, params)
      request.send_request(options)
    end

    # <p>Deletes a CORS configuration.</p>
    # @param [Hash, Types::DeleteCorsConfigurationRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_cors_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_cors_configuration(params = {}, options = {})
      request = build_request(:delete_cors_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a Deployment.</p>
    # @param [Hash, Types::DeleteDeploymentRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :deployment_id
    #   <p>The deployment ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     deployment_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_deployment(params = {}, options = {})
      request = build_request(:delete_deployment, params)
      request.send_request(options)
    end

    # <p>Deletes a domain name.</p>
    # @param [Hash, Types::DeleteDomainNameRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_domain_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_domain_name(params = {}, options = {})
      request = build_request(:delete_domain_name, params)
      request.send_request(options)
    end

    # <p>Deletes an Integration.</p>
    # @param [Hash, Types::DeleteIntegrationRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     integration_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_integration(params = {}, options = {})
      request = build_request(:delete_integration, params)
      request.send_request(options)
    end

    # <p>Deletes an IntegrationResponses.</p>
    # @param [Hash, Types::DeleteIntegrationResponseRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    # @option params [String] :integration_response_id
    #   <p>The integration response ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     integration_id: "__string", # required
    #     integration_response_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_integration_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_integration_response(params = {}, options = {})
      request = build_request(:delete_integration_response, params)
      request.send_request(options)
    end

    # <p>Deletes a Model.</p>
    # @param [Hash, Types::DeleteModelRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     model_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_model(params = {}, options = {})
      request = build_request(:delete_model, params)
      request.send_request(options)
    end

    # <p>Deletes a Route.</p>
    # @param [Hash, Types::DeleteRouteRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     route_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_route(params = {}, options = {})
      request = build_request(:delete_route, params)
      request.send_request(options)
    end

    # <p>Deletes a route request parameter. Supported only for WebSocket APIs.</p>
    # @param [Hash, Types::DeleteRouteRequestParameterRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :request_parameter_key
    #   <p>The route request parameter key.</p>
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     request_parameter_key: "__string", # required
    #     route_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_route_request_parameter(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_route_request_parameter(params = {}, options = {})
      request = build_request(:delete_route_request_parameter, params)
      request.send_request(options)
    end

    # <p>Deletes a RouteResponse.</p>
    # @param [Hash, Types::DeleteRouteResponseRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    # @option params [String] :route_response_id
    #   <p>The route response ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     route_id: "__string", # required
    #     route_response_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_route_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_route_response(params = {}, options = {})
      request = build_request(:delete_route_response, params)
      request.send_request(options)
    end

    # <p>Deletes the RouteSettings for a stage.</p>
    # @param [Hash, Types::DeleteRouteSettingsRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :route_key
    #   <p>The route key.</p>
    # @option params [String] :stage_name
    #   <p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     route_key: "__string", # required
    #     stage_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_route_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_route_settings(params = {}, options = {})
      request = build_request(:delete_route_settings, params)
      request.send_request(options)
    end

    # <p>Deletes a routing rule.</p>
    # @param [Hash, Types::DeleteRoutingRuleRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [String] :domain_name_id
    #   <p>The domain name ID.</p>
    # @option params [String] :routing_rule_id
    #   <p>The routing rule ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "__string", # required
    #     domain_name_id: "__string",
    #     routing_rule_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_routing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_routing_rule(params = {}, options = {})
      request = build_request(:delete_routing_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a Stage.</p>
    # @param [Hash, Types::DeleteStageRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :stage_name
    #   <p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     stage_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_stage(params = {}, options = {})
      request = build_request(:delete_stage, params)
      request.send_request(options)
    end

    # <p>Deletes a VPC link.</p>
    # @param [Hash, Types::DeleteVpcLinkRequest] params
    # @option params [String] :vpc_link_id
    #   <p>The ID of the VPC link.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_link_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_vpc_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteVpcLinkResponse]
    def delete_vpc_link(params = {}, options = {})
      request = build_request(:delete_vpc_link, params)
      request.send_request(options)
    end

    # @param [Hash, Types::ExportApiRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :export_version
    #   <p>The version of the API Gateway export algorithm. API Gateway uses the latest version by default. Currently, the only supported version is 1.0.</p>
    # @option params [Boolean] :include_extensions
    #   <p>Specifies whether to include <a href="https://docs.aws.amazon.com//apigateway/latest/developerguide/api-gateway-swagger-extensions.html">API Gateway extensions</a> in the exported API definition. API Gateway extensions are included by default.</p>
    # @option params [String] :output_type
    #   <p>The output type of the exported definition file. Valid values are JSON and YAML.</p>
    # @option params [String] :specification
    #   <p>The version of the API specification to use. OAS30, for OpenAPI 3.0, is the only supported value.</p>
    # @option params [String] :stage_name
    #   <p>The name of the API stage to export. If you don't specify this property, a representation of the latest API configuration is exported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     export_version: "__string",
    #     include_extensions: false,
    #     output_type: "__string", # required
    #     specification: "__string", # required
    #     stage_name: "__string"
    #   }
    #   options = {}
    #   response = client.export_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     body: "data"
    #   }
    # @return [Types::ExportApiResponse]
    def export_api(params = {}, options = {})
      request = build_request(:export_api, params)
      request.send_request(options)
    end

    # <p>Gets an Api resource.</p>
    # @param [Hash, Types::GetApiRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_endpoint: "__string",
    #     api_gateway_managed: false,
    #     api_id: "Id",
    #     api_key_selection_expression: "SelectionExpression",
    #     cors_configuration: {
    #       allow_credentials: false,
    #       allow_headers: ["__string"],
    #       allow_methods: ["StringWithLengthBetween1And64"],
    #       allow_origins: ["__string"],
    #       expose_headers: ["__string"],
    #       max_age: 1
    #     },
    #     created_date: Time.now,
    #     description: "StringWithLengthBetween0And1024",
    #     disable_schema_validation: false,
    #     disable_execute_api_endpoint: false,
    #     import_info: ["__string"],
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #     name: "StringWithLengthBetween1And128",
    #     protocol_type: "WEBSOCKET" # One of: ["WEBSOCKET", "HTTP"],
    #     route_selection_expression: "SelectionExpression",
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     },
    #     version: "StringWithLengthBetween1And64",
    #     warnings: ["__string"]
    #   }
    # @return [Types::GetApiResponse]
    def get_api(params = {}, options = {})
      request = build_request(:get_api, params)
      request.send_request(options)
    end

    # <p>Gets an API mapping.</p>
    # @param [Hash, Types::GetApiMappingRequest] params
    # @option params [String] :api_mapping_id
    #   <p>The API mapping identifier.</p>
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_mapping_id: "__string", # required
    #     domain_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_api_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_id: "Id",
    #     api_mapping_id: "Id",
    #     api_mapping_key: "SelectionKey",
    #     stage: "StringWithLengthBetween1And128"
    #   }
    # @return [Types::GetApiMappingResponse]
    def get_api_mapping(params = {}, options = {})
      request = build_request(:get_api_mapping, params)
      request.send_request(options)
    end

    # <p>Gets API mappings.</p>
    # @param [Hash, Types::GetApiMappingsRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_api_mappings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         api_id: "Id", # required
    #         api_mapping_id: "Id",
    #         api_mapping_key: "SelectionKey",
    #         stage: "StringWithLengthBetween1And128", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetApiMappingsResponse]
    def get_api_mappings(params = {}, options = {})
      request = build_request(:get_api_mappings, params)
      request.send_request(options)
    end

    # <p>Gets a collection of Api resources.</p>
    # @param [Hash, Types::GetApisRequest] params
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_apis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         api_endpoint: "__string",
    #         api_gateway_managed: false,
    #         api_id: "Id",
    #         api_key_selection_expression: "SelectionExpression",
    #         cors_configuration: {
    #           allow_credentials: false,
    #           allow_headers: ["__string"],
    #           allow_methods: ["StringWithLengthBetween1And64"],
    #           allow_origins: ["__string"],
    #           expose_headers: ["__string"],
    #           max_age: 1
    #         },
    #         created_date: Time.now,
    #         description: "StringWithLengthBetween0And1024",
    #         disable_schema_validation: false,
    #         disable_execute_api_endpoint: false,
    #         import_info: ["__string"],
    #         ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #         name: "StringWithLengthBetween1And128", # required
    #         protocol_type: "WEBSOCKET" # One of: ["WEBSOCKET", "HTTP"], # required
    #         route_selection_expression: "SelectionExpression", # required
    #         tags: {
    #           "__string" => "StringWithLengthBetween1And1600"
    #         },
    #         version: "StringWithLengthBetween1And64",
    #         warnings: ["__string"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetApisResponse]
    def get_apis(params = {}, options = {})
      request = build_request(:get_apis, params)
      request.send_request(options)
    end

    # <p>Gets an Authorizer.</p>
    # @param [Hash, Types::GetAuthorizerRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :authorizer_id
    #   <p>The authorizer identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     authorizer_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorizer_credentials_arn: "Arn",
    #     authorizer_id: "Id",
    #     authorizer_payload_format_version: "StringWithLengthBetween1And64",
    #     authorizer_result_ttl_in_seconds: 1,
    #     authorizer_type: "REQUEST" # One of: ["REQUEST", "JWT"],
    #     authorizer_uri: "UriWithLengthBetween1And2048",
    #     enable_simple_responses: false,
    #     identity_source: ["__string"],
    #     identity_validation_expression: "StringWithLengthBetween0And1024",
    #     jwt_configuration: {
    #       audience: ["__string"],
    #       issuer: "UriWithLengthBetween1And2048"
    #     },
    #     name: "StringWithLengthBetween1And128"
    #   }
    # @return [Types::GetAuthorizerResponse]
    def get_authorizer(params = {}, options = {})
      request = build_request(:get_authorizer, params)
      request.send_request(options)
    end

    # <p>Gets the Authorizers for an API.</p>
    # @param [Hash, Types::GetAuthorizersRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_authorizers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         authorizer_credentials_arn: "Arn",
    #         authorizer_id: "Id",
    #         authorizer_payload_format_version: "StringWithLengthBetween1And64",
    #         authorizer_result_ttl_in_seconds: 1,
    #         authorizer_type: "REQUEST" # One of: ["REQUEST", "JWT"],
    #         authorizer_uri: "UriWithLengthBetween1And2048",
    #         enable_simple_responses: false,
    #         identity_source: ["__string"],
    #         identity_validation_expression: "StringWithLengthBetween0And1024",
    #         jwt_configuration: {
    #           audience: ["__string"],
    #           issuer: "UriWithLengthBetween1And2048"
    #         },
    #         name: "StringWithLengthBetween1And128", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetAuthorizersResponse]
    def get_authorizers(params = {}, options = {})
      request = build_request(:get_authorizers, params)
      request.send_request(options)
    end

    # <p>Gets a Deployment.</p>
    # @param [Hash, Types::GetDeploymentRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :deployment_id
    #   <p>The deployment ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     deployment_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_deployed: false,
    #     created_date: Time.now,
    #     deployment_id: "Id",
    #     deployment_status: "PENDING" # One of: ["PENDING", "FAILED", "DEPLOYED"],
    #     deployment_status_message: "__string",
    #     description: "StringWithLengthBetween0And1024"
    #   }
    # @return [Types::GetDeploymentResponse]
    def get_deployment(params = {}, options = {})
      request = build_request(:get_deployment, params)
      request.send_request(options)
    end

    # <p>Gets the Deployments for an API.</p>
    # @param [Hash, Types::GetDeploymentsRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         auto_deployed: false,
    #         created_date: Time.now,
    #         deployment_id: "Id",
    #         deployment_status: "PENDING" # One of: ["PENDING", "FAILED", "DEPLOYED"],
    #         deployment_status_message: "__string",
    #         description: "StringWithLengthBetween0And1024"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetDeploymentsResponse]
    def get_deployments(params = {}, options = {})
      request = build_request(:get_deployments, params)
      request.send_request(options)
    end

    # <p>Gets a domain name.</p>
    # @param [Hash, Types::GetDomainNameRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_domain_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_mapping_selection_expression: "SelectionExpression",
    #     domain_name: "StringWithLengthBetween1And512",
    #     domain_name_arn: "Arn",
    #     domain_name_configurations: [
    #       {
    #         api_gateway_domain_name: "__string",
    #         certificate_arn: "Arn",
    #         certificate_name: "StringWithLengthBetween1And128",
    #         certificate_upload_date: Time.now,
    #         domain_name_status: "AVAILABLE" # One of: ["AVAILABLE", "UPDATING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"],
    #         domain_name_status_message: "__string",
    #         endpoint_type: "REGIONAL" # One of: ["REGIONAL", "EDGE"],
    #         hosted_zone_id: "__string",
    #         ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #         security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2"],
    #         ownership_verification_certificate_arn: "Arn"
    #       }
    #     ],
    #     mutual_tls_authentication: {
    #       truststore_uri: "UriWithLengthBetween1And2048",
    #       truststore_version: "StringWithLengthBetween1And64",
    #       truststore_warnings: ["__string"]
    #     },
    #     routing_mode: "API_MAPPING_ONLY" # One of: ["API_MAPPING_ONLY", "ROUTING_RULE_ONLY", "ROUTING_RULE_THEN_API_MAPPING"],
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     }
    #   }
    # @return [Types::GetDomainNameResponse]
    def get_domain_name(params = {}, options = {})
      request = build_request(:get_domain_name, params)
      request.send_request(options)
    end

    # <p>Gets the domain names for an AWS account.</p>
    # @param [Hash, Types::GetDomainNamesRequest] params
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_domain_names(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         api_mapping_selection_expression: "SelectionExpression",
    #         domain_name: "StringWithLengthBetween1And512", # required
    #         domain_name_arn: "Arn",
    #         domain_name_configurations: [
    #           {
    #             api_gateway_domain_name: "__string",
    #             certificate_arn: "Arn",
    #             certificate_name: "StringWithLengthBetween1And128",
    #             certificate_upload_date: Time.now,
    #             domain_name_status: "AVAILABLE" # One of: ["AVAILABLE", "UPDATING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"],
    #             domain_name_status_message: "__string",
    #             endpoint_type: "REGIONAL" # One of: ["REGIONAL", "EDGE"],
    #             hosted_zone_id: "__string",
    #             ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #             security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2"],
    #             ownership_verification_certificate_arn: "Arn"
    #           }
    #         ],
    #         mutual_tls_authentication: {
    #           truststore_uri: "UriWithLengthBetween1And2048",
    #           truststore_version: "StringWithLengthBetween1And64",
    #           truststore_warnings: ["__string"]
    #         },
    #         routing_mode: "API_MAPPING_ONLY" # One of: ["API_MAPPING_ONLY", "ROUTING_RULE_ONLY", "ROUTING_RULE_THEN_API_MAPPING"],
    #         tags: {
    #           "__string" => "StringWithLengthBetween1And1600"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetDomainNamesResponse]
    def get_domain_names(params = {}, options = {})
      request = build_request(:get_domain_names, params)
      request.send_request(options)
    end

    # <p>Gets an Integration.</p>
    # @param [Hash, Types::GetIntegrationRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     integration_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_gateway_managed: false,
    #     connection_id: "StringWithLengthBetween1And1024",
    #     connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #     content_handling_strategy: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     credentials_arn: "Arn",
    #     description: "StringWithLengthBetween0And1024",
    #     integration_id: "Id",
    #     integration_method: "StringWithLengthBetween1And64",
    #     integration_response_selection_expression: "SelectionExpression",
    #     integration_subtype: "StringWithLengthBetween1And128",
    #     integration_type: "AWS" # One of: ["AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #     integration_uri: "UriWithLengthBetween1And2048",
    #     passthrough_behavior: "WHEN_NO_MATCH" # One of: ["WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"],
    #     payload_format_version: "StringWithLengthBetween1And64",
    #     request_parameters: {
    #       "__string" => "StringWithLengthBetween1And512"
    #     },
    #     request_templates: {
    #       "__string" => "StringWithLengthBetween0And32K"
    #     },
    #     response_parameters: {
    #       "__string" => {
    #         "__string" => "StringWithLengthBetween1And512"
    #       }
    #     },
    #     template_selection_expression: "SelectionExpression",
    #     timeout_in_millis: 1,
    #     tls_config: {
    #       server_name_to_verify: "StringWithLengthBetween1And512"
    #     }
    #   }
    # @return [Types::GetIntegrationResult]
    def get_integration(params = {}, options = {})
      request = build_request(:get_integration, params)
      request.send_request(options)
    end

    # <p>Gets an IntegrationResponses.</p>
    # @param [Hash, Types::GetIntegrationResponseRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    # @option params [String] :integration_response_id
    #   <p>The integration response ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     integration_id: "__string", # required
    #     integration_response_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_integration_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_handling_strategy: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     integration_response_id: "Id",
    #     integration_response_key: "SelectionKey",
    #     response_parameters: {
    #       "__string" => "StringWithLengthBetween1And512"
    #     },
    #     response_templates: {
    #       "__string" => "StringWithLengthBetween0And32K"
    #     },
    #     template_selection_expression: "SelectionExpression"
    #   }
    # @return [Types::GetIntegrationResponseResponse]
    def get_integration_response(params = {}, options = {})
      request = build_request(:get_integration_response, params)
      request.send_request(options)
    end

    # <p>Gets the IntegrationResponses for an Integration.</p>
    # @param [Hash, Types::GetIntegrationResponsesRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     integration_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_integration_responses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         content_handling_strategy: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #         integration_response_id: "Id",
    #         integration_response_key: "SelectionKey", # required
    #         response_parameters: {
    #           "__string" => "StringWithLengthBetween1And512"
    #         },
    #         response_templates: {
    #           "__string" => "StringWithLengthBetween0And32K"
    #         },
    #         template_selection_expression: "SelectionExpression"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetIntegrationResponsesResponse]
    def get_integration_responses(params = {}, options = {})
      request = build_request(:get_integration_responses, params)
      request.send_request(options)
    end

    # <p>Gets the Integrations for an API.</p>
    # @param [Hash, Types::GetIntegrationsRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_integrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         api_gateway_managed: false,
    #         connection_id: "StringWithLengthBetween1And1024",
    #         connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #         content_handling_strategy: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #         credentials_arn: "Arn",
    #         description: "StringWithLengthBetween0And1024",
    #         integration_id: "Id",
    #         integration_method: "StringWithLengthBetween1And64",
    #         integration_response_selection_expression: "SelectionExpression",
    #         integration_subtype: "StringWithLengthBetween1And128",
    #         integration_type: "AWS" # One of: ["AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #         integration_uri: "UriWithLengthBetween1And2048",
    #         passthrough_behavior: "WHEN_NO_MATCH" # One of: ["WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"],
    #         payload_format_version: "StringWithLengthBetween1And64",
    #         request_parameters: {
    #           "__string" => "StringWithLengthBetween1And512"
    #         },
    #         request_templates: {
    #           "__string" => "StringWithLengthBetween0And32K"
    #         },
    #         response_parameters: {
    #           "__string" => {
    #             "__string" => "StringWithLengthBetween1And512"
    #           }
    #         },
    #         template_selection_expression: "SelectionExpression",
    #         timeout_in_millis: 1,
    #         tls_config: {
    #           server_name_to_verify: "StringWithLengthBetween1And512"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetIntegrationsResponse]
    def get_integrations(params = {}, options = {})
      request = build_request(:get_integrations, params)
      request.send_request(options)
    end

    # <p>Gets a Model.</p>
    # @param [Hash, Types::GetModelRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     model_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "StringWithLengthBetween1And256",
    #     description: "StringWithLengthBetween0And1024",
    #     model_id: "Id",
    #     name: "StringWithLengthBetween1And128",
    #     schema: "StringWithLengthBetween0And32K"
    #   }
    # @return [Types::GetModelResponse]
    def get_model(params = {}, options = {})
      request = build_request(:get_model, params)
      request.send_request(options)
    end

    # <p>Gets a model template.</p>
    # @param [Hash, Types::GetModelTemplateRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     model_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_model_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     value: "__string"
    #   }
    # @return [Types::GetModelTemplateResponse]
    def get_model_template(params = {}, options = {})
      request = build_request(:get_model_template, params)
      request.send_request(options)
    end

    # <p>Gets the Models for an API.</p>
    # @param [Hash, Types::GetModelsRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         content_type: "StringWithLengthBetween1And256",
    #         description: "StringWithLengthBetween0And1024",
    #         model_id: "Id",
    #         name: "StringWithLengthBetween1And128", # required
    #         schema: "StringWithLengthBetween0And32K"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetModelsResponse]
    def get_models(params = {}, options = {})
      request = build_request(:get_models, params)
      request.send_request(options)
    end

    # <p>Gets a Route.</p>
    # @param [Hash, Types::GetRouteRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     route_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_gateway_managed: false,
    #     api_key_required: false,
    #     authorization_scopes: ["StringWithLengthBetween1And64"],
    #     authorization_type: "NONE" # One of: ["NONE", "AWS_IAM", "CUSTOM", "JWT"],
    #     authorizer_id: "Id",
    #     model_selection_expression: "SelectionExpression",
    #     operation_name: "StringWithLengthBetween1And64",
    #     request_models: {
    #       "__string" => "StringWithLengthBetween1And128"
    #     },
    #     request_parameters: {
    #       "__string" => {
    #         required: false
    #       }
    #     },
    #     route_id: "Id",
    #     route_key: "SelectionKey",
    #     route_response_selection_expression: "SelectionExpression",
    #     target: "StringWithLengthBetween1And128"
    #   }
    # @return [Types::GetRouteResult]
    def get_route(params = {}, options = {})
      request = build_request(:get_route, params)
      request.send_request(options)
    end

    # <p>Gets a RouteResponse.</p>
    # @param [Hash, Types::GetRouteResponseRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    # @option params [String] :route_response_id
    #   <p>The route response ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     route_id: "__string", # required
    #     route_response_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_route_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_selection_expression: "SelectionExpression",
    #     response_models: {
    #       "__string" => "StringWithLengthBetween1And128"
    #     },
    #     response_parameters: {
    #       "__string" => {
    #         required: false
    #       }
    #     },
    #     route_response_id: "Id",
    #     route_response_key: "SelectionKey"
    #   }
    # @return [Types::GetRouteResponseResponse]
    def get_route_response(params = {}, options = {})
      request = build_request(:get_route_response, params)
      request.send_request(options)
    end

    # <p>Gets the RouteResponses for a Route.</p>
    # @param [Hash, Types::GetRouteResponsesRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string",
    #     route_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_route_responses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         model_selection_expression: "SelectionExpression",
    #         response_models: {
    #           "__string" => "StringWithLengthBetween1And128"
    #         },
    #         response_parameters: {
    #           "__string" => {
    #             required: false
    #           }
    #         },
    #         route_response_id: "Id",
    #         route_response_key: "SelectionKey", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetRouteResponsesResponse]
    def get_route_responses(params = {}, options = {})
      request = build_request(:get_route_responses, params)
      request.send_request(options)
    end

    # <p>Gets the Routes for an API.</p>
    # @param [Hash, Types::GetRoutesRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_routes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         api_gateway_managed: false,
    #         api_key_required: false,
    #         authorization_scopes: ["StringWithLengthBetween1And64"],
    #         authorization_type: "NONE" # One of: ["NONE", "AWS_IAM", "CUSTOM", "JWT"],
    #         authorizer_id: "Id",
    #         model_selection_expression: "SelectionExpression",
    #         operation_name: "StringWithLengthBetween1And64",
    #         request_models: {
    #           "__string" => "StringWithLengthBetween1And128"
    #         },
    #         request_parameters: {
    #           "__string" => {
    #             required: false
    #           }
    #         },
    #         route_id: "Id",
    #         route_key: "SelectionKey", # required
    #         route_response_selection_expression: "SelectionExpression",
    #         target: "StringWithLengthBetween1And128"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetRoutesResponse]
    def get_routes(params = {}, options = {})
      request = build_request(:get_routes, params)
      request.send_request(options)
    end

    # <p>Gets a routing rule.</p>
    # @param [Hash, Types::GetRoutingRuleRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [String] :domain_name_id
    #   <p>The domain name ID.</p>
    # @option params [String] :routing_rule_id
    #   <p>The routing rule ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "__string", # required
    #     domain_name_id: "__string",
    #     routing_rule_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_routing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     actions: [
    #       {
    #         invoke_api: { # required
    #           api_id: "Id", # required
    #           stage: "StringWithLengthBetween1And128", # required
    #           strip_base_path: false
    #         }
    #       }
    #     ],
    #     conditions: [
    #       {
    #         match_base_paths: {
    #           any_of: ["SelectionKey"], # required
    #         },
    #         match_headers: {
    #           any_of: [ # required
    #             {
    #               header: "SelectionKey", # required
    #               value_glob: "SelectionExpression", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     priority: 1,
    #     routing_rule_arn: "Arn",
    #     routing_rule_id: "Id"
    #   }
    # @return [Types::GetRoutingRuleResponse]
    def get_routing_rule(params = {}, options = {})
      request = build_request(:get_routing_rule, params)
      request.send_request(options)
    end

    # <p>Gets a Stage.</p>
    # @param [Hash, Types::GetStageRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :stage_name
    #   <p>The stage name. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     stage_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_log_settings: {
    #       destination_arn: "Arn",
    #       format: "StringWithLengthBetween1And1024"
    #     },
    #     api_gateway_managed: false,
    #     auto_deploy: false,
    #     client_certificate_id: "Id",
    #     created_date: Time.now,
    #     default_route_settings: {
    #       data_trace_enabled: false,
    #       detailed_metrics_enabled: false,
    #       logging_level: "ERROR" # One of: ["ERROR", "INFO", "OFF"],
    #       throttling_burst_limit: 1,
    #       throttling_rate_limit: 1.0
    #     },
    #     deployment_id: "Id",
    #     description: "StringWithLengthBetween0And1024",
    #     last_deployment_status_message: "__string",
    #     last_updated_date: Time.now,
    #     route_settings: {
    #       "__string" => {
    #         data_trace_enabled: false,
    #         detailed_metrics_enabled: false,
    #         logging_level: "ERROR" # One of: ["ERROR", "INFO", "OFF"],
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0
    #       }
    #     },
    #     stage_name: "StringWithLengthBetween1And128",
    #     stage_variables: {
    #       "__string" => "StringWithLengthBetween0And2048"
    #     },
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     }
    #   }
    # @return [Types::GetStageResponse]
    def get_stage(params = {}, options = {})
      request = build_request(:get_stage, params)
      request.send_request(options)
    end

    # <p>Gets the Stages for an API.</p>
    # @param [Hash, Types::GetStagesRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_stages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         access_log_settings: {
    #           destination_arn: "Arn",
    #           format: "StringWithLengthBetween1And1024"
    #         },
    #         api_gateway_managed: false,
    #         auto_deploy: false,
    #         client_certificate_id: "Id",
    #         created_date: Time.now,
    #         default_route_settings: {
    #           data_trace_enabled: false,
    #           detailed_metrics_enabled: false,
    #           logging_level: "ERROR" # One of: ["ERROR", "INFO", "OFF"],
    #           throttling_burst_limit: 1,
    #           throttling_rate_limit: 1.0
    #         },
    #         deployment_id: "Id",
    #         description: "StringWithLengthBetween0And1024",
    #         last_deployment_status_message: "__string",
    #         last_updated_date: Time.now,
    #         route_settings: {
    #           "__string" => {
    #             data_trace_enabled: false,
    #             detailed_metrics_enabled: false,
    #             logging_level: "ERROR" # One of: ["ERROR", "INFO", "OFF"],
    #             throttling_burst_limit: 1,
    #             throttling_rate_limit: 1.0
    #           }
    #         },
    #         stage_name: "StringWithLengthBetween1And128", # required
    #         stage_variables: {
    #           "__string" => "StringWithLengthBetween0And2048"
    #         },
    #         tags: {
    #           "__string" => "StringWithLengthBetween1And1600"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetStagesResponse]
    def get_stages(params = {}, options = {})
      request = build_request(:get_stages, params)
      request.send_request(options)
    end

    # <p>Gets a collection of Tag resources.</p>
    # @param [Hash, Types::GetTagsRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN for the tag.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     }
    #   }
    # @return [Types::GetTagsResponse]
    def get_tags(params = {}, options = {})
      request = build_request(:get_tags, params)
      request.send_request(options)
    end

    # <p>Gets a VPC link.</p>
    # @param [Hash, Types::GetVpcLinkRequest] params
    # @option params [String] :vpc_link_id
    #   <p>The ID of the VPC link.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_link_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_vpc_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_date: Time.now,
    #     name: "StringWithLengthBetween1And128",
    #     security_group_ids: ["__string"],
    #     subnet_ids: ["__string"],
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     },
    #     vpc_link_id: "Id",
    #     vpc_link_status: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "FAILED", "INACTIVE"],
    #     vpc_link_status_message: "StringWithLengthBetween0And1024",
    #     vpc_link_version: "V2" # One of: ["V2"]
    #   }
    # @return [Types::GetVpcLinkResponse]
    def get_vpc_link(params = {}, options = {})
      request = build_request(:get_vpc_link, params)
      request.send_request(options)
    end

    # <p>Gets a collection of VPC links.</p>
    # @param [Hash, Types::GetVpcLinksRequest] params
    # @option params [String] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_vpc_links(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         created_date: Time.now,
    #         name: "StringWithLengthBetween1And128", # required
    #         security_group_ids: ["__string"], # required
    #         subnet_ids: ["__string"], # required
    #         tags: {
    #           "__string" => "StringWithLengthBetween1And1600"
    #         },
    #         vpc_link_id: "Id", # required
    #         vpc_link_status: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "FAILED", "INACTIVE"],
    #         vpc_link_status_message: "StringWithLengthBetween0And1024",
    #         vpc_link_version: "V2" # One of: ["V2"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetVpcLinksResponse]
    def get_vpc_links(params = {}, options = {})
      request = build_request(:get_vpc_links, params)
      request.send_request(options)
    end

    # <p>Imports an API.</p>
    # @param [Hash, Types::ImportApiRequest] params
    # @option params [String] :basepath
    #   <p>Specifies how to interpret the base path of the API during import. Valid values are ignore, prepend, and split. The default value is ignore. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html">Set the OpenAPI basePath Property</a>. Supported only for HTTP APIs.</p>
    # @option params [String] :body
    #   <p>The OpenAPI definition. Supported only for HTTP APIs.</p>
    # @option params [Boolean] :fail_on_warnings
    #   <p>Specifies whether to rollback the API creation when a warning is encountered. By default, API creation continues if a warning is encountered.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     basepath: "__string",
    #     body: "__string", # required
    #     fail_on_warnings: false
    #   }
    #   options = {}
    #   response = client.import_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_endpoint: "__string",
    #     api_gateway_managed: false,
    #     api_id: "Id",
    #     api_key_selection_expression: "SelectionExpression",
    #     cors_configuration: {
    #       allow_credentials: false,
    #       allow_headers: ["__string"],
    #       allow_methods: ["StringWithLengthBetween1And64"],
    #       allow_origins: ["__string"],
    #       expose_headers: ["__string"],
    #       max_age: 1
    #     },
    #     created_date: Time.now,
    #     description: "StringWithLengthBetween0And1024",
    #     disable_schema_validation: false,
    #     disable_execute_api_endpoint: false,
    #     import_info: ["__string"],
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #     name: "StringWithLengthBetween1And128",
    #     protocol_type: "WEBSOCKET" # One of: ["WEBSOCKET", "HTTP"],
    #     route_selection_expression: "SelectionExpression",
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     },
    #     version: "StringWithLengthBetween1And64",
    #     warnings: ["__string"]
    #   }
    # @return [Types::ImportApiResponse]
    def import_api(params = {}, options = {})
      request = build_request(:import_api, params)
      request.send_request(options)
    end

    # <p>Lists routing rules.</p>
    # @param [Hash, Types::ListRoutingRulesRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [String] :domain_name_id
    #   <p>The domain name ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of elements to be returned for this resource.</p>
    # @option params [String] :next_token
    #   <p>The next page of elements from this collection. Not valid for the last element of the collection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "__string", # required
    #     domain_name_id: "__string",
    #     max_results: 1,
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_routing_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     routing_rules: [
    #       {
    #         actions: [
    #           {
    #             invoke_api: { # required
    #               api_id: "Id", # required
    #               stage: "StringWithLengthBetween1And128", # required
    #               strip_base_path: false
    #             }
    #           }
    #         ],
    #         conditions: [
    #           {
    #             match_base_paths: {
    #               any_of: ["SelectionKey"], # required
    #             },
    #             match_headers: {
    #               any_of: [ # required
    #                 {
    #                   header: "SelectionKey", # required
    #                   value_glob: "SelectionExpression", # required
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         priority: 1,
    #         routing_rule_arn: "Arn",
    #         routing_rule_id: "Id"
    #       }
    #     ]
    #   }
    # @return [Types::ListRoutingRulesResponse]
    def list_routing_rules(params = {}, options = {})
      request = build_request(:list_routing_rules, params)
      request.send_request(options)
    end

    # <p>Updates a routing rule.</p>
    # @param [Hash, Types::PutRoutingRuleRequest] params
    # @option params [Array<Types::RoutingRuleAction>] :actions
    #   <p>The routing rule action.</p>
    # @option params [Array<Types::RoutingRuleCondition>] :conditions
    #   <p>The routing rule condition.</p>
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [String] :domain_name_id
    #   <p>The domain name ID.</p>
    # @option params [Integer] :priority
    #   <p>The routing rule priority.</p>
    # @option params [String] :routing_rule_id
    #   <p>The routing rule ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     actions: [ # required
    #       {
    #         invoke_api: { # required
    #           api_id: "Id", # required
    #           stage: "StringWithLengthBetween1And128", # required
    #           strip_base_path: false
    #         }
    #       }
    #     ],
    #     conditions: [ # required
    #       {
    #         match_base_paths: {
    #           any_of: ["SelectionKey"], # required
    #         },
    #         match_headers: {
    #           any_of: [ # required
    #             {
    #               header: "SelectionKey", # required
    #               value_glob: "SelectionExpression", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     domain_name: "__string", # required
    #     domain_name_id: "__string",
    #     priority: 1, # required
    #     routing_rule_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.put_routing_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     actions: [
    #       {
    #         invoke_api: { # required
    #           api_id: "Id", # required
    #           stage: "StringWithLengthBetween1And128", # required
    #           strip_base_path: false
    #         }
    #       }
    #     ],
    #     conditions: [
    #       {
    #         match_base_paths: {
    #           any_of: ["SelectionKey"], # required
    #         },
    #         match_headers: {
    #           any_of: [ # required
    #             {
    #               header: "SelectionKey", # required
    #               value_glob: "SelectionExpression", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     priority: 1,
    #     routing_rule_arn: "Arn",
    #     routing_rule_id: "Id"
    #   }
    # @return [Types::PutRoutingRuleResponse]
    def put_routing_rule(params = {}, options = {})
      request = build_request(:put_routing_rule, params)
      request.send_request(options)
    end

    # <p>Puts an Api resource.</p>
    # @param [Hash, Types::ReimportApiRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :basepath
    #   <p>Specifies how to interpret the base path of the API during import. Valid values are ignore, prepend, and split. The default value is ignore. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-import-api-basePath.html">Set the OpenAPI basePath Property</a>. Supported only for HTTP APIs.</p>
    # @option params [String] :body
    #   <p>The OpenAPI definition. Supported only for HTTP APIs.</p>
    # @option params [Boolean] :fail_on_warnings
    #   <p>Specifies whether to rollback the API creation when a warning is encountered. By default, API creation continues if a warning is encountered.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     basepath: "__string",
    #     body: "__string", # required
    #     fail_on_warnings: false
    #   }
    #   options = {}
    #   response = client.reimport_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_endpoint: "__string",
    #     api_gateway_managed: false,
    #     api_id: "Id",
    #     api_key_selection_expression: "SelectionExpression",
    #     cors_configuration: {
    #       allow_credentials: false,
    #       allow_headers: ["__string"],
    #       allow_methods: ["StringWithLengthBetween1And64"],
    #       allow_origins: ["__string"],
    #       expose_headers: ["__string"],
    #       max_age: 1
    #     },
    #     created_date: Time.now,
    #     description: "StringWithLengthBetween0And1024",
    #     disable_schema_validation: false,
    #     disable_execute_api_endpoint: false,
    #     import_info: ["__string"],
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #     name: "StringWithLengthBetween1And128",
    #     protocol_type: "WEBSOCKET" # One of: ["WEBSOCKET", "HTTP"],
    #     route_selection_expression: "SelectionExpression",
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     },
    #     version: "StringWithLengthBetween1And64",
    #     warnings: ["__string"]
    #   }
    # @return [Types::ReimportApiResponse]
    def reimport_api(params = {}, options = {})
      request = build_request(:reimport_api, params)
      request.send_request(options)
    end

    # <p>Resets all authorizer cache entries on a stage. Supported only for HTTP APIs.</p>
    # @param [Hash, Types::ResetAuthorizersCacheRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :stage_name
    #   <p>The stage name. Stage names can contain only alphanumeric characters, hyphens, and underscores, or be $default. Maximum length is 128 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     stage_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.reset_authorizers_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def reset_authorizers_cache(params = {}, options = {})
      request = build_request(:reset_authorizers_cache, params)
      request.send_request(options)
    end

    # <p>Creates a new Tag resource to represent a tag.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN for the tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The collection of tags. Each tag element is associated with a given resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes a Tag.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN for the tag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The Tag keys to delete</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an Api resource.</p>
    # @param [Hash, Types::UpdateApiRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :api_key_selection_expression
    #   <p>An API key selection expression. Supported only for WebSocket APIs. See <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions">API Key Selection Expressions</a>.</p>
    # @option params [Types::Cors] :cors_configuration
    #   <p>A CORS configuration. Supported only for HTTP APIs.</p>
    # @option params [String] :credentials_arn
    #   <p>This property is part of quick create. It specifies the credentials required for the integration, if any. For a Lambda integration, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, don't specify this parameter. Currently, this property is not used for HTTP integrations. If provided, this value replaces the credentials associated with the quick create integration. Supported only for HTTP APIs.</p>
    # @option params [String] :description
    #   <p>The description of the API.</p>
    # @option params [Boolean] :disable_schema_validation
    #   <p>Avoid validating models when creating a deployment. Supported only for WebSocket APIs.</p>
    # @option params [Boolean] :disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint.</p>
    # @option params [String] :ip_address_type
    #   <p>The IP address types that can invoke your API or domain name.</p>
    # @option params [String] :name
    #   <p>The name of the API.</p>
    # @option params [String] :route_key
    #   <p>This property is part of quick create. If not specified, the route created using quick create is kept. Otherwise, this value replaces the route key of the quick create route. Additional routes may still be added after the API is updated. Supported only for HTTP APIs.</p>
    # @option params [String] :route_selection_expression
    #   <p>The route selection expression for the API. For HTTP APIs, the routeSelectionExpression must be ${request.method} ${request.path}. If not provided, this will be the default for HTTP APIs. This property is required for WebSocket APIs.</p>
    # @option params [String] :target
    #   <p>This property is part of quick create. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. The value provided updates the integration URI and integration type. You can update a quick-created target, but you can't remove it from an API. Supported only for HTTP APIs.</p>
    # @option params [String] :version
    #   <p>A version identifier for the API.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     api_key_selection_expression: "SelectionExpression",
    #     cors_configuration: {
    #       allow_credentials: false,
    #       allow_headers: ["__string"],
    #       allow_methods: ["StringWithLengthBetween1And64"],
    #       allow_origins: ["__string"],
    #       expose_headers: ["__string"],
    #       max_age: 1
    #     },
    #     credentials_arn: "Arn",
    #     description: "StringWithLengthBetween0And1024",
    #     disable_schema_validation: false,
    #     disable_execute_api_endpoint: false,
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #     name: "StringWithLengthBetween1And128",
    #     route_key: "SelectionKey",
    #     route_selection_expression: "SelectionExpression",
    #     target: "UriWithLengthBetween1And2048",
    #     version: "StringWithLengthBetween1And64"
    #   }
    #   options = {}
    #   response = client.update_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_endpoint: "__string",
    #     api_gateway_managed: false,
    #     api_id: "Id",
    #     api_key_selection_expression: "SelectionExpression",
    #     cors_configuration: {
    #       allow_credentials: false,
    #       allow_headers: ["__string"],
    #       allow_methods: ["StringWithLengthBetween1And64"],
    #       allow_origins: ["__string"],
    #       expose_headers: ["__string"],
    #       max_age: 1
    #     },
    #     created_date: Time.now,
    #     description: "StringWithLengthBetween0And1024",
    #     disable_schema_validation: false,
    #     disable_execute_api_endpoint: false,
    #     import_info: ["__string"],
    #     ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #     name: "StringWithLengthBetween1And128",
    #     protocol_type: "WEBSOCKET" # One of: ["WEBSOCKET", "HTTP"],
    #     route_selection_expression: "SelectionExpression",
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     },
    #     version: "StringWithLengthBetween1And64",
    #     warnings: ["__string"]
    #   }
    # @return [Types::UpdateApiResponse]
    def update_api(params = {}, options = {})
      request = build_request(:update_api, params)
      request.send_request(options)
    end

    # <p>The API mapping.</p>
    # @param [Hash, Types::UpdateApiMappingRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :api_mapping_id
    #   <p>The API mapping identifier.</p>
    # @option params [String] :api_mapping_key
    #   <p>The API mapping key.</p>
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [String] :stage
    #   <p>The API stage.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "Id", # required
    #     api_mapping_id: "__string", # required
    #     api_mapping_key: "SelectionKey",
    #     domain_name: "__string", # required
    #     stage: "StringWithLengthBetween1And128"
    #   }
    #   options = {}
    #   response = client.update_api_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_id: "Id",
    #     api_mapping_id: "Id",
    #     api_mapping_key: "SelectionKey",
    #     stage: "StringWithLengthBetween1And128"
    #   }
    # @return [Types::UpdateApiMappingResponse]
    def update_api_mapping(params = {}, options = {})
      request = build_request(:update_api_mapping, params)
      request.send_request(options)
    end

    # <p>Updates an Authorizer.</p>
    # @param [Hash, Types::UpdateAuthorizerRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :authorizer_credentials_arn
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, don't specify this parameter.</p>
    # @option params [String] :authorizer_id
    #   <p>The authorizer identifier.</p>
    # @option params [String] :authorizer_payload_format_version
    #   <p>Specifies the format of the payload sent to an HTTP API Lambda authorizer. Required for HTTP API Lambda authorizers. Supported values are 1.0 and 2.0. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p>
    # @option params [Integer] :authorizer_result_ttl_in_seconds
    #   <p>The time to live (TTL) for cached authorizer results, in seconds. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway caches authorizer responses. The maximum value is 3600, or 1 hour. Supported only for HTTP API Lambda authorizers.</p>
    # @option params [String] :authorizer_type
    #   <p>The authorizer type. Specify REQUEST for a Lambda function using incoming request parameters. Specify JWT to use JSON Web Tokens (supported only for HTTP APIs).</p>
    # @option params [String] :authorizer_uri
    #   <p>The authorizer's Uniform Resource Identifier (URI). For REQUEST authorizers, this must be a well-formed Lambda function URI, for example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:<replaceable>{account_id}</replaceable>:function:<replaceable>{lambda_function_name}</replaceable>/invocations. In general, the URI has this form: arn:aws:apigateway:<replaceable>{region}</replaceable>:lambda:path/<replaceable>{service_api}</replaceable>
    #                  , where <replaceable></replaceable>{region} is the same as the region hosting the Lambda function, path indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial /. For Lambda functions, this is usually of the form /2015-03-31/functions/[FunctionARN]/invocations. Supported only for REQUEST authorizers.</p>
    # @option params [Boolean] :enable_simple_responses
    #   <p>Specifies whether a Lambda authorizer returns a response in a simple format. By default, a Lambda authorizer must return an IAM policy. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy. Supported only for HTTP APIs. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a></p>
    # @option params [Array<String>] :identity_source
    #   <p>The identity source for which authorization is requested.</p> <p>For a REQUEST authorizer, this is optional. The value is a set of one or more mapping expressions of the specified request parameters. The identity source can be headers, query string parameters, stage variables, and context parameters. For example, if an Auth header and a Name query string parameter are defined as identity sources, this value is route.request.header.Auth, route.request.querystring.Name for WebSocket APIs. For HTTP APIs, use selection expressions prefixed with $, for example, $request.header.Auth, $request.querystring.Name. These parameters are used to perform runtime validation for Lambda-based authorizers by verifying all of the identity-related request parameters are present in the request, not null, and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function. Otherwise, it returns a 401 Unauthorized response without calling the Lambda function. For HTTP APIs, identity sources are also used as the cache key when caching is enabled. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-lambda-authorizer.html">Working with AWS Lambda authorizers for HTTP APIs</a>.</p> <p>For JWT, a single entry that specifies where to extract the JSON Web Token (JWT) from inbound requests. Currently only header-based and query parameter-based selections are supported, for example $request.header.Authorization.</p>
    # @option params [String] :identity_validation_expression
    #   <p>This parameter is not used.</p>
    # @option params [Types::JWTConfiguration] :jwt_configuration
    #   <p>Represents the configuration of a JWT authorizer. Required for the JWT authorizer type. Supported only for HTTP APIs.</p>
    # @option params [String] :name
    #   <p>The name of the authorizer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     authorizer_credentials_arn: "Arn",
    #     authorizer_id: "__string", # required
    #     authorizer_payload_format_version: "StringWithLengthBetween1And64",
    #     authorizer_result_ttl_in_seconds: 1,
    #     authorizer_type: "REQUEST" # One of: ["REQUEST", "JWT"],
    #     authorizer_uri: "UriWithLengthBetween1And2048",
    #     enable_simple_responses: false,
    #     identity_source: ["__string"],
    #     identity_validation_expression: "StringWithLengthBetween0And1024",
    #     jwt_configuration: {
    #       audience: ["__string"],
    #       issuer: "UriWithLengthBetween1And2048"
    #     },
    #     name: "StringWithLengthBetween1And128"
    #   }
    #   options = {}
    #   response = client.update_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorizer_credentials_arn: "Arn",
    #     authorizer_id: "Id",
    #     authorizer_payload_format_version: "StringWithLengthBetween1And64",
    #     authorizer_result_ttl_in_seconds: 1,
    #     authorizer_type: "REQUEST" # One of: ["REQUEST", "JWT"],
    #     authorizer_uri: "UriWithLengthBetween1And2048",
    #     enable_simple_responses: false,
    #     identity_source: ["__string"],
    #     identity_validation_expression: "StringWithLengthBetween0And1024",
    #     jwt_configuration: {
    #       audience: ["__string"],
    #       issuer: "UriWithLengthBetween1And2048"
    #     },
    #     name: "StringWithLengthBetween1And128"
    #   }
    # @return [Types::UpdateAuthorizerResponse]
    def update_authorizer(params = {}, options = {})
      request = build_request(:update_authorizer, params)
      request.send_request(options)
    end

    # <p>Updates a Deployment.</p>
    # @param [Hash, Types::UpdateDeploymentRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :deployment_id
    #   <p>The deployment ID.</p>
    # @option params [String] :description
    #   <p>The description for the deployment resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     deployment_id: "__string", # required
    #     description: "StringWithLengthBetween0And1024"
    #   }
    #   options = {}
    #   response = client.update_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_deployed: false,
    #     created_date: Time.now,
    #     deployment_id: "Id",
    #     deployment_status: "PENDING" # One of: ["PENDING", "FAILED", "DEPLOYED"],
    #     deployment_status_message: "__string",
    #     description: "StringWithLengthBetween0And1024"
    #   }
    # @return [Types::UpdateDeploymentResponse]
    def update_deployment(params = {}, options = {})
      request = build_request(:update_deployment, params)
      request.send_request(options)
    end

    # <p>Updates a domain name.</p>
    # @param [Hash, Types::UpdateDomainNameRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name.</p>
    # @option params [Array<Types::DomainNameConfiguration>] :domain_name_configurations
    #   <p>The domain name configurations.</p>
    # @option params [Types::MutualTlsAuthenticationInput] :mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name.</p>
    # @option params [String] :routing_mode
    #   <p>The routing mode.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "__string", # required
    #     domain_name_configurations: [
    #       {
    #         api_gateway_domain_name: "__string",
    #         certificate_arn: "Arn",
    #         certificate_name: "StringWithLengthBetween1And128",
    #         certificate_upload_date: Time.now,
    #         domain_name_status: "AVAILABLE" # One of: ["AVAILABLE", "UPDATING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"],
    #         domain_name_status_message: "__string",
    #         endpoint_type: "REGIONAL" # One of: ["REGIONAL", "EDGE"],
    #         hosted_zone_id: "__string",
    #         ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #         security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2"],
    #         ownership_verification_certificate_arn: "Arn"
    #       }
    #     ],
    #     mutual_tls_authentication: {
    #       truststore_uri: "UriWithLengthBetween1And2048",
    #       truststore_version: "StringWithLengthBetween1And64"
    #     },
    #     routing_mode: "API_MAPPING_ONLY" # One of: ["API_MAPPING_ONLY", "ROUTING_RULE_ONLY", "ROUTING_RULE_THEN_API_MAPPING"]
    #   }
    #   options = {}
    #   response = client.update_domain_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_mapping_selection_expression: "SelectionExpression",
    #     domain_name: "StringWithLengthBetween1And512",
    #     domain_name_arn: "Arn",
    #     domain_name_configurations: [
    #       {
    #         api_gateway_domain_name: "__string",
    #         certificate_arn: "Arn",
    #         certificate_name: "StringWithLengthBetween1And128",
    #         certificate_upload_date: Time.now,
    #         domain_name_status: "AVAILABLE" # One of: ["AVAILABLE", "UPDATING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION"],
    #         domain_name_status_message: "__string",
    #         endpoint_type: "REGIONAL" # One of: ["REGIONAL", "EDGE"],
    #         hosted_zone_id: "__string",
    #         ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #         security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2"],
    #         ownership_verification_certificate_arn: "Arn"
    #       }
    #     ],
    #     mutual_tls_authentication: {
    #       truststore_uri: "UriWithLengthBetween1And2048",
    #       truststore_version: "StringWithLengthBetween1And64",
    #       truststore_warnings: ["__string"]
    #     },
    #     routing_mode: "API_MAPPING_ONLY" # One of: ["API_MAPPING_ONLY", "ROUTING_RULE_ONLY", "ROUTING_RULE_THEN_API_MAPPING"],
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     }
    #   }
    # @return [Types::UpdateDomainNameResponse]
    def update_domain_name(params = {}, options = {})
      request = build_request(:update_domain_name, params)
      request.send_request(options)
    end

    # <p>Updates an Integration.</p>
    # @param [Hash, Types::UpdateIntegrationRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :connection_id
    #   <p>The ID of the VPC link for a private integration. Supported only for HTTP APIs.</p>
    # @option params [String] :connection_type
    #   <p>The type of the network connection to the integration endpoint. Specify INTERNET for connections through the public routable internet or VPC_LINK for private connections between API Gateway and resources in a VPC. The default value is INTERNET.</p>
    # @option params [String] :content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    # @option params [String] :credentials_arn
    #   <p>Specifies the credentials required for the integration, if any. For AWS integrations, three options are available. To specify an IAM Role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::*:user/*. To use resource-based permissions on supported AWS services, specify null.</p>
    # @option params [String] :description
    #   <p>The description of the integration</p>
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    # @option params [String] :integration_method
    #   <p>Specifies the integration's HTTP method type.</p>
    # @option params [String] :integration_subtype
    #   <p>Supported only for HTTP API AWS_PROXY integrations. Specifies the AWS service action to invoke. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services-reference.html">Integration subtype reference</a>.</p>
    # @option params [String] :integration_type
    #   <p>The integration type of an integration. One of the following:</p> <p>AWS: for integrating the route or method request with an AWS service action, including the Lambda function-invoking action. With the Lambda function-invoking action, this is referred to as the Lambda custom integration. With any other AWS service action, this is known as AWS integration. Supported only for WebSocket APIs.</p> <p>AWS_PROXY: for integrating the route or method request with a Lambda function or other AWS service action. This integration is also referred to as a Lambda proxy integration.</p> <p>HTTP: for integrating the route or method request with an HTTP endpoint. This integration is also referred to as the HTTP custom integration. Supported only for WebSocket APIs.</p> <p>HTTP_PROXY: for integrating the route or method request with an HTTP endpoint, with the client request passed through as-is. This is also referred to as HTTP proxy integration. For HTTP API private integrations, use an HTTP_PROXY integration.</p> <p>MOCK: for integrating the route or method request with API Gateway as a "loopback" endpoint without invoking any backend. Supported only for WebSocket APIs.</p>
    # @option params [String] :integration_uri
    #   <p>For a Lambda integration, specify the URI of a Lambda function.</p> <p>For an HTTP integration, specify a fully-qualified URL.</p> <p>For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service. If you specify the ARN of an AWS Cloud Map service, API Gateway uses DiscoverInstances to identify resources. You can use query parameters to target specific resources. To learn more, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_DiscoverInstances.html">DiscoverInstances</a>. For private integrations, all resources must be owned by the same AWS account.</p>
    # @option params [String] :passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the requestTemplates property on the Integration resource. There are three valid values: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, and NEVER. Supported only for WebSocket APIs.</p> <p>WHEN_NO_MATCH passes the request body for unmapped content types through to the integration backend without transformation.</p> <p>NEVER rejects unmapped content types with an HTTP 415 Unsupported Media Type response.</p> <p>WHEN_NO_TEMPLATES allows pass-through when the integration has no content types mapped to templates. However, if there is at least one content type defined, unmapped content types will be rejected with the same HTTP 415 Unsupported Media Type response.</p>
    # @option params [String] :payload_format_version
    #   <p>Specifies the format of the payload sent to an integration. Required for HTTP APIs. Supported values for Lambda proxy integrations are 1.0 and 2.0. For all other integrations, 1.0 is the only supported value. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-lambda.html">Working with AWS Lambda proxy integrations for HTTP APIs</a>.</p>
    # @option params [Hash<String, String>] :request_parameters
    #   <p>For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the backend. The method request parameter value must match the pattern of method.request.<replaceable>{location}</replaceable>.<replaceable>{name}</replaceable>
    #             , where 
    #               <replaceable>{location}</replaceable>
    #              is querystring, path, or header; and 
    #               <replaceable>{name}</replaceable>
    #              must be a valid and unique method request parameter name.</p> <p>For HTTP API integrations with a specified integrationSubtype, request parameters are a key-value map specifying parameters that are passed to AWS_PROXY integrations. You can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-develop-integrations-aws-services.html">Working with AWS service integrations for HTTP APIs</a>.</p> <p>For HTTP API integrations, without a specified integrationSubtype request parameters are a key-value map specifying how to transform HTTP requests before sending them to the backend. The key should follow the pattern &lt;action&gt;:&lt;header|querystring|path&gt;.&lt;location&gt; where action can be append, overwrite or remove. For values, you can provide static values, or map request data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    # @option params [Hash<String, String>] :request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value. Supported only for WebSocket APIs.</p>
    # @option params [Hash<String, Hash<String, String>>] :response_parameters
    #   <p>Supported only for HTTP APIs. You use response parameters to transform the HTTP response from a backend integration before returning the response to clients. Specify a key-value map from a selection key to response parameters. The selection key must be a valid HTTP status code within the range of 200-599. Response parameters are a key-value map. The key must match pattern &lt;action&gt;:&lt;header&gt;.&lt;location&gt; or overwrite.statuscode. The action can be append, overwrite or remove. The value can be a static value, or map to response data, stage variables, or context variables that are evaluated at runtime. To learn more, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-parameter-mapping.html">Transforming API requests and responses</a>.</p>
    # @option params [String] :template_selection_expression
    #   <p>The template selection expression for the integration.</p>
    # @option params [Integer] :timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. The default timeout is 29 seconds for WebSocket APIs and 30 seconds for HTTP APIs.</p>
    # @option params [Types::TlsConfigInput] :tls_config
    #   <p>The TLS configuration for a private integration. If you specify a TLS configuration, private integration traffic uses the HTTPS protocol. Supported only for HTTP APIs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     connection_id: "StringWithLengthBetween1And1024",
    #     connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #     content_handling_strategy: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     credentials_arn: "Arn",
    #     description: "StringWithLengthBetween0And1024",
    #     integration_id: "__string", # required
    #     integration_method: "StringWithLengthBetween1And64",
    #     integration_subtype: "StringWithLengthBetween1And128",
    #     integration_type: "AWS" # One of: ["AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #     integration_uri: "UriWithLengthBetween1And2048",
    #     passthrough_behavior: "WHEN_NO_MATCH" # One of: ["WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"],
    #     payload_format_version: "StringWithLengthBetween1And64",
    #     request_parameters: {
    #       "__string" => "StringWithLengthBetween1And512"
    #     },
    #     request_templates: {
    #       "__string" => "StringWithLengthBetween0And32K"
    #     },
    #     response_parameters: {
    #       "__string" => {
    #         "__string" => "StringWithLengthBetween1And512"
    #       }
    #     },
    #     template_selection_expression: "SelectionExpression",
    #     timeout_in_millis: 1,
    #     tls_config: {
    #       server_name_to_verify: "StringWithLengthBetween1And512"
    #     }
    #   }
    #   options = {}
    #   response = client.update_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_gateway_managed: false,
    #     connection_id: "StringWithLengthBetween1And1024",
    #     connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #     content_handling_strategy: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     credentials_arn: "Arn",
    #     description: "StringWithLengthBetween0And1024",
    #     integration_id: "Id",
    #     integration_method: "StringWithLengthBetween1And64",
    #     integration_response_selection_expression: "SelectionExpression",
    #     integration_subtype: "StringWithLengthBetween1And128",
    #     integration_type: "AWS" # One of: ["AWS", "HTTP", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #     integration_uri: "UriWithLengthBetween1And2048",
    #     passthrough_behavior: "WHEN_NO_MATCH" # One of: ["WHEN_NO_MATCH", "NEVER", "WHEN_NO_TEMPLATES"],
    #     payload_format_version: "StringWithLengthBetween1And64",
    #     request_parameters: {
    #       "__string" => "StringWithLengthBetween1And512"
    #     },
    #     request_templates: {
    #       "__string" => "StringWithLengthBetween0And32K"
    #     },
    #     response_parameters: {
    #       "__string" => {
    #         "__string" => "StringWithLengthBetween1And512"
    #       }
    #     },
    #     template_selection_expression: "SelectionExpression",
    #     timeout_in_millis: 1,
    #     tls_config: {
    #       server_name_to_verify: "StringWithLengthBetween1And512"
    #     }
    #   }
    # @return [Types::UpdateIntegrationResult]
    def update_integration(params = {}, options = {})
      request = build_request(:update_integration, params)
      request.send_request(options)
    end

    # <p>Updates an IntegrationResponses.</p>
    # @param [Hash, Types::UpdateIntegrationResponseRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :content_handling_strategy
    #   <p>Supported only for WebSocket APIs. Specifies how to handle response payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT, with the following behaviors:</p> <p>CONVERT_TO_BINARY: Converts a response payload from a Base64-encoded string to the corresponding binary blob.</p> <p>CONVERT_TO_TEXT: Converts a response payload from a binary blob to a Base64-encoded string.</p> <p>If this property is not defined, the response payload will be passed through from the integration response to the route response or method response without modification.</p>
    # @option params [String] :integration_id
    #   <p>The integration ID.</p>
    # @option params [String] :integration_response_id
    #   <p>The integration response ID.</p>
    # @option params [String] :integration_response_key
    #   <p>The integration response key.</p>
    # @option params [Hash<String, String>] :response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the backend. The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of method.response.header.<replaceable>{name}</replaceable>
    #                  , where name is a valid and unique header name. The mapped non-static value must match the pattern of integration.response.header.<replaceable>{name}</replaceable>
    #                   or integration.response.body.<replaceable>{JSON-expression}</replaceable>
    #                  , where 
    #                     <replaceable>{name}</replaceable>
    #                   is a valid and unique response header name and 
    #                     <replaceable>{JSON-expression}</replaceable>
    #                   is a valid JSON expression without the $ prefix.</p>
    # @option params [Hash<String, String>] :response_templates
    #   <p>The collection of response templates for the integration response as a string-to-string map of key-value pairs. Response templates are represented as a key/value map, with a content-type as the key and a template as the value.</p>
    # @option params [String] :template_selection_expression
    #   <p>The template selection expression for the integration response. Supported only for WebSocket APIs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     content_handling_strategy: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     integration_id: "__string", # required
    #     integration_response_id: "__string", # required
    #     integration_response_key: "SelectionKey",
    #     response_parameters: {
    #       "__string" => "StringWithLengthBetween1And512"
    #     },
    #     response_templates: {
    #       "__string" => "StringWithLengthBetween0And32K"
    #     },
    #     template_selection_expression: "SelectionExpression"
    #   }
    #   options = {}
    #   response = client.update_integration_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_handling_strategy: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     integration_response_id: "Id",
    #     integration_response_key: "SelectionKey",
    #     response_parameters: {
    #       "__string" => "StringWithLengthBetween1And512"
    #     },
    #     response_templates: {
    #       "__string" => "StringWithLengthBetween0And32K"
    #     },
    #     template_selection_expression: "SelectionExpression"
    #   }
    # @return [Types::UpdateIntegrationResponseResponse]
    def update_integration_response(params = {}, options = {})
      request = build_request(:update_integration_response, params)
      request.send_request(options)
    end

    # <p>Updates a Model.</p>
    # @param [Hash, Types::UpdateModelRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :content_type
    #   <p>The content-type for the model, for example, "application/json".</p>
    # @option params [String] :description
    #   <p>The description of the model.</p>
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    # @option params [String] :name
    #   <p>The name of the model.</p>
    # @option params [String] :schema
    #   <p>The schema for the model. For application/json models, this should be JSON schema draft 4 model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     content_type: "StringWithLengthBetween1And256",
    #     description: "StringWithLengthBetween0And1024",
    #     model_id: "__string", # required
    #     name: "StringWithLengthBetween1And128",
    #     schema: "StringWithLengthBetween0And32K"
    #   }
    #   options = {}
    #   response = client.update_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "StringWithLengthBetween1And256",
    #     description: "StringWithLengthBetween0And1024",
    #     model_id: "Id",
    #     name: "StringWithLengthBetween1And128",
    #     schema: "StringWithLengthBetween0And32K"
    #   }
    # @return [Types::UpdateModelResponse]
    def update_model(params = {}, options = {})
      request = build_request(:update_model, params)
      request.send_request(options)
    end

    # <p>Updates a Route.</p>
    # @param [Hash, Types::UpdateRouteRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [Boolean] :api_key_required
    #   <p>Specifies whether an API key is required for the route. Supported only for WebSocket APIs.</p>
    # @option params [Array<String>] :authorization_scopes
    #   <p>The authorization scopes supported by this route.</p>
    # @option params [String] :authorization_type
    #   <p>The authorization type for the route. For WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer For HTTP APIs, valid values are NONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a Lambda authorizer.</p>
    # @option params [String] :authorizer_id
    #   <p>The identifier of the Authorizer resource to be associated with this route. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    # @option params [String] :model_selection_expression
    #   <p>The model selection expression for the route. Supported only for WebSocket APIs.</p>
    # @option params [String] :operation_name
    #   <p>The operation name for the route.</p>
    # @option params [Hash<String, String>] :request_models
    #   <p>The request models for the route. Supported only for WebSocket APIs.</p>
    # @option params [Hash<String, Types::ParameterConstraints>] :request_parameters
    #   <p>The request parameters for the route. Supported only for WebSocket APIs.</p>
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    # @option params [String] :route_key
    #   <p>The route key for the route.</p>
    # @option params [String] :route_response_selection_expression
    #   <p>The route response selection expression for the route. Supported only for WebSocket APIs.</p>
    # @option params [String] :target
    #   <p>The target for the route.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     api_key_required: false,
    #     authorization_scopes: ["StringWithLengthBetween1And64"],
    #     authorization_type: "NONE" # One of: ["NONE", "AWS_IAM", "CUSTOM", "JWT"],
    #     authorizer_id: "Id",
    #     model_selection_expression: "SelectionExpression",
    #     operation_name: "StringWithLengthBetween1And64",
    #     request_models: {
    #       "__string" => "StringWithLengthBetween1And128"
    #     },
    #     request_parameters: {
    #       "__string" => {
    #         required: false
    #       }
    #     },
    #     route_id: "__string", # required
    #     route_key: "SelectionKey",
    #     route_response_selection_expression: "SelectionExpression",
    #     target: "StringWithLengthBetween1And128"
    #   }
    #   options = {}
    #   response = client.update_route(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_gateway_managed: false,
    #     api_key_required: false,
    #     authorization_scopes: ["StringWithLengthBetween1And64"],
    #     authorization_type: "NONE" # One of: ["NONE", "AWS_IAM", "CUSTOM", "JWT"],
    #     authorizer_id: "Id",
    #     model_selection_expression: "SelectionExpression",
    #     operation_name: "StringWithLengthBetween1And64",
    #     request_models: {
    #       "__string" => "StringWithLengthBetween1And128"
    #     },
    #     request_parameters: {
    #       "__string" => {
    #         required: false
    #       }
    #     },
    #     route_id: "Id",
    #     route_key: "SelectionKey",
    #     route_response_selection_expression: "SelectionExpression",
    #     target: "StringWithLengthBetween1And128"
    #   }
    # @return [Types::UpdateRouteResult]
    def update_route(params = {}, options = {})
      request = build_request(:update_route, params)
      request.send_request(options)
    end

    # <p>Updates a RouteResponse.</p>
    # @param [Hash, Types::UpdateRouteResponseRequest] params
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [String] :model_selection_expression
    #   <p>The model selection expression for the route response. Supported only for WebSocket APIs.</p>
    # @option params [Hash<String, String>] :response_models
    #   <p>The response models for the route response.</p>
    # @option params [Hash<String, Types::ParameterConstraints>] :response_parameters
    #   <p>The route response parameters.</p>
    # @option params [String] :route_id
    #   <p>The route ID.</p>
    # @option params [String] :route_response_id
    #   <p>The route response ID.</p>
    # @option params [String] :route_response_key
    #   <p>The route response key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_id: "__string", # required
    #     model_selection_expression: "SelectionExpression",
    #     response_models: {
    #       "__string" => "StringWithLengthBetween1And128"
    #     },
    #     response_parameters: {
    #       "__string" => {
    #         required: false
    #       }
    #     },
    #     route_id: "__string", # required
    #     route_response_id: "__string", # required
    #     route_response_key: "SelectionKey"
    #   }
    #   options = {}
    #   response = client.update_route_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_selection_expression: "SelectionExpression",
    #     response_models: {
    #       "__string" => "StringWithLengthBetween1And128"
    #     },
    #     response_parameters: {
    #       "__string" => {
    #         required: false
    #       }
    #     },
    #     route_response_id: "Id",
    #     route_response_key: "SelectionKey"
    #   }
    # @return [Types::UpdateRouteResponseResponse]
    def update_route_response(params = {}, options = {})
      request = build_request(:update_route_response, params)
      request.send_request(options)
    end

    # <p>Updates a Stage.</p>
    # @param [Hash, Types::UpdateStageRequest] params
    # @option params [Types::AccessLogSettings] :access_log_settings
    #   <p>Settings for logging access in this stage.</p>
    # @option params [String] :api_id
    #   <p>The API identifier.</p>
    # @option params [Boolean] :auto_deploy
    #   <p>Specifies whether updates to an API automatically trigger a new deployment. The default value is false.</p>
    # @option params [String] :client_certificate_id
    #   <p>The identifier of a client certificate for a Stage.</p>
    # @option params [Types::RouteSettings] :default_route_settings
    #   <p>The default route settings for the stage.</p>
    # @option params [String] :deployment_id
    #   <p>The deployment identifier for the API stage. Can't be updated if autoDeploy is enabled.</p>
    # @option params [String] :description
    #   <p>The description for the API stage.</p>
    # @option params [Hash<String, Types::RouteSettings>] :route_settings
    #   <p>Route settings for the stage.</p>
    # @option params [String] :stage_name
    #   <p>The stage name. Stage names can contain only alphanumeric characters, hyphens, and underscores, or be $default. Maximum length is 128 characters.</p>
    # @option params [Hash<String, String>] :stage_variables
    #   <p>A map that defines the stage variables for a Stage. Variable names can have alphanumeric and underscore characters, and the values must match [A-Za-z0-9-._~:/?#&amp;=,]+.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_log_settings: {
    #       destination_arn: "Arn",
    #       format: "StringWithLengthBetween1And1024"
    #     },
    #     api_id: "__string", # required
    #     auto_deploy: false,
    #     client_certificate_id: "Id",
    #     default_route_settings: {
    #       data_trace_enabled: false,
    #       detailed_metrics_enabled: false,
    #       logging_level: "ERROR" # One of: ["ERROR", "INFO", "OFF"],
    #       throttling_burst_limit: 1,
    #       throttling_rate_limit: 1.0
    #     },
    #     deployment_id: "Id",
    #     description: "StringWithLengthBetween0And1024",
    #     route_settings: {
    #       "__string" => {
    #         data_trace_enabled: false,
    #         detailed_metrics_enabled: false,
    #         logging_level: "ERROR" # One of: ["ERROR", "INFO", "OFF"],
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0
    #       }
    #     },
    #     stage_name: "__string", # required
    #     stage_variables: {
    #       "__string" => "StringWithLengthBetween0And2048"
    #     }
    #   }
    #   options = {}
    #   response = client.update_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_log_settings: {
    #       destination_arn: "Arn",
    #       format: "StringWithLengthBetween1And1024"
    #     },
    #     api_gateway_managed: false,
    #     auto_deploy: false,
    #     client_certificate_id: "Id",
    #     created_date: Time.now,
    #     default_route_settings: {
    #       data_trace_enabled: false,
    #       detailed_metrics_enabled: false,
    #       logging_level: "ERROR" # One of: ["ERROR", "INFO", "OFF"],
    #       throttling_burst_limit: 1,
    #       throttling_rate_limit: 1.0
    #     },
    #     deployment_id: "Id",
    #     description: "StringWithLengthBetween0And1024",
    #     last_deployment_status_message: "__string",
    #     last_updated_date: Time.now,
    #     route_settings: {
    #       "__string" => {
    #         data_trace_enabled: false,
    #         detailed_metrics_enabled: false,
    #         logging_level: "ERROR" # One of: ["ERROR", "INFO", "OFF"],
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0
    #       }
    #     },
    #     stage_name: "StringWithLengthBetween1And128",
    #     stage_variables: {
    #       "__string" => "StringWithLengthBetween0And2048"
    #     },
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     }
    #   }
    # @return [Types::UpdateStageResponse]
    def update_stage(params = {}, options = {})
      request = build_request(:update_stage, params)
      request.send_request(options)
    end

    # <p>Updates a VPC link.</p>
    # @param [Hash, Types::UpdateVpcLinkRequest] params
    # @option params [String] :name
    #   <p>The name of the VPC link.</p>
    # @option params [String] :vpc_link_id
    #   <p>The ID of the VPC link.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "StringWithLengthBetween1And128",
    #     vpc_link_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_vpc_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     created_date: Time.now,
    #     name: "StringWithLengthBetween1And128",
    #     security_group_ids: ["__string"],
    #     subnet_ids: ["__string"],
    #     tags: {
    #       "__string" => "StringWithLengthBetween1And1600"
    #     },
    #     vpc_link_id: "Id",
    #     vpc_link_status: "PENDING" # One of: ["PENDING", "AVAILABLE", "DELETING", "FAILED", "INACTIVE"],
    #     vpc_link_status_message: "StringWithLengthBetween0And1024",
    #     vpc_link_version: "V2" # One of: ["V2"]
    #   }
    # @return [Types::UpdateVpcLinkResponse]
    def update_vpc_link(params = {}, options = {})
      request = build_request(:update_vpc_link, params)
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
      context[:gem_name] = 'aws-sdk-apigatewayv2'
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
