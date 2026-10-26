# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:apigateway)

module Aws::APIGateway
  # An API client for Aws::APIGateway.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::BackplaneControlService
    @identifier = :apigateway

    add_plugin(::Aws::APIGateway::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::APIGateway::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
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
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Create an ApiKey resource. </p>
    # @param [Hash, Types::CreateApiKeyRequest] params
    # @option params [String] :name
    #   <p>The name of the ApiKey.</p>
    # @option params [String] :description
    #   <p>The description of the ApiKey.</p>
    # @option params [Boolean] :enabled
    #   <p>Specifies whether the ApiKey can be used by callers.</p>
    # @option params [Boolean] :generate_distinct_id
    #   <p>Specifies whether (<code>true</code>) or not (<code>false</code>) the key identifier is distinct from the created API key value. This parameter is deprecated and should not be used.</p>
    # @option params [String] :value
    #   <p>Specifies a value of the API key.</p>
    # @option params [Array<Types::StageKey>] :stage_keys
    #   <p>DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API key.</p>
    # @option params [String] :customer_id
    #   <p>An Amazon Web Services Marketplace customer identifier, when integrating with the Amazon Web Services SaaS Marketplace.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String",
    #     description: "String",
    #     enabled: false,
    #     generate_distinct_id: false,
    #     value: "String",
    #     stage_keys: [
    #       {
    #         rest_api_id: "String",
    #         stage_name: "String"
    #       }
    #     ],
    #     customer_id: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     value: "String",
    #     name: "String",
    #     customer_id: "String",
    #     description: "String",
    #     enabled: false,
    #     created_date: Time.now,
    #     last_updated_date: Time.now,
    #     stage_keys: ["String"],
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::CreateApiKeyOutput]
    def create_api_key(params = {}, options = {})
      request = build_request(:create_api_key, params)
      request.send_request(options)
    end

    # <p>Adds a new Authorizer resource to an existing RestApi resource.</p>
    # @param [Hash, Types::CreateAuthorizerRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :name
    #   <p>The name of the authorizer.</p>
    # @option params [String] :type
    #   <p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>
    # @option params [Array<String>] :provider_ar_ns
    #   <p>A list of the Amazon Cognito user pool ARNs for the <code>COGNITO_USER_POOLS</code> authorizer. Each element is of this format: <code>arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}</code>. For a <code>TOKEN</code> or <code>REQUEST</code> authorizer, this is not defined. </p>
    # @option params [String] :auth_type
    #   <p>Optional customer-defined field, used in OpenAPI imports and exports without functional impact.</p>
    # @option params [String] :authorizer_uri
    #   <p>Specifies the authorizer's Uniform Resource Identifier (URI). For <code>TOKEN</code> or <code>REQUEST</code> authorizers, this must be a well-formed Lambda function URI, for example, <code>arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations</code>. In general, the URI has this form  <code>arn:aws:apigateway:{region}:lambda:path/{service_api}</code>, where <code>{region}</code> is the same as the region hosting the Lambda function, <code>path</code> indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial <code>/</code>. For Lambda functions, this is usually of the form <code>/2015-03-31/functions/[FunctionARN]/invocations</code>.</p>
    # @option params [String] :authorizer_credentials
    #   <p>Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.</p>
    # @option params [String] :identity_source
    #   <p>The identity source for which authorization is requested. For a <code>TOKEN</code> or
    #           <code>COGNITO_USER_POOLS</code> authorizer, this is required and specifies the request
    #         header mapping expression for the custom header holding the authorization token submitted by
    #         the client. For example, if the token header name is <code>Auth</code>, the header mapping
    #         expression is <code>method.request.header.Auth</code>. For the <code>REQUEST</code>
    #         authorizer, this is required when authorization caching is enabled. The value is a
    #         comma-separated string of one or more mapping expressions of the specified request parameters.
    #         For example, if an <code>Auth</code> header, a <code>Name</code> query string parameter are
    #         defined as identity sources, this value is <code>method.request.header.Auth,
    #           method.request.querystring.Name</code>. These parameters will be used to derive the
    #         authorization caching key and to perform runtime validation of the <code>REQUEST</code>
    #         authorizer by verifying all of the identity-related request parameters are present, not null
    #         and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda
    #         function, otherwise, it returns a 401 Unauthorized response without calling the Lambda
    #         function. The valid value is a string of comma-separated mapping expressions of the specified
    #         request parameters. When the authorization caching is not enabled, this property is
    #         optional.</p>
    # @option params [String] :identity_validation_expression
    #   <p>A validation expression for the incoming identity token. For <code>TOKEN</code> authorizers, this value is a regular expression. For <code>COGNITO_USER_POOLS</code> authorizers, API Gateway will match the <code>aud</code> field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the <code>REQUEST</code> authorizer.</p>
    # @option params [Integer] :authorizer_result_ttl_in_seconds
    #   <p>The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     name: "String", # required
    #     type: "TOKEN" # One of: ["TOKEN", "REQUEST", "COGNITO_USER_POOLS"], # required
    #     provider_ar_ns: ["ProviderARN"],
    #     auth_type: "String",
    #     authorizer_uri: "String",
    #     authorizer_credentials: "String",
    #     identity_source: "String",
    #     identity_validation_expression: "String",
    #     authorizer_result_ttl_in_seconds: 1
    #   }
    #   options = {}
    #   response = client.create_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     type: "TOKEN" # One of: ["TOKEN", "REQUEST", "COGNITO_USER_POOLS"],
    #     provider_ar_ns: ["ProviderARN"],
    #     auth_type: "String",
    #     authorizer_uri: "String",
    #     authorizer_credentials: "String",
    #     identity_source: "String",
    #     identity_validation_expression: "String",
    #     authorizer_result_ttl_in_seconds: 1
    #   }
    # @return [Types::CreateAuthorizerOutput]
    def create_authorizer(params = {}, options = {})
      request = build_request(:create_authorizer, params)
      request.send_request(options)
    end

    # <p>Creates a new BasePathMapping resource.</p>
    # @param [Hash, Types::CreateBasePathMappingRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name of the BasePathMapping resource to create.</p>
    # @option params [String] :domain_name_id
    #   <p>The identifier for the domain name resource. Required for private custom domain names.</p>
    # @option params [String] :base_path
    #   <p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify a base path name after the domain name.</p>
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :stage
    #   <p>The name of the API's stage that you want to use for this mapping. Specify '(none)' if you want callers to explicitly specify the stage name after any base path name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "String", # required
    #     domain_name_id: "String",
    #     base_path: "String",
    #     rest_api_id: "String", # required
    #     stage: "String"
    #   }
    #   options = {}
    #   response = client.create_base_path_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     base_path: "String",
    #     rest_api_id: "String",
    #     stage: "String"
    #   }
    # @return [Types::CreateBasePathMappingOutput]
    def create_base_path_mapping(params = {}, options = {})
      request = build_request(:create_base_path_mapping, params)
      request.send_request(options)
    end

    # <p>Creates a Deployment resource, which makes a specified RestApi callable over the internet.</p>
    # @param [Hash, Types::CreateDeploymentRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :stage_name
    #   <p>The name of the Stage resource for the Deployment resource to create.</p>
    # @option params [String] :stage_description
    #   <p>The description of the Stage resource for the Deployment resource to create.</p>
    # @option params [String] :description
    #   <p>The description for the Deployment resource to create.</p>
    # @option params [Boolean] :cache_cluster_enabled
    #   <p>Enables a cache cluster for the Stage resource specified in the input.</p>
    # @option params [String] :cache_cluster_size
    #   <p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html">Enabling API caching to enhance responsiveness</a>.</p>
    # @option params [Hash<String, String>] :variables
    #   <p>A map that defines the stage variables for the Stage resource that is associated
    #             with the new deployment. Variable names can have alphanumeric and underscore characters, and the values
    #             must match <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>
    # @option params [Types::DeploymentCanarySettings] :canary_settings
    #   <p>The input configuration for the canary deployment when the deployment is a canary release deployment. </p>
    # @option params [Boolean] :tracing_enabled
    #   <p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     stage_name: "String",
    #     stage_description: "String",
    #     description: "String",
    #     cache_cluster_enabled: false,
    #     cache_cluster_size: "0.5" # One of: ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"],
    #     variables: {
    #       "String" => "String"
    #     },
    #     canary_settings: {
    #       percent_traffic: 1.0,
    #       stage_variable_overrides: {
    #         "String" => "String"
    #       },
    #       use_stage_cache: false
    #     },
    #     tracing_enabled: false
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     description: "String",
    #     created_date: Time.now,
    #     api_summary: {
    #       "String" => {
    #         "String" => {
    #           authorization_type: "String",
    #           api_key_required: false
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateDeploymentOutput]
    def create_deployment(params = {}, options = {})
      request = build_request(:create_deployment, params)
      request.send_request(options)
    end

    # <p>Creates a documentation part.</p>
    # @param [Hash, Types::CreateDocumentationPartRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [Types::DocumentationPartLocation] :location
    #   <p>The location of the targeted API entity of the to-be-created documentation part.</p>
    # @option params [String] :properties
    #   <p>The new documentation content map of the targeted API entity. Enclosed key-value pairs are API-specific, but only OpenAPI-compliant key-value pairs can be exported and, hence, published.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     location: { # required
    #       type: "API" # One of: ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"], # required
    #       path: "String",
    #       method: "String",
    #       status_code: "DocumentationPartLocationStatusCode",
    #       name: "String"
    #     },
    #     properties: "String", # required
    #   }
    #   options = {}
    #   response = client.create_documentation_part(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     location: {
    #       type: "API" # One of: ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"], # required
    #       path: "String",
    #       method: "String",
    #       status_code: "DocumentationPartLocationStatusCode",
    #       name: "String"
    #     },
    #     properties: "String"
    #   }
    # @return [Types::CreateDocumentationPartOutput]
    def create_documentation_part(params = {}, options = {})
      request = build_request(:create_documentation_part, params)
      request.send_request(options)
    end

    # <p>Creates a documentation version</p>
    # @param [Hash, Types::CreateDocumentationVersionRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :documentation_version
    #   <p>The version identifier of the new snapshot.</p>
    # @option params [String] :stage_name
    #   <p>The stage name to be associated with the new documentation snapshot.</p>
    # @option params [String] :description
    #   <p>A description about the new documentation snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     documentation_version: "String", # required
    #     stage_name: "String",
    #     description: "String"
    #   }
    #   options = {}
    #   response = client.create_documentation_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version: "String",
    #     created_date: Time.now,
    #     description: "String"
    #   }
    # @return [Types::CreateDocumentationVersionOutput]
    def create_documentation_version(params = {}, options = {})
      request = build_request(:create_documentation_version, params)
      request.send_request(options)
    end

    # <p>Creates a new domain name.</p>
    # @param [Hash, Types::CreateDomainNameRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the DomainName resource.</p>
    # @option params [String] :certificate_name
    #   <p>The user-friendly name of the certificate that will be used by edge-optimized endpoint or private endpoint for this domain name.</p>
    # @option params [String] :certificate_body
    #   <p>[Deprecated] The body of the server certificate that will be used by edge-optimized endpoint or private endpoint for this domain name provided by your certificate authority.</p>
    # @option params [String] :certificate_private_key
    #   <p>[Deprecated] Your edge-optimized endpoint's domain name certificate's private key.</p>
    # @option params [String] :certificate_chain
    #   <p>[Deprecated] The intermediate certificates and optionally the root certificate, one after the other without any blank lines, used by an edge-optimized endpoint for this domain name. If you include the root certificate, your certificate chain must start with intermediate certificates and end with the root certificate. Use the intermediate certificates that were provided by your certificate authority. Do not include any intermediaries that are not in the chain of trust path.</p>
    # @option params [String] :certificate_arn
    #   <p>The reference to an Amazon Web Services-managed certificate that will be used by edge-optimized endpoint or private endpoint for this domain name. Certificate Manager is the only supported source.</p>
    # @option params [String] :regional_certificate_name
    #   <p>The user-friendly name of the certificate that will be used by regional endpoint for this domain name.</p>
    # @option params [String] :regional_certificate_arn
    #   <p>The reference to an Amazon Web Services-managed certificate that will be used by regional endpoint for this domain name. Certificate Manager is the only supported source.</p>
    # @option params [Types::EndpointConfiguration] :endpoint_configuration
    #   <p>The endpoint configuration of this DomainName showing the endpoint types and IP address types of the domain name. </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    # @option params [String] :security_policy
    #   <p>The Transport Layer Security (TLS) version + cipher suite for this DomainName.</p>
    # @option params [String] :endpoint_access_mode
    #   <p>
    #   The endpoint access mode of the DomainName. Only available for DomainNames that use security policies that start with <code>SecurityPolicy_</code>.
    #   </p>
    # @option params [Types::MutualTlsAuthenticationInput] :mutual_tls_authentication
    #   <p>The mutual TLS authentication configuration for a custom domain name. If specified, API Gateway
    #         performs two-way authentication between the client and the server. Clients must present a
    #         trusted certificate to access your API.</p>
    # @option params [String] :ownership_verification_certificate_arn
    #   <p>The ARN of the public certificate issued by ACM to validate ownership of your custom
    #         domain. Only required when configuring mutual TLS and using an ACM imported or private CA
    #         certificate ARN as the regionalCertificateArn.</p>
    # @option params [String] :policy
    #   <p>A stringified JSON policy document that applies to the <code>execute-api</code> service for this DomainName regardless of the caller and Method
    #         configuration. Supported only for private custom
    #         domain names.</p>
    # @option params [String] :routing_mode
    #   <p>
    #   The routing mode for this domain name. The routing mode determines how API Gateway sends traffic from your custom domain name to your private APIs.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "String", # required
    #     certificate_name: "String",
    #     certificate_body: "String",
    #     certificate_private_key: "String",
    #     certificate_chain: "String",
    #     certificate_arn: "String",
    #     regional_certificate_name: "String",
    #     regional_certificate_arn: "String",
    #     endpoint_configuration: {
    #       types: ["REGIONAL" # One of: ["REGIONAL", "EDGE", "PRIVATE"]],
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #       vpc_endpoint_ids: ["String"]
    #     },
    #     tags: {
    #       "String" => "String"
    #     },
    #     security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2", "SecurityPolicy_TLS13_1_3_2025_09", "SecurityPolicy_TLS13_1_3_FIPS_2025_09", "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_2021_06", "SecurityPolicy_TLS13_2025_EDGE", "SecurityPolicy_TLS12_PFS_2025_EDGE", "SecurityPolicy_TLS12_2018_EDGE"],
    #     endpoint_access_mode: "BASIC" # One of: ["BASIC", "STRICT"],
    #     mutual_tls_authentication: {
    #       truststore_uri: "String",
    #       truststore_version: "String"
    #     },
    #     ownership_verification_certificate_arn: "String",
    #     policy: "String",
    #     routing_mode: "BASE_PATH_MAPPING_ONLY" # One of: ["BASE_PATH_MAPPING_ONLY", "ROUTING_RULE_ONLY", "ROUTING_RULE_THEN_BASE_PATH_MAPPING"]
    #   }
    #   options = {}
    #   response = client.create_domain_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "String",
    #     domain_name_id: "String",
    #     domain_name_arn: "String",
    #     certificate_name: "String",
    #     certificate_arn: "String",
    #     certificate_upload_date: Time.now,
    #     regional_domain_name: "String",
    #     regional_hosted_zone_id: "String",
    #     regional_certificate_name: "String",
    #     regional_certificate_arn: "String",
    #     distribution_domain_name: "String",
    #     distribution_hosted_zone_id: "String",
    #     endpoint_configuration: {
    #       types: ["REGIONAL" # One of: ["REGIONAL", "EDGE", "PRIVATE"]],
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #       vpc_endpoint_ids: ["String"]
    #     },
    #     domain_name_status: "AVAILABLE" # One of: ["AVAILABLE", "UPDATING", "PENDING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION", "FAILED"],
    #     domain_name_status_message: "String",
    #     security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2", "SecurityPolicy_TLS13_1_3_2025_09", "SecurityPolicy_TLS13_1_3_FIPS_2025_09", "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_2021_06", "SecurityPolicy_TLS13_2025_EDGE", "SecurityPolicy_TLS12_PFS_2025_EDGE", "SecurityPolicy_TLS12_2018_EDGE"],
    #     endpoint_access_mode: "BASIC" # One of: ["BASIC", "STRICT"],
    #     tags: {
    #       "String" => "String"
    #     },
    #     mutual_tls_authentication: {
    #       truststore_uri: "String",
    #       truststore_version: "String",
    #       truststore_warnings: ["String"]
    #     },
    #     ownership_verification_certificate_arn: "String",
    #     management_policy: "String",
    #     policy: "String",
    #     routing_mode: "BASE_PATH_MAPPING_ONLY" # One of: ["BASE_PATH_MAPPING_ONLY", "ROUTING_RULE_ONLY", "ROUTING_RULE_THEN_BASE_PATH_MAPPING"]
    #   }
    # @return [Types::CreateDomainNameOutput]
    def create_domain_name(params = {}, options = {})
      request = build_request(:create_domain_name, params)
      request.send_request(options)
    end

    # <p> Creates a domain name access association resource between an access association source and a private custom
    #       domain name.</p>
    # @param [Hash, Types::CreateDomainNameAccessAssociationRequest] params
    # @option params [String] :domain_name_arn
    #   <p>
    #     The ARN of the domain name.
    #   </p>
    # @option params [String] :access_association_source_type
    #   <p>
    #   The type of the domain name access association source.
    #   </p>
    # @option params [String] :access_association_source
    #   <p>
    #   The identifier of the domain name access association source. For a VPCE, the value is the VPC endpoint ID.
    #   </p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name_arn: "String", # required
    #     access_association_source_type: "VPCE" # One of: ["VPCE"], # required
    #     access_association_source: "String", # required
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_domain_name_access_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name_access_association_arn: "String",
    #     domain_name_arn: "String",
    #     access_association_source_type: "VPCE" # One of: ["VPCE"],
    #     access_association_source: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::CreateDomainNameAccessAssociationOutput]
    def create_domain_name_access_association(params = {}, options = {})
      request = build_request(:create_domain_name_access_association, params)
      request.send_request(options)
    end

    # <p>Adds a new Model resource to an existing RestApi resource.</p>
    # @param [Hash, Types::CreateModelRequest] params
    # @option params [String] :rest_api_id
    #   <p>The RestApi identifier under which the Model will be created.</p>
    # @option params [String] :name
    #   <p>The name of the model. Must be alphanumeric.</p>
    # @option params [String] :description
    #   <p>The description of the model.</p>
    # @option params [String] :schema
    #   <p>The schema for the model. For <code>application/json</code> models, this should be JSON schema draft 4 model. The maximum size of the model is 400 KB.</p>
    # @option params [String] :content_type
    #   <p>The content-type for the model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     name: "String", # required
    #     description: "String",
    #     schema: "String",
    #     content_type: "String", # required
    #   }
    #   options = {}
    #   response = client.create_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     schema: "String",
    #     content_type: "String"
    #   }
    # @return [Types::CreateModelOutput]
    def create_model(params = {}, options = {})
      request = build_request(:create_model, params)
      request.send_request(options)
    end

    # <p>Creates a RequestValidator of a given RestApi.</p>
    # @param [Hash, Types::CreateRequestValidatorRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :name
    #   <p>The name of the to-be-created RequestValidator.</p>
    # @option params [Boolean] :validate_request_body
    #   <p>A Boolean flag to indicate whether to validate request body according to the configured model schema for the method (<code>true</code>) or not (<code>false</code>).</p>
    # @option params [Boolean] :validate_request_parameters
    #   <p>A Boolean flag to indicate whether to validate request parameters, <code>true</code>, or not <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     name: "String",
    #     validate_request_body: false,
    #     validate_request_parameters: false
    #   }
    #   options = {}
    #   response = client.create_request_validator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     validate_request_body: false,
    #     validate_request_parameters: false
    #   }
    # @return [Types::CreateRequestValidatorOutput]
    def create_request_validator(params = {}, options = {})
      request = build_request(:create_request_validator, params)
      request.send_request(options)
    end

    # <p>Creates a Resource resource.</p>
    # @param [Hash, Types::CreateResourceRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :parent_id
    #   <p>The parent resource's identifier.</p>
    # @option params [String] :path_part
    #   <p>The last path segment for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     parent_id: "String", # required
    #     path_part: "String", # required
    #   }
    #   options = {}
    #   response = client.create_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     parent_id: "String",
    #     path_part: "String",
    #     path: "String",
    #     resource_methods: {
    #       "String" => {
    #         http_method: "String",
    #         authorization_type: "String",
    #         authorizer_id: "String",
    #         api_key_required: false,
    #         request_validator_id: "String",
    #         operation_name: "String",
    #         request_parameters: {
    #           "String" => false
    #         },
    #         request_models: {
    #           "String" => "String"
    #         },
    #         method_responses: {
    #           "String" => {
    #             status_code: "StatusCode",
    #             response_parameters: {
    #               "String" => false
    #             },
    #             response_models: {
    #               "String" => "String"
    #             }
    #           }
    #         },
    #         method_integration: {
    #           type: "HTTP" # One of: ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #           http_method: "String",
    #           uri: "String",
    #           connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #           connection_id: "String",
    #           credentials: "String",
    #           request_parameters: {
    #             "String" => "String"
    #           },
    #           request_templates: {
    #             "String" => "String"
    #           },
    #           passthrough_behavior: "String",
    #           content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #           timeout_in_millis: 1,
    #           cache_namespace: "String",
    #           cache_key_parameters: ["String"],
    #           integration_responses: {
    #             "String" => {
    #               status_code: "StatusCode",
    #               selection_pattern: "String",
    #               response_parameters: {
    #                 "String" => "String"
    #               },
    #               response_templates: {
    #                 "String" => "String"
    #               },
    #               content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #             }
    #           },
    #           tls_config: {
    #             insecure_skip_verification: false
    #           },
    #           response_transfer_mode: "BUFFERED" # One of: ["BUFFERED", "STREAM"],
    #           integration_target: "String"
    #         },
    #         authorization_scopes: ["String"]
    #       }
    #     }
    #   }
    # @return [Types::CreateResourceOutput]
    def create_resource(params = {}, options = {})
      request = build_request(:create_resource, params)
      request.send_request(options)
    end

    # <p>Creates a new RestApi resource.</p>
    # @param [Hash, Types::CreateRestApiRequest] params
    # @option params [String] :name
    #   <p>The name of the RestApi.</p>
    # @option params [String] :description
    #   <p>The description of the RestApi.</p>
    # @option params [String] :version
    #   <p>A version identifier for the API.</p>
    # @option params [String] :clone_from
    #   <p>The ID of the RestApi that you want to clone from.</p>
    # @option params [Array<String>] :binary_media_types
    #   <p>The list of binary media types supported by the RestApi. By default, the RestApi supports only UTF-8-encoded text payloads.</p>
    # @option params [Integer] :minimum_compression_size
    #   <p>A nullable integer that is used to enable compression (with non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable compression (with a null value) on an API. When compression is enabled, compression or decompression is not applied on the payload if the payload size is smaller than this value. Setting it to zero allows compression for any payload size.</p>
    # @option params [String] :api_key_source
    #   <p>The source of the API key for metering requests according to a usage plan. Valid values
    #         are: <code>HEADER</code> to read the API key from the <code>X-API-Key</code> header of a
    #         request. <code>AUTHORIZER</code> to read the API key from the <code>UsageIdentifierKey</code>
    #         from a custom authorizer.</p>
    # @option params [Types::EndpointConfiguration] :endpoint_configuration
    #   <p>The endpoint configuration of this RestApi showing the endpoint types and IP address types of the API. </p>
    # @option params [String] :policy
    #   <p>A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    # @option params [Boolean] :disable_execute_api_endpoint
    #   <p>Specifies whether clients can invoke your API by using the default <code>execute-api</code> endpoint.
    #         By default, clients can invoke your API with the default
    #         <code>https://{api_id}.execute-api.{region}.amazonaws.com</code> endpoint. To require that clients use a
    #         custom domain name to invoke your API, disable the default endpoint</p>
    # @option params [String] :security_policy
    #   <p>
    #   The Transport Layer Security (TLS) version + cipher suite for this RestApi.
    #   </p>
    # @option params [String] :endpoint_access_mode
    #   <p>
    #   The endpoint access mode of the RestApi. Only available for RestApis that use security policies that start with <code>SecurityPolicy_</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     description: "String",
    #     version: "String",
    #     clone_from: "String",
    #     binary_media_types: ["String"],
    #     minimum_compression_size: 1,
    #     api_key_source: "HEADER" # One of: ["HEADER", "AUTHORIZER"],
    #     endpoint_configuration: {
    #       types: ["REGIONAL" # One of: ["REGIONAL", "EDGE", "PRIVATE"]],
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #       vpc_endpoint_ids: ["String"]
    #     },
    #     policy: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     disable_execute_api_endpoint: false,
    #     security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2", "SecurityPolicy_TLS13_1_3_2025_09", "SecurityPolicy_TLS13_1_3_FIPS_2025_09", "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_2021_06", "SecurityPolicy_TLS13_2025_EDGE", "SecurityPolicy_TLS12_PFS_2025_EDGE", "SecurityPolicy_TLS12_2018_EDGE"],
    #     endpoint_access_mode: "BASIC" # One of: ["BASIC", "STRICT"]
    #   }
    #   options = {}
    #   response = client.create_rest_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     created_date: Time.now,
    #     version: "String",
    #     warnings: ["String"],
    #     binary_media_types: ["String"],
    #     minimum_compression_size: 1,
    #     api_key_source: "HEADER" # One of: ["HEADER", "AUTHORIZER"],
    #     endpoint_configuration: {
    #       types: ["REGIONAL" # One of: ["REGIONAL", "EDGE", "PRIVATE"]],
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #       vpc_endpoint_ids: ["String"]
    #     },
    #     policy: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     disable_execute_api_endpoint: false,
    #     root_resource_id: "String",
    #     security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2", "SecurityPolicy_TLS13_1_3_2025_09", "SecurityPolicy_TLS13_1_3_FIPS_2025_09", "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_2021_06", "SecurityPolicy_TLS13_2025_EDGE", "SecurityPolicy_TLS12_PFS_2025_EDGE", "SecurityPolicy_TLS12_2018_EDGE"],
    #     endpoint_access_mode: "BASIC" # One of: ["BASIC", "STRICT"],
    #     api_status: "UPDATING" # One of: ["UPDATING", "AVAILABLE", "PENDING", "FAILED"],
    #     api_status_message: "String"
    #   }
    # @return [Types::CreateRestApiOutput]
    def create_rest_api(params = {}, options = {})
      request = build_request(:create_rest_api, params)
      request.send_request(options)
    end

    # <p>Creates a new Stage resource that references a pre-existing Deployment for the API. </p>
    # @param [Hash, Types::CreateStageRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :stage_name
    #   <p>The name for the Stage resource. Stage names can only contain alphanumeric characters, hyphens, and underscores. Maximum length is 128 characters.</p>
    # @option params [String] :deployment_id
    #   <p>The identifier of the Deployment resource for the Stage resource.</p>
    # @option params [String] :description
    #   <p>The description of the Stage resource.</p>
    # @option params [Boolean] :cache_cluster_enabled
    #   <p>Whether cache clustering is enabled for the stage.</p>
    # @option params [String] :cache_cluster_size
    #   <p>The stage's cache capacity in GB. For more information about choosing a cache size, see <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-caching.html">Enabling API caching to enhance responsiveness</a>.</p>
    # @option params [Hash<String, String>] :variables
    #   <p>A map that defines the stage variables for the new Stage resource. Variable names
    #             can have alphanumeric and underscore characters, and the values must match
    #             <code>[A-Za-z0-9-._~:/?#&=,]+</code>.</p>
    # @option params [String] :documentation_version
    #   <p>The version of the associated API documentation.</p>
    # @option params [Types::CanarySettings] :canary_settings
    #   <p>The canary deployment settings of this stage.</p>
    # @option params [Boolean] :tracing_enabled
    #   <p>Specifies whether active tracing with X-ray is enabled for the Stage.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #     deployment_id: "String", # required
    #     description: "String",
    #     cache_cluster_enabled: false,
    #     cache_cluster_size: "0.5" # One of: ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"],
    #     variables: {
    #       "String" => "String"
    #     },
    #     documentation_version: "String",
    #     canary_settings: {
    #       percent_traffic: 1.0,
    #       deployment_id: "String",
    #       stage_variable_overrides: {
    #         "String" => "String"
    #       },
    #       use_stage_cache: false
    #     },
    #     tracing_enabled: false,
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "String",
    #     client_certificate_id: "String",
    #     stage_name: "String",
    #     description: "String",
    #     cache_cluster_enabled: false,
    #     cache_cluster_size: "0.5" # One of: ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"],
    #     cache_cluster_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"],
    #     method_settings: {
    #       "String" => {
    #         metrics_enabled: false,
    #         logging_level: "String",
    #         data_trace_enabled: false,
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0,
    #         caching_enabled: false,
    #         cache_ttl_in_seconds: 1,
    #         cache_data_encrypted: false,
    #         require_authorization_for_cache_control: false,
    #         unauthorized_cache_control_header_strategy: "FAIL_WITH_403" # One of: ["FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"]
    #       }
    #     },
    #     variables: {
    #       "String" => "String"
    #     },
    #     documentation_version: "String",
    #     access_log_settings: {
    #       format: "String",
    #       destination_arn: "String"
    #     },
    #     canary_settings: {
    #       percent_traffic: 1.0,
    #       deployment_id: "String",
    #       stage_variable_overrides: {
    #         "String" => "String"
    #       },
    #       use_stage_cache: false
    #     },
    #     tracing_enabled: false,
    #     web_acl_arn: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     created_date: Time.now,
    #     last_updated_date: Time.now
    #   }
    # @return [Types::CreateStageOutput]
    def create_stage(params = {}, options = {})
      request = build_request(:create_stage, params)
      request.send_request(options)
    end

    # <p>Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload. </p>
    # @param [Hash, Types::CreateUsagePlanRequest] params
    # @option params [String] :name
    #   <p>The name of the usage plan.</p>
    # @option params [String] :description
    #   <p>The description of the usage plan.</p>
    # @option params [Array<Types::ApiStage>] :api_stages
    #   <p>The associated API stages of the usage plan.</p>
    # @option params [Types::ThrottleSettings] :throttle
    #   <p>The throttling limits of the usage plan.</p>
    # @option params [Types::QuotaSettings] :quota
    #   <p>The quota of the usage plan.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     description: "String",
    #     api_stages: [
    #       {
    #         api_id: "String",
    #         stage: "String",
    #         throttle: {
    #           "String" => {
    #             burst_limit: 1,
    #             rate_limit: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     throttle: {
    #       burst_limit: 1,
    #       rate_limit: 1.0
    #     },
    #     quota: {
    #       limit: 1,
    #       offset: 1,
    #       period: "DAY" # One of: ["DAY", "WEEK", "MONTH"]
    #     },
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_usage_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     api_stages: [
    #       {
    #         api_id: "String",
    #         stage: "String",
    #         throttle: {
    #           "String" => {
    #             burst_limit: 1,
    #             rate_limit: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     throttle: {
    #       burst_limit: 1,
    #       rate_limit: 1.0
    #     },
    #     quota: {
    #       limit: 1,
    #       offset: 1,
    #       period: "DAY" # One of: ["DAY", "WEEK", "MONTH"]
    #     },
    #     product_code: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::CreateUsagePlanOutput]
    def create_usage_plan(params = {}, options = {})
      request = build_request(:create_usage_plan, params)
      request.send_request(options)
    end

    # <p>Creates a usage plan key for adding an existing API key to a usage plan.</p>
    # @param [Hash, Types::CreateUsagePlanKeyRequest] params
    # @option params [String] :usage_plan_id
    #   <p>The Id of the UsagePlan resource representing the usage plan containing the to-be-created UsagePlanKey resource representing a plan customer.</p>
    # @option params [String] :key_id
    #   <p>The identifier of a UsagePlanKey resource for a plan customer.</p>
    # @option params [String] :key_type
    #   <p>The type of a UsagePlanKey resource for a plan customer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_plan_id: "String", # required
    #     key_id: "String", # required
    #     key_type: "String", # required
    #   }
    #   options = {}
    #   response = client.create_usage_plan_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     type: "String",
    #     value: "String",
    #     name: "String"
    #   }
    # @return [Types::CreateUsagePlanKeyOutput]
    def create_usage_plan_key(params = {}, options = {})
      request = build_request(:create_usage_plan_key, params)
      request.send_request(options)
    end

    # <p>Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational. The caller must have permissions to create and update VPC Endpoint services.</p>
    # @param [Hash, Types::CreateVpcLinkRequest] params
    # @option params [String] :name
    #   <p>The name used to label and identify the VPC link.</p>
    # @option params [String] :description
    #   <p>The description of the VPC link.</p>
    # @option params [Array<String>] :target_arns
    #   <p>The ARN of the network load balancer of the VPC targeted by the VPC link. The network load balancer must be owned by the same Amazon Web Services account of the API owner.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     description: "String",
    #     target_arns: ["String"], # required
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_vpc_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     target_arns: ["String"],
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING", "DELETING", "FAILED"],
    #     status_message: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::CreateVpcLinkOutput]
    def create_vpc_link(params = {}, options = {})
      request = build_request(:create_vpc_link, params)
      request.send_request(options)
    end

    # <p>Deletes the ApiKey resource.</p>
    # @param [Hash, Types::DeleteApiKeyRequest] params
    # @option params [String] :api_key
    #   <p>The identifier of the ApiKey resource to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_key: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_api_key(params = {}, options = {})
      request = build_request(:delete_api_key, params)
      request.send_request(options)
    end

    # <p>Deletes an existing Authorizer resource.</p>
    # @param [Hash, Types::DeleteAuthorizerRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :authorizer_id
    #   <p>The identifier of the Authorizer resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     authorizer_id: "String", # required
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

    # <p>Deletes the BasePathMapping resource.</p>
    # @param [Hash, Types::DeleteBasePathMappingRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name of the BasePathMapping resource to delete.</p>
    # @option params [String] :domain_name_id
    #   <p>
    #     The identifier for the domain name resource. Supported only for private custom domain names.
    #   </p>
    # @option params [String] :base_path
    #   <p>The base path name of the BasePathMapping resource to delete.</p>
    #            <p>To specify an empty base path, set this parameter to <code>'(none)'</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "String", # required
    #     domain_name_id: "String",
    #     base_path: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_base_path_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_base_path_mapping(params = {}, options = {})
      request = build_request(:delete_base_path_mapping, params)
      request.send_request(options)
    end

    # <p>Deletes the ClientCertificate resource.</p>
    # @param [Hash, Types::DeleteClientCertificateRequest] params
    # @option params [String] :client_certificate_id
    #   <p>The identifier of the ClientCertificate resource to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_certificate_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_client_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_client_certificate(params = {}, options = {})
      request = build_request(:delete_client_certificate, params)
      request.send_request(options)
    end

    # <p>Deletes a Deployment resource. Deleting a deployment will only succeed if there are no Stage resources associated with it.</p>
    # @param [Hash, Types::DeleteDeploymentRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :deployment_id
    #   <p>The identifier of the Deployment resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     deployment_id: "String", # required
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

    # <p>Deletes a documentation part</p>
    # @param [Hash, Types::DeleteDocumentationPartRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :documentation_part_id
    #   <p>The identifier of the to-be-deleted documentation part.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     documentation_part_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_documentation_part(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_documentation_part(params = {}, options = {})
      request = build_request(:delete_documentation_part, params)
      request.send_request(options)
    end

    # <p>Deletes a documentation version.</p>
    # @param [Hash, Types::DeleteDocumentationVersionRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :documentation_version
    #   <p>The version identifier of a to-be-deleted documentation snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     documentation_version: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_documentation_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_documentation_version(params = {}, options = {})
      request = build_request(:delete_documentation_version, params)
      request.send_request(options)
    end

    # <p>Deletes the DomainName resource.</p>
    # @param [Hash, Types::DeleteDomainNameRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the DomainName resource to be deleted.</p>
    # @option params [String] :domain_name_id
    #   <p>
    #     The identifier for the domain name resource. Supported only for private custom domain names.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "String", # required
    #     domain_name_id: "String"
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

    # <p> Deletes the DomainNameAccessAssociation resource.</p>
    #          <p>Only the AWS account that created the DomainNameAccessAssociation resource can delete it. To stop an access association source in another AWS account from accessing your private custom domain name, use the RejectDomainNameAccessAssociation operation.</p>
    # @param [Hash, Types::DeleteDomainNameAccessAssociationRequest] params
    # @option params [String] :domain_name_access_association_arn
    #   <p>
    #     The ARN of the domain name access association resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name_access_association_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_domain_name_access_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_domain_name_access_association(params = {}, options = {})
      request = build_request(:delete_domain_name_access_association, params)
      request.send_request(options)
    end

    # <p>Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings.</p>
    # @param [Hash, Types::DeleteGatewayResponseRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     response_type: "DEFAULT_4XX" # One of: ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"], # required
    #   }
    #   options = {}
    #   response = client.delete_gateway_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_gateway_response(params = {}, options = {})
      request = build_request(:delete_gateway_response, params)
      request.send_request(options)
    end

    # <p>Represents a delete integration.</p>
    # @param [Hash, Types::DeleteIntegrationRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>Specifies a delete integration request's resource identifier.</p>
    # @option params [String] :http_method
    #   <p>Specifies a delete integration request's HTTP method.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
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

    # <p>Represents a delete integration response.</p>
    # @param [Hash, Types::DeleteIntegrationResponseRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>Specifies a delete integration response request's resource identifier.</p>
    # @option params [String] :http_method
    #   <p>Specifies a delete integration response request's HTTP method.</p>
    # @option params [String] :status_code
    #   <p>Specifies a delete integration response request's status code.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
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

    # <p>Deletes an existing Method resource.</p>
    # @param [Hash, Types::DeleteMethodRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the Method resource.</p>
    # @option params [String] :http_method
    #   <p>The HTTP verb of the Method resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_method(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_method(params = {}, options = {})
      request = build_request(:delete_method, params)
      request.send_request(options)
    end

    # <p>Deletes an existing MethodResponse resource.</p>
    # @param [Hash, Types::DeleteMethodResponseRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the MethodResponse resource.</p>
    # @option params [String] :http_method
    #   <p>The HTTP verb of the Method resource.</p>
    # @option params [String] :status_code
    #   <p>The status code identifier for the MethodResponse resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #   }
    #   options = {}
    #   response = client.delete_method_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_method_response(params = {}, options = {})
      request = build_request(:delete_method_response, params)
      request.send_request(options)
    end

    # <p>Deletes a model.</p>
    # @param [Hash, Types::DeleteModelRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :model_name
    #   <p>The name of the model to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     model_name: "String", # required
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

    # <p>Deletes a RequestValidator of a given RestApi.</p>
    # @param [Hash, Types::DeleteRequestValidatorRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :request_validator_id
    #   <p>The identifier of the RequestValidator to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     request_validator_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_request_validator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_request_validator(params = {}, options = {})
      request = build_request(:delete_request_validator, params)
      request.send_request(options)
    end

    # <p>Deletes a Resource resource.</p>
    # @param [Hash, Types::DeleteResourceRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the Resource resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource(params = {}, options = {})
      request = build_request(:delete_resource, params)
      request.send_request(options)
    end

    # <p>Deletes the specified API.</p>
    # @param [Hash, Types::DeleteRestApiRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_rest_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_rest_api(params = {}, options = {})
      request = build_request(:delete_rest_api, params)
      request.send_request(options)
    end

    # <p>Deletes a Stage resource.</p>
    # @param [Hash, Types::DeleteStageRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :stage_name
    #   <p>The name of the Stage resource to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
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

    # <p>Deletes a usage plan of a given plan Id.</p>
    # @param [Hash, Types::DeleteUsagePlanRequest] params
    # @option params [String] :usage_plan_id
    #   <p>The Id of the to-be-deleted usage plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_plan_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_usage_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_usage_plan(params = {}, options = {})
      request = build_request(:delete_usage_plan, params)
      request.send_request(options)
    end

    # <p>Deletes a usage plan key  and remove the underlying API key from the associated usage plan.</p>
    # @param [Hash, Types::DeleteUsagePlanKeyRequest] params
    # @option params [String] :usage_plan_id
    #   <p>The Id of the UsagePlan resource representing the usage plan containing the to-be-deleted UsagePlanKey resource representing a plan customer.</p>
    # @option params [String] :key_id
    #   <p>The Id of the UsagePlanKey resource to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_plan_id: "String", # required
    #     key_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_usage_plan_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_usage_plan_key(params = {}, options = {})
      request = build_request(:delete_usage_plan_key, params)
      request.send_request(options)
    end

    # <p>Deletes an existing VpcLink of a specified identifier.</p>
    # @param [Hash, Types::DeleteVpcLinkRequest] params
    # @option params [String] :vpc_link_id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_link_id: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_vpc_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_vpc_link(params = {}, options = {})
      request = build_request(:delete_vpc_link, params)
      request.send_request(options)
    end

    # <p>Flushes all authorizer cache entries on a stage.</p>
    # @param [Hash, Types::FlushStageAuthorizersCacheRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :stage_name
    #   <p>The name of the stage to flush.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #   }
    #   options = {}
    #   response = client.flush_stage_authorizers_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def flush_stage_authorizers_cache(params = {}, options = {})
      request = build_request(:flush_stage_authorizers_cache, params)
      request.send_request(options)
    end

    # <p>Flushes a stage's cache.</p>
    # @param [Hash, Types::FlushStageCacheRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :stage_name
    #   <p>The name of the stage to flush its cache.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #   }
    #   options = {}
    #   response = client.flush_stage_cache(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def flush_stage_cache(params = {}, options = {})
      request = build_request(:flush_stage_cache, params)
      request.send_request(options)
    end

    # <p>Generates a ClientCertificate resource.</p>
    # @param [Hash, Types::GenerateClientCertificateRequest] params
    # @option params [String] :description
    #   <p>The description of the ClientCertificate.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.generate_client_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_certificate_id: "String",
    #     description: "String",
    #     pem_encoded_certificate: "String",
    #     created_date: Time.now,
    #     expiration_date: Time.now,
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GenerateClientCertificateOutput]
    def generate_client_certificate(params = {}, options = {})
      request = build_request(:generate_client_certificate, params)
      request.send_request(options)
    end

    # <p>Gets information about the current Account resource.</p>
    # @param [Hash, Types::GetAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloudwatch_role_arn: "String",
    #     throttle_settings: {
    #       burst_limit: 1,
    #       rate_limit: 1.0
    #     },
    #     features: ["String"],
    #     api_key_version: "String"
    #   }
    # @return [Types::GetAccountOutput]
    def get_account(params = {}, options = {})
      request = build_request(:get_account, params)
      request.send_request(options)
    end

    # <p>Gets information about the current ApiKey resource.</p>
    # @param [Hash, Types::GetApiKeyRequest] params
    # @option params [String] :api_key
    #   <p>The identifier of the ApiKey resource.</p>
    # @option params [Boolean] :include_value
    #   <p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains the key value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_key: "String", # required
    #     include_value: false
    #   }
    #   options = {}
    #   response = client.get_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     value: "String",
    #     name: "String",
    #     customer_id: "String",
    #     description: "String",
    #     enabled: false,
    #     created_date: Time.now,
    #     last_updated_date: Time.now,
    #     stage_keys: ["String"],
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetApiKeyOutput]
    def get_api_key(params = {}, options = {})
      request = build_request(:get_api_key, params)
      request.send_request(options)
    end

    # <p>Gets information about the current ApiKeys resource.</p>
    # @param [Hash, Types::GetApiKeysRequest] params
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @option params [String] :name_query
    #   <p>The name of queried API keys.</p>
    # @option params [String] :customer_id
    #   <p>The identifier of a customer in Amazon Web Services Marketplace or an external system, such as a developer portal.</p>
    # @option params [Boolean] :include_values
    #   <p>A boolean flag to specify whether (<code>true</code>) or not (<code>false</code>) the result contains key values.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     position: "String",
    #     limit: 1,
    #     name_query: "String",
    #     customer_id: "String",
    #     include_values: false
    #   }
    #   options = {}
    #   response = client.get_api_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     warnings: ["String"],
    #     items: [
    #       {
    #         id: "String",
    #         value: "String",
    #         name: "String",
    #         customer_id: "String",
    #         description: "String",
    #         enabled: false,
    #         created_date: Time.now,
    #         last_updated_date: Time.now,
    #         stage_keys: ["String"],
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetApiKeysOutput]
    def get_api_keys(params = {}, options = {})
      request = build_request(:get_api_keys, params)
      request.send_request(options)
    end

    # <p>Describe an existing Authorizer resource.</p>
    # @param [Hash, Types::GetAuthorizerRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :authorizer_id
    #   <p>The identifier of the Authorizer resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     authorizer_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     type: "TOKEN" # One of: ["TOKEN", "REQUEST", "COGNITO_USER_POOLS"],
    #     provider_ar_ns: ["ProviderARN"],
    #     auth_type: "String",
    #     authorizer_uri: "String",
    #     authorizer_credentials: "String",
    #     identity_source: "String",
    #     identity_validation_expression: "String",
    #     authorizer_result_ttl_in_seconds: 1
    #   }
    # @return [Types::GetAuthorizerOutput]
    def get_authorizer(params = {}, options = {})
      request = build_request(:get_authorizer, params)
      request.send_request(options)
    end

    # <p>Describe an existing Authorizers resource.</p>
    # @param [Hash, Types::GetAuthorizersRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_authorizers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "String",
    #         name: "String",
    #         type: "TOKEN" # One of: ["TOKEN", "REQUEST", "COGNITO_USER_POOLS"],
    #         provider_ar_ns: ["ProviderARN"],
    #         auth_type: "String",
    #         authorizer_uri: "String",
    #         authorizer_credentials: "String",
    #         identity_source: "String",
    #         identity_validation_expression: "String",
    #         authorizer_result_ttl_in_seconds: 1
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetAuthorizersOutput]
    def get_authorizers(params = {}, options = {})
      request = build_request(:get_authorizers, params)
      request.send_request(options)
    end

    # <p>Describe a BasePathMapping resource.</p>
    # @param [Hash, Types::GetBasePathMappingRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name of the BasePathMapping resource to be described.</p>
    # @option params [String] :domain_name_id
    #   <p>The identifier for the domain name resource. Supported only for private custom domain names.
    #   </p>
    # @option params [String] :base_path
    #   <p>The base path name that callers of the API must provide as part of the URL after the domain name. This value must be unique for all of the mappings across a single API. Specify '(none)' if you do not want callers to specify any base path name after the domain name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "String", # required
    #     domain_name_id: "String",
    #     base_path: "String", # required
    #   }
    #   options = {}
    #   response = client.get_base_path_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     base_path: "String",
    #     rest_api_id: "String",
    #     stage: "String"
    #   }
    # @return [Types::GetBasePathMappingOutput]
    def get_base_path_mapping(params = {}, options = {})
      request = build_request(:get_base_path_mapping, params)
      request.send_request(options)
    end

    # <p>Represents a collection of BasePathMapping resources.</p>
    # @param [Hash, Types::GetBasePathMappingsRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name of a BasePathMapping resource.</p>
    # @option params [String] :domain_name_id
    #   <p>
    #     The identifier for the domain name resource. Supported only for private custom domain names.
    #   </p>
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "String", # required
    #     domain_name_id: "String",
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_base_path_mappings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         base_path: "String",
    #         rest_api_id: "String",
    #         stage: "String"
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetBasePathMappingsOutput]
    def get_base_path_mappings(params = {}, options = {})
      request = build_request(:get_base_path_mappings, params)
      request.send_request(options)
    end

    # <p>Gets information about the current ClientCertificate resource.</p>
    # @param [Hash, Types::GetClientCertificateRequest] params
    # @option params [String] :client_certificate_id
    #   <p>The identifier of the ClientCertificate resource to be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_certificate_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_client_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_certificate_id: "String",
    #     description: "String",
    #     pem_encoded_certificate: "String",
    #     created_date: Time.now,
    #     expiration_date: Time.now,
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetClientCertificateOutput]
    def get_client_certificate(params = {}, options = {})
      request = build_request(:get_client_certificate, params)
      request.send_request(options)
    end

    # <p>Gets a collection of ClientCertificate resources.</p>
    # @param [Hash, Types::GetClientCertificatesRequest] params
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_client_certificates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         client_certificate_id: "String",
    #         description: "String",
    #         pem_encoded_certificate: "String",
    #         created_date: Time.now,
    #         expiration_date: Time.now,
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetClientCertificatesOutput]
    def get_client_certificates(params = {}, options = {})
      request = build_request(:get_client_certificates, params)
      request.send_request(options)
    end

    # <p>Gets information about a Deployment resource.</p>
    # @param [Hash, Types::GetDeploymentRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :deployment_id
    #   <p>The identifier of the Deployment resource to get information about.</p>
    # @option params [Array<String>] :embed
    #   <p>A query parameter to retrieve the specified embedded resources of the returned Deployment resource in the response. In a REST API call, this <code>embed</code> parameter value is a list of comma-separated strings, as in  <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=var1,var2</code>. The SDK and other platform-dependent libraries might use a different format for the list. Currently, this request supports only retrieval of the embedded API summary this way. Hence, the parameter value must be a single-valued list containing only the <code>"apisummary"</code> string.  For example, <code>GET /restapis/{restapi_id}/deployments/{deployment_id}?embed=apisummary</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     deployment_id: "String", # required
    #     embed: ["String"]
    #   }
    #   options = {}
    #   response = client.get_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     description: "String",
    #     created_date: Time.now,
    #     api_summary: {
    #       "String" => {
    #         "String" => {
    #           authorization_type: "String",
    #           api_key_required: false
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetDeploymentOutput]
    def get_deployment(params = {}, options = {})
      request = build_request(:get_deployment, params)
      request.send_request(options)
    end

    # <p>Gets information about a Deployments collection.</p>
    # @param [Hash, Types::GetDeploymentsRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "String",
    #         description: "String",
    #         created_date: Time.now,
    #         api_summary: {
    #           "String" => {
    #             "String" => {
    #               authorization_type: "String",
    #               api_key_required: false
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetDeploymentsOutput]
    def get_deployments(params = {}, options = {})
      request = build_request(:get_deployments, params)
      request.send_request(options)
    end

    # <p>Gets a documentation part.</p>
    # @param [Hash, Types::GetDocumentationPartRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :documentation_part_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     documentation_part_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_documentation_part(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     location: {
    #       type: "API" # One of: ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"], # required
    #       path: "String",
    #       method: "String",
    #       status_code: "DocumentationPartLocationStatusCode",
    #       name: "String"
    #     },
    #     properties: "String"
    #   }
    # @return [Types::GetDocumentationPartOutput]
    def get_documentation_part(params = {}, options = {})
      request = build_request(:get_documentation_part, params)
      request.send_request(options)
    end

    # <p>Gets documentation parts.</p>
    # @param [Hash, Types::GetDocumentationPartsRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :type
    #   <p>The type of API entities of the to-be-retrieved documentation parts. </p>
    # @option params [String] :name_query
    #   <p>The name of API entities of the to-be-retrieved documentation parts.</p>
    # @option params [String] :path
    #   <p>The path of API entities of the to-be-retrieved documentation parts.</p>
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @option params [String] :location_status
    #   <p>The status of the API documentation parts to retrieve. Valid values are <code>DOCUMENTED</code> for retrieving DocumentationPart resources with content and <code>UNDOCUMENTED</code> for DocumentationPart resources without content.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     type: "API" # One of: ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"],
    #     name_query: "String",
    #     path: "String",
    #     position: "String",
    #     limit: 1,
    #     location_status: "DOCUMENTED" # One of: ["DOCUMENTED", "UNDOCUMENTED"]
    #   }
    #   options = {}
    #   response = client.get_documentation_parts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "String",
    #         location: {
    #           type: "API" # One of: ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"], # required
    #           path: "String",
    #           method: "String",
    #           status_code: "DocumentationPartLocationStatusCode",
    #           name: "String"
    #         },
    #         properties: "String"
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetDocumentationPartsOutput]
    def get_documentation_parts(params = {}, options = {})
      request = build_request(:get_documentation_parts, params)
      request.send_request(options)
    end

    # <p>Gets a documentation version.</p>
    # @param [Hash, Types::GetDocumentationVersionRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :documentation_version
    #   <p>The version identifier of the to-be-retrieved documentation snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     documentation_version: "String", # required
    #   }
    #   options = {}
    #   response = client.get_documentation_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version: "String",
    #     created_date: Time.now,
    #     description: "String"
    #   }
    # @return [Types::GetDocumentationVersionOutput]
    def get_documentation_version(params = {}, options = {})
      request = build_request(:get_documentation_version, params)
      request.send_request(options)
    end

    # <p>Gets documentation versions.</p>
    # @param [Hash, Types::GetDocumentationVersionsRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_documentation_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         version: "String",
    #         created_date: Time.now,
    #         description: "String"
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetDocumentationVersionsOutput]
    def get_documentation_versions(params = {}, options = {})
      request = build_request(:get_documentation_versions, params)
      request.send_request(options)
    end

    # <p>Represents a domain name that is contained in a simpler, more intuitive URL that can be called.</p>
    # @param [Hash, Types::GetDomainNameRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the DomainName resource.</p>
    # @option params [String] :domain_name_id
    #   <p>
    #     The identifier for the domain name resource. Required for private custom domain names.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "String", # required
    #     domain_name_id: "String"
    #   }
    #   options = {}
    #   response = client.get_domain_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "String",
    #     domain_name_id: "String",
    #     domain_name_arn: "String",
    #     certificate_name: "String",
    #     certificate_arn: "String",
    #     certificate_upload_date: Time.now,
    #     regional_domain_name: "String",
    #     regional_hosted_zone_id: "String",
    #     regional_certificate_name: "String",
    #     regional_certificate_arn: "String",
    #     distribution_domain_name: "String",
    #     distribution_hosted_zone_id: "String",
    #     endpoint_configuration: {
    #       types: ["REGIONAL" # One of: ["REGIONAL", "EDGE", "PRIVATE"]],
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #       vpc_endpoint_ids: ["String"]
    #     },
    #     domain_name_status: "AVAILABLE" # One of: ["AVAILABLE", "UPDATING", "PENDING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION", "FAILED"],
    #     domain_name_status_message: "String",
    #     security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2", "SecurityPolicy_TLS13_1_3_2025_09", "SecurityPolicy_TLS13_1_3_FIPS_2025_09", "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_2021_06", "SecurityPolicy_TLS13_2025_EDGE", "SecurityPolicy_TLS12_PFS_2025_EDGE", "SecurityPolicy_TLS12_2018_EDGE"],
    #     endpoint_access_mode: "BASIC" # One of: ["BASIC", "STRICT"],
    #     tags: {
    #       "String" => "String"
    #     },
    #     mutual_tls_authentication: {
    #       truststore_uri: "String",
    #       truststore_version: "String",
    #       truststore_warnings: ["String"]
    #     },
    #     ownership_verification_certificate_arn: "String",
    #     management_policy: "String",
    #     policy: "String",
    #     routing_mode: "BASE_PATH_MAPPING_ONLY" # One of: ["BASE_PATH_MAPPING_ONLY", "ROUTING_RULE_ONLY", "ROUTING_RULE_THEN_BASE_PATH_MAPPING"]
    #   }
    # @return [Types::GetDomainNameOutput]
    def get_domain_name(params = {}, options = {})
      request = build_request(:get_domain_name, params)
      request.send_request(options)
    end

    # <p>Represents a collection on DomainNameAccessAssociations resources.</p>
    # @param [Hash, Types::GetDomainNameAccessAssociationsRequest] params
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.
    #   </p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
    #   </p>
    # @option params [String] :resource_owner
    #   <p> The owner of the domain name access association. Use <code>SELF</code> to only list the domain name access associations owned by your own account.
    #         Use <code>OTHER_ACCOUNTS</code> to list the domain name access associations with your private custom domain names that are owned by other AWS
    #         accounts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     position: "String",
    #     limit: 1,
    #     resource_owner: "SELF" # One of: ["SELF", "OTHER_ACCOUNTS"]
    #   }
    #   options = {}
    #   response = client.get_domain_name_access_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_name_access_association_arn: "String",
    #         domain_name_arn: "String",
    #         access_association_source_type: "VPCE" # One of: ["VPCE"],
    #         access_association_source: "String",
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetDomainNameAccessAssociationsOutput]
    def get_domain_name_access_associations(params = {}, options = {})
      request = build_request(:get_domain_name_access_associations, params)
      request.send_request(options)
    end

    # <p>Represents a collection of DomainName resources.</p>
    # @param [Hash, Types::GetDomainNamesRequest] params
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @option params [String] :resource_owner
    #   <p>The owner of the domain name access association.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     position: "String",
    #     limit: 1,
    #     resource_owner: "SELF" # One of: ["SELF", "OTHER_ACCOUNTS"]
    #   }
    #   options = {}
    #   response = client.get_domain_names(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         domain_name: "String",
    #         domain_name_id: "String",
    #         domain_name_arn: "String",
    #         certificate_name: "String",
    #         certificate_arn: "String",
    #         certificate_upload_date: Time.now,
    #         regional_domain_name: "String",
    #         regional_hosted_zone_id: "String",
    #         regional_certificate_name: "String",
    #         regional_certificate_arn: "String",
    #         distribution_domain_name: "String",
    #         distribution_hosted_zone_id: "String",
    #         endpoint_configuration: {
    #           types: ["REGIONAL" # One of: ["REGIONAL", "EDGE", "PRIVATE"]],
    #           ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #           vpc_endpoint_ids: ["String"]
    #         },
    #         domain_name_status: "AVAILABLE" # One of: ["AVAILABLE", "UPDATING", "PENDING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION", "FAILED"],
    #         domain_name_status_message: "String",
    #         security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2", "SecurityPolicy_TLS13_1_3_2025_09", "SecurityPolicy_TLS13_1_3_FIPS_2025_09", "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_2021_06", "SecurityPolicy_TLS13_2025_EDGE", "SecurityPolicy_TLS12_PFS_2025_EDGE", "SecurityPolicy_TLS12_2018_EDGE"],
    #         endpoint_access_mode: "BASIC" # One of: ["BASIC", "STRICT"],
    #         tags: {
    #           "String" => "String"
    #         },
    #         mutual_tls_authentication: {
    #           truststore_uri: "String",
    #           truststore_version: "String",
    #           truststore_warnings: ["String"]
    #         },
    #         ownership_verification_certificate_arn: "String",
    #         management_policy: "String",
    #         policy: "String",
    #         routing_mode: "BASE_PATH_MAPPING_ONLY" # One of: ["BASE_PATH_MAPPING_ONLY", "ROUTING_RULE_ONLY", "ROUTING_RULE_THEN_BASE_PATH_MAPPING"]
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetDomainNamesOutput]
    def get_domain_names(params = {}, options = {})
      request = build_request(:get_domain_names, params)
      request.send_request(options)
    end

    # <p>Exports a deployed version of a RestApi in a specified format.</p>
    # @param [Hash, Types::GetExportRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :stage_name
    #   <p>The name of the Stage that will be exported.</p>
    # @option params [String] :export_type
    #   <p>The type of export. Acceptable values are 'oas30' for OpenAPI 3.0.x and 'swagger' for Swagger/OpenAPI 2.0.</p>
    # @option params [Hash<String, String>] :parameters
    #   <p>A key-value map of query string parameters that specify properties of the export, depending on the requested <code>exportType</code>. For <code>exportType</code>
    #               <code>oas30</code> and <code>swagger</code>, any combination of the following parameters are supported: <code>extensions='integrations'</code> or <code>extensions='apigateway'</code> will export the API with x-amazon-apigateway-integration extensions. <code>extensions='authorizers'</code> will export the API with  x-amazon-apigateway-authorizer extensions. <code>postman</code> will export the API with Postman extensions, allowing for import to the Postman tool</p>
    # @option params [String] :accepts
    #   <p>The content-type of the export, for example <code>application/json</code>. Currently <code>application/json</code> and <code>application/yaml</code> are supported for <code>exportType</code> of<code>oas30</code> and <code>swagger</code>. This should be specified in the <code>Accept</code> header for direct API requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #     export_type: "String", # required
    #     parameters: {
    #       "String" => "String"
    #     },
    #     accepts: "String"
    #   }
    #   options = {}
    #   response = client.get_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "String",
    #     content_disposition: "String",
    #     body: "data"
    #   }
    # @return [Types::ExportResponse]
    def get_export(params = {}, options = {})
      request = build_request(:get_export, params)
      request.send_request(options)
    end

    # <p>Gets a GatewayResponse of a specified response type on the given RestApi.</p>
    # @param [Hash, Types::GetGatewayResponseRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     response_type: "DEFAULT_4XX" # One of: ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"], # required
    #   }
    #   options = {}
    #   response = client.get_gateway_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_type: "DEFAULT_4XX" # One of: ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"],
    #     status_code: "StatusCode",
    #     response_parameters: {
    #       "String" => "String"
    #     },
    #     response_templates: {
    #       "String" => "String"
    #     },
    #     default_response: false
    #   }
    # @return [Types::GetGatewayResponseOutput]
    def get_gateway_response(params = {}, options = {})
      request = build_request(:get_gateway_response, params)
      request.send_request(options)
    end

    # <p>Gets the GatewayResponses collection on the given RestApi. If an API developer has not added any definitions for gateway responses, the result will be the API Gateway-generated default GatewayResponses collection for the supported response types.</p>
    # @param [Hash, Types::GetGatewayResponsesRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set. The GatewayResponse collection does not support pagination and the position does not apply here.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500. The GatewayResponses collection does not support pagination and the limit does not apply here.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_gateway_responses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         response_type: "DEFAULT_4XX" # One of: ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"],
    #         status_code: "StatusCode",
    #         response_parameters: {
    #           "String" => "String"
    #         },
    #         response_templates: {
    #           "String" => "String"
    #         },
    #         default_response: false
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetGatewayResponsesOutput]
    def get_gateway_responses(params = {}, options = {})
      request = build_request(:get_gateway_responses, params)
      request.send_request(options)
    end

    # <p>Get the integration settings.</p>
    # @param [Hash, Types::GetIntegrationRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>Specifies a get integration request's resource identifier</p>
    # @option params [String] :http_method
    #   <p>Specifies a get integration request's HTTP method.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #   }
    #   options = {}
    #   response = client.get_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type: "HTTP" # One of: ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #     http_method: "String",
    #     uri: "String",
    #     connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #     connection_id: "String",
    #     credentials: "String",
    #     request_parameters: {
    #       "String" => "String"
    #     },
    #     request_templates: {
    #       "String" => "String"
    #     },
    #     passthrough_behavior: "String",
    #     content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     timeout_in_millis: 1,
    #     cache_namespace: "String",
    #     cache_key_parameters: ["String"],
    #     integration_responses: {
    #       "String" => {
    #         status_code: "StatusCode",
    #         selection_pattern: "String",
    #         response_parameters: {
    #           "String" => "String"
    #         },
    #         response_templates: {
    #           "String" => "String"
    #         },
    #         content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #       }
    #     },
    #     tls_config: {
    #       insecure_skip_verification: false
    #     },
    #     response_transfer_mode: "BUFFERED" # One of: ["BUFFERED", "STREAM"],
    #     integration_target: "String"
    #   }
    # @return [Types::GetIntegrationOutput]
    def get_integration(params = {}, options = {})
      request = build_request(:get_integration, params)
      request.send_request(options)
    end

    # <p>Represents a get integration response.</p>
    # @param [Hash, Types::GetIntegrationResponseRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>Specifies a get integration response request's resource identifier.</p>
    # @option params [String] :http_method
    #   <p>Specifies a get integration response request's HTTP method.</p>
    # @option params [String] :status_code
    #   <p>Specifies a get integration response request's status code.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #   }
    #   options = {}
    #   response = client.get_integration_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: "StatusCode",
    #     selection_pattern: "String",
    #     response_parameters: {
    #       "String" => "String"
    #     },
    #     response_templates: {
    #       "String" => "String"
    #     },
    #     content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   }
    # @return [Types::GetIntegrationResponseOutput]
    def get_integration_response(params = {}, options = {})
      request = build_request(:get_integration_response, params)
      request.send_request(options)
    end

    # <p>Describe an existing Method resource.</p>
    # @param [Hash, Types::GetMethodRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the Method resource.</p>
    # @option params [String] :http_method
    #   <p>Specifies the method request's HTTP method type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #   }
    #   options = {}
    #   response = client.get_method(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     http_method: "String",
    #     authorization_type: "String",
    #     authorizer_id: "String",
    #     api_key_required: false,
    #     request_validator_id: "String",
    #     operation_name: "String",
    #     request_parameters: {
    #       "String" => false
    #     },
    #     request_models: {
    #       "String" => "String"
    #     },
    #     method_responses: {
    #       "String" => {
    #         status_code: "StatusCode",
    #         response_parameters: {
    #           "String" => false
    #         },
    #         response_models: {
    #           "String" => "String"
    #         }
    #       }
    #     },
    #     method_integration: {
    #       type: "HTTP" # One of: ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #       http_method: "String",
    #       uri: "String",
    #       connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #       connection_id: "String",
    #       credentials: "String",
    #       request_parameters: {
    #         "String" => "String"
    #       },
    #       request_templates: {
    #         "String" => "String"
    #       },
    #       passthrough_behavior: "String",
    #       content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #       timeout_in_millis: 1,
    #       cache_namespace: "String",
    #       cache_key_parameters: ["String"],
    #       integration_responses: {
    #         "String" => {
    #           status_code: "StatusCode",
    #           selection_pattern: "String",
    #           response_parameters: {
    #             "String" => "String"
    #           },
    #           response_templates: {
    #             "String" => "String"
    #           },
    #           content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #         }
    #       },
    #       tls_config: {
    #         insecure_skip_verification: false
    #       },
    #       response_transfer_mode: "BUFFERED" # One of: ["BUFFERED", "STREAM"],
    #       integration_target: "String"
    #     },
    #     authorization_scopes: ["String"]
    #   }
    # @return [Types::GetMethodOutput]
    def get_method(params = {}, options = {})
      request = build_request(:get_method, params)
      request.send_request(options)
    end

    # <p>Describes a MethodResponse resource.</p>
    # @param [Hash, Types::GetMethodResponseRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the MethodResponse resource.</p>
    # @option params [String] :http_method
    #   <p>The HTTP verb of the Method resource.</p>
    # @option params [String] :status_code
    #   <p>The status code for the MethodResponse resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #   }
    #   options = {}
    #   response = client.get_method_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: "StatusCode",
    #     response_parameters: {
    #       "String" => false
    #     },
    #     response_models: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetMethodResponseOutput]
    def get_method_response(params = {}, options = {})
      request = build_request(:get_method_response, params)
      request.send_request(options)
    end

    # <p>Describes an existing model defined for a RestApi resource.</p>
    # @param [Hash, Types::GetModelRequest] params
    # @option params [String] :rest_api_id
    #   <p>The RestApi identifier under which the Model exists.</p>
    # @option params [String] :model_name
    #   <p>The name of the model as an identifier.</p>
    # @option params [Boolean] :flatten
    #   <p>A query parameter of a Boolean value to resolve (<code>true</code>) all external model references and returns a flattened model schema or not (<code>false</code>) The default is <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     model_name: "String", # required
    #     flatten: false
    #   }
    #   options = {}
    #   response = client.get_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     schema: "String",
    #     content_type: "String"
    #   }
    # @return [Types::GetModelOutput]
    def get_model(params = {}, options = {})
      request = build_request(:get_model, params)
      request.send_request(options)
    end

    # <p>Generates a sample mapping template that can be used to transform a payload into the structure of a model.</p>
    # @param [Hash, Types::GetModelTemplateRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :model_name
    #   <p>The name of the model for which to generate a template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     model_name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_model_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     value: "String"
    #   }
    # @return [Types::GetModelTemplateOutput]
    def get_model_template(params = {}, options = {})
      request = build_request(:get_model_template, params)
      request.send_request(options)
    end

    # <p>Describes existing Models defined for a RestApi resource.</p>
    # @param [Hash, Types::GetModelsRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "String",
    #         name: "String",
    #         description: "String",
    #         schema: "String",
    #         content_type: "String"
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetModelsOutput]
    def get_models(params = {}, options = {})
      request = build_request(:get_models, params)
      request.send_request(options)
    end

    # <p>Gets a RequestValidator of a given RestApi.</p>
    # @param [Hash, Types::GetRequestValidatorRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :request_validator_id
    #   <p>The identifier of the RequestValidator to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     request_validator_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_request_validator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     validate_request_body: false,
    #     validate_request_parameters: false
    #   }
    # @return [Types::GetRequestValidatorOutput]
    def get_request_validator(params = {}, options = {})
      request = build_request(:get_request_validator, params)
      request.send_request(options)
    end

    # <p>Gets the RequestValidators collection of a given RestApi.</p>
    # @param [Hash, Types::GetRequestValidatorsRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_request_validators(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "String",
    #         name: "String",
    #         validate_request_body: false,
    #         validate_request_parameters: false
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetRequestValidatorsOutput]
    def get_request_validators(params = {}, options = {})
      request = build_request(:get_request_validators, params)
      request.send_request(options)
    end

    # <p>Lists information about a resource.</p>
    # @param [Hash, Types::GetResourceRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>The identifier for the Resource resource.</p>
    # @option params [Array<String>] :embed
    #   <p>A query parameter to retrieve the specified resources embedded in the returned Resource representation in the response. This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded Method resources this way. The query parameter value must be a single-valued list and contain the <code>"methods"</code> string. For example, <code>GET /restapis/{restapi_id}/resources/{resource_id}?embed=methods</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     embed: ["String"]
    #   }
    #   options = {}
    #   response = client.get_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     parent_id: "String",
    #     path_part: "String",
    #     path: "String",
    #     resource_methods: {
    #       "String" => {
    #         http_method: "String",
    #         authorization_type: "String",
    #         authorizer_id: "String",
    #         api_key_required: false,
    #         request_validator_id: "String",
    #         operation_name: "String",
    #         request_parameters: {
    #           "String" => false
    #         },
    #         request_models: {
    #           "String" => "String"
    #         },
    #         method_responses: {
    #           "String" => {
    #             status_code: "StatusCode",
    #             response_parameters: {
    #               "String" => false
    #             },
    #             response_models: {
    #               "String" => "String"
    #             }
    #           }
    #         },
    #         method_integration: {
    #           type: "HTTP" # One of: ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #           http_method: "String",
    #           uri: "String",
    #           connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #           connection_id: "String",
    #           credentials: "String",
    #           request_parameters: {
    #             "String" => "String"
    #           },
    #           request_templates: {
    #             "String" => "String"
    #           },
    #           passthrough_behavior: "String",
    #           content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #           timeout_in_millis: 1,
    #           cache_namespace: "String",
    #           cache_key_parameters: ["String"],
    #           integration_responses: {
    #             "String" => {
    #               status_code: "StatusCode",
    #               selection_pattern: "String",
    #               response_parameters: {
    #                 "String" => "String"
    #               },
    #               response_templates: {
    #                 "String" => "String"
    #               },
    #               content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #             }
    #           },
    #           tls_config: {
    #             insecure_skip_verification: false
    #           },
    #           response_transfer_mode: "BUFFERED" # One of: ["BUFFERED", "STREAM"],
    #           integration_target: "String"
    #         },
    #         authorization_scopes: ["String"]
    #       }
    #     }
    #   }
    # @return [Types::GetResourceOutput]
    def get_resource(params = {}, options = {})
      request = build_request(:get_resource, params)
      request.send_request(options)
    end

    # <p>Lists information about a collection of Resource resources.</p>
    # @param [Hash, Types::GetResourcesRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @option params [Array<String>] :embed
    #   <p>A query parameter used to retrieve the specified resources embedded in the returned Resources resource in the response.  This <code>embed</code> parameter value is a list of comma-separated strings. Currently, the request supports only retrieval of the embedded Method resources this way. The query parameter value must be a single-valued list and contain the <code>"methods"</code> string. For example, <code>GET /restapis/{restapi_id}/resources?embed=methods</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1,
    #     embed: ["String"]
    #   }
    #   options = {}
    #   response = client.get_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "String",
    #         parent_id: "String",
    #         path_part: "String",
    #         path: "String",
    #         resource_methods: {
    #           "String" => {
    #             http_method: "String",
    #             authorization_type: "String",
    #             authorizer_id: "String",
    #             api_key_required: false,
    #             request_validator_id: "String",
    #             operation_name: "String",
    #             request_parameters: {
    #               "String" => false
    #             },
    #             request_models: {
    #               "String" => "String"
    #             },
    #             method_responses: {
    #               "String" => {
    #                 status_code: "StatusCode",
    #                 response_parameters: {
    #                   "String" => false
    #                 },
    #                 response_models: {
    #                   "String" => "String"
    #                 }
    #               }
    #             },
    #             method_integration: {
    #               type: "HTTP" # One of: ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #               http_method: "String",
    #               uri: "String",
    #               connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #               connection_id: "String",
    #               credentials: "String",
    #               request_parameters: {
    #                 "String" => "String"
    #               },
    #               request_templates: {
    #                 "String" => "String"
    #               },
    #               passthrough_behavior: "String",
    #               content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #               timeout_in_millis: 1,
    #               cache_namespace: "String",
    #               cache_key_parameters: ["String"],
    #               integration_responses: {
    #                 "String" => {
    #                   status_code: "StatusCode",
    #                   selection_pattern: "String",
    #                   response_parameters: {
    #                     "String" => "String"
    #                   },
    #                   response_templates: {
    #                     "String" => "String"
    #                   },
    #                   content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #                 }
    #               },
    #               tls_config: {
    #                 insecure_skip_verification: false
    #               },
    #               response_transfer_mode: "BUFFERED" # One of: ["BUFFERED", "STREAM"],
    #               integration_target: "String"
    #             },
    #             authorization_scopes: ["String"]
    #           }
    #         }
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetResourcesOutput]
    def get_resources(params = {}, options = {})
      request = build_request(:get_resources, params)
      request.send_request(options)
    end

    # <p>Lists the RestApi resource in the collection.</p>
    # @param [Hash, Types::GetRestApiRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_rest_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     created_date: Time.now,
    #     version: "String",
    #     warnings: ["String"],
    #     binary_media_types: ["String"],
    #     minimum_compression_size: 1,
    #     api_key_source: "HEADER" # One of: ["HEADER", "AUTHORIZER"],
    #     endpoint_configuration: {
    #       types: ["REGIONAL" # One of: ["REGIONAL", "EDGE", "PRIVATE"]],
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #       vpc_endpoint_ids: ["String"]
    #     },
    #     policy: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     disable_execute_api_endpoint: false,
    #     root_resource_id: "String",
    #     security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2", "SecurityPolicy_TLS13_1_3_2025_09", "SecurityPolicy_TLS13_1_3_FIPS_2025_09", "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_2021_06", "SecurityPolicy_TLS13_2025_EDGE", "SecurityPolicy_TLS12_PFS_2025_EDGE", "SecurityPolicy_TLS12_2018_EDGE"],
    #     endpoint_access_mode: "BASIC" # One of: ["BASIC", "STRICT"],
    #     api_status: "UPDATING" # One of: ["UPDATING", "AVAILABLE", "PENDING", "FAILED"],
    #     api_status_message: "String"
    #   }
    # @return [Types::GetRestApiOutput]
    def get_rest_api(params = {}, options = {})
      request = build_request(:get_rest_api, params)
      request.send_request(options)
    end

    # <p>Lists the RestApis resources for your collection.</p>
    # @param [Hash, Types::GetRestApisRequest] params
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_rest_apis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "String",
    #         name: "String",
    #         description: "String",
    #         created_date: Time.now,
    #         version: "String",
    #         warnings: ["String"],
    #         binary_media_types: ["String"],
    #         minimum_compression_size: 1,
    #         api_key_source: "HEADER" # One of: ["HEADER", "AUTHORIZER"],
    #         endpoint_configuration: {
    #           types: ["REGIONAL" # One of: ["REGIONAL", "EDGE", "PRIVATE"]],
    #           ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #           vpc_endpoint_ids: ["String"]
    #         },
    #         policy: "String",
    #         tags: {
    #           "String" => "String"
    #         },
    #         disable_execute_api_endpoint: false,
    #         root_resource_id: "String",
    #         security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2", "SecurityPolicy_TLS13_1_3_2025_09", "SecurityPolicy_TLS13_1_3_FIPS_2025_09", "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_2021_06", "SecurityPolicy_TLS13_2025_EDGE", "SecurityPolicy_TLS12_PFS_2025_EDGE", "SecurityPolicy_TLS12_2018_EDGE"],
    #         endpoint_access_mode: "BASIC" # One of: ["BASIC", "STRICT"],
    #         api_status: "UPDATING" # One of: ["UPDATING", "AVAILABLE", "PENDING", "FAILED"],
    #         api_status_message: "String"
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetRestApisOutput]
    def get_rest_apis(params = {}, options = {})
      request = build_request(:get_rest_apis, params)
      request.send_request(options)
    end

    # <p>Generates a client SDK for a RestApi and Stage.</p>
    # @param [Hash, Types::GetSdkRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :stage_name
    #   <p>The name of the Stage that the SDK will use.</p>
    # @option params [String] :sdk_type
    #   <p>The language for the generated SDK. Currently <code>java</code>, <code>javascript</code>, <code>android</code>, <code>objectivec</code> (for iOS), <code>swift</code> (for iOS), and <code>ruby</code>  are supported.</p>
    # @option params [Hash<String, String>] :parameters
    #   <p>A string-to-string key-value map of query parameters <code>sdkType</code>-dependent properties of the SDK. For <code>sdkType</code> of <code>objectivec</code> or <code>swift</code>,  a parameter named <code>classPrefix</code> is required. For <code>sdkType</code> of <code>android</code>, parameters named <code>groupId</code>, <code>artifactId</code>, <code>artifactVersion</code>, and <code>invokerPackage</code> are required. For <code>sdkType</code> of <code>java</code>, parameters named <code>serviceName</code> and <code>javaPackageName</code> are required. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #     sdk_type: "String", # required
    #     parameters: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.get_sdk(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "String",
    #     content_disposition: "String",
    #     body: "data"
    #   }
    # @return [Types::SdkResponse]
    def get_sdk(params = {}, options = {})
      request = build_request(:get_sdk, params)
      request.send_request(options)
    end

    # <p>Gets an SDK type.</p>
    # @param [Hash, Types::GetSdkTypeRequest] params
    # @option params [String] :id
    #   <p>The identifier of the queried SdkType instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_sdk_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     friendly_name: "String",
    #     description: "String",
    #     configuration_properties: [
    #       {
    #         name: "String",
    #         friendly_name: "String",
    #         description: "String",
    #         required: false,
    #         default_value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetSdkTypeOutput]
    def get_sdk_type(params = {}, options = {})
      request = build_request(:get_sdk_type, params)
      request.send_request(options)
    end

    # <p>Gets SDK types</p>
    # @param [Hash, Types::GetSdkTypesRequest] params
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_sdk_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "String",
    #         friendly_name: "String",
    #         description: "String",
    #         configuration_properties: [
    #           {
    #             name: "String",
    #             friendly_name: "String",
    #             description: "String",
    #             required: false,
    #             default_value: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetSdkTypesOutput]
    def get_sdk_types(params = {}, options = {})
      request = build_request(:get_sdk_types, params)
      request.send_request(options)
    end

    # <p>Gets information about a Stage resource.</p>
    # @param [Hash, Types::GetStageRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :stage_name
    #   <p>The name of the Stage resource to get information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #   }
    #   options = {}
    #   response = client.get_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "String",
    #     client_certificate_id: "String",
    #     stage_name: "String",
    #     description: "String",
    #     cache_cluster_enabled: false,
    #     cache_cluster_size: "0.5" # One of: ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"],
    #     cache_cluster_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"],
    #     method_settings: {
    #       "String" => {
    #         metrics_enabled: false,
    #         logging_level: "String",
    #         data_trace_enabled: false,
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0,
    #         caching_enabled: false,
    #         cache_ttl_in_seconds: 1,
    #         cache_data_encrypted: false,
    #         require_authorization_for_cache_control: false,
    #         unauthorized_cache_control_header_strategy: "FAIL_WITH_403" # One of: ["FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"]
    #       }
    #     },
    #     variables: {
    #       "String" => "String"
    #     },
    #     documentation_version: "String",
    #     access_log_settings: {
    #       format: "String",
    #       destination_arn: "String"
    #     },
    #     canary_settings: {
    #       percent_traffic: 1.0,
    #       deployment_id: "String",
    #       stage_variable_overrides: {
    #         "String" => "String"
    #       },
    #       use_stage_cache: false
    #     },
    #     tracing_enabled: false,
    #     web_acl_arn: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     created_date: Time.now,
    #     last_updated_date: Time.now
    #   }
    # @return [Types::GetStageOutput]
    def get_stage(params = {}, options = {})
      request = build_request(:get_stage, params)
      request.send_request(options)
    end

    # <p>Gets information about one or more Stage resources.</p>
    # @param [Hash, Types::GetStagesRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :deployment_id
    #   <p>The stages' deployment identifiers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     deployment_id: "String"
    #   }
    #   options = {}
    #   response = client.get_stages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     item: [
    #       {
    #         deployment_id: "String",
    #         client_certificate_id: "String",
    #         stage_name: "String",
    #         description: "String",
    #         cache_cluster_enabled: false,
    #         cache_cluster_size: "0.5" # One of: ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"],
    #         cache_cluster_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"],
    #         method_settings: {
    #           "String" => {
    #             metrics_enabled: false,
    #             logging_level: "String",
    #             data_trace_enabled: false,
    #             throttling_burst_limit: 1,
    #             throttling_rate_limit: 1.0,
    #             caching_enabled: false,
    #             cache_ttl_in_seconds: 1,
    #             cache_data_encrypted: false,
    #             require_authorization_for_cache_control: false,
    #             unauthorized_cache_control_header_strategy: "FAIL_WITH_403" # One of: ["FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"]
    #           }
    #         },
    #         variables: {
    #           "String" => "String"
    #         },
    #         documentation_version: "String",
    #         access_log_settings: {
    #           format: "String",
    #           destination_arn: "String"
    #         },
    #         canary_settings: {
    #           percent_traffic: 1.0,
    #           deployment_id: "String",
    #           stage_variable_overrides: {
    #             "String" => "String"
    #           },
    #           use_stage_cache: false
    #         },
    #         tracing_enabled: false,
    #         web_acl_arn: "String",
    #         tags: {
    #           "String" => "String"
    #         },
    #         created_date: Time.now,
    #         last_updated_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::GetStagesOutput]
    def get_stages(params = {}, options = {})
      request = build_request(:get_stages, params)
      request.send_request(options)
    end

    # <p>Gets the Tags collection for a given resource.</p>
    # @param [Hash, Types::GetTagsRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of a resource that can be tagged.</p>
    # @option params [String] :position
    #   <p>(Not currently supported) The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>(Not currently supported) The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetTagsOutput]
    def get_tags(params = {}, options = {})
      request = build_request(:get_tags, params)
      request.send_request(options)
    end

    # <p>Gets the usage data of a usage plan in a specified time interval.</p>
    # @param [Hash, Types::GetUsageRequest] params
    # @option params [String] :usage_plan_id
    #   <p>The Id of the usage plan associated with the usage data.</p>
    # @option params [String] :key_id
    #   <p>The Id of the API key associated with the resultant usage data.</p>
    # @option params [String] :start_date
    #   <p>The starting date (e.g., 2016-01-01) of the usage data.</p>
    # @option params [String] :end_date
    #   <p>The ending date (e.g., 2016-12-31) of the usage data.</p>
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_plan_id: "String", # required
    #     key_id: "String",
    #     start_date: "String", # required
    #     end_date: "String", # required
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage_plan_id: "String",
    #     start_date: "String",
    #     end_date: "String",
    #     items: {
    #       "String" => [
    #         [1]
    #       ]
    #     },
    #     position: "String"
    #   }
    # @return [Types::GetUsageOutput]
    def get_usage(params = {}, options = {})
      request = build_request(:get_usage, params)
      request.send_request(options)
    end

    # <p>Gets a usage plan of a given plan identifier.</p>
    # @param [Hash, Types::GetUsagePlanRequest] params
    # @option params [String] :usage_plan_id
    #   <p>The identifier of the UsagePlan resource to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_plan_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_usage_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     api_stages: [
    #       {
    #         api_id: "String",
    #         stage: "String",
    #         throttle: {
    #           "String" => {
    #             burst_limit: 1,
    #             rate_limit: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     throttle: {
    #       burst_limit: 1,
    #       rate_limit: 1.0
    #     },
    #     quota: {
    #       limit: 1,
    #       offset: 1,
    #       period: "DAY" # One of: ["DAY", "WEEK", "MONTH"]
    #     },
    #     product_code: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetUsagePlanOutput]
    def get_usage_plan(params = {}, options = {})
      request = build_request(:get_usage_plan, params)
      request.send_request(options)
    end

    # <p>Gets a usage plan key of a given key identifier.</p>
    # @param [Hash, Types::GetUsagePlanKeyRequest] params
    # @option params [String] :usage_plan_id
    #   <p>The Id of the UsagePlan resource representing the usage plan containing the to-be-retrieved UsagePlanKey resource representing a plan customer.</p>
    # @option params [String] :key_id
    #   <p>The key Id of the to-be-retrieved UsagePlanKey resource representing a plan customer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_plan_id: "String", # required
    #     key_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_usage_plan_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     type: "String",
    #     value: "String",
    #     name: "String"
    #   }
    # @return [Types::GetUsagePlanKeyOutput]
    def get_usage_plan_key(params = {}, options = {})
      request = build_request(:get_usage_plan_key, params)
      request.send_request(options)
    end

    # <p>Gets all the usage plan keys representing the API keys added to a specified usage plan.</p>
    # @param [Hash, Types::GetUsagePlanKeysRequest] params
    # @option params [String] :usage_plan_id
    #   <p>The Id of the UsagePlan resource representing the usage plan containing the to-be-retrieved UsagePlanKey resource representing a plan customer.</p>
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @option params [String] :name_query
    #   <p>A query parameter specifying the name of the to-be-returned usage plan keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_plan_id: "String", # required
    #     position: "String",
    #     limit: 1,
    #     name_query: "String"
    #   }
    #   options = {}
    #   response = client.get_usage_plan_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "String",
    #         type: "String",
    #         value: "String",
    #         name: "String"
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetUsagePlanKeysOutput]
    def get_usage_plan_keys(params = {}, options = {})
      request = build_request(:get_usage_plan_keys, params)
      request.send_request(options)
    end

    # <p>Gets all the usage plans of the caller's account.</p>
    # @param [Hash, Types::GetUsagePlansRequest] params
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [String] :key_id
    #   <p>The identifier of the API key associated with the usage plans.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     position: "String",
    #     key_id: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_usage_plans(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "String",
    #         name: "String",
    #         description: "String",
    #         api_stages: [
    #           {
    #             api_id: "String",
    #             stage: "String",
    #             throttle: {
    #               "String" => {
    #                 burst_limit: 1,
    #                 rate_limit: 1.0
    #               }
    #             }
    #           }
    #         ],
    #         throttle: {
    #           burst_limit: 1,
    #           rate_limit: 1.0
    #         },
    #         quota: {
    #           limit: 1,
    #           offset: 1,
    #           period: "DAY" # One of: ["DAY", "WEEK", "MONTH"]
    #         },
    #         product_code: "String",
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetUsagePlansOutput]
    def get_usage_plans(params = {}, options = {})
      request = build_request(:get_usage_plans, params)
      request.send_request(options)
    end

    # <p>Gets a specified VPC link under the caller's account in a region.</p>
    # @param [Hash, Types::GetVpcLinkRequest] params
    # @option params [String] :vpc_link_id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_link_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_vpc_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     target_arns: ["String"],
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING", "DELETING", "FAILED"],
    #     status_message: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetVpcLinkOutput]
    def get_vpc_link(params = {}, options = {})
      request = build_request(:get_vpc_link, params)
      request.send_request(options)
    end

    # <p>Gets the VpcLinks collection under the caller's account in a selected region.</p>
    # @param [Hash, Types::GetVpcLinksRequest] params
    # @option params [String] :position
    #   <p>The current pagination position in the paged result set.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of returned results per page. The default value is 25 and the maximum value is 500.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     position: "String",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.get_vpc_links(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "String",
    #         name: "String",
    #         description: "String",
    #         target_arns: ["String"],
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING", "DELETING", "FAILED"],
    #         status_message: "String",
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     position: "String"
    #   }
    # @return [Types::GetVpcLinksOutput]
    def get_vpc_links(params = {}, options = {})
      request = build_request(:get_vpc_links, params)
      request.send_request(options)
    end

    # <p>Import API keys from an external source, such as a CSV-formatted file.</p>
    # @param [Hash, Types::ImportApiKeysRequest] params
    # @option params [String] :body
    #   <p>The payload of the POST request to import API keys. For the payload format, see API Key File Format.</p>
    # @option params [String] :format
    #   <p>A query parameter to specify the input format to imported API keys. Currently, only the <code>csv</code> format is supported.</p>
    # @option params [Boolean] :fail_on_warnings
    #   <p>A query parameter to indicate whether to rollback ApiKey importation (<code>true</code>) or not (<code>false</code>) when error is encountered.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     body: "data", # required
    #     format: "csv" # One of: ["csv"], # required
    #     fail_on_warnings: false
    #   }
    #   options = {}
    #   response = client.import_api_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["String"],
    #     warnings: ["String"]
    #   }
    # @return [Types::ImportApiKeysOutput]
    def import_api_keys(params = {}, options = {})
      request = build_request(:import_api_keys, params)
      request.send_request(options)
    end

    # <p>Imports documentation parts</p>
    # @param [Hash, Types::ImportDocumentationPartsRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :mode
    #   <p>A query parameter to indicate whether to overwrite (<code>overwrite</code>) any existing DocumentationParts definition or to merge (<code>merge</code>) the new definition into the existing one. The default value is <code>merge</code>.</p>
    # @option params [Boolean] :fail_on_warnings
    #   <p>A query parameter to specify whether to rollback the documentation importation (<code>true</code>) or not (<code>false</code>) when a warning is encountered. The default value is <code>false</code>.</p>
    # @option params [String] :body
    #   <p>Raw byte array representing the to-be-imported documentation parts. To import from an OpenAPI file, this is a JSON object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     mode: "merge" # One of: ["merge", "overwrite"],
    #     fail_on_warnings: false,
    #     body: "data", # required
    #   }
    #   options = {}
    #   response = client.import_documentation_parts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["String"],
    #     warnings: ["String"]
    #   }
    # @return [Types::ImportDocumentationPartsOutput]
    def import_documentation_parts(params = {}, options = {})
      request = build_request(:import_documentation_parts, params)
      request.send_request(options)
    end

    # <p>A feature of the API Gateway control service for creating a new API from an external API definition file.</p>
    # @param [Hash, Types::ImportRestApiRequest] params
    # @option params [Boolean] :fail_on_warnings
    #   <p>A query parameter to indicate whether to rollback the API creation (<code>true</code>) or not (<code>false</code>)
    #               when a warning is encountered. The default value is <code>false</code>.</p>
    # @option params [Hash<String, String>] :parameters
    #   <p>A key-value map of context-specific query string parameters specifying the behavior of different API importing operations. The following shows operation-specific parameters and their supported values.</p>
    #            <p> To exclude DocumentationParts from the import, set <code>parameters</code> as <code>ignore=documentation</code>.</p>
    #            <p> To configure the endpoint type, set <code>parameters</code> as <code>endpointConfigurationTypes=EDGE</code>, <code>endpointConfigurationTypes=REGIONAL</code>, or <code>endpointConfigurationTypes=PRIVATE</code>. The default endpoint type is <code>EDGE</code>.</p>
    #            <p> To handle imported <code>basepath</code>, set <code>parameters</code> as <code>basepath=ignore</code>, <code>basepath=prepend</code> or <code>basepath=split</code>.</p>
    # @option params [String] :body
    #   <p>The POST request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     fail_on_warnings: false,
    #     parameters: {
    #       "String" => "String"
    #     },
    #     body: "data", # required
    #   }
    #   options = {}
    #   response = client.import_rest_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     created_date: Time.now,
    #     version: "String",
    #     warnings: ["String"],
    #     binary_media_types: ["String"],
    #     minimum_compression_size: 1,
    #     api_key_source: "HEADER" # One of: ["HEADER", "AUTHORIZER"],
    #     endpoint_configuration: {
    #       types: ["REGIONAL" # One of: ["REGIONAL", "EDGE", "PRIVATE"]],
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #       vpc_endpoint_ids: ["String"]
    #     },
    #     policy: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     disable_execute_api_endpoint: false,
    #     root_resource_id: "String",
    #     security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2", "SecurityPolicy_TLS13_1_3_2025_09", "SecurityPolicy_TLS13_1_3_FIPS_2025_09", "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_2021_06", "SecurityPolicy_TLS13_2025_EDGE", "SecurityPolicy_TLS12_PFS_2025_EDGE", "SecurityPolicy_TLS12_2018_EDGE"],
    #     endpoint_access_mode: "BASIC" # One of: ["BASIC", "STRICT"],
    #     api_status: "UPDATING" # One of: ["UPDATING", "AVAILABLE", "PENDING", "FAILED"],
    #     api_status_message: "String"
    #   }
    # @return [Types::ImportRestApiOutput]
    def import_rest_api(params = {}, options = {})
      request = build_request(:import_rest_api, params)
      request.send_request(options)
    end

    # <p>Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi.</p>
    # @param [Hash, Types::PutGatewayResponseRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :response_type
    #   <p>The response type of the associated GatewayResponse</p>
    # @option params [String] :status_code
    #   <p>The HTTP status code of the GatewayResponse.</p>
    # @option params [Hash<String, String>] :response_parameters
    #   <p>Response parameters (paths, query strings and headers) of the GatewayResponse as a string-to-string map of key-value  pairs.</p>
    # @option params [Hash<String, String>] :response_templates
    #   <p>Response templates of the GatewayResponse as a string-to-string map of key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     response_type: "DEFAULT_4XX" # One of: ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"], # required
    #     status_code: "StatusCode",
    #     response_parameters: {
    #       "String" => "String"
    #     },
    #     response_templates: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.put_gateway_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_type: "DEFAULT_4XX" # One of: ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"],
    #     status_code: "StatusCode",
    #     response_parameters: {
    #       "String" => "String"
    #     },
    #     response_templates: {
    #       "String" => "String"
    #     },
    #     default_response: false
    #   }
    # @return [Types::PutGatewayResponseOutput]
    def put_gateway_response(params = {}, options = {})
      request = build_request(:put_gateway_response, params)
      request.send_request(options)
    end

    # <p>Sets up a method's integration.</p>
    # @param [Hash, Types::PutIntegrationRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>Specifies a put integration request's resource ID.</p>
    # @option params [String] :http_method
    #   <p>Specifies the HTTP method for the integration.</p>
    # @option params [String] :type
    #   <p>Specifies a put integration input's type.</p>
    # @option params [String] :integration_http_method
    #   <p>The HTTP method for the integration.</p>
    # @option params [String] :uri
    #   <p>Specifies Uniform Resource Identifier (URI) of the integration endpoint. For HTTP or
    #         <code>HTTP_PROXY</code> integrations, the URI must be a fully formed, encoded HTTP(S) URL according to the
    #         RFC-3986 specification, for either standard integration, where <code>connectionType</code> is not <code>VPC_LINK</code>,
    #         or private integration, where <code>connectionType</code> is <code>VPC_LINK</code>. For a private HTTP integration, the
    #         URI is not used for routing. For <code>AWS</code> or <code>AWS_PROXY</code> integrations, the URI is of the form
    #         <code>arn:aws:apigateway:{region}:{subdomain.service|service}:path|action/{service_api</code>}. Here,
    #         {Region} is the API Gateway region (e.g., us-east-1); {service} is the name of the integrated
    #         Amazon Web Services service (e.g., s3); and {subdomain} is a designated subdomain supported by certain Amazon Web Services
    #         service for fast host-name lookup. action can be used for an Amazon Web Services service action-based API,
    #         using an Action={name}&{p1}={v1}&p2={v2}... query string. The ensuing {service_api} refers to
    #         a supported action {name} plus any required input parameters. Alternatively, path can be used
    #         for an Amazon Web Services service path-based API. The ensuing service_api refers to the path to an Amazon Web Services
    #         service resource, including the region of the integrated Amazon Web Services service, if applicable. For
    #         example, for integration with the S3 API of <code>GetObject</code>, the <code>uri</code> can be either
    #         <code>arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket={bucket}&Key={key}</code> or
    #         <code>arn:aws:apigateway:us-west-2:s3:path/{bucket}/{key}</code>.</p>
    # @option params [String] :connection_type
    #   <p>The type of the network connection to the integration endpoint. The valid value is <code>INTERNET</code> for connections through the public routable internet or <code>VPC_LINK</code> for private connections between API Gateway and a network load balancer in a VPC. The default value is <code>INTERNET</code>.</p>
    # @option params [String] :connection_id
    #   <p>The ID of the VpcLink used for the integration. Specify this value only if you specify <code>VPC_LINK</code> as the connection type.</p>
    # @option params [String] :credentials
    #   <p>Specifies whether credentials are required for a put integration.</p>
    # @option params [Hash<String, String>] :request_parameters
    #   <p>A key-value map specifying request parameters that are passed from the method request to the back end. The key is an integration request parameter name and the associated value is a method request parameter value or static value that must be enclosed within single quotes and pre-encoded as required by the back end. The method request parameter value must match the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> must be a valid and unique method request parameter name.</p>
    # @option params [Hash<String, String>] :request_templates
    #   <p>Represents a map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. The content type value is the key in this map, and the template (as a String) is the value.</p>
    # @option params [String] :passthrough_behavior
    #   <p>Specifies the pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the <code>requestTemplates</code> property on the Integration resource. There are three valid values:  <code>WHEN_NO_MATCH</code>, <code>WHEN_NO_TEMPLATES</code>, and <code>NEVER</code>.
    #           </p>
    # @option params [String] :cache_namespace
    #   <p>Specifies a group of related cached parameters. By default, API Gateway uses the resource ID as the <code>cacheNamespace</code>. You can specify the same <code>cacheNamespace</code> across resources to return the same cached data for requests to different resources.</p>
    # @option params [Array<String>] :cache_key_parameters
    #   <p>A list of request parameters whose values API Gateway caches. To be valid values for <code>cacheKeyParameters</code>, these parameters must also be specified for Method <code>requestParameters</code>.</p>
    # @option params [String] :content_handling
    #   <p>Specifies how to handle request payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #            <p>If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the <code>passthroughBehavior</code> is configured to support payload pass-through.</p>
    # @option params [Integer] :timeout_in_millis
    #   <p>Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds or 29 seconds.  You can increase the default value to longer than 29 seconds for Regional or private APIs only.</p>
    # @option params [Types::TlsConfig] :tls_config
    #   <p>Specifies the TLS configuration for an integration.</p>
    # @option params [String] :response_transfer_mode
    #   <p>
    #   The response transfer mode of the integration.
    #   </p>
    # @option params [String] :integration_target
    #   <p>
    #   The ALB or NLB listener to send the request to.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     type: "HTTP" # One of: ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"], # required
    #     integration_http_method: "String",
    #     uri: "String",
    #     connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #     connection_id: "String",
    #     credentials: "String",
    #     request_parameters: {
    #       "String" => "String"
    #     },
    #     request_templates: {
    #       "String" => "String"
    #     },
    #     passthrough_behavior: "String",
    #     cache_namespace: "String",
    #     cache_key_parameters: ["String"],
    #     content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     timeout_in_millis: 1,
    #     tls_config: {
    #       insecure_skip_verification: false
    #     },
    #     response_transfer_mode: "BUFFERED" # One of: ["BUFFERED", "STREAM"],
    #     integration_target: "String"
    #   }
    #   options = {}
    #   response = client.put_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type: "HTTP" # One of: ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #     http_method: "String",
    #     uri: "String",
    #     connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #     connection_id: "String",
    #     credentials: "String",
    #     request_parameters: {
    #       "String" => "String"
    #     },
    #     request_templates: {
    #       "String" => "String"
    #     },
    #     passthrough_behavior: "String",
    #     content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     timeout_in_millis: 1,
    #     cache_namespace: "String",
    #     cache_key_parameters: ["String"],
    #     integration_responses: {
    #       "String" => {
    #         status_code: "StatusCode",
    #         selection_pattern: "String",
    #         response_parameters: {
    #           "String" => "String"
    #         },
    #         response_templates: {
    #           "String" => "String"
    #         },
    #         content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #       }
    #     },
    #     tls_config: {
    #       insecure_skip_verification: false
    #     },
    #     response_transfer_mode: "BUFFERED" # One of: ["BUFFERED", "STREAM"],
    #     integration_target: "String"
    #   }
    # @return [Types::PutIntegrationOutput]
    def put_integration(params = {}, options = {})
      request = build_request(:put_integration, params)
      request.send_request(options)
    end

    # <p>Represents a put integration.</p>
    # @param [Hash, Types::PutIntegrationResponseRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>Specifies a put integration response request's resource identifier.</p>
    # @option params [String] :http_method
    #   <p>Specifies a put integration response request's HTTP method.</p>
    # @option params [String] :status_code
    #   <p>Specifies the status code that is used to map the integration response to an existing MethodResponse.</p>
    # @option params [String] :selection_pattern
    #   <p>Specifies the selection pattern of a put integration response.</p>
    # @option params [Hash<String, String>] :response_parameters
    #   <p>A key-value map specifying response parameters that are passed to the method response from the back end.
    #               The key is a method response header parameter name and the mapped value is an integration response header value, a static value enclosed within a pair of single quotes, or a JSON expression from the integration response body. The mapping key must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The mapped non-static value must match the pattern of <code>integration.response.header.{name}</code> or <code>integration.response.body.{JSON-expression}</code>, where <code>name</code> must be a valid and unique response header name and <code>JSON-expression</code> a valid JSON expression without the <code>$</code> prefix.</p>
    # @option params [Hash<String, String>] :response_templates
    #   <p>Specifies a put integration response's templates.</p>
    # @option params [String] :content_handling
    #   <p>Specifies how to handle response payload content type conversions. Supported values are <code>CONVERT_TO_BINARY</code> and <code>CONVERT_TO_TEXT</code>, with the following behaviors:</p>
    #            <p>If this property is not defined, the response payload will be passed through from the integration response to the method response without modification.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #     selection_pattern: "String",
    #     response_parameters: {
    #       "String" => "String"
    #     },
    #     response_templates: {
    #       "String" => "String"
    #     },
    #     content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   }
    #   options = {}
    #   response = client.put_integration_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: "StatusCode",
    #     selection_pattern: "String",
    #     response_parameters: {
    #       "String" => "String"
    #     },
    #     response_templates: {
    #       "String" => "String"
    #     },
    #     content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   }
    # @return [Types::PutIntegrationResponseOutput]
    def put_integration_response(params = {}, options = {})
      request = build_request(:put_integration_response, params)
      request.send_request(options)
    end

    # <p>Add a method to an existing Resource resource.</p>
    # @param [Hash, Types::PutMethodRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the new Method resource.</p>
    # @option params [String] :http_method
    #   <p>Specifies the method request's HTTP method type.</p>
    # @option params [String] :authorization_type
    #   <p>The method's authorization type. Valid values are <code>NONE</code> for open access, <code>AWS_IAM</code> for using AWS IAM permissions, <code>CUSTOM</code> for using a custom authorizer, or <code>COGNITO_USER_POOLS</code> for using a Cognito user pool.</p>
    # @option params [String] :authorizer_id
    #   <p>Specifies the identifier of an Authorizer to use on this Method, if the type is CUSTOM or COGNITO_USER_POOLS. The authorizer identifier is generated by API Gateway when you created the authorizer.</p>
    # @option params [Boolean] :api_key_required
    #   <p>Specifies whether the method required a valid ApiKey.</p>
    # @option params [String] :operation_name
    #   <p>A human-friendly operation identifier for the method. For example, you can assign the <code>operationName</code> of <code>ListPets</code> for the <code>GET /pets</code> method in the <code>PetStore</code> example.</p>
    # @option params [Hash<String, Boolean>] :request_parameters
    #   <p>A key-value map defining required or optional method request parameters that can be accepted by API Gateway. A key defines a method request parameter name matching the pattern of  <code>method.request.{location}.{name}</code>, where <code>location</code> is <code>querystring</code>, <code>path</code>, or <code>header</code> and <code>name</code> is a valid and unique parameter name. The value associated with the key is a Boolean flag indicating whether the parameter is required (<code>true</code>) or optional (<code>false</code>).  The method request parameter names defined here are available in Integration to be mapped to integration request parameters or body-mapping templates.</p>
    # @option params [Hash<String, String>] :request_models
    #   <p>Specifies the Model resources used for the request's content type. Request models are represented as a key/value map, with a content type as the key and a Model name as the value.</p>
    # @option params [String] :request_validator_id
    #   <p>The identifier of a RequestValidator for validating the method request.</p>
    # @option params [Array<String>] :authorization_scopes
    #   <p>A list of authorization scopes configured on the method. The scopes are used with a <code>COGNITO_USER_POOLS</code> authorizer to authorize the method invocation. The authorization works by matching the method scopes against the scopes parsed from the access token in the incoming request. The method invocation is authorized if any method scopes matches a claimed scope in the access token. Otherwise, the invocation is not authorized. When the method scope is configured, the client must provide an access token instead of an identity token for authorization purposes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     authorization_type: "String", # required
    #     authorizer_id: "String",
    #     api_key_required: false,
    #     operation_name: "String",
    #     request_parameters: {
    #       "String" => false
    #     },
    #     request_models: {
    #       "String" => "String"
    #     },
    #     request_validator_id: "String",
    #     authorization_scopes: ["String"]
    #   }
    #   options = {}
    #   response = client.put_method(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     http_method: "String",
    #     authorization_type: "String",
    #     authorizer_id: "String",
    #     api_key_required: false,
    #     request_validator_id: "String",
    #     operation_name: "String",
    #     request_parameters: {
    #       "String" => false
    #     },
    #     request_models: {
    #       "String" => "String"
    #     },
    #     method_responses: {
    #       "String" => {
    #         status_code: "StatusCode",
    #         response_parameters: {
    #           "String" => false
    #         },
    #         response_models: {
    #           "String" => "String"
    #         }
    #       }
    #     },
    #     method_integration: {
    #       type: "HTTP" # One of: ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #       http_method: "String",
    #       uri: "String",
    #       connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #       connection_id: "String",
    #       credentials: "String",
    #       request_parameters: {
    #         "String" => "String"
    #       },
    #       request_templates: {
    #         "String" => "String"
    #       },
    #       passthrough_behavior: "String",
    #       content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #       timeout_in_millis: 1,
    #       cache_namespace: "String",
    #       cache_key_parameters: ["String"],
    #       integration_responses: {
    #         "String" => {
    #           status_code: "StatusCode",
    #           selection_pattern: "String",
    #           response_parameters: {
    #             "String" => "String"
    #           },
    #           response_templates: {
    #             "String" => "String"
    #           },
    #           content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #         }
    #       },
    #       tls_config: {
    #         insecure_skip_verification: false
    #       },
    #       response_transfer_mode: "BUFFERED" # One of: ["BUFFERED", "STREAM"],
    #       integration_target: "String"
    #     },
    #     authorization_scopes: ["String"]
    #   }
    # @return [Types::PutMethodOutput]
    def put_method(params = {}, options = {})
      request = build_request(:put_method, params)
      request.send_request(options)
    end

    # <p>Adds a MethodResponse to an existing Method resource.</p>
    # @param [Hash, Types::PutMethodResponseRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the Method resource.</p>
    # @option params [String] :http_method
    #   <p>The HTTP verb of the Method resource.</p>
    # @option params [String] :status_code
    #   <p>The method response's status code.</p>
    # @option params [Hash<String, Boolean>] :response_parameters
    #   <p>A key-value map specifying required or optional response parameters that API Gateway can send back to the caller. A key defines a method response header name and the associated value is a Boolean flag indicating whether the method response parameter is required or not. The method response header names must match the pattern of <code>method.response.header.{name}</code>, where <code>name</code> is a valid and unique header name. The response parameter names defined here are available in the integration response to be mapped from an integration response header expressed in <code>integration.response.header.{name}</code>, a static value enclosed within a pair of single quotes (e.g., <code>'application/json'</code>), or a JSON expression from the back-end response payload in the form of <code>integration.response.body.{JSON-expression}</code>, where <code>JSON-expression</code> is a valid JSON expression without the <code>$</code> prefix.)</p>
    # @option params [Hash<String, String>] :response_models
    #   <p>Specifies the Model resources used for the response's content type. Response models are represented as a key/value map, with a content type as the key and a Model name as the value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #     response_parameters: {
    #       "String" => false
    #     },
    #     response_models: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.put_method_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: "StatusCode",
    #     response_parameters: {
    #       "String" => false
    #     },
    #     response_models: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::PutMethodResponseOutput]
    def put_method_response(params = {}, options = {})
      request = build_request(:put_method_response, params)
      request.send_request(options)
    end

    # <p>A feature of the API Gateway control service for updating an existing API with an input of external API definitions.
    #             The update can take the form of merging the supplied definition into the existing API or overwriting the existing API.</p>
    # @param [Hash, Types::PutRestApiRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :mode
    #   <p>The <code>mode</code> query parameter to specify the update mode. Valid values are "merge" and "overwrite". By default,
    #           the update mode is "merge".</p>
    # @option params [Boolean] :fail_on_warnings
    #   <p>A query parameter to indicate whether to rollback the API update (<code>true</code>) or not (<code>false</code>)
    #               when a warning is encountered. The default value is <code>false</code>.</p>
    # @option params [Hash<String, String>] :parameters
    #   <p>Custom header parameters as part of the request. For example, to exclude DocumentationParts from an imported API, set <code>ignore=documentation</code> as a <code>parameters</code> value, as in the AWS CLI command of <code>aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'</code>.</p>
    # @option params [String] :body
    #   <p>The PUT request body containing external API definitions. Currently, only OpenAPI definition JSON/YAML files are supported. The maximum size of the API definition file is 6MB.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     mode: "merge" # One of: ["merge", "overwrite"],
    #     fail_on_warnings: false,
    #     parameters: {
    #       "String" => "String"
    #     },
    #     body: "data", # required
    #   }
    #   options = {}
    #   response = client.put_rest_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     created_date: Time.now,
    #     version: "String",
    #     warnings: ["String"],
    #     binary_media_types: ["String"],
    #     minimum_compression_size: 1,
    #     api_key_source: "HEADER" # One of: ["HEADER", "AUTHORIZER"],
    #     endpoint_configuration: {
    #       types: ["REGIONAL" # One of: ["REGIONAL", "EDGE", "PRIVATE"]],
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #       vpc_endpoint_ids: ["String"]
    #     },
    #     policy: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     disable_execute_api_endpoint: false,
    #     root_resource_id: "String",
    #     security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2", "SecurityPolicy_TLS13_1_3_2025_09", "SecurityPolicy_TLS13_1_3_FIPS_2025_09", "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_2021_06", "SecurityPolicy_TLS13_2025_EDGE", "SecurityPolicy_TLS12_PFS_2025_EDGE", "SecurityPolicy_TLS12_2018_EDGE"],
    #     endpoint_access_mode: "BASIC" # One of: ["BASIC", "STRICT"],
    #     api_status: "UPDATING" # One of: ["UPDATING", "AVAILABLE", "PENDING", "FAILED"],
    #     api_status_message: "String"
    #   }
    # @return [Types::PutRestApiOutput]
    def put_rest_api(params = {}, options = {})
      request = build_request(:put_rest_api, params)
      request.send_request(options)
    end

    # <p>Rejects a domain name access association with a private custom domain name.</p>
    #          <p>To reject a domain name access association with an access association source in another AWS account, use this operation. To remove a domain name access association with an access association source in your own account, use the DeleteDomainNameAccessAssociation operation.</p>
    # @param [Hash, Types::RejectDomainNameAccessAssociationRequest] params
    # @option params [String] :domain_name_access_association_arn
    #   <p>The ARN of the domain name access association resource.
    #   </p>
    # @option params [String] :domain_name_arn
    #   <p>
    #   The ARN of the domain name.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name_access_association_arn: "String", # required
    #     domain_name_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.reject_domain_name_access_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def reject_domain_name_access_association(params = {}, options = {})
      request = build_request(:reject_domain_name_access_association, params)
      request.send_request(options)
    end

    # <p>Adds or updates a tag on a given resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of a resource that can be tagged.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value map of strings. The valid character set is [a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body.</p>
    # @param [Hash, Types::TestInvokeAuthorizerRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :authorizer_id
    #   <p>Specifies a test invoke authorizer request's Authorizer ID.</p>
    # @option params [Hash<String, String>] :headers
    #   <p>A key-value map of headers to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, should be specified.</p>
    # @option params [Hash<String, Array<String>>] :multi_value_headers
    #   <p>The headers as a map from string to list of values to simulate an incoming invocation request. This is where the incoming authorization token, or identity source, may be specified.</p>
    # @option params [String] :path_with_query_string
    #   <p>The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>
    # @option params [String] :body
    #   <p>The simulated request body of an incoming invocation request.</p>
    # @option params [Hash<String, String>] :stage_variables
    #   <p>A key-value map of stage variables to simulate an invocation on a deployed Stage.</p>
    # @option params [Hash<String, String>] :additional_context
    #   <p>A key-value map of additional context variables.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     authorizer_id: "String", # required
    #     headers: {
    #       "String" => "String"
    #     },
    #     multi_value_headers: {
    #       "String" => ["String"]
    #     },
    #     path_with_query_string: "String",
    #     body: "String",
    #     stage_variables: {
    #       "String" => "String"
    #     },
    #     additional_context: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.test_invoke_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_status: 1,
    #     log: "String",
    #     latency: 1,
    #     principal_id: "String",
    #     policy: "String",
    #     authorization: {
    #       "String" => ["String"]
    #     },
    #     claims: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::TestInvokeAuthorizerResponse]
    def test_invoke_authorizer(params = {}, options = {})
      request = build_request(:test_invoke_authorizer, params)
      request.send_request(options)
    end

    # <p>Simulate the invocation of a Method in your RestApi with headers, parameters, and an incoming request body.</p>
    # @param [Hash, Types::TestInvokeMethodRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>Specifies a test invoke method request's resource ID.</p>
    # @option params [String] :http_method
    #   <p>Specifies a test invoke method request's HTTP method.</p>
    # @option params [String] :path_with_query_string
    #   <p>The URI path, including query string, of the simulated invocation request. Use this to specify path parameters and query string parameters.</p>
    # @option params [String] :body
    #   <p>The simulated request body of an incoming invocation request.</p>
    # @option params [Hash<String, String>] :headers
    #   <p>A key-value map of headers to simulate an incoming invocation request.</p>
    # @option params [Hash<String, Array<String>>] :multi_value_headers
    #   <p>The headers as a map from string to list of values to simulate an incoming invocation request.</p>
    # @option params [String] :client_certificate_id
    #   <p>A ClientCertificate identifier to use in the test invocation. API Gateway will use the certificate when making the HTTPS request to the defined back-end endpoint.</p>
    # @option params [Hash<String, String>] :stage_variables
    #   <p>A key-value map of stage variables to simulate an invocation on a deployed Stage.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     path_with_query_string: "String",
    #     body: "String",
    #     headers: {
    #       "String" => "String"
    #     },
    #     multi_value_headers: {
    #       "String" => ["String"]
    #     },
    #     client_certificate_id: "String",
    #     stage_variables: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.test_invoke_method(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: 1,
    #     body: "String",
    #     headers: {
    #       "String" => "String"
    #     },
    #     multi_value_headers: {
    #       "String" => ["String"]
    #     },
    #     log: "String",
    #     latency: 1
    #   }
    # @return [Types::TestInvokeMethodResponse]
    def test_invoke_method(params = {}, options = {})
      request = build_request(:test_invoke_method, params)
      request.send_request(options)
    end

    # <p>Removes a tag from a given resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of a resource that can be tagged.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The Tag keys to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
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

    # <p>Changes information about the current Account resource.</p>
    # @param [Hash, Types::UpdateAccountRequest] params
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cloudwatch_role_arn: "String",
    #     throttle_settings: {
    #       burst_limit: 1,
    #       rate_limit: 1.0
    #     },
    #     features: ["String"],
    #     api_key_version: "String"
    #   }
    # @return [Types::UpdateAccountOutput]
    def update_account(params = {}, options = {})
      request = build_request(:update_account, params)
      request.send_request(options)
    end

    # <p>Changes information about an ApiKey resource.</p>
    # @param [Hash, Types::UpdateApiKeyRequest] params
    # @option params [String] :api_key
    #   <p>The identifier of the ApiKey resource to be updated.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     api_key: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_api_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     value: "String",
    #     name: "String",
    #     customer_id: "String",
    #     description: "String",
    #     enabled: false,
    #     created_date: Time.now,
    #     last_updated_date: Time.now,
    #     stage_keys: ["String"],
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::UpdateApiKeyOutput]
    def update_api_key(params = {}, options = {})
      request = build_request(:update_api_key, params)
      request.send_request(options)
    end

    # <p>Updates an existing Authorizer resource.</p>
    # @param [Hash, Types::UpdateAuthorizerRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :authorizer_id
    #   <p>The identifier of the Authorizer resource.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     authorizer_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_authorizer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     type: "TOKEN" # One of: ["TOKEN", "REQUEST", "COGNITO_USER_POOLS"],
    #     provider_ar_ns: ["ProviderARN"],
    #     auth_type: "String",
    #     authorizer_uri: "String",
    #     authorizer_credentials: "String",
    #     identity_source: "String",
    #     identity_validation_expression: "String",
    #     authorizer_result_ttl_in_seconds: 1
    #   }
    # @return [Types::UpdateAuthorizerOutput]
    def update_authorizer(params = {}, options = {})
      request = build_request(:update_authorizer, params)
      request.send_request(options)
    end

    # <p>Changes information about the BasePathMapping resource.</p>
    # @param [Hash, Types::UpdateBasePathMappingRequest] params
    # @option params [String] :domain_name
    #   <p>The domain name of the BasePathMapping resource to change.</p>
    # @option params [String] :domain_name_id
    #   <p>
    #     The identifier for the domain name resource. Supported only for private custom domain names.
    #   </p>
    # @option params [String] :base_path
    #   <p>The base path of the BasePathMapping resource to change.</p>
    #            <p>To specify an empty base path, set this parameter to <code>'(none)'</code>.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "String", # required
    #     domain_name_id: "String",
    #     base_path: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_base_path_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     base_path: "String",
    #     rest_api_id: "String",
    #     stage: "String"
    #   }
    # @return [Types::UpdateBasePathMappingOutput]
    def update_base_path_mapping(params = {}, options = {})
      request = build_request(:update_base_path_mapping, params)
      request.send_request(options)
    end

    # <p>Changes information about an ClientCertificate resource.</p>
    # @param [Hash, Types::UpdateClientCertificateRequest] params
    # @option params [String] :client_certificate_id
    #   <p>The identifier of the ClientCertificate resource to be updated.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_certificate_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_client_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_certificate_id: "String",
    #     description: "String",
    #     pem_encoded_certificate: "String",
    #     created_date: Time.now,
    #     expiration_date: Time.now,
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::UpdateClientCertificateOutput]
    def update_client_certificate(params = {}, options = {})
      request = build_request(:update_client_certificate, params)
      request.send_request(options)
    end

    # <p>Changes information about a Deployment resource.</p>
    # @param [Hash, Types::UpdateDeploymentRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :deployment_id
    #   <p>The replacement identifier for the Deployment resource to change information about.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     deployment_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     description: "String",
    #     created_date: Time.now,
    #     api_summary: {
    #       "String" => {
    #         "String" => {
    #           authorization_type: "String",
    #           api_key_required: false
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateDeploymentOutput]
    def update_deployment(params = {}, options = {})
      request = build_request(:update_deployment, params)
      request.send_request(options)
    end

    # <p>Updates a documentation part.</p>
    # @param [Hash, Types::UpdateDocumentationPartRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :documentation_part_id
    #   <p>The identifier of the to-be-updated documentation part.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     documentation_part_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_documentation_part(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     location: {
    #       type: "API" # One of: ["API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"], # required
    #       path: "String",
    #       method: "String",
    #       status_code: "DocumentationPartLocationStatusCode",
    #       name: "String"
    #     },
    #     properties: "String"
    #   }
    # @return [Types::UpdateDocumentationPartOutput]
    def update_documentation_part(params = {}, options = {})
      request = build_request(:update_documentation_part, params)
      request.send_request(options)
    end

    # <p>Updates a documentation version.</p>
    # @param [Hash, Types::UpdateDocumentationVersionRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :documentation_version
    #   <p>The version identifier of the to-be-updated documentation version.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     documentation_version: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_documentation_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     version: "String",
    #     created_date: Time.now,
    #     description: "String"
    #   }
    # @return [Types::UpdateDocumentationVersionOutput]
    def update_documentation_version(params = {}, options = {})
      request = build_request(:update_documentation_version, params)
      request.send_request(options)
    end

    # <p>Changes information about the DomainName resource.</p>
    # @param [Hash, Types::UpdateDomainNameRequest] params
    # @option params [String] :domain_name
    #   <p>The name of the DomainName resource to be changed.</p>
    # @option params [String] :domain_name_id
    #   <p>
    #     The identifier for the domain name resource. Supported only for private custom domain names.
    #   </p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_name: "String", # required
    #     domain_name_id: "String",
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_domain_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_name: "String",
    #     domain_name_id: "String",
    #     domain_name_arn: "String",
    #     certificate_name: "String",
    #     certificate_arn: "String",
    #     certificate_upload_date: Time.now,
    #     regional_domain_name: "String",
    #     regional_hosted_zone_id: "String",
    #     regional_certificate_name: "String",
    #     regional_certificate_arn: "String",
    #     distribution_domain_name: "String",
    #     distribution_hosted_zone_id: "String",
    #     endpoint_configuration: {
    #       types: ["REGIONAL" # One of: ["REGIONAL", "EDGE", "PRIVATE"]],
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #       vpc_endpoint_ids: ["String"]
    #     },
    #     domain_name_status: "AVAILABLE" # One of: ["AVAILABLE", "UPDATING", "PENDING", "PENDING_CERTIFICATE_REIMPORT", "PENDING_OWNERSHIP_VERIFICATION", "FAILED"],
    #     domain_name_status_message: "String",
    #     security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2", "SecurityPolicy_TLS13_1_3_2025_09", "SecurityPolicy_TLS13_1_3_FIPS_2025_09", "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_2021_06", "SecurityPolicy_TLS13_2025_EDGE", "SecurityPolicy_TLS12_PFS_2025_EDGE", "SecurityPolicy_TLS12_2018_EDGE"],
    #     endpoint_access_mode: "BASIC" # One of: ["BASIC", "STRICT"],
    #     tags: {
    #       "String" => "String"
    #     },
    #     mutual_tls_authentication: {
    #       truststore_uri: "String",
    #       truststore_version: "String",
    #       truststore_warnings: ["String"]
    #     },
    #     ownership_verification_certificate_arn: "String",
    #     management_policy: "String",
    #     policy: "String",
    #     routing_mode: "BASE_PATH_MAPPING_ONLY" # One of: ["BASE_PATH_MAPPING_ONLY", "ROUTING_RULE_ONLY", "ROUTING_RULE_THEN_BASE_PATH_MAPPING"]
    #   }
    # @return [Types::UpdateDomainNameOutput]
    def update_domain_name(params = {}, options = {})
      request = build_request(:update_domain_name, params)
      request.send_request(options)
    end

    # <p>Updates a GatewayResponse of a specified response type on the given RestApi.</p>
    # @param [Hash, Types::UpdateGatewayResponseRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :response_type
    #   <p>The response type of the associated GatewayResponse.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     response_type: "DEFAULT_4XX" # One of: ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"], # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_gateway_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_type: "DEFAULT_4XX" # One of: ["DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED", "WAF_FILTERED"],
    #     status_code: "StatusCode",
    #     response_parameters: {
    #       "String" => "String"
    #     },
    #     response_templates: {
    #       "String" => "String"
    #     },
    #     default_response: false
    #   }
    # @return [Types::UpdateGatewayResponseOutput]
    def update_gateway_response(params = {}, options = {})
      request = build_request(:update_gateway_response, params)
      request.send_request(options)
    end

    # <p>Represents an update integration.</p>
    # @param [Hash, Types::UpdateIntegrationRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>Represents an update integration request's resource identifier.</p>
    # @option params [String] :http_method
    #   <p>Represents an update integration request's HTTP method.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_integration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     type: "HTTP" # One of: ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #     http_method: "String",
    #     uri: "String",
    #     connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #     connection_id: "String",
    #     credentials: "String",
    #     request_parameters: {
    #       "String" => "String"
    #     },
    #     request_templates: {
    #       "String" => "String"
    #     },
    #     passthrough_behavior: "String",
    #     content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #     timeout_in_millis: 1,
    #     cache_namespace: "String",
    #     cache_key_parameters: ["String"],
    #     integration_responses: {
    #       "String" => {
    #         status_code: "StatusCode",
    #         selection_pattern: "String",
    #         response_parameters: {
    #           "String" => "String"
    #         },
    #         response_templates: {
    #           "String" => "String"
    #         },
    #         content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #       }
    #     },
    #     tls_config: {
    #       insecure_skip_verification: false
    #     },
    #     response_transfer_mode: "BUFFERED" # One of: ["BUFFERED", "STREAM"],
    #     integration_target: "String"
    #   }
    # @return [Types::UpdateIntegrationOutput]
    def update_integration(params = {}, options = {})
      request = build_request(:update_integration, params)
      request.send_request(options)
    end

    # <p>Represents an update integration response.</p>
    # @param [Hash, Types::UpdateIntegrationResponseRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>Specifies an update integration response request's resource identifier.</p>
    # @option params [String] :http_method
    #   <p>Specifies an update integration response request's HTTP method.</p>
    # @option params [String] :status_code
    #   <p>Specifies an update integration response request's status code.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_integration_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: "StatusCode",
    #     selection_pattern: "String",
    #     response_parameters: {
    #       "String" => "String"
    #     },
    #     response_templates: {
    #       "String" => "String"
    #     },
    #     content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #   }
    # @return [Types::UpdateIntegrationResponseOutput]
    def update_integration_response(params = {}, options = {})
      request = build_request(:update_integration_response, params)
      request.send_request(options)
    end

    # <p>Updates an existing Method resource.</p>
    # @param [Hash, Types::UpdateMethodRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the Method resource.</p>
    # @option params [String] :http_method
    #   <p>The HTTP verb of the Method resource.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_method(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     http_method: "String",
    #     authorization_type: "String",
    #     authorizer_id: "String",
    #     api_key_required: false,
    #     request_validator_id: "String",
    #     operation_name: "String",
    #     request_parameters: {
    #       "String" => false
    #     },
    #     request_models: {
    #       "String" => "String"
    #     },
    #     method_responses: {
    #       "String" => {
    #         status_code: "StatusCode",
    #         response_parameters: {
    #           "String" => false
    #         },
    #         response_models: {
    #           "String" => "String"
    #         }
    #       }
    #     },
    #     method_integration: {
    #       type: "HTTP" # One of: ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #       http_method: "String",
    #       uri: "String",
    #       connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #       connection_id: "String",
    #       credentials: "String",
    #       request_parameters: {
    #         "String" => "String"
    #       },
    #       request_templates: {
    #         "String" => "String"
    #       },
    #       passthrough_behavior: "String",
    #       content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #       timeout_in_millis: 1,
    #       cache_namespace: "String",
    #       cache_key_parameters: ["String"],
    #       integration_responses: {
    #         "String" => {
    #           status_code: "StatusCode",
    #           selection_pattern: "String",
    #           response_parameters: {
    #             "String" => "String"
    #           },
    #           response_templates: {
    #             "String" => "String"
    #           },
    #           content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #         }
    #       },
    #       tls_config: {
    #         insecure_skip_verification: false
    #       },
    #       response_transfer_mode: "BUFFERED" # One of: ["BUFFERED", "STREAM"],
    #       integration_target: "String"
    #     },
    #     authorization_scopes: ["String"]
    #   }
    # @return [Types::UpdateMethodOutput]
    def update_method(params = {}, options = {})
      request = build_request(:update_method, params)
      request.send_request(options)
    end

    # <p>Updates an existing MethodResponse resource.</p>
    # @param [Hash, Types::UpdateMethodResponseRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>The Resource identifier for the MethodResponse resource.</p>
    # @option params [String] :http_method
    #   <p>The HTTP verb of the Method resource.</p>
    # @option params [String] :status_code
    #   <p>The status code for the MethodResponse resource.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_method_response(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: "StatusCode",
    #     response_parameters: {
    #       "String" => false
    #     },
    #     response_models: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::UpdateMethodResponseOutput]
    def update_method_response(params = {}, options = {})
      request = build_request(:update_method_response, params)
      request.send_request(options)
    end

    # <p>Changes information about a model. The maximum size of the model is 400 KB.</p>
    # @param [Hash, Types::UpdateModelRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :model_name
    #   <p>The name of the model to update.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     model_name: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     schema: "String",
    #     content_type: "String"
    #   }
    # @return [Types::UpdateModelOutput]
    def update_model(params = {}, options = {})
      request = build_request(:update_model, params)
      request.send_request(options)
    end

    # <p>Updates a RequestValidator of a given RestApi.</p>
    # @param [Hash, Types::UpdateRequestValidatorRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :request_validator_id
    #   <p>The identifier of RequestValidator to be updated.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     request_validator_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_request_validator(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     validate_request_body: false,
    #     validate_request_parameters: false
    #   }
    # @return [Types::UpdateRequestValidatorOutput]
    def update_request_validator(params = {}, options = {})
      request = build_request(:update_request_validator, params)
      request.send_request(options)
    end

    # <p>Changes information about a Resource resource.</p>
    # @param [Hash, Types::UpdateResourceRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the Resource resource.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     parent_id: "String",
    #     path_part: "String",
    #     path: "String",
    #     resource_methods: {
    #       "String" => {
    #         http_method: "String",
    #         authorization_type: "String",
    #         authorizer_id: "String",
    #         api_key_required: false,
    #         request_validator_id: "String",
    #         operation_name: "String",
    #         request_parameters: {
    #           "String" => false
    #         },
    #         request_models: {
    #           "String" => "String"
    #         },
    #         method_responses: {
    #           "String" => {
    #             status_code: "StatusCode",
    #             response_parameters: {
    #               "String" => false
    #             },
    #             response_models: {
    #               "String" => "String"
    #             }
    #           }
    #         },
    #         method_integration: {
    #           type: "HTTP" # One of: ["HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"],
    #           http_method: "String",
    #           uri: "String",
    #           connection_type: "INTERNET" # One of: ["INTERNET", "VPC_LINK"],
    #           connection_id: "String",
    #           credentials: "String",
    #           request_parameters: {
    #             "String" => "String"
    #           },
    #           request_templates: {
    #             "String" => "String"
    #           },
    #           passthrough_behavior: "String",
    #           content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"],
    #           timeout_in_millis: 1,
    #           cache_namespace: "String",
    #           cache_key_parameters: ["String"],
    #           integration_responses: {
    #             "String" => {
    #               status_code: "StatusCode",
    #               selection_pattern: "String",
    #               response_parameters: {
    #                 "String" => "String"
    #               },
    #               response_templates: {
    #                 "String" => "String"
    #               },
    #               content_handling: "CONVERT_TO_BINARY" # One of: ["CONVERT_TO_BINARY", "CONVERT_TO_TEXT"]
    #             }
    #           },
    #           tls_config: {
    #             insecure_skip_verification: false
    #           },
    #           response_transfer_mode: "BUFFERED" # One of: ["BUFFERED", "STREAM"],
    #           integration_target: "String"
    #         },
    #         authorization_scopes: ["String"]
    #       }
    #     }
    #   }
    # @return [Types::UpdateResourceOutput]
    def update_resource(params = {}, options = {})
      request = build_request(:update_resource, params)
      request.send_request(options)
    end

    # <p>Changes information about the specified API.</p>
    # @param [Hash, Types::UpdateRestApiRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_rest_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     created_date: Time.now,
    #     version: "String",
    #     warnings: ["String"],
    #     binary_media_types: ["String"],
    #     minimum_compression_size: 1,
    #     api_key_source: "HEADER" # One of: ["HEADER", "AUTHORIZER"],
    #     endpoint_configuration: {
    #       types: ["REGIONAL" # One of: ["REGIONAL", "EDGE", "PRIVATE"]],
    #       ip_address_type: "ipv4" # One of: ["ipv4", "dualstack"],
    #       vpc_endpoint_ids: ["String"]
    #     },
    #     policy: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     disable_execute_api_endpoint: false,
    #     root_resource_id: "String",
    #     security_policy: "TLS_1_0" # One of: ["TLS_1_0", "TLS_1_2", "SecurityPolicy_TLS13_1_3_2025_09", "SecurityPolicy_TLS13_1_3_FIPS_2025_09", "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_Ext2_FIPS_PQ_2025_09", "SecurityPolicy_TLS13_1_2_PQ_2025_09", "SecurityPolicy_TLS13_1_2_2021_06", "SecurityPolicy_TLS13_2025_EDGE", "SecurityPolicy_TLS12_PFS_2025_EDGE", "SecurityPolicy_TLS12_2018_EDGE"],
    #     endpoint_access_mode: "BASIC" # One of: ["BASIC", "STRICT"],
    #     api_status: "UPDATING" # One of: ["UPDATING", "AVAILABLE", "PENDING", "FAILED"],
    #     api_status_message: "String"
    #   }
    # @return [Types::UpdateRestApiOutput]
    def update_rest_api(params = {}, options = {})
      request = build_request(:update_rest_api, params)
      request.send_request(options)
    end

    # <p>Changes information about a Stage resource.</p>
    # @param [Hash, Types::UpdateStageRequest] params
    # @option params [String] :rest_api_id
    #   <p>The string identifier of the associated RestApi.</p>
    # @option params [String] :stage_name
    #   <p>The name of the Stage resource to change information about.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "String",
    #     client_certificate_id: "String",
    #     stage_name: "String",
    #     description: "String",
    #     cache_cluster_enabled: false,
    #     cache_cluster_size: "0.5" # One of: ["0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"],
    #     cache_cluster_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"],
    #     method_settings: {
    #       "String" => {
    #         metrics_enabled: false,
    #         logging_level: "String",
    #         data_trace_enabled: false,
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0,
    #         caching_enabled: false,
    #         cache_ttl_in_seconds: 1,
    #         cache_data_encrypted: false,
    #         require_authorization_for_cache_control: false,
    #         unauthorized_cache_control_header_strategy: "FAIL_WITH_403" # One of: ["FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"]
    #       }
    #     },
    #     variables: {
    #       "String" => "String"
    #     },
    #     documentation_version: "String",
    #     access_log_settings: {
    #       format: "String",
    #       destination_arn: "String"
    #     },
    #     canary_settings: {
    #       percent_traffic: 1.0,
    #       deployment_id: "String",
    #       stage_variable_overrides: {
    #         "String" => "String"
    #       },
    #       use_stage_cache: false
    #     },
    #     tracing_enabled: false,
    #     web_acl_arn: "String",
    #     tags: {
    #       "String" => "String"
    #     },
    #     created_date: Time.now,
    #     last_updated_date: Time.now
    #   }
    # @return [Types::UpdateStageOutput]
    def update_stage(params = {}, options = {})
      request = build_request(:update_stage, params)
      request.send_request(options)
    end

    # <p>Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key.</p>
    # @param [Hash, Types::UpdateUsageRequest] params
    # @option params [String] :usage_plan_id
    #   <p>The Id of the usage plan associated with the usage data.</p>
    # @option params [String] :key_id
    #   <p>The identifier of the API key associated with the usage plan in which a temporary extension is granted to the remaining quota.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_plan_id: "String", # required
    #     key_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_usage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usage_plan_id: "String",
    #     start_date: "String",
    #     end_date: "String",
    #     items: {
    #       "String" => [
    #         [1]
    #       ]
    #     },
    #     position: "String"
    #   }
    # @return [Types::UpdateUsageOutput]
    def update_usage(params = {}, options = {})
      request = build_request(:update_usage, params)
      request.send_request(options)
    end

    # <p>Updates a usage plan of a given plan Id.</p>
    # @param [Hash, Types::UpdateUsagePlanRequest] params
    # @option params [String] :usage_plan_id
    #   <p>The Id of the to-be-updated usage plan.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     usage_plan_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_usage_plan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     api_stages: [
    #       {
    #         api_id: "String",
    #         stage: "String",
    #         throttle: {
    #           "String" => {
    #             burst_limit: 1,
    #             rate_limit: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     throttle: {
    #       burst_limit: 1,
    #       rate_limit: 1.0
    #     },
    #     quota: {
    #       limit: 1,
    #       offset: 1,
    #       period: "DAY" # One of: ["DAY", "WEEK", "MONTH"]
    #     },
    #     product_code: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::UpdateUsagePlanOutput]
    def update_usage_plan(params = {}, options = {})
      request = build_request(:update_usage_plan, params)
      request.send_request(options)
    end

    # <p>Updates an existing VpcLink of a specified identifier.</p>
    # @param [Hash, Types::UpdateVpcLinkRequest] params
    # @option params [String] :vpc_link_id
    #   <p>The identifier of the  VpcLink. It is used in an Integration to reference this VpcLink.</p>
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   <p>For more information about supported patch operations, see <a href="https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html">Patch Operations</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_link_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add" # One of: ["add", "remove", "replace", "move", "copy", "test"],
    #         path: "String",
    #         value: "String",
    #         from: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_vpc_link(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     name: "String",
    #     description: "String",
    #     target_arns: ["String"],
    #     status: "AVAILABLE" # One of: ["AVAILABLE", "PENDING", "DELETING", "FAILED"],
    #     status_message: "String",
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::UpdateVpcLinkOutput]
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
      context[:gem_name] = 'aws-sdk-apigateway'
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
