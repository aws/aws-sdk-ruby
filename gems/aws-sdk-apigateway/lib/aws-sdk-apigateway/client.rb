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
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'
require 'aws-sdk-apigateway/plugins/apply_content_type_header.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:apigateway)

module Aws::APIGateway
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :apigateway

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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::APIGateway::Plugins::ApplyContentTypeHeader)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Create an ApiKey resource.
    #
    # <div class="seeAlso">
    # [AWS CLI][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/create-api-key.html
    #
    # @option params [String] :name
    #   The name of the ApiKey.
    #
    # @option params [String] :description
    #   The description of the ApiKey.
    #
    # @option params [Boolean] :enabled
    #   Specifies whether the ApiKey can be used by callers.
    #
    # @option params [Boolean] :generate_distinct_id
    #   Specifies whether (`true`) or not (`false`) the key identifier is
    #   distinct from the created API key value.
    #
    # @option params [String] :value
    #   Specifies a value of the API key.
    #
    # @option params [Array<Types::StageKey>] :stage_keys
    #   DEPRECATED FOR USAGE PLANS - Specifies stages associated with the API
    #   key.
    #
    # @option params [String] :customer_id
    #   An AWS Marketplace customer identifier , when integrating with the AWS
    #   SaaS Marketplace.
    #
    # @return [Types::ApiKey] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApiKey#id #id} => String
    #   * {Types::ApiKey#value #value} => String
    #   * {Types::ApiKey#name #name} => String
    #   * {Types::ApiKey#customer_id #customer_id} => String
    #   * {Types::ApiKey#description #description} => String
    #   * {Types::ApiKey#enabled #enabled} => Boolean
    #   * {Types::ApiKey#created_date #created_date} => Time
    #   * {Types::ApiKey#last_updated_date #last_updated_date} => Time
    #   * {Types::ApiKey#stage_keys #stage_keys} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api_key({
    #     name: "String",
    #     description: "String",
    #     enabled: false,
    #     generate_distinct_id: false,
    #     value: "String",
    #     stage_keys: [
    #       {
    #         rest_api_id: "String",
    #         stage_name: "String",
    #       },
    #     ],
    #     customer_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.value #=> String
    #   resp.name #=> String
    #   resp.customer_id #=> String
    #   resp.description #=> String
    #   resp.enabled #=> Boolean
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #   resp.stage_keys #=> Array
    #   resp.stage_keys[0] #=> String
    #
    # @overload create_api_key(params = {})
    # @param [Hash] params ({})
    def create_api_key(params = {}, options = {})
      req = build_request(:create_api_key, params)
      req.send_request(options)
    end

    # Adds a new Authorizer resource to an existing RestApi resource.
    #
    # <div class="seeAlso">
    # [AWS CLI][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/create-authorizer.html
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :name
    #   \[Required\] The name of the authorizer.
    #
    # @option params [required, String] :type
    #   \[Required\] The authorizer type. Valid values are `TOKEN` for a
    #   Lambda function using a single authorization token submitted in a
    #   custom header, `REQUEST` for a Lambda function using incoming request
    #   parameters, and `COGNITO_USER_POOLS` for using an Amazon Cognito user
    #   pool.
    #
    # @option params [Array<String>] :provider_arns
    #   A list of the Amazon Cognito user pool ARNs for the
    #   `COGNITO_USER_POOLS` authorizer. Each element is of this format:
    #   `arn:aws:cognito-idp:\{region\}:\{account_id\}:userpool/\{user_pool_id\}`.
    #   For a `TOKEN` or `REQUEST` authorizer, this is not defined.
    #
    # @option params [String] :auth_type
    #   Optional customer-defined field, used in Swagger imports and exports
    #   without functional impact.
    #
    # @option params [String] :authorizer_uri
    #   Specifies the authorizer's Uniform Resource Identifier (URI). For
    #   `TOKEN` or `REQUEST` authorizers, this must be a well-formed Lambda
    #   function URI, for example,
    #   `arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:\{account_id\}:function:\{lambda_function_name\}/invocations`.
    #   In general, the URI has this form
    #   `arn:aws:apigateway:\{region\}:lambda:path/\{service_api\}`, where
    #   `\{region\}` is the same as the region hosting the Lambda function,
    #   `path` indicates that the remaining substring in the URI should be
    #   treated as the path to the resource, including the initial `/`. For
    #   Lambda functions, this is usually of the form
    #   `/2015-03-31/functions/[FunctionARN]/invocations`.
    #
    # @option params [String] :authorizer_credentials
    #   Specifies the required credentials as an IAM role for API Gateway to
    #   invoke the authorizer. To specify an IAM role for API Gateway to
    #   assume, use the role's Amazon Resource Name (ARN). To use
    #   resource-based permissions on the Lambda function, specify null.
    #
    # @option params [String] :identity_source
    #   The identity source for which authorization is requested. * For a
    #   `TOKEN` or `COGNITO_USER_POOLS` authorizer, this is required
    #     and specifies the request header mapping expression for the custom
    #     header holding the authorization token submitted by the client. For
    #     example, if the token header name is `Auth`, the header mapping
    #     expression is `method.request.header.Auth`.
    #   * For the `REQUEST` authorizer, this is required when authorization
    #     caching is enabled. The value is a comma-separated string of one or
    #     more mapping expressions of the specified request parameters. For
    #     example, if an `Auth` header, a `Name` query string parameter are
    #     defined as identity sources, this value is
    #     `method.request.header.Auth, method.request.querystring.Name`. These
    #     parameters will be used to derive the authorization caching key and
    #     to perform runtime validation of the `REQUEST` authorizer by
    #     verifying all of the identity-related request parameters are
    #     present, not null and non-empty. Only when this is true does the
    #     authorizer invoke the authorizer Lambda function, otherwise, it
    #     returns a 401 Unauthorized response without calling the Lambda
    #     function. The valid value is a string of comma-separated mapping
    #     expressions of the specified request parameters. When the
    #     authorization caching is not enabled, this property is optional.
    #
    # @option params [String] :identity_validation_expression
    #   A validation expression for the incoming identity token. For `TOKEN`
    #   authorizers, this value is a regular expression. API Gateway will
    #   match the `aud` field of the incoming token from the client against
    #   the specified regular expression. It will invoke the authorizer's
    #   Lambda function when there is a match. Otherwise, it will return a 401
    #   Unauthorized response without calling the Lambda function. The
    #   validation expression does not apply to the `REQUEST` authorizer.
    #
    # @option params [Integer] :authorizer_result_ttl_in_seconds
    #   The TTL in seconds of cached authorizer results. If it equals 0,
    #   authorization caching is disabled. If it is greater than 0, API
    #   Gateway will cache authorizer responses. If this field is not set, the
    #   default value is 300. The maximum value is 3600, or 1 hour.
    #
    # @return [Types::Authorizer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Authorizer#id #id} => String
    #   * {Types::Authorizer#name #name} => String
    #   * {Types::Authorizer#type #type} => String
    #   * {Types::Authorizer#provider_arns #provider_arns} => Array&lt;String&gt;
    #   * {Types::Authorizer#auth_type #auth_type} => String
    #   * {Types::Authorizer#authorizer_uri #authorizer_uri} => String
    #   * {Types::Authorizer#authorizer_credentials #authorizer_credentials} => String
    #   * {Types::Authorizer#identity_source #identity_source} => String
    #   * {Types::Authorizer#identity_validation_expression #identity_validation_expression} => String
    #   * {Types::Authorizer#authorizer_result_ttl_in_seconds #authorizer_result_ttl_in_seconds} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_authorizer({
    #     rest_api_id: "String", # required
    #     name: "String", # required
    #     type: "TOKEN", # required, accepts TOKEN, REQUEST, COGNITO_USER_POOLS
    #     provider_arns: ["ProviderARN"],
    #     auth_type: "String",
    #     authorizer_uri: "String",
    #     authorizer_credentials: "String",
    #     identity_source: "String",
    #     identity_validation_expression: "String",
    #     authorizer_result_ttl_in_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "TOKEN", "REQUEST", "COGNITO_USER_POOLS"
    #   resp.provider_arns #=> Array
    #   resp.provider_arns[0] #=> String
    #   resp.auth_type #=> String
    #   resp.authorizer_uri #=> String
    #   resp.authorizer_credentials #=> String
    #   resp.identity_source #=> String
    #   resp.identity_validation_expression #=> String
    #   resp.authorizer_result_ttl_in_seconds #=> Integer
    #
    # @overload create_authorizer(params = {})
    # @param [Hash] params ({})
    def create_authorizer(params = {}, options = {})
      req = build_request(:create_authorizer, params)
      req.send_request(options)
    end

    # Creates a new BasePathMapping resource.
    #
    # @option params [required, String] :domain_name
    #   \[Required\] The domain name of the BasePathMapping resource to
    #   create.
    #
    # @option params [String] :base_path
    #   The base path name that callers of the API must provide as part of the
    #   URL after the domain name. This value must be unique for all of the
    #   mappings across a single API. Leave this blank if you do not want
    #   callers to specify a base path name after the domain name.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :stage
    #   The name of the API's stage that you want to use for this mapping.
    #   Leave this blank if you do not want callers to explicitly specify the
    #   stage name after any base path name.
    #
    # @return [Types::BasePathMapping] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BasePathMapping#base_path #base_path} => String
    #   * {Types::BasePathMapping#rest_api_id #rest_api_id} => String
    #   * {Types::BasePathMapping#stage #stage} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_base_path_mapping({
    #     domain_name: "String", # required
    #     base_path: "String",
    #     rest_api_id: "String", # required
    #     stage: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.base_path #=> String
    #   resp.rest_api_id #=> String
    #   resp.stage #=> String
    #
    # @overload create_base_path_mapping(params = {})
    # @param [Hash] params ({})
    def create_base_path_mapping(params = {}, options = {})
      req = build_request(:create_base_path_mapping, params)
      req.send_request(options)
    end

    # Creates a Deployment resource, which makes a specified RestApi
    # callable over the internet.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :stage_name
    #   The name of the Stage resource for the Deployment resource to create.
    #
    # @option params [String] :stage_description
    #   The description of the Stage resource for the Deployment resource to
    #   create.
    #
    # @option params [String] :description
    #   The description for the Deployment resource to create.
    #
    # @option params [Boolean] :cache_cluster_enabled
    #   Enables a cache cluster for the Stage resource specified in the input.
    #
    # @option params [String] :cache_cluster_size
    #   Specifies the cache cluster size for the Stage resource specified in
    #   the input, if a cache cluster is enabled.
    #
    # @option params [Hash<String,String>] :variables
    #   A map that defines the stage variables for the Stage resource that is
    #   associated with the new deployment. Variable names can have
    #   alphanumeric and underscore characters, and the values must match
    #   `[A-Za-z0-9-._~:/?#&=,]+`.
    #
    # @option params [Types::DeploymentCanarySettings] :canary_settings
    #   The input configuration for the canary deployment when the deployment
    #   is a canary release deployment.
    #
    # @option params [Boolean] :tracing_enabled
    #   Specifies whether active tracing with X-ray is enabled for the Stage.
    #
    # @return [Types::Deployment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Deployment#id #id} => String
    #   * {Types::Deployment#description #description} => String
    #   * {Types::Deployment#created_date #created_date} => Time
    #   * {Types::Deployment#api_summary #api_summary} => Hash&lt;String,Hash&lt;String,Types::MethodSnapshot&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment({
    #     rest_api_id: "String", # required
    #     stage_name: "String",
    #     stage_description: "String",
    #     description: "String",
    #     cache_cluster_enabled: false,
    #     cache_cluster_size: "0.5", # accepts 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118, 237
    #     variables: {
    #       "String" => "String",
    #     },
    #     canary_settings: {
    #       percent_traffic: 1.0,
    #       stage_variable_overrides: {
    #         "String" => "String",
    #       },
    #       use_stage_cache: false,
    #     },
    #     tracing_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.api_summary #=> Hash
    #   resp.api_summary["String"] #=> Hash
    #   resp.api_summary["String"]["String"].authorization_type #=> String
    #   resp.api_summary["String"]["String"].api_key_required #=> Boolean
    #
    # @overload create_deployment(params = {})
    # @param [Hash] params ({})
    def create_deployment(params = {}, options = {})
      req = build_request(:create_deployment, params)
      req.send_request(options)
    end

    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, Types::DocumentationPartLocation] :location
    #   \[Required\] The location of the targeted API entity of the
    #   to-be-created documentation part.
    #
    # @option params [required, String] :properties
    #   \[Required\] The new documentation content map of the targeted API
    #   entity. Enclosed key-value pairs are API-specific, but only
    #   Swagger-compliant key-value pairs can be exported and, hence,
    #   published.
    #
    # @return [Types::DocumentationPart] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DocumentationPart#id #id} => String
    #   * {Types::DocumentationPart#location #location} => Types::DocumentationPartLocation
    #   * {Types::DocumentationPart#properties #properties} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_documentation_part({
    #     rest_api_id: "String", # required
    #     location: { # required
    #       type: "API", # required, accepts API, AUTHORIZER, MODEL, RESOURCE, METHOD, PATH_PARAMETER, QUERY_PARAMETER, REQUEST_HEADER, REQUEST_BODY, RESPONSE, RESPONSE_HEADER, RESPONSE_BODY
    #       path: "String",
    #       method: "String",
    #       status_code: "DocumentationPartLocationStatusCode",
    #       name: "String",
    #     },
    #     properties: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.location.type #=> String, one of "API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"
    #   resp.location.path #=> String
    #   resp.location.method #=> String
    #   resp.location.status_code #=> String
    #   resp.location.name #=> String
    #   resp.properties #=> String
    #
    # @overload create_documentation_part(params = {})
    # @param [Hash] params ({})
    def create_documentation_part(params = {}, options = {})
      req = build_request(:create_documentation_part, params)
      req.send_request(options)
    end

    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :documentation_version
    #   \[Required\] The version identifier of the new snapshot.
    #
    # @option params [String] :stage_name
    #   The stage name to be associated with the new documentation snapshot.
    #
    # @option params [String] :description
    #   A description about the new documentation snapshot.
    #
    # @return [Types::DocumentationVersion] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DocumentationVersion#version #version} => String
    #   * {Types::DocumentationVersion#created_date #created_date} => Time
    #   * {Types::DocumentationVersion#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_documentation_version({
    #     rest_api_id: "String", # required
    #     documentation_version: "String", # required
    #     stage_name: "String",
    #     description: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.version #=> String
    #   resp.created_date #=> Time
    #   resp.description #=> String
    #
    # @overload create_documentation_version(params = {})
    # @param [Hash] params ({})
    def create_documentation_version(params = {}, options = {})
      req = build_request(:create_documentation_version, params)
      req.send_request(options)
    end

    # Creates a new domain name.
    #
    # @option params [required, String] :domain_name
    #   \[Required\] The name of the DomainName resource.
    #
    # @option params [String] :certificate_name
    #   The user-friendly name of the certificate that will be used by
    #   edge-optimized endpoint for this domain name.
    #
    # @option params [String] :certificate_body
    #   \[Deprecated\] The body of the server certificate that will be used by
    #   edge-optimized endpoint for this domain name provided by your
    #   certificate authority.
    #
    # @option params [String] :certificate_private_key
    #   \[Deprecated\] Your edge-optimized endpoint's domain name
    #   certificate's private key.
    #
    # @option params [String] :certificate_chain
    #   \[Deprecated\] The intermediate certificates and optionally the root
    #   certificate, one after the other without any blank lines, used by an
    #   edge-optimized endpoint for this domain name. If you include the root
    #   certificate, your certificate chain must start with intermediate
    #   certificates and end with the root certificate. Use the intermediate
    #   certificates that were provided by your certificate authority. Do not
    #   include any intermediaries that are not in the chain of trust path.
    #
    # @option params [String] :certificate_arn
    #   The reference to an AWS-managed certificate that will be used by
    #   edge-optimized endpoint for this domain name. AWS Certificate Manager
    #   is the only supported source.
    #
    # @option params [String] :regional_certificate_name
    #   The user-friendly name of the certificate that will be used by
    #   regional endpoint for this domain name.
    #
    # @option params [String] :regional_certificate_arn
    #   The reference to an AWS-managed certificate that will be used by
    #   regional endpoint for this domain name. AWS Certificate Manager is the
    #   only supported source.
    #
    # @option params [Types::EndpointConfiguration] :endpoint_configuration
    #   The endpoint configuration of this DomainName showing the endpoint
    #   types of the domain name.
    #
    # @return [Types::DomainName] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DomainName#domain_name #domain_name} => String
    #   * {Types::DomainName#certificate_name #certificate_name} => String
    #   * {Types::DomainName#certificate_arn #certificate_arn} => String
    #   * {Types::DomainName#certificate_upload_date #certificate_upload_date} => Time
    #   * {Types::DomainName#regional_domain_name #regional_domain_name} => String
    #   * {Types::DomainName#regional_hosted_zone_id #regional_hosted_zone_id} => String
    #   * {Types::DomainName#regional_certificate_name #regional_certificate_name} => String
    #   * {Types::DomainName#regional_certificate_arn #regional_certificate_arn} => String
    #   * {Types::DomainName#distribution_domain_name #distribution_domain_name} => String
    #   * {Types::DomainName#distribution_hosted_zone_id #distribution_hosted_zone_id} => String
    #   * {Types::DomainName#endpoint_configuration #endpoint_configuration} => Types::EndpointConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_name({
    #     domain_name: "String", # required
    #     certificate_name: "String",
    #     certificate_body: "String",
    #     certificate_private_key: "String",
    #     certificate_chain: "String",
    #     certificate_arn: "String",
    #     regional_certificate_name: "String",
    #     regional_certificate_arn: "String",
    #     endpoint_configuration: {
    #       types: ["REGIONAL"], # accepts REGIONAL, EDGE, PRIVATE
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.certificate_name #=> String
    #   resp.certificate_arn #=> String
    #   resp.certificate_upload_date #=> Time
    #   resp.regional_domain_name #=> String
    #   resp.regional_hosted_zone_id #=> String
    #   resp.regional_certificate_name #=> String
    #   resp.regional_certificate_arn #=> String
    #   resp.distribution_domain_name #=> String
    #   resp.distribution_hosted_zone_id #=> String
    #   resp.endpoint_configuration.types #=> Array
    #   resp.endpoint_configuration.types[0] #=> String, one of "REGIONAL", "EDGE", "PRIVATE"
    #
    # @overload create_domain_name(params = {})
    # @param [Hash] params ({})
    def create_domain_name(params = {}, options = {})
      req = build_request(:create_domain_name, params)
      req.send_request(options)
    end

    # Adds a new Model resource to an existing RestApi resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The RestApi identifier under which the Model will be
    #   created.
    #
    # @option params [required, String] :name
    #   \[Required\] The name of the model. Must be alphanumeric.
    #
    # @option params [String] :description
    #   The description of the model.
    #
    # @option params [String] :schema
    #   The schema for the model. For `application/json` models, this should
    #   be [JSON schema draft 4][1] model.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/draft-zyp-json-schema-04
    #
    # @option params [required, String] :content_type
    #   \[Required\] The content-type for the model.
    #
    # @return [Types::Model] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Model#id #id} => String
    #   * {Types::Model#name #name} => String
    #   * {Types::Model#description #description} => String
    #   * {Types::Model#schema #schema} => String
    #   * {Types::Model#content_type #content_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model({
    #     rest_api_id: "String", # required
    #     name: "String", # required
    #     description: "String",
    #     schema: "String",
    #     content_type: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.schema #=> String
    #   resp.content_type #=> String
    #
    # @overload create_model(params = {})
    # @param [Hash] params ({})
    def create_model(params = {}, options = {})
      req = build_request(:create_model, params)
      req.send_request(options)
    end

    # Creates a ReqeustValidator of a given RestApi.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :name
    #   The name of the to-be-created RequestValidator.
    #
    # @option params [Boolean] :validate_request_body
    #   A Boolean flag to indicate whether to validate request body according
    #   to the configured model schema for the method (`true`) or not
    #   (`false`).
    #
    # @option params [Boolean] :validate_request_parameters
    #   A Boolean flag to indicate whether to validate request parameters,
    #   `true`, or not `false`.
    #
    # @return [Types::RequestValidator] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestValidator#id #id} => String
    #   * {Types::RequestValidator#name #name} => String
    #   * {Types::RequestValidator#validate_request_body #validate_request_body} => Boolean
    #   * {Types::RequestValidator#validate_request_parameters #validate_request_parameters} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_request_validator({
    #     rest_api_id: "String", # required
    #     name: "String",
    #     validate_request_body: false,
    #     validate_request_parameters: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.validate_request_body #=> Boolean
    #   resp.validate_request_parameters #=> Boolean
    #
    # @overload create_request_validator(params = {})
    # @param [Hash] params ({})
    def create_request_validator(params = {}, options = {})
      req = build_request(:create_request_validator, params)
      req.send_request(options)
    end

    # Creates a Resource resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :parent_id
    #   \[Required\] The parent resource's identifier.
    #
    # @option params [required, String] :path_part
    #   The last path segment for this resource.
    #
    # @return [Types::Resource] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Resource#id #id} => String
    #   * {Types::Resource#parent_id #parent_id} => String
    #   * {Types::Resource#path_part #path_part} => String
    #   * {Types::Resource#path #path} => String
    #   * {Types::Resource#resource_methods #resource_methods} => Hash&lt;String,Types::Method&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource({
    #     rest_api_id: "String", # required
    #     parent_id: "String", # required
    #     path_part: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.parent_id #=> String
    #   resp.path_part #=> String
    #   resp.path #=> String
    #   resp.resource_methods #=> Hash
    #   resp.resource_methods["String"].http_method #=> String
    #   resp.resource_methods["String"].authorization_type #=> String
    #   resp.resource_methods["String"].authorizer_id #=> String
    #   resp.resource_methods["String"].api_key_required #=> Boolean
    #   resp.resource_methods["String"].request_validator_id #=> String
    #   resp.resource_methods["String"].operation_name #=> String
    #   resp.resource_methods["String"].request_parameters #=> Hash
    #   resp.resource_methods["String"].request_parameters["String"] #=> Boolean
    #   resp.resource_methods["String"].request_models #=> Hash
    #   resp.resource_methods["String"].request_models["String"] #=> String
    #   resp.resource_methods["String"].method_responses #=> Hash
    #   resp.resource_methods["String"].method_responses["String"].status_code #=> String
    #   resp.resource_methods["String"].method_responses["String"].response_parameters #=> Hash
    #   resp.resource_methods["String"].method_responses["String"].response_parameters["String"] #=> Boolean
    #   resp.resource_methods["String"].method_responses["String"].response_models #=> Hash
    #   resp.resource_methods["String"].method_responses["String"].response_models["String"] #=> String
    #   resp.resource_methods["String"].method_integration.type #=> String, one of "HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.resource_methods["String"].method_integration.http_method #=> String
    #   resp.resource_methods["String"].method_integration.uri #=> String
    #   resp.resource_methods["String"].method_integration.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.resource_methods["String"].method_integration.connection_id #=> String
    #   resp.resource_methods["String"].method_integration.credentials #=> String
    #   resp.resource_methods["String"].method_integration.request_parameters #=> Hash
    #   resp.resource_methods["String"].method_integration.request_parameters["String"] #=> String
    #   resp.resource_methods["String"].method_integration.request_templates #=> Hash
    #   resp.resource_methods["String"].method_integration.request_templates["String"] #=> String
    #   resp.resource_methods["String"].method_integration.passthrough_behavior #=> String
    #   resp.resource_methods["String"].method_integration.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.resource_methods["String"].method_integration.timeout_in_millis #=> Integer
    #   resp.resource_methods["String"].method_integration.cache_namespace #=> String
    #   resp.resource_methods["String"].method_integration.cache_key_parameters #=> Array
    #   resp.resource_methods["String"].method_integration.cache_key_parameters[0] #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses #=> Hash
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].status_code #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].selection_pattern #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_parameters #=> Hash
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_parameters["String"] #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_templates #=> Hash
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_templates["String"] #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.resource_methods["String"].authorization_scopes #=> Array
    #   resp.resource_methods["String"].authorization_scopes[0] #=> String
    #
    # @overload create_resource(params = {})
    # @param [Hash] params ({})
    def create_resource(params = {}, options = {})
      req = build_request(:create_resource, params)
      req.send_request(options)
    end

    # Creates a new RestApi resource.
    #
    # @option params [required, String] :name
    #   \[Required\] The name of the RestApi.
    #
    # @option params [String] :description
    #   The description of the RestApi.
    #
    # @option params [String] :version
    #   A version identifier for the API.
    #
    # @option params [String] :clone_from
    #   The ID of the RestApi that you want to clone from.
    #
    # @option params [Array<String>] :binary_media_types
    #   The list of binary media types supported by the RestApi. By default,
    #   the RestApi supports only UTF-8-encoded text payloads.
    #
    # @option params [Integer] :minimum_compression_size
    #   A nullable integer that is used to enable compression (with
    #   non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable
    #   compression (with a null value) on an API. When compression is
    #   enabled, compression or decompression is not applied on the payload if
    #   the payload size is smaller than this value. Setting it to zero allows
    #   compression for any payload size.
    #
    # @option params [String] :api_key_source
    #   The source of the API key for metering requests according to a usage
    #   plan. Valid values are: * `HEADER` to read the API key from the
    #   `X-API-Key` header of a
    #     request.
    #   * `AUTHORIZER` to read the API key from the `UsageIdentifierKey` from
    #     a custom authorizer.
    #
    # @option params [Types::EndpointConfiguration] :endpoint_configuration
    #   The endpoint configuration of this RestApi showing the endpoint types
    #   of the API.
    #
    # @option params [String] :policy
    #   A stringified JSON policy document that applies to this RestApi regardless of the caller and Method configuration.
    #
    # @return [Types::RestApi] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestApi#id #id} => String
    #   * {Types::RestApi#name #name} => String
    #   * {Types::RestApi#description #description} => String
    #   * {Types::RestApi#created_date #created_date} => Time
    #   * {Types::RestApi#version #version} => String
    #   * {Types::RestApi#warnings #warnings} => Array&lt;String&gt;
    #   * {Types::RestApi#binary_media_types #binary_media_types} => Array&lt;String&gt;
    #   * {Types::RestApi#minimum_compression_size #minimum_compression_size} => Integer
    #   * {Types::RestApi#api_key_source #api_key_source} => String
    #   * {Types::RestApi#endpoint_configuration #endpoint_configuration} => Types::EndpointConfiguration
    #   * {Types::RestApi#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rest_api({
    #     name: "String", # required
    #     description: "String",
    #     version: "String",
    #     clone_from: "String",
    #     binary_media_types: ["String"],
    #     minimum_compression_size: 1,
    #     api_key_source: "HEADER", # accepts HEADER, AUTHORIZER
    #     endpoint_configuration: {
    #       types: ["REGIONAL"], # accepts REGIONAL, EDGE, PRIVATE
    #     },
    #     policy: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.version #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #   resp.binary_media_types #=> Array
    #   resp.binary_media_types[0] #=> String
    #   resp.minimum_compression_size #=> Integer
    #   resp.api_key_source #=> String, one of "HEADER", "AUTHORIZER"
    #   resp.endpoint_configuration.types #=> Array
    #   resp.endpoint_configuration.types[0] #=> String, one of "REGIONAL", "EDGE", "PRIVATE"
    #   resp.policy #=> String
    #
    # @overload create_rest_api(params = {})
    # @param [Hash] params ({})
    def create_rest_api(params = {}, options = {})
      req = build_request(:create_rest_api, params)
      req.send_request(options)
    end

    # Creates a new Stage resource that references a pre-existing Deployment
    # for the API.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :stage_name
    #   \[Required\] The name for the Stage resource.
    #
    # @option params [required, String] :deployment_id
    #   \[Required\] The identifier of the Deployment resource for the Stage
    #   resource.
    #
    # @option params [String] :description
    #   The description of the Stage resource.
    #
    # @option params [Boolean] :cache_cluster_enabled
    #   Whether cache clustering is enabled for the stage.
    #
    # @option params [String] :cache_cluster_size
    #   The stage's cache cluster size.
    #
    # @option params [Hash<String,String>] :variables
    #   A map that defines the stage variables for the new Stage resource.
    #   Variable names can have alphanumeric and underscore characters, and
    #   the values must match `[A-Za-z0-9-._~:/?#&=,]+`.
    #
    # @option params [String] :documentation_version
    #   The version of the associated API documentation.
    #
    # @option params [Types::CanarySettings] :canary_settings
    #   The canary deployment settings of this stage.
    #
    # @option params [Boolean] :tracing_enabled
    #   Specifies whether active tracing with X-ray is enabled for the Stage.
    #
    # @option params [Hash<String,String>] :tags
    #   The key-value map of strings. The valid character set is
    #   \[a-zA-Z+-=.\_:/\]. The tag key can be up to 128 characters and must
    #   not start with `aws:`. The tag value can be up to 256 characters.
    #
    # @return [Types::Stage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Stage#deployment_id #deployment_id} => String
    #   * {Types::Stage#client_certificate_id #client_certificate_id} => String
    #   * {Types::Stage#stage_name #stage_name} => String
    #   * {Types::Stage#description #description} => String
    #   * {Types::Stage#cache_cluster_enabled #cache_cluster_enabled} => Boolean
    #   * {Types::Stage#cache_cluster_size #cache_cluster_size} => String
    #   * {Types::Stage#cache_cluster_status #cache_cluster_status} => String
    #   * {Types::Stage#method_settings #method_settings} => Hash&lt;String,Types::MethodSetting&gt;
    #   * {Types::Stage#variables #variables} => Hash&lt;String,String&gt;
    #   * {Types::Stage#documentation_version #documentation_version} => String
    #   * {Types::Stage#access_log_settings #access_log_settings} => Types::AccessLogSettings
    #   * {Types::Stage#canary_settings #canary_settings} => Types::CanarySettings
    #   * {Types::Stage#tracing_enabled #tracing_enabled} => Boolean
    #   * {Types::Stage#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::Stage#created_date #created_date} => Time
    #   * {Types::Stage#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stage({
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #     deployment_id: "String", # required
    #     description: "String",
    #     cache_cluster_enabled: false,
    #     cache_cluster_size: "0.5", # accepts 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118, 237
    #     variables: {
    #       "String" => "String",
    #     },
    #     documentation_version: "String",
    #     canary_settings: {
    #       percent_traffic: 1.0,
    #       deployment_id: "String",
    #       stage_variable_overrides: {
    #         "String" => "String",
    #       },
    #       use_stage_cache: false,
    #     },
    #     tracing_enabled: false,
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_id #=> String
    #   resp.client_certificate_id #=> String
    #   resp.stage_name #=> String
    #   resp.description #=> String
    #   resp.cache_cluster_enabled #=> Boolean
    #   resp.cache_cluster_size #=> String, one of "0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"
    #   resp.cache_cluster_status #=> String, one of "CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"
    #   resp.method_settings #=> Hash
    #   resp.method_settings["String"].metrics_enabled #=> Boolean
    #   resp.method_settings["String"].logging_level #=> String
    #   resp.method_settings["String"].data_trace_enabled #=> Boolean
    #   resp.method_settings["String"].throttling_burst_limit #=> Integer
    #   resp.method_settings["String"].throttling_rate_limit #=> Float
    #   resp.method_settings["String"].caching_enabled #=> Boolean
    #   resp.method_settings["String"].cache_ttl_in_seconds #=> Integer
    #   resp.method_settings["String"].cache_data_encrypted #=> Boolean
    #   resp.method_settings["String"].require_authorization_for_cache_control #=> Boolean
    #   resp.method_settings["String"].unauthorized_cache_control_header_strategy #=> String, one of "FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"
    #   resp.variables #=> Hash
    #   resp.variables["String"] #=> String
    #   resp.documentation_version #=> String
    #   resp.access_log_settings.format #=> String
    #   resp.access_log_settings.destination_arn #=> String
    #   resp.canary_settings.percent_traffic #=> Float
    #   resp.canary_settings.deployment_id #=> String
    #   resp.canary_settings.stage_variable_overrides #=> Hash
    #   resp.canary_settings.stage_variable_overrides["String"] #=> String
    #   resp.canary_settings.use_stage_cache #=> Boolean
    #   resp.tracing_enabled #=> Boolean
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @overload create_stage(params = {})
    # @param [Hash] params ({})
    def create_stage(params = {}, options = {})
      req = build_request(:create_stage, params)
      req.send_request(options)
    end

    # Creates a usage plan with the throttle and quota limits, as well as
    # the associated API stages, specified in the payload.
    #
    # @option params [required, String] :name
    #   \[Required\] The name of the usage plan.
    #
    # @option params [String] :description
    #   The description of the usage plan.
    #
    # @option params [Array<Types::ApiStage>] :api_stages
    #   The associated API stages of the usage plan.
    #
    # @option params [Types::ThrottleSettings] :throttle
    #   The throttling limits of the usage plan.
    #
    # @option params [Types::QuotaSettings] :quota
    #   The quota of the usage plan.
    #
    # @return [Types::UsagePlan] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UsagePlan#id #id} => String
    #   * {Types::UsagePlan#name #name} => String
    #   * {Types::UsagePlan#description #description} => String
    #   * {Types::UsagePlan#api_stages #api_stages} => Array&lt;Types::ApiStage&gt;
    #   * {Types::UsagePlan#throttle #throttle} => Types::ThrottleSettings
    #   * {Types::UsagePlan#quota #quota} => Types::QuotaSettings
    #   * {Types::UsagePlan#product_code #product_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_usage_plan({
    #     name: "String", # required
    #     description: "String",
    #     api_stages: [
    #       {
    #         api_id: "String",
    #         stage: "String",
    #         throttle: {
    #           "String" => {
    #             burst_limit: 1,
    #             rate_limit: 1.0,
    #           },
    #         },
    #       },
    #     ],
    #     throttle: {
    #       burst_limit: 1,
    #       rate_limit: 1.0,
    #     },
    #     quota: {
    #       limit: 1,
    #       offset: 1,
    #       period: "DAY", # accepts DAY, WEEK, MONTH
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.api_stages #=> Array
    #   resp.api_stages[0].api_id #=> String
    #   resp.api_stages[0].stage #=> String
    #   resp.api_stages[0].throttle #=> Hash
    #   resp.api_stages[0].throttle["String"].burst_limit #=> Integer
    #   resp.api_stages[0].throttle["String"].rate_limit #=> Float
    #   resp.throttle.burst_limit #=> Integer
    #   resp.throttle.rate_limit #=> Float
    #   resp.quota.limit #=> Integer
    #   resp.quota.offset #=> Integer
    #   resp.quota.period #=> String, one of "DAY", "WEEK", "MONTH"
    #   resp.product_code #=> String
    #
    # @overload create_usage_plan(params = {})
    # @param [Hash] params ({})
    def create_usage_plan(params = {}, options = {})
      req = build_request(:create_usage_plan, params)
      req.send_request(options)
    end

    # Creates a usage plan key for adding an existing API key to a usage
    # plan.
    #
    # @option params [required, String] :usage_plan_id
    #   \[Required\] The Id of the UsagePlan resource representing the usage
    #   plan containing the to-be-created UsagePlanKey resource representing a
    #   plan customer.
    #
    # @option params [required, String] :key_id
    #   \[Required\] The identifier of a UsagePlanKey resource for a plan
    #   customer.
    #
    # @option params [required, String] :key_type
    #   \[Required\] The type of a UsagePlanKey resource for a plan customer.
    #
    # @return [Types::UsagePlanKey] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UsagePlanKey#id #id} => String
    #   * {Types::UsagePlanKey#type #type} => String
    #   * {Types::UsagePlanKey#value #value} => String
    #   * {Types::UsagePlanKey#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_usage_plan_key({
    #     usage_plan_id: "String", # required
    #     key_id: "String", # required
    #     key_type: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.type #=> String
    #   resp.value #=> String
    #   resp.name #=> String
    #
    # @overload create_usage_plan_key(params = {})
    # @param [Hash] params ({})
    def create_usage_plan_key(params = {}, options = {})
      req = build_request(:create_usage_plan_key, params)
      req.send_request(options)
    end

    # Creates a VPC link, under the caller's account in a selected region,
    # in an asynchronous operation that typically takes 2-4 minutes to
    # complete and become operational. The caller must have permissions to
    # create and update VPC Endpoint services.
    #
    # @option params [required, String] :name
    #   \[Required\] The name used to label and identify the VPC link.
    #
    # @option params [String] :description
    #   The description of the VPC link.
    #
    # @option params [required, Array<String>] :target_arns
    #   \[Required\] The ARNs of network load balancers of the VPC targeted by
    #   the VPC link. The network load balancers must be owned by the same AWS
    #   account of the API owner.
    #
    # @return [Types::VpcLink] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VpcLink#id #id} => String
    #   * {Types::VpcLink#name #name} => String
    #   * {Types::VpcLink#description #description} => String
    #   * {Types::VpcLink#target_arns #target_arns} => Array&lt;String&gt;
    #   * {Types::VpcLink#status #status} => String
    #   * {Types::VpcLink#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_link({
    #     name: "String", # required
    #     description: "String",
    #     target_arns: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.target_arns #=> Array
    #   resp.target_arns[0] #=> String
    #   resp.status #=> String, one of "AVAILABLE", "PENDING", "DELETING", "FAILED"
    #   resp.status_message #=> String
    #
    # @overload create_vpc_link(params = {})
    # @param [Hash] params ({})
    def create_vpc_link(params = {}, options = {})
      req = build_request(:create_vpc_link, params)
      req.send_request(options)
    end

    # Deletes the ApiKey resource.
    #
    # @option params [required, String] :api_key
    #   \[Required\] The identifier of the ApiKey resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_api_key({
    #     api_key: "String", # required
    #   })
    #
    # @overload delete_api_key(params = {})
    # @param [Hash] params ({})
    def delete_api_key(params = {}, options = {})
      req = build_request(:delete_api_key, params)
      req.send_request(options)
    end

    # Deletes an existing Authorizer resource.
    #
    # <div class="seeAlso">
    # [AWS CLI][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/delete-authorizer.html
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :authorizer_id
    #   \[Required\] The identifier of the Authorizer resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_authorizer({
    #     rest_api_id: "String", # required
    #     authorizer_id: "String", # required
    #   })
    #
    # @overload delete_authorizer(params = {})
    # @param [Hash] params ({})
    def delete_authorizer(params = {}, options = {})
      req = build_request(:delete_authorizer, params)
      req.send_request(options)
    end

    # Deletes the BasePathMapping resource.
    #
    # @option params [required, String] :domain_name
    #   \[Required\] The domain name of the BasePathMapping resource to
    #   delete.
    #
    # @option params [required, String] :base_path
    #   \[Required\] The base path name of the BasePathMapping resource to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_base_path_mapping({
    #     domain_name: "String", # required
    #     base_path: "String", # required
    #   })
    #
    # @overload delete_base_path_mapping(params = {})
    # @param [Hash] params ({})
    def delete_base_path_mapping(params = {}, options = {})
      req = build_request(:delete_base_path_mapping, params)
      req.send_request(options)
    end

    # Deletes the ClientCertificate resource.
    #
    # @option params [required, String] :client_certificate_id
    #   \[Required\] The identifier of the ClientCertificate resource to be
    #   deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_client_certificate({
    #     client_certificate_id: "String", # required
    #   })
    #
    # @overload delete_client_certificate(params = {})
    # @param [Hash] params ({})
    def delete_client_certificate(params = {}, options = {})
      req = build_request(:delete_client_certificate, params)
      req.send_request(options)
    end

    # Deletes a Deployment resource. Deleting a deployment will only succeed
    # if there are no Stage resources associated with it.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :deployment_id
    #   \[Required\] The identifier of the Deployment resource to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment({
    #     rest_api_id: "String", # required
    #     deployment_id: "String", # required
    #   })
    #
    # @overload delete_deployment(params = {})
    # @param [Hash] params ({})
    def delete_deployment(params = {}, options = {})
      req = build_request(:delete_deployment, params)
      req.send_request(options)
    end

    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :documentation_part_id
    #   \[Required\] The identifier of the to-be-deleted documentation part.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_documentation_part({
    #     rest_api_id: "String", # required
    #     documentation_part_id: "String", # required
    #   })
    #
    # @overload delete_documentation_part(params = {})
    # @param [Hash] params ({})
    def delete_documentation_part(params = {}, options = {})
      req = build_request(:delete_documentation_part, params)
      req.send_request(options)
    end

    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :documentation_version
    #   \[Required\] The version identifier of a to-be-deleted documentation
    #   snapshot.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_documentation_version({
    #     rest_api_id: "String", # required
    #     documentation_version: "String", # required
    #   })
    #
    # @overload delete_documentation_version(params = {})
    # @param [Hash] params ({})
    def delete_documentation_version(params = {}, options = {})
      req = build_request(:delete_documentation_version, params)
      req.send_request(options)
    end

    # Deletes the DomainName resource.
    #
    # @option params [required, String] :domain_name
    #   \[Required\] The name of the DomainName resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_name({
    #     domain_name: "String", # required
    #   })
    #
    # @overload delete_domain_name(params = {})
    # @param [Hash] params ({})
    def delete_domain_name(params = {}, options = {})
      req = build_request(:delete_domain_name, params)
      req.send_request(options)
    end

    # Clears any customization of a GatewayResponse of a specified response
    # type on the given RestApi and resets it with the default settings.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :response_type
    #   \[Required\] The response type of the associated GatewayResponse.
    #   Valid values are
    #   * ACCESS\_DENIED
    #   * API\_CONFIGURATION\_ERROR
    #   * AUTHORIZER\_FAILURE
    #   * AUTHORIZER\_CONFIGURATION\_ERROR
    #   * BAD\_REQUEST\_PARAMETERS
    #   * BAD\_REQUEST\_BODY
    #   * DEFAULT\_4XX
    #   * DEFAULT\_5XX
    #   * EXPIRED\_TOKEN
    #   * INVALID\_SIGNATURE
    #   * INTEGRATION\_FAILURE
    #   * INTEGRATION\_TIMEOUT
    #   * INVALID\_API\_KEY
    #   * MISSING\_AUTHENTICATION\_TOKEN
    #   * QUOTA\_EXCEEDED
    #   * REQUEST\_TOO\_LARGE
    #   * RESOURCE\_NOT\_FOUND
    #   * THROTTLED
    #   * UNAUTHORIZED
    #   * UNSUPPORTED\_MEDIA\_TYPE
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway_response({
    #     rest_api_id: "String", # required
    #     response_type: "DEFAULT_4XX", # required, accepts DEFAULT_4XX, DEFAULT_5XX, RESOURCE_NOT_FOUND, UNAUTHORIZED, INVALID_API_KEY, ACCESS_DENIED, AUTHORIZER_FAILURE, AUTHORIZER_CONFIGURATION_ERROR, INVALID_SIGNATURE, EXPIRED_TOKEN, MISSING_AUTHENTICATION_TOKEN, INTEGRATION_FAILURE, INTEGRATION_TIMEOUT, API_CONFIGURATION_ERROR, UNSUPPORTED_MEDIA_TYPE, BAD_REQUEST_PARAMETERS, BAD_REQUEST_BODY, REQUEST_TOO_LARGE, THROTTLED, QUOTA_EXCEEDED
    #   })
    #
    # @overload delete_gateway_response(params = {})
    # @param [Hash] params ({})
    def delete_gateway_response(params = {}, options = {})
      req = build_request(:delete_gateway_response, params)
      req.send_request(options)
    end

    # Represents a delete integration.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] Specifies a delete integration request's resource
    #   identifier.
    #
    # @option params [required, String] :http_method
    #   \[Required\] Specifies a delete integration request's HTTP method.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #   })
    #
    # @overload delete_integration(params = {})
    # @param [Hash] params ({})
    def delete_integration(params = {}, options = {})
      req = build_request(:delete_integration, params)
      req.send_request(options)
    end

    # Represents a delete integration response.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] Specifies a delete integration response request's
    #   resource identifier.
    #
    # @option params [required, String] :http_method
    #   \[Required\] Specifies a delete integration response request's HTTP
    #   method.
    #
    # @option params [required, String] :status_code
    #   \[Required\] Specifies a delete integration response request's status
    #   code.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration_response({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #   })
    #
    # @overload delete_integration_response(params = {})
    # @param [Hash] params ({})
    def delete_integration_response(params = {}, options = {})
      req = build_request(:delete_integration_response, params)
      req.send_request(options)
    end

    # Deletes an existing Method resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] The Resource identifier for the Method resource.
    #
    # @option params [required, String] :http_method
    #   \[Required\] The HTTP verb of the Method resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_method({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #   })
    #
    # @overload delete_method(params = {})
    # @param [Hash] params ({})
    def delete_method(params = {}, options = {})
      req = build_request(:delete_method, params)
      req.send_request(options)
    end

    # Deletes an existing MethodResponse resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] The Resource identifier for the MethodResponse resource.
    #
    # @option params [required, String] :http_method
    #   \[Required\] The HTTP verb of the Method resource.
    #
    # @option params [required, String] :status_code
    #   \[Required\] The status code identifier for the MethodResponse
    #   resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_method_response({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #   })
    #
    # @overload delete_method_response(params = {})
    # @param [Hash] params ({})
    def delete_method_response(params = {}, options = {})
      req = build_request(:delete_method_response, params)
      req.send_request(options)
    end

    # Deletes a model.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :model_name
    #   \[Required\] The name of the model to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_model({
    #     rest_api_id: "String", # required
    #     model_name: "String", # required
    #   })
    #
    # @overload delete_model(params = {})
    # @param [Hash] params ({})
    def delete_model(params = {}, options = {})
      req = build_request(:delete_model, params)
      req.send_request(options)
    end

    # Deletes a RequestValidator of a given RestApi.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :request_validator_id
    #   \[Required\] The identifier of the RequestValidator to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_request_validator({
    #     rest_api_id: "String", # required
    #     request_validator_id: "String", # required
    #   })
    #
    # @overload delete_request_validator(params = {})
    # @param [Hash] params ({})
    def delete_request_validator(params = {}, options = {})
      req = build_request(:delete_request_validator, params)
      req.send_request(options)
    end

    # Deletes a Resource resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] The identifier of the Resource resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #   })
    #
    # @overload delete_resource(params = {})
    # @param [Hash] params ({})
    def delete_resource(params = {}, options = {})
      req = build_request(:delete_resource, params)
      req.send_request(options)
    end

    # Deletes the specified API.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rest_api({
    #     rest_api_id: "String", # required
    #   })
    #
    # @overload delete_rest_api(params = {})
    # @param [Hash] params ({})
    def delete_rest_api(params = {}, options = {})
      req = build_request(:delete_rest_api, params)
      req.send_request(options)
    end

    # Deletes a Stage resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :stage_name
    #   \[Required\] The name of the Stage resource to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stage({
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #   })
    #
    # @overload delete_stage(params = {})
    # @param [Hash] params ({})
    def delete_stage(params = {}, options = {})
      req = build_request(:delete_stage, params)
      req.send_request(options)
    end

    # Deletes a usage plan of a given plan Id.
    #
    # @option params [required, String] :usage_plan_id
    #   \[Required\] The Id of the to-be-deleted usage plan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_usage_plan({
    #     usage_plan_id: "String", # required
    #   })
    #
    # @overload delete_usage_plan(params = {})
    # @param [Hash] params ({})
    def delete_usage_plan(params = {}, options = {})
      req = build_request(:delete_usage_plan, params)
      req.send_request(options)
    end

    # Deletes a usage plan key and remove the underlying API key from the
    # associated usage plan.
    #
    # @option params [required, String] :usage_plan_id
    #   \[Required\] The Id of the UsagePlan resource representing the usage
    #   plan containing the to-be-deleted UsagePlanKey resource representing a
    #   plan customer.
    #
    # @option params [required, String] :key_id
    #   \[Required\] The Id of the UsagePlanKey resource to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_usage_plan_key({
    #     usage_plan_id: "String", # required
    #     key_id: "String", # required
    #   })
    #
    # @overload delete_usage_plan_key(params = {})
    # @param [Hash] params ({})
    def delete_usage_plan_key(params = {}, options = {})
      req = build_request(:delete_usage_plan_key, params)
      req.send_request(options)
    end

    # Deletes an existing VpcLink of a specified identifier.
    #
    # @option params [required, String] :vpc_link_id
    #   \[Required\] The identifier of the VpcLink. It is used in an
    #   Integration to reference this VpcLink.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_link({
    #     vpc_link_id: "String", # required
    #   })
    #
    # @overload delete_vpc_link(params = {})
    # @param [Hash] params ({})
    def delete_vpc_link(params = {}, options = {})
      req = build_request(:delete_vpc_link, params)
      req.send_request(options)
    end

    # Flushes all authorizer cache entries on a stage.
    #
    # @option params [required, String] :rest_api_id
    #   The string identifier of the associated RestApi.
    #
    # @option params [required, String] :stage_name
    #   The name of the stage to flush.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.flush_stage_authorizers_cache({
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #   })
    #
    # @overload flush_stage_authorizers_cache(params = {})
    # @param [Hash] params ({})
    def flush_stage_authorizers_cache(params = {}, options = {})
      req = build_request(:flush_stage_authorizers_cache, params)
      req.send_request(options)
    end

    # Flushes a stage's cache.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :stage_name
    #   \[Required\] The name of the stage to flush its cache.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.flush_stage_cache({
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #   })
    #
    # @overload flush_stage_cache(params = {})
    # @param [Hash] params ({})
    def flush_stage_cache(params = {}, options = {})
      req = build_request(:flush_stage_cache, params)
      req.send_request(options)
    end

    # Generates a ClientCertificate resource.
    #
    # @option params [String] :description
    #   The description of the ClientCertificate.
    #
    # @return [Types::ClientCertificate] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClientCertificate#client_certificate_id #client_certificate_id} => String
    #   * {Types::ClientCertificate#description #description} => String
    #   * {Types::ClientCertificate#pem_encoded_certificate #pem_encoded_certificate} => String
    #   * {Types::ClientCertificate#created_date #created_date} => Time
    #   * {Types::ClientCertificate#expiration_date #expiration_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_client_certificate({
    #     description: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.client_certificate_id #=> String
    #   resp.description #=> String
    #   resp.pem_encoded_certificate #=> String
    #   resp.created_date #=> Time
    #   resp.expiration_date #=> Time
    #
    # @overload generate_client_certificate(params = {})
    # @param [Hash] params ({})
    def generate_client_certificate(params = {}, options = {})
      req = build_request(:generate_client_certificate, params)
      req.send_request(options)
    end

    # Gets information about the current Account resource.
    #
    # @return [Types::Account] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Account#cloudwatch_role_arn #cloudwatch_role_arn} => String
    #   * {Types::Account#throttle_settings #throttle_settings} => Types::ThrottleSettings
    #   * {Types::Account#features #features} => Array&lt;String&gt;
    #   * {Types::Account#api_key_version #api_key_version} => String
    #
    # @example Response structure
    #
    #   resp.cloudwatch_role_arn #=> String
    #   resp.throttle_settings.burst_limit #=> Integer
    #   resp.throttle_settings.rate_limit #=> Float
    #   resp.features #=> Array
    #   resp.features[0] #=> String
    #   resp.api_key_version #=> String
    #
    # @overload get_account(params = {})
    # @param [Hash] params ({})
    def get_account(params = {}, options = {})
      req = build_request(:get_account, params)
      req.send_request(options)
    end

    # Gets information about the current ApiKey resource.
    #
    # @option params [required, String] :api_key
    #   \[Required\] The identifier of the ApiKey resource.
    #
    # @option params [Boolean] :include_value
    #   A boolean flag to specify whether (`true`) or not (`false`) the result
    #   contains the key value.
    #
    # @return [Types::ApiKey] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApiKey#id #id} => String
    #   * {Types::ApiKey#value #value} => String
    #   * {Types::ApiKey#name #name} => String
    #   * {Types::ApiKey#customer_id #customer_id} => String
    #   * {Types::ApiKey#description #description} => String
    #   * {Types::ApiKey#enabled #enabled} => Boolean
    #   * {Types::ApiKey#created_date #created_date} => Time
    #   * {Types::ApiKey#last_updated_date #last_updated_date} => Time
    #   * {Types::ApiKey#stage_keys #stage_keys} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_key({
    #     api_key: "String", # required
    #     include_value: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.value #=> String
    #   resp.name #=> String
    #   resp.customer_id #=> String
    #   resp.description #=> String
    #   resp.enabled #=> Boolean
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #   resp.stage_keys #=> Array
    #   resp.stage_keys[0] #=> String
    #
    # @overload get_api_key(params = {})
    # @param [Hash] params ({})
    def get_api_key(params = {}, options = {})
      req = build_request(:get_api_key, params)
      req.send_request(options)
    end

    # Gets information about the current ApiKeys resource.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @option params [String] :name_query
    #   The name of queried API keys.
    #
    # @option params [String] :customer_id
    #   The identifier of a customer in AWS Marketplace or an external system,
    #   such as a developer portal.
    #
    # @option params [Boolean] :include_values
    #   A boolean flag to specify whether (`true`) or not (`false`) the result
    #   contains key values.
    #
    # @return [Types::ApiKeys] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApiKeys#warnings #warnings} => Array&lt;String&gt;
    #   * {Types::ApiKeys#position #position} => String
    #   * {Types::ApiKeys#items #items} => Array&lt;Types::ApiKey&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_keys({
    #     position: "String",
    #     limit: 1,
    #     name_query: "String",
    #     customer_id: "String",
    #     include_values: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].value #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].customer_id #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].enabled #=> Boolean
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].last_updated_date #=> Time
    #   resp.items[0].stage_keys #=> Array
    #   resp.items[0].stage_keys[0] #=> String
    #
    # @overload get_api_keys(params = {})
    # @param [Hash] params ({})
    def get_api_keys(params = {}, options = {})
      req = build_request(:get_api_keys, params)
      req.send_request(options)
    end

    # Describe an existing Authorizer resource.
    #
    # <div class="seeAlso">
    # [AWS CLI][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizer.html
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :authorizer_id
    #   \[Required\] The identifier of the Authorizer resource.
    #
    # @return [Types::Authorizer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Authorizer#id #id} => String
    #   * {Types::Authorizer#name #name} => String
    #   * {Types::Authorizer#type #type} => String
    #   * {Types::Authorizer#provider_arns #provider_arns} => Array&lt;String&gt;
    #   * {Types::Authorizer#auth_type #auth_type} => String
    #   * {Types::Authorizer#authorizer_uri #authorizer_uri} => String
    #   * {Types::Authorizer#authorizer_credentials #authorizer_credentials} => String
    #   * {Types::Authorizer#identity_source #identity_source} => String
    #   * {Types::Authorizer#identity_validation_expression #identity_validation_expression} => String
    #   * {Types::Authorizer#authorizer_result_ttl_in_seconds #authorizer_result_ttl_in_seconds} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorizer({
    #     rest_api_id: "String", # required
    #     authorizer_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "TOKEN", "REQUEST", "COGNITO_USER_POOLS"
    #   resp.provider_arns #=> Array
    #   resp.provider_arns[0] #=> String
    #   resp.auth_type #=> String
    #   resp.authorizer_uri #=> String
    #   resp.authorizer_credentials #=> String
    #   resp.identity_source #=> String
    #   resp.identity_validation_expression #=> String
    #   resp.authorizer_result_ttl_in_seconds #=> Integer
    #
    # @overload get_authorizer(params = {})
    # @param [Hash] params ({})
    def get_authorizer(params = {}, options = {})
      req = build_request(:get_authorizer, params)
      req.send_request(options)
    end

    # Describe an existing Authorizers resource.
    #
    # <div class="seeAlso">
    # [AWS CLI][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizers.html
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::Authorizers] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Authorizers#position #position} => String
    #   * {Types::Authorizers#items #items} => Array&lt;Types::Authorizer&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorizers({
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].type #=> String, one of "TOKEN", "REQUEST", "COGNITO_USER_POOLS"
    #   resp.items[0].provider_arns #=> Array
    #   resp.items[0].provider_arns[0] #=> String
    #   resp.items[0].auth_type #=> String
    #   resp.items[0].authorizer_uri #=> String
    #   resp.items[0].authorizer_credentials #=> String
    #   resp.items[0].identity_source #=> String
    #   resp.items[0].identity_validation_expression #=> String
    #   resp.items[0].authorizer_result_ttl_in_seconds #=> Integer
    #
    # @overload get_authorizers(params = {})
    # @param [Hash] params ({})
    def get_authorizers(params = {}, options = {})
      req = build_request(:get_authorizers, params)
      req.send_request(options)
    end

    # Describe a BasePathMapping resource.
    #
    # @option params [required, String] :domain_name
    #   \[Required\] The domain name of the BasePathMapping resource to be
    #   described.
    #
    # @option params [required, String] :base_path
    #   \[Required\] The base path name that callers of the API must provide
    #   as part of the URL after the domain name. This value must be unique
    #   for all of the mappings across a single API. Leave this blank if you
    #   do not want callers to specify any base path name after the domain
    #   name.
    #
    # @return [Types::BasePathMapping] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BasePathMapping#base_path #base_path} => String
    #   * {Types::BasePathMapping#rest_api_id #rest_api_id} => String
    #   * {Types::BasePathMapping#stage #stage} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_base_path_mapping({
    #     domain_name: "String", # required
    #     base_path: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.base_path #=> String
    #   resp.rest_api_id #=> String
    #   resp.stage #=> String
    #
    # @overload get_base_path_mapping(params = {})
    # @param [Hash] params ({})
    def get_base_path_mapping(params = {}, options = {})
      req = build_request(:get_base_path_mapping, params)
      req.send_request(options)
    end

    # Represents a collection of BasePathMapping resources.
    #
    # @option params [required, String] :domain_name
    #   \[Required\] The domain name of a BasePathMapping resource.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::BasePathMappings] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BasePathMappings#position #position} => String
    #   * {Types::BasePathMappings#items #items} => Array&lt;Types::BasePathMapping&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_base_path_mappings({
    #     domain_name: "String", # required
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].base_path #=> String
    #   resp.items[0].rest_api_id #=> String
    #   resp.items[0].stage #=> String
    #
    # @overload get_base_path_mappings(params = {})
    # @param [Hash] params ({})
    def get_base_path_mappings(params = {}, options = {})
      req = build_request(:get_base_path_mappings, params)
      req.send_request(options)
    end

    # Gets information about the current ClientCertificate resource.
    #
    # @option params [required, String] :client_certificate_id
    #   \[Required\] The identifier of the ClientCertificate resource to be
    #   described.
    #
    # @return [Types::ClientCertificate] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClientCertificate#client_certificate_id #client_certificate_id} => String
    #   * {Types::ClientCertificate#description #description} => String
    #   * {Types::ClientCertificate#pem_encoded_certificate #pem_encoded_certificate} => String
    #   * {Types::ClientCertificate#created_date #created_date} => Time
    #   * {Types::ClientCertificate#expiration_date #expiration_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_client_certificate({
    #     client_certificate_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.client_certificate_id #=> String
    #   resp.description #=> String
    #   resp.pem_encoded_certificate #=> String
    #   resp.created_date #=> Time
    #   resp.expiration_date #=> Time
    #
    # @overload get_client_certificate(params = {})
    # @param [Hash] params ({})
    def get_client_certificate(params = {}, options = {})
      req = build_request(:get_client_certificate, params)
      req.send_request(options)
    end

    # Gets a collection of ClientCertificate resources.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::ClientCertificates] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClientCertificates#position #position} => String
    #   * {Types::ClientCertificates#items #items} => Array&lt;Types::ClientCertificate&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_client_certificates({
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].client_certificate_id #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].pem_encoded_certificate #=> String
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].expiration_date #=> Time
    #
    # @overload get_client_certificates(params = {})
    # @param [Hash] params ({})
    def get_client_certificates(params = {}, options = {})
      req = build_request(:get_client_certificates, params)
      req.send_request(options)
    end

    # Gets information about a Deployment resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :deployment_id
    #   \[Required\] The identifier of the Deployment resource to get
    #   information about.
    #
    # @option params [Array<String>] :embed
    #   A query parameter to retrieve the specified embedded resources of the
    #   returned Deployment resource in the response. In a REST API call, this
    #   `embed` parameter value is a list of comma-separated strings, as in
    #   `GET
    #   /restapis/\{restapi_id\}/deployments/\{deployment_id\}?embed=var1,var2`.
    #   The SDK and other platform-dependent libraries might use a different
    #   format for the list. Currently, this request supports only retrieval
    #   of the embedded API summary this way. Hence, the parameter value must
    #   be a single-valued list containing only the `"apisummary"` string. For
    #   example, `GET
    #   /restapis/\{restapi_id\}/deployments/\{deployment_id\}?embed=apisummary`.
    #
    # @return [Types::Deployment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Deployment#id #id} => String
    #   * {Types::Deployment#description #description} => String
    #   * {Types::Deployment#created_date #created_date} => Time
    #   * {Types::Deployment#api_summary #api_summary} => Hash&lt;String,Hash&lt;String,Types::MethodSnapshot&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment({
    #     rest_api_id: "String", # required
    #     deployment_id: "String", # required
    #     embed: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.api_summary #=> Hash
    #   resp.api_summary["String"] #=> Hash
    #   resp.api_summary["String"]["String"].authorization_type #=> String
    #   resp.api_summary["String"]["String"].api_key_required #=> Boolean
    #
    # @overload get_deployment(params = {})
    # @param [Hash] params ({})
    def get_deployment(params = {}, options = {})
      req = build_request(:get_deployment, params)
      req.send_request(options)
    end

    # Gets information about a Deployments collection.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::Deployments] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Deployments#position #position} => String
    #   * {Types::Deployments#items #items} => Array&lt;Types::Deployment&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployments({
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].api_summary #=> Hash
    #   resp.items[0].api_summary["String"] #=> Hash
    #   resp.items[0].api_summary["String"]["String"].authorization_type #=> String
    #   resp.items[0].api_summary["String"]["String"].api_key_required #=> Boolean
    #
    # @overload get_deployments(params = {})
    # @param [Hash] params ({})
    def get_deployments(params = {}, options = {})
      req = build_request(:get_deployments, params)
      req.send_request(options)
    end

    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :documentation_part_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @return [Types::DocumentationPart] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DocumentationPart#id #id} => String
    #   * {Types::DocumentationPart#location #location} => Types::DocumentationPartLocation
    #   * {Types::DocumentationPart#properties #properties} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_documentation_part({
    #     rest_api_id: "String", # required
    #     documentation_part_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.location.type #=> String, one of "API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"
    #   resp.location.path #=> String
    #   resp.location.method #=> String
    #   resp.location.status_code #=> String
    #   resp.location.name #=> String
    #   resp.properties #=> String
    #
    # @overload get_documentation_part(params = {})
    # @param [Hash] params ({})
    def get_documentation_part(params = {}, options = {})
      req = build_request(:get_documentation_part, params)
      req.send_request(options)
    end

    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :type
    #   The type of API entities of the to-be-retrieved documentation parts.
    #
    # @option params [String] :name_query
    #   The name of API entities of the to-be-retrieved documentation parts.
    #
    # @option params [String] :path
    #   The path of API entities of the to-be-retrieved documentation parts.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @option params [String] :location_status
    #   The status of the API documentation parts to retrieve. Valid values
    #   are `DOCUMENTED` for retrieving DocumentationPart resources with
    #   content and `UNDOCUMENTED` for DocumentationPart resources without
    #   content.
    #
    # @return [Types::DocumentationParts] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DocumentationParts#position #position} => String
    #   * {Types::DocumentationParts#items #items} => Array&lt;Types::DocumentationPart&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_documentation_parts({
    #     rest_api_id: "String", # required
    #     type: "API", # accepts API, AUTHORIZER, MODEL, RESOURCE, METHOD, PATH_PARAMETER, QUERY_PARAMETER, REQUEST_HEADER, REQUEST_BODY, RESPONSE, RESPONSE_HEADER, RESPONSE_BODY
    #     name_query: "String",
    #     path: "String",
    #     position: "String",
    #     limit: 1,
    #     location_status: "DOCUMENTED", # accepts DOCUMENTED, UNDOCUMENTED
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].location.type #=> String, one of "API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"
    #   resp.items[0].location.path #=> String
    #   resp.items[0].location.method #=> String
    #   resp.items[0].location.status_code #=> String
    #   resp.items[0].location.name #=> String
    #   resp.items[0].properties #=> String
    #
    # @overload get_documentation_parts(params = {})
    # @param [Hash] params ({})
    def get_documentation_parts(params = {}, options = {})
      req = build_request(:get_documentation_parts, params)
      req.send_request(options)
    end

    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :documentation_version
    #   \[Required\] The version identifier of the to-be-retrieved
    #   documentation snapshot.
    #
    # @return [Types::DocumentationVersion] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DocumentationVersion#version #version} => String
    #   * {Types::DocumentationVersion#created_date #created_date} => Time
    #   * {Types::DocumentationVersion#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_documentation_version({
    #     rest_api_id: "String", # required
    #     documentation_version: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.version #=> String
    #   resp.created_date #=> Time
    #   resp.description #=> String
    #
    # @overload get_documentation_version(params = {})
    # @param [Hash] params ({})
    def get_documentation_version(params = {}, options = {})
      req = build_request(:get_documentation_version, params)
      req.send_request(options)
    end

    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::DocumentationVersions] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DocumentationVersions#position #position} => String
    #   * {Types::DocumentationVersions#items #items} => Array&lt;Types::DocumentationVersion&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_documentation_versions({
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].version #=> String
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].description #=> String
    #
    # @overload get_documentation_versions(params = {})
    # @param [Hash] params ({})
    def get_documentation_versions(params = {}, options = {})
      req = build_request(:get_documentation_versions, params)
      req.send_request(options)
    end

    # Represents a domain name that is contained in a simpler, more
    # intuitive URL that can be called.
    #
    # @option params [required, String] :domain_name
    #   \[Required\] The name of the DomainName resource.
    #
    # @return [Types::DomainName] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DomainName#domain_name #domain_name} => String
    #   * {Types::DomainName#certificate_name #certificate_name} => String
    #   * {Types::DomainName#certificate_arn #certificate_arn} => String
    #   * {Types::DomainName#certificate_upload_date #certificate_upload_date} => Time
    #   * {Types::DomainName#regional_domain_name #regional_domain_name} => String
    #   * {Types::DomainName#regional_hosted_zone_id #regional_hosted_zone_id} => String
    #   * {Types::DomainName#regional_certificate_name #regional_certificate_name} => String
    #   * {Types::DomainName#regional_certificate_arn #regional_certificate_arn} => String
    #   * {Types::DomainName#distribution_domain_name #distribution_domain_name} => String
    #   * {Types::DomainName#distribution_hosted_zone_id #distribution_hosted_zone_id} => String
    #   * {Types::DomainName#endpoint_configuration #endpoint_configuration} => Types::EndpointConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_name({
    #     domain_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.certificate_name #=> String
    #   resp.certificate_arn #=> String
    #   resp.certificate_upload_date #=> Time
    #   resp.regional_domain_name #=> String
    #   resp.regional_hosted_zone_id #=> String
    #   resp.regional_certificate_name #=> String
    #   resp.regional_certificate_arn #=> String
    #   resp.distribution_domain_name #=> String
    #   resp.distribution_hosted_zone_id #=> String
    #   resp.endpoint_configuration.types #=> Array
    #   resp.endpoint_configuration.types[0] #=> String, one of "REGIONAL", "EDGE", "PRIVATE"
    #
    # @overload get_domain_name(params = {})
    # @param [Hash] params ({})
    def get_domain_name(params = {}, options = {})
      req = build_request(:get_domain_name, params)
      req.send_request(options)
    end

    # Represents a collection of DomainName resources.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::DomainNames] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DomainNames#position #position} => String
    #   * {Types::DomainNames#items #items} => Array&lt;Types::DomainName&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_names({
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].domain_name #=> String
    #   resp.items[0].certificate_name #=> String
    #   resp.items[0].certificate_arn #=> String
    #   resp.items[0].certificate_upload_date #=> Time
    #   resp.items[0].regional_domain_name #=> String
    #   resp.items[0].regional_hosted_zone_id #=> String
    #   resp.items[0].regional_certificate_name #=> String
    #   resp.items[0].regional_certificate_arn #=> String
    #   resp.items[0].distribution_domain_name #=> String
    #   resp.items[0].distribution_hosted_zone_id #=> String
    #   resp.items[0].endpoint_configuration.types #=> Array
    #   resp.items[0].endpoint_configuration.types[0] #=> String, one of "REGIONAL", "EDGE", "PRIVATE"
    #
    # @overload get_domain_names(params = {})
    # @param [Hash] params ({})
    def get_domain_names(params = {}, options = {})
      req = build_request(:get_domain_names, params)
      req.send_request(options)
    end

    # Exports a deployed version of a RestApi in a specified format.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :stage_name
    #   \[Required\] The name of the Stage that will be exported.
    #
    # @option params [required, String] :export_type
    #   \[Required\] The type of export. Currently only 'swagger' is
    #   supported.
    #
    # @option params [Hash<String,String>] :parameters
    #   A key-value map of query string parameters that specify properties of
    #   the export, depending on the requested `exportType`. For `exportType`
    #   `swagger`, any combination of the following parameters are supported:
    #   `extensions='integrations'` or `extensions='apigateway'` will export
    #   the API with x-amazon-apigateway-integration extensions.
    #   `extensions='authorizers'` will export the API with
    #   x-amazon-apigateway-authorizer extensions. `postman` will export the
    #   API with Postman extensions, allowing for import to the Postman tool
    #
    # @option params [String] :accepts
    #   The content-type of the export, for example `application/json`.
    #   Currently `application/json` and `application/yaml` are supported for
    #   `exportType` of `swagger`. This should be specified in the `Accept`
    #   header for direct API requests.
    #
    # @return [Types::ExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportResponse#content_type #content_type} => String
    #   * {Types::ExportResponse#content_disposition #content_disposition} => String
    #   * {Types::ExportResponse#body #body} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_export({
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #     export_type: "String", # required
    #     parameters: {
    #       "String" => "String",
    #     },
    #     accepts: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.content_disposition #=> String
    #   resp.body #=> String
    #
    # @overload get_export(params = {})
    # @param [Hash] params ({})
    def get_export(params = {}, options = {})
      req = build_request(:get_export, params)
      req.send_request(options)
    end

    # Gets a GatewayResponse of a specified response type on the given
    # RestApi.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :response_type
    #   \[Required\] The response type of the associated GatewayResponse.
    #   Valid values are
    #   * ACCESS\_DENIED
    #   * API\_CONFIGURATION\_ERROR
    #   * AUTHORIZER\_FAILURE
    #   * AUTHORIZER\_CONFIGURATION\_ERROR
    #   * BAD\_REQUEST\_PARAMETERS
    #   * BAD\_REQUEST\_BODY
    #   * DEFAULT\_4XX
    #   * DEFAULT\_5XX
    #   * EXPIRED\_TOKEN
    #   * INVALID\_SIGNATURE
    #   * INTEGRATION\_FAILURE
    #   * INTEGRATION\_TIMEOUT
    #   * INVALID\_API\_KEY
    #   * MISSING\_AUTHENTICATION\_TOKEN
    #   * QUOTA\_EXCEEDED
    #   * REQUEST\_TOO\_LARGE
    #   * RESOURCE\_NOT\_FOUND
    #   * THROTTLED
    #   * UNAUTHORIZED
    #   * UNSUPPORTED\_MEDIA\_TYPE
    #
    # @return [Types::GatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GatewayResponse#response_type #response_type} => String
    #   * {Types::GatewayResponse#status_code #status_code} => String
    #   * {Types::GatewayResponse#response_parameters #response_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GatewayResponse#response_templates #response_templates} => Hash&lt;String,String&gt;
    #   * {Types::GatewayResponse#default_response #default_response} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway_response({
    #     rest_api_id: "String", # required
    #     response_type: "DEFAULT_4XX", # required, accepts DEFAULT_4XX, DEFAULT_5XX, RESOURCE_NOT_FOUND, UNAUTHORIZED, INVALID_API_KEY, ACCESS_DENIED, AUTHORIZER_FAILURE, AUTHORIZER_CONFIGURATION_ERROR, INVALID_SIGNATURE, EXPIRED_TOKEN, MISSING_AUTHENTICATION_TOKEN, INTEGRATION_FAILURE, INTEGRATION_TIMEOUT, API_CONFIGURATION_ERROR, UNSUPPORTED_MEDIA_TYPE, BAD_REQUEST_PARAMETERS, BAD_REQUEST_BODY, REQUEST_TOO_LARGE, THROTTLED, QUOTA_EXCEEDED
    #   })
    #
    # @example Response structure
    #
    #   resp.response_type #=> String, one of "DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED"
    #   resp.status_code #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["String"] #=> String
    #   resp.response_templates #=> Hash
    #   resp.response_templates["String"] #=> String
    #   resp.default_response #=> Boolean
    #
    # @overload get_gateway_response(params = {})
    # @param [Hash] params ({})
    def get_gateway_response(params = {}, options = {})
      req = build_request(:get_gateway_response, params)
      req.send_request(options)
    end

    # Gets the GatewayResponses collection on the given RestApi. If an API
    # developer has not added any definitions for gateway responses, the
    # result will be the API Gateway-generated default GatewayResponses
    # collection for the supported response types.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set. The
    #   GatewayResponse collection does not support pagination and the
    #   position does not apply here.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500. The GatewayResponses collection does
    #   not support pagination and the limit does not apply here.
    #
    # @return [Types::GatewayResponses] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GatewayResponses#position #position} => String
    #   * {Types::GatewayResponses#items #items} => Array&lt;Types::GatewayResponse&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway_responses({
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].response_type #=> String, one of "DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED"
    #   resp.items[0].status_code #=> String
    #   resp.items[0].response_parameters #=> Hash
    #   resp.items[0].response_parameters["String"] #=> String
    #   resp.items[0].response_templates #=> Hash
    #   resp.items[0].response_templates["String"] #=> String
    #   resp.items[0].default_response #=> Boolean
    #
    # @overload get_gateway_responses(params = {})
    # @param [Hash] params ({})
    def get_gateway_responses(params = {}, options = {})
      req = build_request(:get_gateway_responses, params)
      req.send_request(options)
    end

    # Get the integration settings.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] Specifies a get integration request's resource
    #   identifier
    #
    # @option params [required, String] :http_method
    #   \[Required\] Specifies a get integration request's HTTP method.
    #
    # @return [Types::Integration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Integration#type #type} => String
    #   * {Types::Integration#http_method #http_method} => String
    #   * {Types::Integration#uri #uri} => String
    #   * {Types::Integration#connection_type #connection_type} => String
    #   * {Types::Integration#connection_id #connection_id} => String
    #   * {Types::Integration#credentials #credentials} => String
    #   * {Types::Integration#request_parameters #request_parameters} => Hash&lt;String,String&gt;
    #   * {Types::Integration#request_templates #request_templates} => Hash&lt;String,String&gt;
    #   * {Types::Integration#passthrough_behavior #passthrough_behavior} => String
    #   * {Types::Integration#content_handling #content_handling} => String
    #   * {Types::Integration#timeout_in_millis #timeout_in_millis} => Integer
    #   * {Types::Integration#cache_namespace #cache_namespace} => String
    #   * {Types::Integration#cache_key_parameters #cache_key_parameters} => Array&lt;String&gt;
    #   * {Types::Integration#integration_responses #integration_responses} => Hash&lt;String,Types::IntegrationResponse&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.type #=> String, one of "HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.http_method #=> String
    #   resp.uri #=> String
    #   resp.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.connection_id #=> String
    #   resp.credentials #=> String
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["String"] #=> String
    #   resp.request_templates #=> Hash
    #   resp.request_templates["String"] #=> String
    #   resp.passthrough_behavior #=> String
    #   resp.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.timeout_in_millis #=> Integer
    #   resp.cache_namespace #=> String
    #   resp.cache_key_parameters #=> Array
    #   resp.cache_key_parameters[0] #=> String
    #   resp.integration_responses #=> Hash
    #   resp.integration_responses["String"].status_code #=> String
    #   resp.integration_responses["String"].selection_pattern #=> String
    #   resp.integration_responses["String"].response_parameters #=> Hash
    #   resp.integration_responses["String"].response_parameters["String"] #=> String
    #   resp.integration_responses["String"].response_templates #=> Hash
    #   resp.integration_responses["String"].response_templates["String"] #=> String
    #   resp.integration_responses["String"].content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #
    # @overload get_integration(params = {})
    # @param [Hash] params ({})
    def get_integration(params = {}, options = {})
      req = build_request(:get_integration, params)
      req.send_request(options)
    end

    # Represents a get integration response.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] Specifies a get integration response request's resource
    #   identifier.
    #
    # @option params [required, String] :http_method
    #   \[Required\] Specifies a get integration response request's HTTP
    #   method.
    #
    # @option params [required, String] :status_code
    #   \[Required\] Specifies a get integration response request's status
    #   code.
    #
    # @return [Types::IntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IntegrationResponse#status_code #status_code} => String
    #   * {Types::IntegrationResponse#selection_pattern #selection_pattern} => String
    #   * {Types::IntegrationResponse#response_parameters #response_parameters} => Hash&lt;String,String&gt;
    #   * {Types::IntegrationResponse#response_templates #response_templates} => Hash&lt;String,String&gt;
    #   * {Types::IntegrationResponse#content_handling #content_handling} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_integration_response({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> String
    #   resp.selection_pattern #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["String"] #=> String
    #   resp.response_templates #=> Hash
    #   resp.response_templates["String"] #=> String
    #   resp.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #
    # @overload get_integration_response(params = {})
    # @param [Hash] params ({})
    def get_integration_response(params = {}, options = {})
      req = build_request(:get_integration_response, params)
      req.send_request(options)
    end

    # Describe an existing Method resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] The Resource identifier for the Method resource.
    #
    # @option params [required, String] :http_method
    #   \[Required\] Specifies the method request's HTTP method type.
    #
    # @return [Types::Method] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Method#http_method #http_method} => String
    #   * {Types::Method#authorization_type #authorization_type} => String
    #   * {Types::Method#authorizer_id #authorizer_id} => String
    #   * {Types::Method#api_key_required #api_key_required} => Boolean
    #   * {Types::Method#request_validator_id #request_validator_id} => String
    #   * {Types::Method#operation_name #operation_name} => String
    #   * {Types::Method#request_parameters #request_parameters} => Hash&lt;String,Boolean&gt;
    #   * {Types::Method#request_models #request_models} => Hash&lt;String,String&gt;
    #   * {Types::Method#method_responses #method_responses} => Hash&lt;String,Types::MethodResponse&gt;
    #   * {Types::Method#method_integration #method_integration} => Types::Integration
    #   * {Types::Method#authorization_scopes #authorization_scopes} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_method({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.http_method #=> String
    #   resp.authorization_type #=> String
    #   resp.authorizer_id #=> String
    #   resp.api_key_required #=> Boolean
    #   resp.request_validator_id #=> String
    #   resp.operation_name #=> String
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["String"] #=> Boolean
    #   resp.request_models #=> Hash
    #   resp.request_models["String"] #=> String
    #   resp.method_responses #=> Hash
    #   resp.method_responses["String"].status_code #=> String
    #   resp.method_responses["String"].response_parameters #=> Hash
    #   resp.method_responses["String"].response_parameters["String"] #=> Boolean
    #   resp.method_responses["String"].response_models #=> Hash
    #   resp.method_responses["String"].response_models["String"] #=> String
    #   resp.method_integration.type #=> String, one of "HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.method_integration.http_method #=> String
    #   resp.method_integration.uri #=> String
    #   resp.method_integration.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.method_integration.connection_id #=> String
    #   resp.method_integration.credentials #=> String
    #   resp.method_integration.request_parameters #=> Hash
    #   resp.method_integration.request_parameters["String"] #=> String
    #   resp.method_integration.request_templates #=> Hash
    #   resp.method_integration.request_templates["String"] #=> String
    #   resp.method_integration.passthrough_behavior #=> String
    #   resp.method_integration.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.method_integration.timeout_in_millis #=> Integer
    #   resp.method_integration.cache_namespace #=> String
    #   resp.method_integration.cache_key_parameters #=> Array
    #   resp.method_integration.cache_key_parameters[0] #=> String
    #   resp.method_integration.integration_responses #=> Hash
    #   resp.method_integration.integration_responses["String"].status_code #=> String
    #   resp.method_integration.integration_responses["String"].selection_pattern #=> String
    #   resp.method_integration.integration_responses["String"].response_parameters #=> Hash
    #   resp.method_integration.integration_responses["String"].response_parameters["String"] #=> String
    #   resp.method_integration.integration_responses["String"].response_templates #=> Hash
    #   resp.method_integration.integration_responses["String"].response_templates["String"] #=> String
    #   resp.method_integration.integration_responses["String"].content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.authorization_scopes #=> Array
    #   resp.authorization_scopes[0] #=> String
    #
    # @overload get_method(params = {})
    # @param [Hash] params ({})
    def get_method(params = {}, options = {})
      req = build_request(:get_method, params)
      req.send_request(options)
    end

    # Describes a MethodResponse resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] The Resource identifier for the MethodResponse resource.
    #
    # @option params [required, String] :http_method
    #   \[Required\] The HTTP verb of the Method resource.
    #
    # @option params [required, String] :status_code
    #   \[Required\] The status code for the MethodResponse resource.
    #
    # @return [Types::MethodResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MethodResponse#status_code #status_code} => String
    #   * {Types::MethodResponse#response_parameters #response_parameters} => Hash&lt;String,Boolean&gt;
    #   * {Types::MethodResponse#response_models #response_models} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_method_response({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["String"] #=> Boolean
    #   resp.response_models #=> Hash
    #   resp.response_models["String"] #=> String
    #
    # @overload get_method_response(params = {})
    # @param [Hash] params ({})
    def get_method_response(params = {}, options = {})
      req = build_request(:get_method_response, params)
      req.send_request(options)
    end

    # Describes an existing model defined for a RestApi resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The RestApi identifier under which the Model exists.
    #
    # @option params [required, String] :model_name
    #   \[Required\] The name of the model as an identifier.
    #
    # @option params [Boolean] :flatten
    #   A query parameter of a Boolean value to resolve (`true`) all external
    #   model references and returns a flattened model schema or not (`false`)
    #   The default is `false`.
    #
    # @return [Types::Model] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Model#id #id} => String
    #   * {Types::Model#name #name} => String
    #   * {Types::Model#description #description} => String
    #   * {Types::Model#schema #schema} => String
    #   * {Types::Model#content_type #content_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model({
    #     rest_api_id: "String", # required
    #     model_name: "String", # required
    #     flatten: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.schema #=> String
    #   resp.content_type #=> String
    #
    # @overload get_model(params = {})
    # @param [Hash] params ({})
    def get_model(params = {}, options = {})
      req = build_request(:get_model, params)
      req.send_request(options)
    end

    # Generates a sample mapping template that can be used to transform a
    # payload into the structure of a model.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :model_name
    #   \[Required\] The name of the model for which to generate a template.
    #
    # @return [Types::Template] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Template#value #value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_template({
    #     rest_api_id: "String", # required
    #     model_name: "String", # required
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

    # Describes existing Models defined for a RestApi resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::Models] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Models#position #position} => String
    #   * {Types::Models#items #items} => Array&lt;Types::Model&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_models({
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].schema #=> String
    #   resp.items[0].content_type #=> String
    #
    # @overload get_models(params = {})
    # @param [Hash] params ({})
    def get_models(params = {}, options = {})
      req = build_request(:get_models, params)
      req.send_request(options)
    end

    # Gets a RequestValidator of a given RestApi.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :request_validator_id
    #   \[Required\] The identifier of the RequestValidator to be retrieved.
    #
    # @return [Types::RequestValidator] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestValidator#id #id} => String
    #   * {Types::RequestValidator#name #name} => String
    #   * {Types::RequestValidator#validate_request_body #validate_request_body} => Boolean
    #   * {Types::RequestValidator#validate_request_parameters #validate_request_parameters} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_request_validator({
    #     rest_api_id: "String", # required
    #     request_validator_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.validate_request_body #=> Boolean
    #   resp.validate_request_parameters #=> Boolean
    #
    # @overload get_request_validator(params = {})
    # @param [Hash] params ({})
    def get_request_validator(params = {}, options = {})
      req = build_request(:get_request_validator, params)
      req.send_request(options)
    end

    # Gets the RequestValidators collection of a given RestApi.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::RequestValidators] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestValidators#position #position} => String
    #   * {Types::RequestValidators#items #items} => Array&lt;Types::RequestValidator&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_request_validators({
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].validate_request_body #=> Boolean
    #   resp.items[0].validate_request_parameters #=> Boolean
    #
    # @overload get_request_validators(params = {})
    # @param [Hash] params ({})
    def get_request_validators(params = {}, options = {})
      req = build_request(:get_request_validators, params)
      req.send_request(options)
    end

    # Lists information about a resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] The identifier for the Resource resource.
    #
    # @option params [Array<String>] :embed
    #   A query parameter to retrieve the specified resources embedded in the
    #   returned Resource representation in the response. This `embed`
    #   parameter value is a list of comma-separated strings. Currently, the
    #   request supports only retrieval of the embedded Method resources this
    #   way. The query parameter value must be a single-valued list and
    #   contain the `"methods"` string. For example, `GET
    #   /restapis/\{restapi_id\}/resources/\{resource_id\}?embed=methods`.
    #
    # @return [Types::Resource] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Resource#id #id} => String
    #   * {Types::Resource#parent_id #parent_id} => String
    #   * {Types::Resource#path_part #path_part} => String
    #   * {Types::Resource#path #path} => String
    #   * {Types::Resource#resource_methods #resource_methods} => Hash&lt;String,Types::Method&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     embed: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.parent_id #=> String
    #   resp.path_part #=> String
    #   resp.path #=> String
    #   resp.resource_methods #=> Hash
    #   resp.resource_methods["String"].http_method #=> String
    #   resp.resource_methods["String"].authorization_type #=> String
    #   resp.resource_methods["String"].authorizer_id #=> String
    #   resp.resource_methods["String"].api_key_required #=> Boolean
    #   resp.resource_methods["String"].request_validator_id #=> String
    #   resp.resource_methods["String"].operation_name #=> String
    #   resp.resource_methods["String"].request_parameters #=> Hash
    #   resp.resource_methods["String"].request_parameters["String"] #=> Boolean
    #   resp.resource_methods["String"].request_models #=> Hash
    #   resp.resource_methods["String"].request_models["String"] #=> String
    #   resp.resource_methods["String"].method_responses #=> Hash
    #   resp.resource_methods["String"].method_responses["String"].status_code #=> String
    #   resp.resource_methods["String"].method_responses["String"].response_parameters #=> Hash
    #   resp.resource_methods["String"].method_responses["String"].response_parameters["String"] #=> Boolean
    #   resp.resource_methods["String"].method_responses["String"].response_models #=> Hash
    #   resp.resource_methods["String"].method_responses["String"].response_models["String"] #=> String
    #   resp.resource_methods["String"].method_integration.type #=> String, one of "HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.resource_methods["String"].method_integration.http_method #=> String
    #   resp.resource_methods["String"].method_integration.uri #=> String
    #   resp.resource_methods["String"].method_integration.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.resource_methods["String"].method_integration.connection_id #=> String
    #   resp.resource_methods["String"].method_integration.credentials #=> String
    #   resp.resource_methods["String"].method_integration.request_parameters #=> Hash
    #   resp.resource_methods["String"].method_integration.request_parameters["String"] #=> String
    #   resp.resource_methods["String"].method_integration.request_templates #=> Hash
    #   resp.resource_methods["String"].method_integration.request_templates["String"] #=> String
    #   resp.resource_methods["String"].method_integration.passthrough_behavior #=> String
    #   resp.resource_methods["String"].method_integration.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.resource_methods["String"].method_integration.timeout_in_millis #=> Integer
    #   resp.resource_methods["String"].method_integration.cache_namespace #=> String
    #   resp.resource_methods["String"].method_integration.cache_key_parameters #=> Array
    #   resp.resource_methods["String"].method_integration.cache_key_parameters[0] #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses #=> Hash
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].status_code #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].selection_pattern #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_parameters #=> Hash
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_parameters["String"] #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_templates #=> Hash
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_templates["String"] #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.resource_methods["String"].authorization_scopes #=> Array
    #   resp.resource_methods["String"].authorization_scopes[0] #=> String
    #
    # @overload get_resource(params = {})
    # @param [Hash] params ({})
    def get_resource(params = {}, options = {})
      req = build_request(:get_resource, params)
      req.send_request(options)
    end

    # Lists information about a collection of Resource resources.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @option params [Array<String>] :embed
    #   A query parameter used to retrieve the specified resources embedded in
    #   the returned Resources resource in the response. This `embed`
    #   parameter value is a list of comma-separated strings. Currently, the
    #   request supports only retrieval of the embedded Method resources this
    #   way. The query parameter value must be a single-valued list and
    #   contain the `"methods"` string. For example, `GET
    #   /restapis/\{restapi_id\}/resources?embed=methods`.
    #
    # @return [Types::Resources] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Resources#position #position} => String
    #   * {Types::Resources#items #items} => Array&lt;Types::Resource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resources({
    #     rest_api_id: "String", # required
    #     position: "String",
    #     limit: 1,
    #     embed: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].parent_id #=> String
    #   resp.items[0].path_part #=> String
    #   resp.items[0].path #=> String
    #   resp.items[0].resource_methods #=> Hash
    #   resp.items[0].resource_methods["String"].http_method #=> String
    #   resp.items[0].resource_methods["String"].authorization_type #=> String
    #   resp.items[0].resource_methods["String"].authorizer_id #=> String
    #   resp.items[0].resource_methods["String"].api_key_required #=> Boolean
    #   resp.items[0].resource_methods["String"].request_validator_id #=> String
    #   resp.items[0].resource_methods["String"].operation_name #=> String
    #   resp.items[0].resource_methods["String"].request_parameters #=> Hash
    #   resp.items[0].resource_methods["String"].request_parameters["String"] #=> Boolean
    #   resp.items[0].resource_methods["String"].request_models #=> Hash
    #   resp.items[0].resource_methods["String"].request_models["String"] #=> String
    #   resp.items[0].resource_methods["String"].method_responses #=> Hash
    #   resp.items[0].resource_methods["String"].method_responses["String"].status_code #=> String
    #   resp.items[0].resource_methods["String"].method_responses["String"].response_parameters #=> Hash
    #   resp.items[0].resource_methods["String"].method_responses["String"].response_parameters["String"] #=> Boolean
    #   resp.items[0].resource_methods["String"].method_responses["String"].response_models #=> Hash
    #   resp.items[0].resource_methods["String"].method_responses["String"].response_models["String"] #=> String
    #   resp.items[0].resource_methods["String"].method_integration.type #=> String, one of "HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.items[0].resource_methods["String"].method_integration.http_method #=> String
    #   resp.items[0].resource_methods["String"].method_integration.uri #=> String
    #   resp.items[0].resource_methods["String"].method_integration.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.items[0].resource_methods["String"].method_integration.connection_id #=> String
    #   resp.items[0].resource_methods["String"].method_integration.credentials #=> String
    #   resp.items[0].resource_methods["String"].method_integration.request_parameters #=> Hash
    #   resp.items[0].resource_methods["String"].method_integration.request_parameters["String"] #=> String
    #   resp.items[0].resource_methods["String"].method_integration.request_templates #=> Hash
    #   resp.items[0].resource_methods["String"].method_integration.request_templates["String"] #=> String
    #   resp.items[0].resource_methods["String"].method_integration.passthrough_behavior #=> String
    #   resp.items[0].resource_methods["String"].method_integration.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.items[0].resource_methods["String"].method_integration.timeout_in_millis #=> Integer
    #   resp.items[0].resource_methods["String"].method_integration.cache_namespace #=> String
    #   resp.items[0].resource_methods["String"].method_integration.cache_key_parameters #=> Array
    #   resp.items[0].resource_methods["String"].method_integration.cache_key_parameters[0] #=> String
    #   resp.items[0].resource_methods["String"].method_integration.integration_responses #=> Hash
    #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].status_code #=> String
    #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].selection_pattern #=> String
    #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].response_parameters #=> Hash
    #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].response_parameters["String"] #=> String
    #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].response_templates #=> Hash
    #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].response_templates["String"] #=> String
    #   resp.items[0].resource_methods["String"].method_integration.integration_responses["String"].content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.items[0].resource_methods["String"].authorization_scopes #=> Array
    #   resp.items[0].resource_methods["String"].authorization_scopes[0] #=> String
    #
    # @overload get_resources(params = {})
    # @param [Hash] params ({})
    def get_resources(params = {}, options = {})
      req = build_request(:get_resources, params)
      req.send_request(options)
    end

    # Lists the RestApi resource in the collection.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @return [Types::RestApi] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestApi#id #id} => String
    #   * {Types::RestApi#name #name} => String
    #   * {Types::RestApi#description #description} => String
    #   * {Types::RestApi#created_date #created_date} => Time
    #   * {Types::RestApi#version #version} => String
    #   * {Types::RestApi#warnings #warnings} => Array&lt;String&gt;
    #   * {Types::RestApi#binary_media_types #binary_media_types} => Array&lt;String&gt;
    #   * {Types::RestApi#minimum_compression_size #minimum_compression_size} => Integer
    #   * {Types::RestApi#api_key_source #api_key_source} => String
    #   * {Types::RestApi#endpoint_configuration #endpoint_configuration} => Types::EndpointConfiguration
    #   * {Types::RestApi#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rest_api({
    #     rest_api_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.version #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #   resp.binary_media_types #=> Array
    #   resp.binary_media_types[0] #=> String
    #   resp.minimum_compression_size #=> Integer
    #   resp.api_key_source #=> String, one of "HEADER", "AUTHORIZER"
    #   resp.endpoint_configuration.types #=> Array
    #   resp.endpoint_configuration.types[0] #=> String, one of "REGIONAL", "EDGE", "PRIVATE"
    #   resp.policy #=> String
    #
    # @overload get_rest_api(params = {})
    # @param [Hash] params ({})
    def get_rest_api(params = {}, options = {})
      req = build_request(:get_rest_api, params)
      req.send_request(options)
    end

    # Lists the RestApis resources for your collection.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::RestApis] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestApis#position #position} => String
    #   * {Types::RestApis#items #items} => Array&lt;Types::RestApi&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rest_apis({
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].created_date #=> Time
    #   resp.items[0].version #=> String
    #   resp.items[0].warnings #=> Array
    #   resp.items[0].warnings[0] #=> String
    #   resp.items[0].binary_media_types #=> Array
    #   resp.items[0].binary_media_types[0] #=> String
    #   resp.items[0].minimum_compression_size #=> Integer
    #   resp.items[0].api_key_source #=> String, one of "HEADER", "AUTHORIZER"
    #   resp.items[0].endpoint_configuration.types #=> Array
    #   resp.items[0].endpoint_configuration.types[0] #=> String, one of "REGIONAL", "EDGE", "PRIVATE"
    #   resp.items[0].policy #=> String
    #
    # @overload get_rest_apis(params = {})
    # @param [Hash] params ({})
    def get_rest_apis(params = {}, options = {})
      req = build_request(:get_rest_apis, params)
      req.send_request(options)
    end

    # Generates a client SDK for a RestApi and Stage.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :stage_name
    #   \[Required\] The name of the Stage that the SDK will use.
    #
    # @option params [required, String] :sdk_type
    #   \[Required\] The language for the generated SDK. Currently `java`,
    #   `javascript`, `android`, `objectivec` (for iOS), `swift` (for iOS),
    #   and `ruby` are supported.
    #
    # @option params [Hash<String,String>] :parameters
    #   A string-to-string key-value map of query parameters
    #   `sdkType`-dependent properties of the SDK. For `sdkType` of
    #   `objectivec` or `swift`, a parameter named `classPrefix` is required.
    #   For `sdkType` of `android`, parameters named `groupId`, `artifactId`,
    #   `artifactVersion`, and `invokerPackage` are required. For `sdkType` of
    #   `java`, parameters named `serviceName` and `javaPackageName` are
    #   required.
    #
    # @return [Types::SdkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SdkResponse#content_type #content_type} => String
    #   * {Types::SdkResponse#content_disposition #content_disposition} => String
    #   * {Types::SdkResponse#body #body} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sdk({
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #     sdk_type: "String", # required
    #     parameters: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.content_disposition #=> String
    #   resp.body #=> String
    #
    # @overload get_sdk(params = {})
    # @param [Hash] params ({})
    def get_sdk(params = {}, options = {})
      req = build_request(:get_sdk, params)
      req.send_request(options)
    end

    # @option params [required, String] :id
    #   \[Required\] The identifier of the queried SdkType instance.
    #
    # @return [Types::SdkType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SdkType#id #id} => String
    #   * {Types::SdkType#friendly_name #friendly_name} => String
    #   * {Types::SdkType#description #description} => String
    #   * {Types::SdkType#configuration_properties #configuration_properties} => Array&lt;Types::SdkConfigurationProperty&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sdk_type({
    #     id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.friendly_name #=> String
    #   resp.description #=> String
    #   resp.configuration_properties #=> Array
    #   resp.configuration_properties[0].name #=> String
    #   resp.configuration_properties[0].friendly_name #=> String
    #   resp.configuration_properties[0].description #=> String
    #   resp.configuration_properties[0].required #=> Boolean
    #   resp.configuration_properties[0].default_value #=> String
    #
    # @overload get_sdk_type(params = {})
    # @param [Hash] params ({})
    def get_sdk_type(params = {}, options = {})
      req = build_request(:get_sdk_type, params)
      req.send_request(options)
    end

    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::SdkTypes] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SdkTypes#position #position} => String
    #   * {Types::SdkTypes#items #items} => Array&lt;Types::SdkType&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sdk_types({
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].friendly_name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].configuration_properties #=> Array
    #   resp.items[0].configuration_properties[0].name #=> String
    #   resp.items[0].configuration_properties[0].friendly_name #=> String
    #   resp.items[0].configuration_properties[0].description #=> String
    #   resp.items[0].configuration_properties[0].required #=> Boolean
    #   resp.items[0].configuration_properties[0].default_value #=> String
    #
    # @overload get_sdk_types(params = {})
    # @param [Hash] params ({})
    def get_sdk_types(params = {}, options = {})
      req = build_request(:get_sdk_types, params)
      req.send_request(options)
    end

    # Gets information about a Stage resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :stage_name
    #   \[Required\] The name of the Stage resource to get information about.
    #
    # @return [Types::Stage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Stage#deployment_id #deployment_id} => String
    #   * {Types::Stage#client_certificate_id #client_certificate_id} => String
    #   * {Types::Stage#stage_name #stage_name} => String
    #   * {Types::Stage#description #description} => String
    #   * {Types::Stage#cache_cluster_enabled #cache_cluster_enabled} => Boolean
    #   * {Types::Stage#cache_cluster_size #cache_cluster_size} => String
    #   * {Types::Stage#cache_cluster_status #cache_cluster_status} => String
    #   * {Types::Stage#method_settings #method_settings} => Hash&lt;String,Types::MethodSetting&gt;
    #   * {Types::Stage#variables #variables} => Hash&lt;String,String&gt;
    #   * {Types::Stage#documentation_version #documentation_version} => String
    #   * {Types::Stage#access_log_settings #access_log_settings} => Types::AccessLogSettings
    #   * {Types::Stage#canary_settings #canary_settings} => Types::CanarySettings
    #   * {Types::Stage#tracing_enabled #tracing_enabled} => Boolean
    #   * {Types::Stage#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::Stage#created_date #created_date} => Time
    #   * {Types::Stage#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stage({
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_id #=> String
    #   resp.client_certificate_id #=> String
    #   resp.stage_name #=> String
    #   resp.description #=> String
    #   resp.cache_cluster_enabled #=> Boolean
    #   resp.cache_cluster_size #=> String, one of "0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"
    #   resp.cache_cluster_status #=> String, one of "CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"
    #   resp.method_settings #=> Hash
    #   resp.method_settings["String"].metrics_enabled #=> Boolean
    #   resp.method_settings["String"].logging_level #=> String
    #   resp.method_settings["String"].data_trace_enabled #=> Boolean
    #   resp.method_settings["String"].throttling_burst_limit #=> Integer
    #   resp.method_settings["String"].throttling_rate_limit #=> Float
    #   resp.method_settings["String"].caching_enabled #=> Boolean
    #   resp.method_settings["String"].cache_ttl_in_seconds #=> Integer
    #   resp.method_settings["String"].cache_data_encrypted #=> Boolean
    #   resp.method_settings["String"].require_authorization_for_cache_control #=> Boolean
    #   resp.method_settings["String"].unauthorized_cache_control_header_strategy #=> String, one of "FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"
    #   resp.variables #=> Hash
    #   resp.variables["String"] #=> String
    #   resp.documentation_version #=> String
    #   resp.access_log_settings.format #=> String
    #   resp.access_log_settings.destination_arn #=> String
    #   resp.canary_settings.percent_traffic #=> Float
    #   resp.canary_settings.deployment_id #=> String
    #   resp.canary_settings.stage_variable_overrides #=> Hash
    #   resp.canary_settings.stage_variable_overrides["String"] #=> String
    #   resp.canary_settings.use_stage_cache #=> Boolean
    #   resp.tracing_enabled #=> Boolean
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @overload get_stage(params = {})
    # @param [Hash] params ({})
    def get_stage(params = {}, options = {})
      req = build_request(:get_stage, params)
      req.send_request(options)
    end

    # Gets information about one or more Stage resources.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :deployment_id
    #   The stages' deployment identifiers.
    #
    # @return [Types::Stages] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Stages#item #item} => Array&lt;Types::Stage&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stages({
    #     rest_api_id: "String", # required
    #     deployment_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.item #=> Array
    #   resp.item[0].deployment_id #=> String
    #   resp.item[0].client_certificate_id #=> String
    #   resp.item[0].stage_name #=> String
    #   resp.item[0].description #=> String
    #   resp.item[0].cache_cluster_enabled #=> Boolean
    #   resp.item[0].cache_cluster_size #=> String, one of "0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"
    #   resp.item[0].cache_cluster_status #=> String, one of "CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"
    #   resp.item[0].method_settings #=> Hash
    #   resp.item[0].method_settings["String"].metrics_enabled #=> Boolean
    #   resp.item[0].method_settings["String"].logging_level #=> String
    #   resp.item[0].method_settings["String"].data_trace_enabled #=> Boolean
    #   resp.item[0].method_settings["String"].throttling_burst_limit #=> Integer
    #   resp.item[0].method_settings["String"].throttling_rate_limit #=> Float
    #   resp.item[0].method_settings["String"].caching_enabled #=> Boolean
    #   resp.item[0].method_settings["String"].cache_ttl_in_seconds #=> Integer
    #   resp.item[0].method_settings["String"].cache_data_encrypted #=> Boolean
    #   resp.item[0].method_settings["String"].require_authorization_for_cache_control #=> Boolean
    #   resp.item[0].method_settings["String"].unauthorized_cache_control_header_strategy #=> String, one of "FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"
    #   resp.item[0].variables #=> Hash
    #   resp.item[0].variables["String"] #=> String
    #   resp.item[0].documentation_version #=> String
    #   resp.item[0].access_log_settings.format #=> String
    #   resp.item[0].access_log_settings.destination_arn #=> String
    #   resp.item[0].canary_settings.percent_traffic #=> Float
    #   resp.item[0].canary_settings.deployment_id #=> String
    #   resp.item[0].canary_settings.stage_variable_overrides #=> Hash
    #   resp.item[0].canary_settings.stage_variable_overrides["String"] #=> String
    #   resp.item[0].canary_settings.use_stage_cache #=> Boolean
    #   resp.item[0].tracing_enabled #=> Boolean
    #   resp.item[0].tags #=> Hash
    #   resp.item[0].tags["String"] #=> String
    #   resp.item[0].created_date #=> Time
    #   resp.item[0].last_updated_date #=> Time
    #
    # @overload get_stages(params = {})
    # @param [Hash] params ({})
    def get_stages(params = {}, options = {})
      req = build_request(:get_stages, params)
      req.send_request(options)
    end

    # Gets the Tags collection for a given resource.
    #
    # @option params [required, String] :resource_arn
    #   \[Required\] The ARN of a resource that can be tagged. The resource
    #   ARN must be URL-encoded. At present, Stage is the only taggable
    #   resource.
    #
    # @option params [String] :position
    #   (Not currently supported) The current pagination position in the paged
    #   result set.
    #
    # @option params [Integer] :limit
    #   (Not currently supported) The maximum number of returned results per
    #   page. The default value is 25 and the maximum value is 500.
    #
    # @return [Types::Tags] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Tags#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags({
    #     resource_arn: "String", # required
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @overload get_tags(params = {})
    # @param [Hash] params ({})
    def get_tags(params = {}, options = {})
      req = build_request(:get_tags, params)
      req.send_request(options)
    end

    # Gets the usage data of a usage plan in a specified time interval.
    #
    # @option params [required, String] :usage_plan_id
    #   \[Required\] The Id of the usage plan associated with the usage data.
    #
    # @option params [String] :key_id
    #   The Id of the API key associated with the resultant usage data.
    #
    # @option params [required, String] :start_date
    #   \[Required\] The starting date (e.g., 2016-01-01) of the usage data.
    #
    # @option params [required, String] :end_date
    #   \[Required\] The ending date (e.g., 2016-12-31) of the usage data.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::Usage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Usage#usage_plan_id #usage_plan_id} => String
    #   * {Types::Usage#start_date #start_date} => String
    #   * {Types::Usage#end_date #end_date} => String
    #   * {Types::Usage#position #position} => String
    #   * {Types::Usage#items #items} => Hash&lt;String,Array&lt;Array&lt;Integer&gt;&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage({
    #     usage_plan_id: "String", # required
    #     key_id: "String",
    #     start_date: "String", # required
    #     end_date: "String", # required
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.usage_plan_id #=> String
    #   resp.start_date #=> String
    #   resp.end_date #=> String
    #   resp.position #=> String
    #   resp.items #=> Hash
    #   resp.items["String"] #=> Array
    #   resp.items["String"][0] #=> Array
    #   resp.items["String"][0][0] #=> Integer
    #
    # @overload get_usage(params = {})
    # @param [Hash] params ({})
    def get_usage(params = {}, options = {})
      req = build_request(:get_usage, params)
      req.send_request(options)
    end

    # Gets a usage plan of a given plan identifier.
    #
    # @option params [required, String] :usage_plan_id
    #   \[Required\] The identifier of the UsagePlan resource to be retrieved.
    #
    # @return [Types::UsagePlan] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UsagePlan#id #id} => String
    #   * {Types::UsagePlan#name #name} => String
    #   * {Types::UsagePlan#description #description} => String
    #   * {Types::UsagePlan#api_stages #api_stages} => Array&lt;Types::ApiStage&gt;
    #   * {Types::UsagePlan#throttle #throttle} => Types::ThrottleSettings
    #   * {Types::UsagePlan#quota #quota} => Types::QuotaSettings
    #   * {Types::UsagePlan#product_code #product_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_plan({
    #     usage_plan_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.api_stages #=> Array
    #   resp.api_stages[0].api_id #=> String
    #   resp.api_stages[0].stage #=> String
    #   resp.api_stages[0].throttle #=> Hash
    #   resp.api_stages[0].throttle["String"].burst_limit #=> Integer
    #   resp.api_stages[0].throttle["String"].rate_limit #=> Float
    #   resp.throttle.burst_limit #=> Integer
    #   resp.throttle.rate_limit #=> Float
    #   resp.quota.limit #=> Integer
    #   resp.quota.offset #=> Integer
    #   resp.quota.period #=> String, one of "DAY", "WEEK", "MONTH"
    #   resp.product_code #=> String
    #
    # @overload get_usage_plan(params = {})
    # @param [Hash] params ({})
    def get_usage_plan(params = {}, options = {})
      req = build_request(:get_usage_plan, params)
      req.send_request(options)
    end

    # Gets a usage plan key of a given key identifier.
    #
    # @option params [required, String] :usage_plan_id
    #   \[Required\] The Id of the UsagePlan resource representing the usage
    #   plan containing the to-be-retrieved UsagePlanKey resource representing
    #   a plan customer.
    #
    # @option params [required, String] :key_id
    #   \[Required\] The key Id of the to-be-retrieved UsagePlanKey resource
    #   representing a plan customer.
    #
    # @return [Types::UsagePlanKey] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UsagePlanKey#id #id} => String
    #   * {Types::UsagePlanKey#type #type} => String
    #   * {Types::UsagePlanKey#value #value} => String
    #   * {Types::UsagePlanKey#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_plan_key({
    #     usage_plan_id: "String", # required
    #     key_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.type #=> String
    #   resp.value #=> String
    #   resp.name #=> String
    #
    # @overload get_usage_plan_key(params = {})
    # @param [Hash] params ({})
    def get_usage_plan_key(params = {}, options = {})
      req = build_request(:get_usage_plan_key, params)
      req.send_request(options)
    end

    # Gets all the usage plan keys representing the API keys added to a
    # specified usage plan.
    #
    # @option params [required, String] :usage_plan_id
    #   \[Required\] The Id of the UsagePlan resource representing the usage
    #   plan containing the to-be-retrieved UsagePlanKey resource representing
    #   a plan customer.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @option params [String] :name_query
    #   A query parameter specifying the name of the to-be-returned usage plan
    #   keys.
    #
    # @return [Types::UsagePlanKeys] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UsagePlanKeys#position #position} => String
    #   * {Types::UsagePlanKeys#items #items} => Array&lt;Types::UsagePlanKey&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_plan_keys({
    #     usage_plan_id: "String", # required
    #     position: "String",
    #     limit: 1,
    #     name_query: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].type #=> String
    #   resp.items[0].value #=> String
    #   resp.items[0].name #=> String
    #
    # @overload get_usage_plan_keys(params = {})
    # @param [Hash] params ({})
    def get_usage_plan_keys(params = {}, options = {})
      req = build_request(:get_usage_plan_keys, params)
      req.send_request(options)
    end

    # Gets all the usage plans of the caller's account.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [String] :key_id
    #   The identifier of the API key associated with the usage plans.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::UsagePlans] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UsagePlans#position #position} => String
    #   * {Types::UsagePlans#items #items} => Array&lt;Types::UsagePlan&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_usage_plans({
    #     position: "String",
    #     key_id: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].api_stages #=> Array
    #   resp.items[0].api_stages[0].api_id #=> String
    #   resp.items[0].api_stages[0].stage #=> String
    #   resp.items[0].api_stages[0].throttle #=> Hash
    #   resp.items[0].api_stages[0].throttle["String"].burst_limit #=> Integer
    #   resp.items[0].api_stages[0].throttle["String"].rate_limit #=> Float
    #   resp.items[0].throttle.burst_limit #=> Integer
    #   resp.items[0].throttle.rate_limit #=> Float
    #   resp.items[0].quota.limit #=> Integer
    #   resp.items[0].quota.offset #=> Integer
    #   resp.items[0].quota.period #=> String, one of "DAY", "WEEK", "MONTH"
    #   resp.items[0].product_code #=> String
    #
    # @overload get_usage_plans(params = {})
    # @param [Hash] params ({})
    def get_usage_plans(params = {}, options = {})
      req = build_request(:get_usage_plans, params)
      req.send_request(options)
    end

    # Gets a specified VPC link under the caller's account in a region.
    #
    # @option params [required, String] :vpc_link_id
    #   \[Required\] The identifier of the VpcLink. It is used in an
    #   Integration to reference this VpcLink.
    #
    # @return [Types::VpcLink] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VpcLink#id #id} => String
    #   * {Types::VpcLink#name #name} => String
    #   * {Types::VpcLink#description #description} => String
    #   * {Types::VpcLink#target_arns #target_arns} => Array&lt;String&gt;
    #   * {Types::VpcLink#status #status} => String
    #   * {Types::VpcLink#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpc_link({
    #     vpc_link_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.target_arns #=> Array
    #   resp.target_arns[0] #=> String
    #   resp.status #=> String, one of "AVAILABLE", "PENDING", "DELETING", "FAILED"
    #   resp.status_message #=> String
    #
    # @overload get_vpc_link(params = {})
    # @param [Hash] params ({})
    def get_vpc_link(params = {}, options = {})
      req = build_request(:get_vpc_link, params)
      req.send_request(options)
    end

    # Gets the VpcLinks collection under the caller's account in a selected
    # region.
    #
    # @option params [String] :position
    #   The current pagination position in the paged result set.
    #
    # @option params [Integer] :limit
    #   The maximum number of returned results per page. The default value is
    #   25 and the maximum value is 500.
    #
    # @return [Types::VpcLinks] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VpcLinks#position #position} => String
    #   * {Types::VpcLinks#items #items} => Array&lt;Types::VpcLink&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpc_links({
    #     position: "String",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.position #=> String
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].target_arns #=> Array
    #   resp.items[0].target_arns[0] #=> String
    #   resp.items[0].status #=> String, one of "AVAILABLE", "PENDING", "DELETING", "FAILED"
    #   resp.items[0].status_message #=> String
    #
    # @overload get_vpc_links(params = {})
    # @param [Hash] params ({})
    def get_vpc_links(params = {}, options = {})
      req = build_request(:get_vpc_links, params)
      req.send_request(options)
    end

    # Import API keys from an external source, such as a CSV-formatted file.
    #
    # @option params [required, String, IO] :body
    #   The payload of the POST request to import API keys. For the payload
    #   format, see [API Key File Format][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-key-file-format.html
    #
    # @option params [required, String] :format
    #   A query parameter to specify the input format to imported API keys.
    #   Currently, only the `csv` format is supported.
    #
    # @option params [Boolean] :fail_on_warnings
    #   A query parameter to indicate whether to rollback ApiKey importation
    #   (`true`) or not (`false`) when error is encountered.
    #
    # @return [Types::ApiKeyIds] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApiKeyIds#ids #ids} => Array&lt;String&gt;
    #   * {Types::ApiKeyIds#warnings #warnings} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_api_keys({
    #     body: "data", # required
    #     format: "csv", # required, accepts csv
    #     fail_on_warnings: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #
    # @overload import_api_keys(params = {})
    # @param [Hash] params ({})
    def import_api_keys(params = {}, options = {})
      req = build_request(:import_api_keys, params)
      req.send_request(options)
    end

    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :mode
    #   A query parameter to indicate whether to overwrite (`OVERWRITE`) any
    #   existing DocumentationParts definition or to merge (`MERGE`) the new
    #   definition into the existing one. The default value is `MERGE`.
    #
    # @option params [Boolean] :fail_on_warnings
    #   A query parameter to specify whether to rollback the documentation
    #   importation (`true`) or not (`false`) when a warning is encountered.
    #   The default value is `false`.
    #
    # @option params [required, String, IO] :body
    #   \[Required\] Raw byte array representing the to-be-imported
    #   documentation parts. To import from a Swagger file, this is a JSON
    #   object.
    #
    # @return [Types::DocumentationPartIds] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DocumentationPartIds#ids #ids} => Array&lt;String&gt;
    #   * {Types::DocumentationPartIds#warnings #warnings} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_documentation_parts({
    #     rest_api_id: "String", # required
    #     mode: "merge", # accepts merge, overwrite
    #     fail_on_warnings: false,
    #     body: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #
    # @overload import_documentation_parts(params = {})
    # @param [Hash] params ({})
    def import_documentation_parts(params = {}, options = {})
      req = build_request(:import_documentation_parts, params)
      req.send_request(options)
    end

    # A feature of the API Gateway control service for creating a new API
    # from an external API definition file.
    #
    # @option params [Boolean] :fail_on_warnings
    #   A query parameter to indicate whether to rollback the API creation
    #   (`true`) or not (`false`) when a warning is encountered. The default
    #   value is `false`.
    #
    # @option params [Hash<String,String>] :parameters
    #   A key-value map of context-specific query string parameters specifying
    #   the behavior of different API importing operations. The following
    #   shows operation-specific parameters and their supported values.
    #
    #   To exclude DocumentationParts from the import, set `parameters` as
    #   `ignore=documentation`.
    #
    #   To configure the endpoint type, set `parameters` as
    #   `endpointConfigurationTypes=EDGE`,
    #   `endpointConfigurationTypes=REGIONAL`, or
    #   `endpointConfigurationTypes=PRIVATE`. The default endpoint type is
    #   `EDGE`.
    #
    #   To handle imported `basePath`, set `parameters` as `basePath=ignore`,
    #   `basePath=prepend` or `basePath=split`.
    #
    #   For example, the AWS CLI command to exclude documentation from the
    #   imported API is:
    #
    #       aws apigateway import-rest-api --parameters ignore=documentation --body 'file:///path/to/imported-api-body.json'
    #
    #   The AWS CLI command to set the regional endpoint on the imported API
    #   is:
    #
    #       aws apigateway import-rest-api --parameters endpointConfigurationTypes=REGIONAL --body 'file:///path/to/imported-api-body.json'
    #
    # @option params [required, String, IO] :body
    #   \[Required\] The POST request body containing external API
    #   definitions. Currently, only Swagger definition JSON files are
    #   supported. The maximum size of the API definition file is 2MB.
    #
    # @return [Types::RestApi] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestApi#id #id} => String
    #   * {Types::RestApi#name #name} => String
    #   * {Types::RestApi#description #description} => String
    #   * {Types::RestApi#created_date #created_date} => Time
    #   * {Types::RestApi#version #version} => String
    #   * {Types::RestApi#warnings #warnings} => Array&lt;String&gt;
    #   * {Types::RestApi#binary_media_types #binary_media_types} => Array&lt;String&gt;
    #   * {Types::RestApi#minimum_compression_size #minimum_compression_size} => Integer
    #   * {Types::RestApi#api_key_source #api_key_source} => String
    #   * {Types::RestApi#endpoint_configuration #endpoint_configuration} => Types::EndpointConfiguration
    #   * {Types::RestApi#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_rest_api({
    #     fail_on_warnings: false,
    #     parameters: {
    #       "String" => "String",
    #     },
    #     body: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.version #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #   resp.binary_media_types #=> Array
    #   resp.binary_media_types[0] #=> String
    #   resp.minimum_compression_size #=> Integer
    #   resp.api_key_source #=> String, one of "HEADER", "AUTHORIZER"
    #   resp.endpoint_configuration.types #=> Array
    #   resp.endpoint_configuration.types[0] #=> String, one of "REGIONAL", "EDGE", "PRIVATE"
    #   resp.policy #=> String
    #
    # @overload import_rest_api(params = {})
    # @param [Hash] params ({})
    def import_rest_api(params = {}, options = {})
      req = build_request(:import_rest_api, params)
      req.send_request(options)
    end

    # Creates a customization of a GatewayResponse of a specified response
    # type and status code on the given RestApi.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :response_type
    #   \[Required\] The response type of the associated GatewayResponse.
    #   Valid values are
    #   * ACCESS\_DENIED
    #   * API\_CONFIGURATION\_ERROR
    #   * AUTHORIZER\_FAILURE
    #   * AUTHORIZER\_CONFIGURATION\_ERROR
    #   * BAD\_REQUEST\_PARAMETERS
    #   * BAD\_REQUEST\_BODY
    #   * DEFAULT\_4XX
    #   * DEFAULT\_5XX
    #   * EXPIRED\_TOKEN
    #   * INVALID\_SIGNATURE
    #   * INTEGRATION\_FAILURE
    #   * INTEGRATION\_TIMEOUT
    #   * INVALID\_API\_KEY
    #   * MISSING\_AUTHENTICATION\_TOKEN
    #   * QUOTA\_EXCEEDED
    #   * REQUEST\_TOO\_LARGE
    #   * RESOURCE\_NOT\_FOUND
    #   * THROTTLED
    #   * UNAUTHORIZED
    #   * UNSUPPORTED\_MEDIA\_TYPE
    #
    # @option params [String] :status_code
    #   The HTTP status code of the GatewayResponse.
    #
    # @option params [Hash<String,String>] :response_parameters
    #   Response parameters (paths, query strings and headers) of the
    #   GatewayResponse as a string-to-string map of key-value pairs.
    #
    # @option params [Hash<String,String>] :response_templates
    #   Response templates of the GatewayResponse as a string-to-string map of
    #   key-value pairs.
    #
    # @return [Types::GatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GatewayResponse#response_type #response_type} => String
    #   * {Types::GatewayResponse#status_code #status_code} => String
    #   * {Types::GatewayResponse#response_parameters #response_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GatewayResponse#response_templates #response_templates} => Hash&lt;String,String&gt;
    #   * {Types::GatewayResponse#default_response #default_response} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_gateway_response({
    #     rest_api_id: "String", # required
    #     response_type: "DEFAULT_4XX", # required, accepts DEFAULT_4XX, DEFAULT_5XX, RESOURCE_NOT_FOUND, UNAUTHORIZED, INVALID_API_KEY, ACCESS_DENIED, AUTHORIZER_FAILURE, AUTHORIZER_CONFIGURATION_ERROR, INVALID_SIGNATURE, EXPIRED_TOKEN, MISSING_AUTHENTICATION_TOKEN, INTEGRATION_FAILURE, INTEGRATION_TIMEOUT, API_CONFIGURATION_ERROR, UNSUPPORTED_MEDIA_TYPE, BAD_REQUEST_PARAMETERS, BAD_REQUEST_BODY, REQUEST_TOO_LARGE, THROTTLED, QUOTA_EXCEEDED
    #     status_code: "StatusCode",
    #     response_parameters: {
    #       "String" => "String",
    #     },
    #     response_templates: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.response_type #=> String, one of "DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED"
    #   resp.status_code #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["String"] #=> String
    #   resp.response_templates #=> Hash
    #   resp.response_templates["String"] #=> String
    #   resp.default_response #=> Boolean
    #
    # @overload put_gateway_response(params = {})
    # @param [Hash] params ({})
    def put_gateway_response(params = {}, options = {})
      req = build_request(:put_gateway_response, params)
      req.send_request(options)
    end

    # Sets up a method's integration.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] Specifies a put integration request's resource ID.
    #
    # @option params [required, String] :http_method
    #   \[Required\] Specifies a put integration request's HTTP method.
    #
    # @option params [required, String] :type
    #   \[Required\] Specifies a put integration input's type.
    #
    # @option params [String] :integration_http_method
    #   Specifies a put integration HTTP method. When the integration type is
    #   HTTP or AWS, this field is required.
    #
    # @option params [String] :uri
    #   Specifies Uniform Resource Identifier (URI) of the integration
    #   endpoint.
    #
    #   * For `HTTP` or `HTTP_PROXY` integrations, the URI must be a fully
    #     formed, encoded HTTP(S) URL according to the [RFC-3986
    #     specification][1], for either standard integration, where
    #     `connectionType` is not `VPC_LINK`, or private integration, where
    #     `connectionType` is `VPC_LINK`. For a private HTTP integration, the
    #     URI is not used for routing.
    #
    #   * For `AWS` or `AWS_PROXY` integrations, the URI is of the form
    #     `arn:aws:apigateway:\{region\}:\{subdomain.service|service\}:path|action/\{service_api\}`.
    #     Here, `\{Region\}` is the API Gateway region (e.g., `us-east-1`);
    #     `\{service\}` is the name of the integrated AWS service (e.g.,
    #     `s3`); and `\{subdomain\}` is a designated subdomain supported by
    #     certain AWS service for fast host-name lookup. `action` can be used
    #     for an AWS service action-based API, using an
    #     `Action=\{name\}&\{p1\}=\{v1\}&p2=\{v2\}...` query string. The
    #     ensuing `\{service_api\}` refers to a supported action `\{name\}`
    #     plus any required input parameters. Alternatively, `path` can be
    #     used for an AWS service path-based API. The ensuing `service_api`
    #     refers to the path to an AWS service resource, including the region
    #     of the integrated AWS service, if applicable. For example, for
    #     integration with the S3 API of `GetObject`, the `uri` can be either
    #     `arn:aws:apigateway:us-west-2:s3:action/GetObject&Bucket=\{bucket\}&Key=\{key\}`
    #     or `arn:aws:apigateway:us-west-2:s3:path/\{bucket\}/\{key\}`
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Uniform_Resource_Identifier
    #
    # @option params [String] :connection_type
    #   The type of the network connection to the integration endpoint. The
    #   valid value is `INTERNET` for connections through the public routable
    #   internet or `VPC_LINK` for private connections between API Gateway and
    #   a network load balancer in a VPC. The default value is `INTERNET`.
    #
    # @option params [String] :connection_id
    #   The ([`id`][1]) of the VpcLink used for the integration when
    #   `connectionType=VPC_LINK` and undefined, otherwise.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/apigateway/api-reference/resource/vpc-link/#id
    #
    # @option params [String] :credentials
    #   Specifies whether credentials are required for a put integration.
    #
    # @option params [Hash<String,String>] :request_parameters
    #   A key-value map specifying request parameters that are passed from the
    #   method request to the back end. The key is an integration request
    #   parameter name and the associated value is a method request parameter
    #   value or static value that must be enclosed within single quotes and
    #   pre-encoded as required by the back end. The method request parameter
    #   value must match the pattern of
    #   `method.request.\{location\}.\{name\}`, where `location` is
    #   `querystring`, `path`, or `header` and `name` must be a valid and
    #   unique method request parameter name.
    #
    # @option params [Hash<String,String>] :request_templates
    #   Represents a map of Velocity templates that are applied on the request
    #   payload based on the value of the Content-Type header sent by the
    #   client. The content type value is the key in this map, and the
    #   template (as a String) is the value.
    #
    # @option params [String] :passthrough_behavior
    #   Specifies the pass-through behavior for incoming requests based on the
    #   Content-Type header in the request, and the available mapping
    #   templates specified as the `requestTemplates` property on the
    #   Integration resource. There are three valid values: `WHEN_NO_MATCH`,
    #   `WHEN_NO_TEMPLATES`, and `NEVER`.
    #
    #   * `WHEN_NO_MATCH` passes the request body for unmapped content types
    #     through to the integration back end without transformation.
    #
    #   * `NEVER` rejects unmapped content types with an HTTP 415
    #     'Unsupported Media Type' response.
    #
    #   * `WHEN_NO_TEMPLATES` allows pass-through when the integration has NO
    #     content types mapped to templates. However if there is at least one
    #     content type defined, unmapped content types will be rejected with
    #     the same 415 response.
    #
    # @option params [String] :cache_namespace
    #   Specifies a put integration input's cache namespace.
    #
    # @option params [Array<String>] :cache_key_parameters
    #   Specifies a put integration input's cache key parameters.
    #
    # @option params [String] :content_handling
    #   Specifies how to handle request payload content type conversions.
    #   Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with
    #   the following behaviors:
    #
    #   * `CONVERT_TO_BINARY`\: Converts a request payload from a
    #     Base64-encoded string to the corresponding binary blob.
    #
    #   * `CONVERT_TO_TEXT`\: Converts a request payload from a binary blob to
    #     a Base64-encoded string.
    #
    #   If this property is not defined, the request payload will be passed
    #   through from the method request to integration request without
    #   modification, provided that the `passthroughBehaviors` is configured
    #   to support payload pass-through.
    #
    # @option params [Integer] :timeout_in_millis
    #   Custom timeout between 50 and 29,000 milliseconds. The default value
    #   is 29,000 milliseconds or 29 seconds.
    #
    # @return [Types::Integration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Integration#type #type} => String
    #   * {Types::Integration#http_method #http_method} => String
    #   * {Types::Integration#uri #uri} => String
    #   * {Types::Integration#connection_type #connection_type} => String
    #   * {Types::Integration#connection_id #connection_id} => String
    #   * {Types::Integration#credentials #credentials} => String
    #   * {Types::Integration#request_parameters #request_parameters} => Hash&lt;String,String&gt;
    #   * {Types::Integration#request_templates #request_templates} => Hash&lt;String,String&gt;
    #   * {Types::Integration#passthrough_behavior #passthrough_behavior} => String
    #   * {Types::Integration#content_handling #content_handling} => String
    #   * {Types::Integration#timeout_in_millis #timeout_in_millis} => Integer
    #   * {Types::Integration#cache_namespace #cache_namespace} => String
    #   * {Types::Integration#cache_key_parameters #cache_key_parameters} => Array&lt;String&gt;
    #   * {Types::Integration#integration_responses #integration_responses} => Hash&lt;String,Types::IntegrationResponse&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_integration({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     type: "HTTP", # required, accepts HTTP, AWS, MOCK, HTTP_PROXY, AWS_PROXY
    #     integration_http_method: "String",
    #     uri: "String",
    #     connection_type: "INTERNET", # accepts INTERNET, VPC_LINK
    #     connection_id: "String",
    #     credentials: "String",
    #     request_parameters: {
    #       "String" => "String",
    #     },
    #     request_templates: {
    #       "String" => "String",
    #     },
    #     passthrough_behavior: "String",
    #     cache_namespace: "String",
    #     cache_key_parameters: ["String"],
    #     content_handling: "CONVERT_TO_BINARY", # accepts CONVERT_TO_BINARY, CONVERT_TO_TEXT
    #     timeout_in_millis: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.type #=> String, one of "HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.http_method #=> String
    #   resp.uri #=> String
    #   resp.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.connection_id #=> String
    #   resp.credentials #=> String
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["String"] #=> String
    #   resp.request_templates #=> Hash
    #   resp.request_templates["String"] #=> String
    #   resp.passthrough_behavior #=> String
    #   resp.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.timeout_in_millis #=> Integer
    #   resp.cache_namespace #=> String
    #   resp.cache_key_parameters #=> Array
    #   resp.cache_key_parameters[0] #=> String
    #   resp.integration_responses #=> Hash
    #   resp.integration_responses["String"].status_code #=> String
    #   resp.integration_responses["String"].selection_pattern #=> String
    #   resp.integration_responses["String"].response_parameters #=> Hash
    #   resp.integration_responses["String"].response_parameters["String"] #=> String
    #   resp.integration_responses["String"].response_templates #=> Hash
    #   resp.integration_responses["String"].response_templates["String"] #=> String
    #   resp.integration_responses["String"].content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #
    # @overload put_integration(params = {})
    # @param [Hash] params ({})
    def put_integration(params = {}, options = {})
      req = build_request(:put_integration, params)
      req.send_request(options)
    end

    # Represents a put integration.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] Specifies a put integration response request's resource
    #   identifier.
    #
    # @option params [required, String] :http_method
    #   \[Required\] Specifies a put integration response request's HTTP
    #   method.
    #
    # @option params [required, String] :status_code
    #   \[Required\] Specifies the status code that is used to map the
    #   integration response to an existing MethodResponse.
    #
    # @option params [String] :selection_pattern
    #   Specifies the selection pattern of a put integration response.
    #
    # @option params [Hash<String,String>] :response_parameters
    #   A key-value map specifying response parameters that are passed to the
    #   method response from the back end. The key is a method response header
    #   parameter name and the mapped value is an integration response header
    #   value, a static value enclosed within a pair of single quotes, or a
    #   JSON expression from the integration response body. The mapping key
    #   must match the pattern of `method.response.header.\{name\}`, where
    #   `name` is a valid and unique header name. The mapped non-static value
    #   must match the pattern of `integration.response.header.\{name\}` or
    #   `integration.response.body.\{JSON-expression\}`, where `name` must be
    #   a valid and unique response header name and `JSON-expression` a valid
    #   JSON expression without the `$` prefix.
    #
    # @option params [Hash<String,String>] :response_templates
    #   Specifies a put integration response's templates.
    #
    # @option params [String] :content_handling
    #   Specifies how to handle response payload content type conversions.
    #   Supported values are `CONVERT_TO_BINARY` and `CONVERT_TO_TEXT`, with
    #   the following behaviors:
    #
    #   * `CONVERT_TO_BINARY`\: Converts a response payload from a
    #     Base64-encoded string to the corresponding binary blob.
    #
    #   * `CONVERT_TO_TEXT`\: Converts a response payload from a binary blob
    #     to a Base64-encoded string.
    #
    #   If this property is not defined, the response payload will be passed
    #   through from the integration response to the method response without
    #   modification.
    #
    # @return [Types::IntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IntegrationResponse#status_code #status_code} => String
    #   * {Types::IntegrationResponse#selection_pattern #selection_pattern} => String
    #   * {Types::IntegrationResponse#response_parameters #response_parameters} => Hash&lt;String,String&gt;
    #   * {Types::IntegrationResponse#response_templates #response_templates} => Hash&lt;String,String&gt;
    #   * {Types::IntegrationResponse#content_handling #content_handling} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_integration_response({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #     selection_pattern: "String",
    #     response_parameters: {
    #       "String" => "String",
    #     },
    #     response_templates: {
    #       "String" => "String",
    #     },
    #     content_handling: "CONVERT_TO_BINARY", # accepts CONVERT_TO_BINARY, CONVERT_TO_TEXT
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> String
    #   resp.selection_pattern #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["String"] #=> String
    #   resp.response_templates #=> Hash
    #   resp.response_templates["String"] #=> String
    #   resp.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #
    # @overload put_integration_response(params = {})
    # @param [Hash] params ({})
    def put_integration_response(params = {}, options = {})
      req = build_request(:put_integration_response, params)
      req.send_request(options)
    end

    # Add a method to an existing Resource resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] The Resource identifier for the new Method resource.
    #
    # @option params [required, String] :http_method
    #   \[Required\] Specifies the method request's HTTP method type.
    #
    # @option params [required, String] :authorization_type
    #   \[Required\] The method's authorization type. Valid values are `NONE`
    #   for open access, `AWS_IAM` for using AWS IAM permissions, `CUSTOM` for
    #   using a custom authorizer, or `COGNITO_USER_POOLS` for using a Cognito
    #   user pool.
    #
    # @option params [String] :authorizer_id
    #   Specifies the identifier of an Authorizer to use on this Method, if
    #   the type is CUSTOM or COGNITO\_USER\_POOLS. The authorizer identifier
    #   is generated by API Gateway when you created the authorizer.
    #
    # @option params [Boolean] :api_key_required
    #   Specifies whether the method required a valid ApiKey.
    #
    # @option params [String] :operation_name
    #   A human-friendly operation identifier for the method. For example, you
    #   can assign the `operationName` of `ListPets` for the `GET /pets`
    #   method in [PetStore][1] example.
    #
    #
    #
    #   [1]: http://petstore-demo-endpoint.execute-api.com/petstore/pets
    #
    # @option params [Hash<String,Boolean>] :request_parameters
    #   A key-value map defining required or optional method request
    #   parameters that can be accepted by API Gateway. A key defines a method
    #   request parameter name matching the pattern of
    #   `method.request.\{location\}.\{name\}`, where `location` is
    #   `querystring`, `path`, or `header` and `name` is a valid and unique
    #   parameter name. The value associated with the key is a Boolean flag
    #   indicating whether the parameter is required (`true`) or optional
    #   (`false`). The method request parameter names defined here are
    #   available in Integration to be mapped to integration request
    #   parameters or body-mapping templates.
    #
    # @option params [Hash<String,String>] :request_models
    #   Specifies the Model resources used for the request's content type.
    #   Request models are represented as a key/value map, with a content type
    #   as the key and a Model name as the value.
    #
    # @option params [String] :request_validator_id
    #   The identifier of a RequestValidator for validating the method
    #   request.
    #
    # @option params [Array<String>] :authorization_scopes
    #   A list of authorization scopes configured on the method. The scopes
    #   are used with a `COGNITO_USER_POOLS` authorizer to authorize the
    #   method invocation. The authorization works by matching the method
    #   scopes against the scopes parsed from the access token in the incoming
    #   request. The method invocation is authorized if any method scopes
    #   matches a claimed scope in the access token. Otherwise, the invocation
    #   is not authorized. When the method scope is configured, the client
    #   must provide an access token instead of an identity token for
    #   authorization purposes.
    #
    # @return [Types::Method] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Method#http_method #http_method} => String
    #   * {Types::Method#authorization_type #authorization_type} => String
    #   * {Types::Method#authorizer_id #authorizer_id} => String
    #   * {Types::Method#api_key_required #api_key_required} => Boolean
    #   * {Types::Method#request_validator_id #request_validator_id} => String
    #   * {Types::Method#operation_name #operation_name} => String
    #   * {Types::Method#request_parameters #request_parameters} => Hash&lt;String,Boolean&gt;
    #   * {Types::Method#request_models #request_models} => Hash&lt;String,String&gt;
    #   * {Types::Method#method_responses #method_responses} => Hash&lt;String,Types::MethodResponse&gt;
    #   * {Types::Method#method_integration #method_integration} => Types::Integration
    #   * {Types::Method#authorization_scopes #authorization_scopes} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_method({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     authorization_type: "String", # required
    #     authorizer_id: "String",
    #     api_key_required: false,
    #     operation_name: "String",
    #     request_parameters: {
    #       "String" => false,
    #     },
    #     request_models: {
    #       "String" => "String",
    #     },
    #     request_validator_id: "String",
    #     authorization_scopes: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.http_method #=> String
    #   resp.authorization_type #=> String
    #   resp.authorizer_id #=> String
    #   resp.api_key_required #=> Boolean
    #   resp.request_validator_id #=> String
    #   resp.operation_name #=> String
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["String"] #=> Boolean
    #   resp.request_models #=> Hash
    #   resp.request_models["String"] #=> String
    #   resp.method_responses #=> Hash
    #   resp.method_responses["String"].status_code #=> String
    #   resp.method_responses["String"].response_parameters #=> Hash
    #   resp.method_responses["String"].response_parameters["String"] #=> Boolean
    #   resp.method_responses["String"].response_models #=> Hash
    #   resp.method_responses["String"].response_models["String"] #=> String
    #   resp.method_integration.type #=> String, one of "HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.method_integration.http_method #=> String
    #   resp.method_integration.uri #=> String
    #   resp.method_integration.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.method_integration.connection_id #=> String
    #   resp.method_integration.credentials #=> String
    #   resp.method_integration.request_parameters #=> Hash
    #   resp.method_integration.request_parameters["String"] #=> String
    #   resp.method_integration.request_templates #=> Hash
    #   resp.method_integration.request_templates["String"] #=> String
    #   resp.method_integration.passthrough_behavior #=> String
    #   resp.method_integration.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.method_integration.timeout_in_millis #=> Integer
    #   resp.method_integration.cache_namespace #=> String
    #   resp.method_integration.cache_key_parameters #=> Array
    #   resp.method_integration.cache_key_parameters[0] #=> String
    #   resp.method_integration.integration_responses #=> Hash
    #   resp.method_integration.integration_responses["String"].status_code #=> String
    #   resp.method_integration.integration_responses["String"].selection_pattern #=> String
    #   resp.method_integration.integration_responses["String"].response_parameters #=> Hash
    #   resp.method_integration.integration_responses["String"].response_parameters["String"] #=> String
    #   resp.method_integration.integration_responses["String"].response_templates #=> Hash
    #   resp.method_integration.integration_responses["String"].response_templates["String"] #=> String
    #   resp.method_integration.integration_responses["String"].content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.authorization_scopes #=> Array
    #   resp.authorization_scopes[0] #=> String
    #
    # @overload put_method(params = {})
    # @param [Hash] params ({})
    def put_method(params = {}, options = {})
      req = build_request(:put_method, params)
      req.send_request(options)
    end

    # Adds a MethodResponse to an existing Method resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] The Resource identifier for the Method resource.
    #
    # @option params [required, String] :http_method
    #   \[Required\] The HTTP verb of the Method resource.
    #
    # @option params [required, String] :status_code
    #   \[Required\] The method response's status code.
    #
    # @option params [Hash<String,Boolean>] :response_parameters
    #   A key-value map specifying required or optional response parameters
    #   that API Gateway can send back to the caller. A key defines a method
    #   response header name and the associated value is a Boolean flag
    #   indicating whether the method response parameter is required or not.
    #   The method response header names must match the pattern of
    #   `method.response.header.\{name\}`, where `name` is a valid and unique
    #   header name. The response parameter names defined here are available
    #   in the integration response to be mapped from an integration response
    #   header expressed in `integration.response.header.\{name\}`, a static
    #   value enclosed within a pair of single quotes (e.g.,
    #   `'application/json'`), or a JSON expression from the back-end response
    #   payload in the form of
    #   `integration.response.body.\{JSON-expression\}`, where
    #   `JSON-expression` is a valid JSON expression without the `$` prefix.)
    #
    # @option params [Hash<String,String>] :response_models
    #   Specifies the Model resources used for the response's content type.
    #   Response models are represented as a key/value map, with a content
    #   type as the key and a Model name as the value.
    #
    # @return [Types::MethodResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MethodResponse#status_code #status_code} => String
    #   * {Types::MethodResponse#response_parameters #response_parameters} => Hash&lt;String,Boolean&gt;
    #   * {Types::MethodResponse#response_models #response_models} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_method_response({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #     response_parameters: {
    #       "String" => false,
    #     },
    #     response_models: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["String"] #=> Boolean
    #   resp.response_models #=> Hash
    #   resp.response_models["String"] #=> String
    #
    # @overload put_method_response(params = {})
    # @param [Hash] params ({})
    def put_method_response(params = {}, options = {})
      req = build_request(:put_method_response, params)
      req.send_request(options)
    end

    # A feature of the API Gateway control service for updating an existing
    # API with an input of external API definitions. The update can take the
    # form of merging the supplied definition into the existing API or
    # overwriting the existing API.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [String] :mode
    #   The `mode` query parameter to specify the update mode. Valid values
    #   are "merge" and "overwrite". By default, the update mode is
    #   "merge".
    #
    # @option params [Boolean] :fail_on_warnings
    #   A query parameter to indicate whether to rollback the API update
    #   (`true`) or not (`false`) when a warning is encountered. The default
    #   value is `false`.
    #
    # @option params [Hash<String,String>] :parameters
    #   Custom header parameters as part of the request. For example, to
    #   exclude DocumentationParts from an imported API, set
    #   `ignore=documentation` as a `parameters` value, as in the AWS CLI
    #   command of `aws apigateway import-rest-api --parameters
    #   ignore=documentation --body 'file:///path/to/imported-api-body.json'`.
    #
    # @option params [required, String, IO] :body
    #   \[Required\] The PUT request body containing external API definitions.
    #   Currently, only Swagger definition JSON files are supported. The
    #   maximum size of the API definition file is 2MB.
    #
    # @return [Types::RestApi] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestApi#id #id} => String
    #   * {Types::RestApi#name #name} => String
    #   * {Types::RestApi#description #description} => String
    #   * {Types::RestApi#created_date #created_date} => Time
    #   * {Types::RestApi#version #version} => String
    #   * {Types::RestApi#warnings #warnings} => Array&lt;String&gt;
    #   * {Types::RestApi#binary_media_types #binary_media_types} => Array&lt;String&gt;
    #   * {Types::RestApi#minimum_compression_size #minimum_compression_size} => Integer
    #   * {Types::RestApi#api_key_source #api_key_source} => String
    #   * {Types::RestApi#endpoint_configuration #endpoint_configuration} => Types::EndpointConfiguration
    #   * {Types::RestApi#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_rest_api({
    #     rest_api_id: "String", # required
    #     mode: "merge", # accepts merge, overwrite
    #     fail_on_warnings: false,
    #     parameters: {
    #       "String" => "String",
    #     },
    #     body: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.version #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #   resp.binary_media_types #=> Array
    #   resp.binary_media_types[0] #=> String
    #   resp.minimum_compression_size #=> Integer
    #   resp.api_key_source #=> String, one of "HEADER", "AUTHORIZER"
    #   resp.endpoint_configuration.types #=> Array
    #   resp.endpoint_configuration.types[0] #=> String, one of "REGIONAL", "EDGE", "PRIVATE"
    #   resp.policy #=> String
    #
    # @overload put_rest_api(params = {})
    # @param [Hash] params ({})
    def put_rest_api(params = {}, options = {})
      req = build_request(:put_rest_api, params)
      req.send_request(options)
    end

    # Adds or updates a tag on a given resource.
    #
    # @option params [required, String] :resource_arn
    #   \[Required\] The ARN of a resource that can be tagged. The resource
    #   ARN must be URL-encoded. At present, Stage is the only taggable
    #   resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   \[Required\] The key-value map of strings. The valid character set is
    #   \[a-zA-Z+-=.\_:/\]. The tag key can be up to 128 characters and must
    #   not start with `aws:`. The tag value can be up to 256 characters.
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
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Simulate the execution of an Authorizer in your RestApi with headers,
    # parameters, and an incoming request body.
    #
    # <div class="seeAlso">
    # [Enable custom authorizers][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :authorizer_id
    #   \[Required\] Specifies a test invoke authorizer request's Authorizer
    #   ID.
    #
    # @option params [Hash<String,String>] :headers
    #   \[Required\] A key-value map of headers to simulate an incoming
    #   invocation request. This is where the incoming authorization token, or
    #   identity source, should be specified.
    #
    # @option params [String] :path_with_query_string
    #   \[Optional\] The URI path, including query string, of the simulated
    #   invocation request. Use this to specify path parameters and query
    #   string parameters.
    #
    # @option params [String] :body
    #   \[Optional\] The simulated request body of an incoming invocation
    #   request.
    #
    # @option params [Hash<String,String>] :stage_variables
    #   A key-value map of stage variables to simulate an invocation on a
    #   deployed Stage.
    #
    # @option params [Hash<String,String>] :additional_context
    #   \[Optional\] A key-value map of additional context variables.
    #
    # @return [Types::TestInvokeAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestInvokeAuthorizerResponse#client_status #client_status} => Integer
    #   * {Types::TestInvokeAuthorizerResponse#log #log} => String
    #   * {Types::TestInvokeAuthorizerResponse#latency #latency} => Integer
    #   * {Types::TestInvokeAuthorizerResponse#principal_id #principal_id} => String
    #   * {Types::TestInvokeAuthorizerResponse#policy #policy} => String
    #   * {Types::TestInvokeAuthorizerResponse#authorization #authorization} => Hash&lt;String,Array&lt;String&gt;&gt;
    #   * {Types::TestInvokeAuthorizerResponse#claims #claims} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_invoke_authorizer({
    #     rest_api_id: "String", # required
    #     authorizer_id: "String", # required
    #     headers: {
    #       "String" => "String",
    #     },
    #     path_with_query_string: "String",
    #     body: "String",
    #     stage_variables: {
    #       "String" => "String",
    #     },
    #     additional_context: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.client_status #=> Integer
    #   resp.log #=> String
    #   resp.latency #=> Integer
    #   resp.principal_id #=> String
    #   resp.policy #=> String
    #   resp.authorization #=> Hash
    #   resp.authorization["String"] #=> Array
    #   resp.authorization["String"][0] #=> String
    #   resp.claims #=> Hash
    #   resp.claims["String"] #=> String
    #
    # @overload test_invoke_authorizer(params = {})
    # @param [Hash] params ({})
    def test_invoke_authorizer(params = {}, options = {})
      req = build_request(:test_invoke_authorizer, params)
      req.send_request(options)
    end

    # Simulate the execution of a Method in your RestApi with headers,
    # parameters, and an incoming request body.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] Specifies a test invoke method request's resource ID.
    #
    # @option params [required, String] :http_method
    #   \[Required\] Specifies a test invoke method request's HTTP method.
    #
    # @option params [String] :path_with_query_string
    #   The URI path, including query string, of the simulated invocation
    #   request. Use this to specify path parameters and query string
    #   parameters.
    #
    # @option params [String] :body
    #   The simulated request body of an incoming invocation request.
    #
    # @option params [Hash<String,String>] :headers
    #   A key-value map of headers to simulate an incoming invocation request.
    #
    # @option params [String] :client_certificate_id
    #   A ClientCertificate identifier to use in the test invocation. API
    #   Gateway will use the certificate when making the HTTPS request to the
    #   defined back-end endpoint.
    #
    # @option params [Hash<String,String>] :stage_variables
    #   A key-value map of stage variables to simulate an invocation on a
    #   deployed Stage.
    #
    # @return [Types::TestInvokeMethodResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestInvokeMethodResponse#status #status} => Integer
    #   * {Types::TestInvokeMethodResponse#body #body} => String
    #   * {Types::TestInvokeMethodResponse#headers #headers} => Hash&lt;String,String&gt;
    #   * {Types::TestInvokeMethodResponse#log #log} => String
    #   * {Types::TestInvokeMethodResponse#latency #latency} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_invoke_method({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     path_with_query_string: "String",
    #     body: "String",
    #     headers: {
    #       "String" => "String",
    #     },
    #     client_certificate_id: "String",
    #     stage_variables: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Integer
    #   resp.body #=> String
    #   resp.headers #=> Hash
    #   resp.headers["String"] #=> String
    #   resp.log #=> String
    #   resp.latency #=> Integer
    #
    # @overload test_invoke_method(params = {})
    # @param [Hash] params ({})
    def test_invoke_method(params = {}, options = {})
      req = build_request(:test_invoke_method, params)
      req.send_request(options)
    end

    # Removes a tag from a given resource.
    #
    # @option params [required, String] :resource_arn
    #   \[Required\] The ARN of a resource that can be tagged. The resource
    #   ARN must be URL-encoded. At present, Stage is the only taggable
    #   resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   \[Required\] The Tag keys to delete.
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
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Changes information about the current Account resource.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::Account] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Account#cloudwatch_role_arn #cloudwatch_role_arn} => String
    #   * {Types::Account#throttle_settings #throttle_settings} => Types::ThrottleSettings
    #   * {Types::Account#features #features} => Array&lt;String&gt;
    #   * {Types::Account#api_key_version #api_key_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account({
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.cloudwatch_role_arn #=> String
    #   resp.throttle_settings.burst_limit #=> Integer
    #   resp.throttle_settings.rate_limit #=> Float
    #   resp.features #=> Array
    #   resp.features[0] #=> String
    #   resp.api_key_version #=> String
    #
    # @overload update_account(params = {})
    # @param [Hash] params ({})
    def update_account(params = {}, options = {})
      req = build_request(:update_account, params)
      req.send_request(options)
    end

    # Changes information about an ApiKey resource.
    #
    # @option params [required, String] :api_key
    #   \[Required\] The identifier of the ApiKey resource to be updated.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::ApiKey] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApiKey#id #id} => String
    #   * {Types::ApiKey#value #value} => String
    #   * {Types::ApiKey#name #name} => String
    #   * {Types::ApiKey#customer_id #customer_id} => String
    #   * {Types::ApiKey#description #description} => String
    #   * {Types::ApiKey#enabled #enabled} => Boolean
    #   * {Types::ApiKey#created_date #created_date} => Time
    #   * {Types::ApiKey#last_updated_date #last_updated_date} => Time
    #   * {Types::ApiKey#stage_keys #stage_keys} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api_key({
    #     api_key: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.value #=> String
    #   resp.name #=> String
    #   resp.customer_id #=> String
    #   resp.description #=> String
    #   resp.enabled #=> Boolean
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #   resp.stage_keys #=> Array
    #   resp.stage_keys[0] #=> String
    #
    # @overload update_api_key(params = {})
    # @param [Hash] params ({})
    def update_api_key(params = {}, options = {})
      req = build_request(:update_api_key, params)
      req.send_request(options)
    end

    # Updates an existing Authorizer resource.
    #
    # <div class="seeAlso">
    # [AWS CLI][1]
    # </div>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cli/latest/reference/apigateway/update-authorizer.html
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :authorizer_id
    #   \[Required\] The identifier of the Authorizer resource.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::Authorizer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Authorizer#id #id} => String
    #   * {Types::Authorizer#name #name} => String
    #   * {Types::Authorizer#type #type} => String
    #   * {Types::Authorizer#provider_arns #provider_arns} => Array&lt;String&gt;
    #   * {Types::Authorizer#auth_type #auth_type} => String
    #   * {Types::Authorizer#authorizer_uri #authorizer_uri} => String
    #   * {Types::Authorizer#authorizer_credentials #authorizer_credentials} => String
    #   * {Types::Authorizer#identity_source #identity_source} => String
    #   * {Types::Authorizer#identity_validation_expression #identity_validation_expression} => String
    #   * {Types::Authorizer#authorizer_result_ttl_in_seconds #authorizer_result_ttl_in_seconds} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_authorizer({
    #     rest_api_id: "String", # required
    #     authorizer_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.type #=> String, one of "TOKEN", "REQUEST", "COGNITO_USER_POOLS"
    #   resp.provider_arns #=> Array
    #   resp.provider_arns[0] #=> String
    #   resp.auth_type #=> String
    #   resp.authorizer_uri #=> String
    #   resp.authorizer_credentials #=> String
    #   resp.identity_source #=> String
    #   resp.identity_validation_expression #=> String
    #   resp.authorizer_result_ttl_in_seconds #=> Integer
    #
    # @overload update_authorizer(params = {})
    # @param [Hash] params ({})
    def update_authorizer(params = {}, options = {})
      req = build_request(:update_authorizer, params)
      req.send_request(options)
    end

    # Changes information about the BasePathMapping resource.
    #
    # @option params [required, String] :domain_name
    #   \[Required\] The domain name of the BasePathMapping resource to
    #   change.
    #
    # @option params [required, String] :base_path
    #   \[Required\] The base path of the BasePathMapping resource to change.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::BasePathMapping] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BasePathMapping#base_path #base_path} => String
    #   * {Types::BasePathMapping#rest_api_id #rest_api_id} => String
    #   * {Types::BasePathMapping#stage #stage} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_base_path_mapping({
    #     domain_name: "String", # required
    #     base_path: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.base_path #=> String
    #   resp.rest_api_id #=> String
    #   resp.stage #=> String
    #
    # @overload update_base_path_mapping(params = {})
    # @param [Hash] params ({})
    def update_base_path_mapping(params = {}, options = {})
      req = build_request(:update_base_path_mapping, params)
      req.send_request(options)
    end

    # Changes information about an ClientCertificate resource.
    #
    # @option params [required, String] :client_certificate_id
    #   \[Required\] The identifier of the ClientCertificate resource to be
    #   updated.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::ClientCertificate] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClientCertificate#client_certificate_id #client_certificate_id} => String
    #   * {Types::ClientCertificate#description #description} => String
    #   * {Types::ClientCertificate#pem_encoded_certificate #pem_encoded_certificate} => String
    #   * {Types::ClientCertificate#created_date #created_date} => Time
    #   * {Types::ClientCertificate#expiration_date #expiration_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_client_certificate({
    #     client_certificate_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.client_certificate_id #=> String
    #   resp.description #=> String
    #   resp.pem_encoded_certificate #=> String
    #   resp.created_date #=> Time
    #   resp.expiration_date #=> Time
    #
    # @overload update_client_certificate(params = {})
    # @param [Hash] params ({})
    def update_client_certificate(params = {}, options = {})
      req = build_request(:update_client_certificate, params)
      req.send_request(options)
    end

    # Changes information about a Deployment resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :deployment_id
    #   The replacement identifier for the Deployment resource to change
    #   information about.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::Deployment] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Deployment#id #id} => String
    #   * {Types::Deployment#description #description} => String
    #   * {Types::Deployment#created_date #created_date} => Time
    #   * {Types::Deployment#api_summary #api_summary} => Hash&lt;String,Hash&lt;String,Types::MethodSnapshot&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_deployment({
    #     rest_api_id: "String", # required
    #     deployment_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.api_summary #=> Hash
    #   resp.api_summary["String"] #=> Hash
    #   resp.api_summary["String"]["String"].authorization_type #=> String
    #   resp.api_summary["String"]["String"].api_key_required #=> Boolean
    #
    # @overload update_deployment(params = {})
    # @param [Hash] params ({})
    def update_deployment(params = {}, options = {})
      req = build_request(:update_deployment, params)
      req.send_request(options)
    end

    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :documentation_part_id
    #   \[Required\] The identifier of the to-be-updated documentation part.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::DocumentationPart] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DocumentationPart#id #id} => String
    #   * {Types::DocumentationPart#location #location} => Types::DocumentationPartLocation
    #   * {Types::DocumentationPart#properties #properties} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_documentation_part({
    #     rest_api_id: "String", # required
    #     documentation_part_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.location.type #=> String, one of "API", "AUTHORIZER", "MODEL", "RESOURCE", "METHOD", "PATH_PARAMETER", "QUERY_PARAMETER", "REQUEST_HEADER", "REQUEST_BODY", "RESPONSE", "RESPONSE_HEADER", "RESPONSE_BODY"
    #   resp.location.path #=> String
    #   resp.location.method #=> String
    #   resp.location.status_code #=> String
    #   resp.location.name #=> String
    #   resp.properties #=> String
    #
    # @overload update_documentation_part(params = {})
    # @param [Hash] params ({})
    def update_documentation_part(params = {}, options = {})
      req = build_request(:update_documentation_part, params)
      req.send_request(options)
    end

    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi..
    #
    # @option params [required, String] :documentation_version
    #   \[Required\] The version identifier of the to-be-updated documentation
    #   version.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::DocumentationVersion] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DocumentationVersion#version #version} => String
    #   * {Types::DocumentationVersion#created_date #created_date} => Time
    #   * {Types::DocumentationVersion#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_documentation_version({
    #     rest_api_id: "String", # required
    #     documentation_version: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.version #=> String
    #   resp.created_date #=> Time
    #   resp.description #=> String
    #
    # @overload update_documentation_version(params = {})
    # @param [Hash] params ({})
    def update_documentation_version(params = {}, options = {})
      req = build_request(:update_documentation_version, params)
      req.send_request(options)
    end

    # Changes information about the DomainName resource.
    #
    # @option params [required, String] :domain_name
    #   \[Required\] The name of the DomainName resource to be changed.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::DomainName] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DomainName#domain_name #domain_name} => String
    #   * {Types::DomainName#certificate_name #certificate_name} => String
    #   * {Types::DomainName#certificate_arn #certificate_arn} => String
    #   * {Types::DomainName#certificate_upload_date #certificate_upload_date} => Time
    #   * {Types::DomainName#regional_domain_name #regional_domain_name} => String
    #   * {Types::DomainName#regional_hosted_zone_id #regional_hosted_zone_id} => String
    #   * {Types::DomainName#regional_certificate_name #regional_certificate_name} => String
    #   * {Types::DomainName#regional_certificate_arn #regional_certificate_arn} => String
    #   * {Types::DomainName#distribution_domain_name #distribution_domain_name} => String
    #   * {Types::DomainName#distribution_hosted_zone_id #distribution_hosted_zone_id} => String
    #   * {Types::DomainName#endpoint_configuration #endpoint_configuration} => Types::EndpointConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_name({
    #     domain_name: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_name #=> String
    #   resp.certificate_name #=> String
    #   resp.certificate_arn #=> String
    #   resp.certificate_upload_date #=> Time
    #   resp.regional_domain_name #=> String
    #   resp.regional_hosted_zone_id #=> String
    #   resp.regional_certificate_name #=> String
    #   resp.regional_certificate_arn #=> String
    #   resp.distribution_domain_name #=> String
    #   resp.distribution_hosted_zone_id #=> String
    #   resp.endpoint_configuration.types #=> Array
    #   resp.endpoint_configuration.types[0] #=> String, one of "REGIONAL", "EDGE", "PRIVATE"
    #
    # @overload update_domain_name(params = {})
    # @param [Hash] params ({})
    def update_domain_name(params = {}, options = {})
      req = build_request(:update_domain_name, params)
      req.send_request(options)
    end

    # Updates a GatewayResponse of a specified response type on the given
    # RestApi.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :response_type
    #   \[Required\] The response type of the associated GatewayResponse.
    #   Valid values are
    #   * ACCESS\_DENIED
    #   * API\_CONFIGURATION\_ERROR
    #   * AUTHORIZER\_FAILURE
    #   * AUTHORIZER\_CONFIGURATION\_ERROR
    #   * BAD\_REQUEST\_PARAMETERS
    #   * BAD\_REQUEST\_BODY
    #   * DEFAULT\_4XX
    #   * DEFAULT\_5XX
    #   * EXPIRED\_TOKEN
    #   * INVALID\_SIGNATURE
    #   * INTEGRATION\_FAILURE
    #   * INTEGRATION\_TIMEOUT
    #   * INVALID\_API\_KEY
    #   * MISSING\_AUTHENTICATION\_TOKEN
    #   * QUOTA\_EXCEEDED
    #   * REQUEST\_TOO\_LARGE
    #   * RESOURCE\_NOT\_FOUND
    #   * THROTTLED
    #   * UNAUTHORIZED
    #   * UNSUPPORTED\_MEDIA\_TYPE
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::GatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GatewayResponse#response_type #response_type} => String
    #   * {Types::GatewayResponse#status_code #status_code} => String
    #   * {Types::GatewayResponse#response_parameters #response_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GatewayResponse#response_templates #response_templates} => Hash&lt;String,String&gt;
    #   * {Types::GatewayResponse#default_response #default_response} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_response({
    #     rest_api_id: "String", # required
    #     response_type: "DEFAULT_4XX", # required, accepts DEFAULT_4XX, DEFAULT_5XX, RESOURCE_NOT_FOUND, UNAUTHORIZED, INVALID_API_KEY, ACCESS_DENIED, AUTHORIZER_FAILURE, AUTHORIZER_CONFIGURATION_ERROR, INVALID_SIGNATURE, EXPIRED_TOKEN, MISSING_AUTHENTICATION_TOKEN, INTEGRATION_FAILURE, INTEGRATION_TIMEOUT, API_CONFIGURATION_ERROR, UNSUPPORTED_MEDIA_TYPE, BAD_REQUEST_PARAMETERS, BAD_REQUEST_BODY, REQUEST_TOO_LARGE, THROTTLED, QUOTA_EXCEEDED
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.response_type #=> String, one of "DEFAULT_4XX", "DEFAULT_5XX", "RESOURCE_NOT_FOUND", "UNAUTHORIZED", "INVALID_API_KEY", "ACCESS_DENIED", "AUTHORIZER_FAILURE", "AUTHORIZER_CONFIGURATION_ERROR", "INVALID_SIGNATURE", "EXPIRED_TOKEN", "MISSING_AUTHENTICATION_TOKEN", "INTEGRATION_FAILURE", "INTEGRATION_TIMEOUT", "API_CONFIGURATION_ERROR", "UNSUPPORTED_MEDIA_TYPE", "BAD_REQUEST_PARAMETERS", "BAD_REQUEST_BODY", "REQUEST_TOO_LARGE", "THROTTLED", "QUOTA_EXCEEDED"
    #   resp.status_code #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["String"] #=> String
    #   resp.response_templates #=> Hash
    #   resp.response_templates["String"] #=> String
    #   resp.default_response #=> Boolean
    #
    # @overload update_gateway_response(params = {})
    # @param [Hash] params ({})
    def update_gateway_response(params = {}, options = {})
      req = build_request(:update_gateway_response, params)
      req.send_request(options)
    end

    # Represents an update integration.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] Represents an update integration request's resource
    #   identifier.
    #
    # @option params [required, String] :http_method
    #   \[Required\] Represents an update integration request's HTTP method.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::Integration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Integration#type #type} => String
    #   * {Types::Integration#http_method #http_method} => String
    #   * {Types::Integration#uri #uri} => String
    #   * {Types::Integration#connection_type #connection_type} => String
    #   * {Types::Integration#connection_id #connection_id} => String
    #   * {Types::Integration#credentials #credentials} => String
    #   * {Types::Integration#request_parameters #request_parameters} => Hash&lt;String,String&gt;
    #   * {Types::Integration#request_templates #request_templates} => Hash&lt;String,String&gt;
    #   * {Types::Integration#passthrough_behavior #passthrough_behavior} => String
    #   * {Types::Integration#content_handling #content_handling} => String
    #   * {Types::Integration#timeout_in_millis #timeout_in_millis} => Integer
    #   * {Types::Integration#cache_namespace #cache_namespace} => String
    #   * {Types::Integration#cache_key_parameters #cache_key_parameters} => Array&lt;String&gt;
    #   * {Types::Integration#integration_responses #integration_responses} => Hash&lt;String,Types::IntegrationResponse&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_integration({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.type #=> String, one of "HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.http_method #=> String
    #   resp.uri #=> String
    #   resp.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.connection_id #=> String
    #   resp.credentials #=> String
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["String"] #=> String
    #   resp.request_templates #=> Hash
    #   resp.request_templates["String"] #=> String
    #   resp.passthrough_behavior #=> String
    #   resp.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.timeout_in_millis #=> Integer
    #   resp.cache_namespace #=> String
    #   resp.cache_key_parameters #=> Array
    #   resp.cache_key_parameters[0] #=> String
    #   resp.integration_responses #=> Hash
    #   resp.integration_responses["String"].status_code #=> String
    #   resp.integration_responses["String"].selection_pattern #=> String
    #   resp.integration_responses["String"].response_parameters #=> Hash
    #   resp.integration_responses["String"].response_parameters["String"] #=> String
    #   resp.integration_responses["String"].response_templates #=> Hash
    #   resp.integration_responses["String"].response_templates["String"] #=> String
    #   resp.integration_responses["String"].content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #
    # @overload update_integration(params = {})
    # @param [Hash] params ({})
    def update_integration(params = {}, options = {})
      req = build_request(:update_integration, params)
      req.send_request(options)
    end

    # Represents an update integration response.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] Specifies an update integration response request's
    #   resource identifier.
    #
    # @option params [required, String] :http_method
    #   \[Required\] Specifies an update integration response request's HTTP
    #   method.
    #
    # @option params [required, String] :status_code
    #   \[Required\] Specifies an update integration response request's
    #   status code.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::IntegrationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IntegrationResponse#status_code #status_code} => String
    #   * {Types::IntegrationResponse#selection_pattern #selection_pattern} => String
    #   * {Types::IntegrationResponse#response_parameters #response_parameters} => Hash&lt;String,String&gt;
    #   * {Types::IntegrationResponse#response_templates #response_templates} => Hash&lt;String,String&gt;
    #   * {Types::IntegrationResponse#content_handling #content_handling} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_integration_response({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> String
    #   resp.selection_pattern #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["String"] #=> String
    #   resp.response_templates #=> Hash
    #   resp.response_templates["String"] #=> String
    #   resp.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #
    # @overload update_integration_response(params = {})
    # @param [Hash] params ({})
    def update_integration_response(params = {}, options = {})
      req = build_request(:update_integration_response, params)
      req.send_request(options)
    end

    # Updates an existing Method resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] The Resource identifier for the Method resource.
    #
    # @option params [required, String] :http_method
    #   \[Required\] The HTTP verb of the Method resource.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::Method] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Method#http_method #http_method} => String
    #   * {Types::Method#authorization_type #authorization_type} => String
    #   * {Types::Method#authorizer_id #authorizer_id} => String
    #   * {Types::Method#api_key_required #api_key_required} => Boolean
    #   * {Types::Method#request_validator_id #request_validator_id} => String
    #   * {Types::Method#operation_name #operation_name} => String
    #   * {Types::Method#request_parameters #request_parameters} => Hash&lt;String,Boolean&gt;
    #   * {Types::Method#request_models #request_models} => Hash&lt;String,String&gt;
    #   * {Types::Method#method_responses #method_responses} => Hash&lt;String,Types::MethodResponse&gt;
    #   * {Types::Method#method_integration #method_integration} => Types::Integration
    #   * {Types::Method#authorization_scopes #authorization_scopes} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_method({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.http_method #=> String
    #   resp.authorization_type #=> String
    #   resp.authorizer_id #=> String
    #   resp.api_key_required #=> Boolean
    #   resp.request_validator_id #=> String
    #   resp.operation_name #=> String
    #   resp.request_parameters #=> Hash
    #   resp.request_parameters["String"] #=> Boolean
    #   resp.request_models #=> Hash
    #   resp.request_models["String"] #=> String
    #   resp.method_responses #=> Hash
    #   resp.method_responses["String"].status_code #=> String
    #   resp.method_responses["String"].response_parameters #=> Hash
    #   resp.method_responses["String"].response_parameters["String"] #=> Boolean
    #   resp.method_responses["String"].response_models #=> Hash
    #   resp.method_responses["String"].response_models["String"] #=> String
    #   resp.method_integration.type #=> String, one of "HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.method_integration.http_method #=> String
    #   resp.method_integration.uri #=> String
    #   resp.method_integration.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.method_integration.connection_id #=> String
    #   resp.method_integration.credentials #=> String
    #   resp.method_integration.request_parameters #=> Hash
    #   resp.method_integration.request_parameters["String"] #=> String
    #   resp.method_integration.request_templates #=> Hash
    #   resp.method_integration.request_templates["String"] #=> String
    #   resp.method_integration.passthrough_behavior #=> String
    #   resp.method_integration.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.method_integration.timeout_in_millis #=> Integer
    #   resp.method_integration.cache_namespace #=> String
    #   resp.method_integration.cache_key_parameters #=> Array
    #   resp.method_integration.cache_key_parameters[0] #=> String
    #   resp.method_integration.integration_responses #=> Hash
    #   resp.method_integration.integration_responses["String"].status_code #=> String
    #   resp.method_integration.integration_responses["String"].selection_pattern #=> String
    #   resp.method_integration.integration_responses["String"].response_parameters #=> Hash
    #   resp.method_integration.integration_responses["String"].response_parameters["String"] #=> String
    #   resp.method_integration.integration_responses["String"].response_templates #=> Hash
    #   resp.method_integration.integration_responses["String"].response_templates["String"] #=> String
    #   resp.method_integration.integration_responses["String"].content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.authorization_scopes #=> Array
    #   resp.authorization_scopes[0] #=> String
    #
    # @overload update_method(params = {})
    # @param [Hash] params ({})
    def update_method(params = {}, options = {})
      req = build_request(:update_method, params)
      req.send_request(options)
    end

    # Updates an existing MethodResponse resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] The Resource identifier for the MethodResponse resource.
    #
    # @option params [required, String] :http_method
    #   \[Required\] The HTTP verb of the Method resource.
    #
    # @option params [required, String] :status_code
    #   \[Required\] The status code for the MethodResponse resource.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::MethodResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MethodResponse#status_code #status_code} => String
    #   * {Types::MethodResponse#response_parameters #response_parameters} => Hash&lt;String,Boolean&gt;
    #   * {Types::MethodResponse#response_models #response_models} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_method_response({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     http_method: "String", # required
    #     status_code: "StatusCode", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> String
    #   resp.response_parameters #=> Hash
    #   resp.response_parameters["String"] #=> Boolean
    #   resp.response_models #=> Hash
    #   resp.response_models["String"] #=> String
    #
    # @overload update_method_response(params = {})
    # @param [Hash] params ({})
    def update_method_response(params = {}, options = {})
      req = build_request(:update_method_response, params)
      req.send_request(options)
    end

    # Changes information about a model.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :model_name
    #   \[Required\] The name of the model to update.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::Model] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Model#id #id} => String
    #   * {Types::Model#name #name} => String
    #   * {Types::Model#description #description} => String
    #   * {Types::Model#schema #schema} => String
    #   * {Types::Model#content_type #content_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_model({
    #     rest_api_id: "String", # required
    #     model_name: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.schema #=> String
    #   resp.content_type #=> String
    #
    # @overload update_model(params = {})
    # @param [Hash] params ({})
    def update_model(params = {}, options = {})
      req = build_request(:update_model, params)
      req.send_request(options)
    end

    # Updates a RequestValidator of a given RestApi.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :request_validator_id
    #   \[Required\] The identifier of RequestValidator to be updated.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::RequestValidator] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestValidator#id #id} => String
    #   * {Types::RequestValidator#name #name} => String
    #   * {Types::RequestValidator#validate_request_body #validate_request_body} => Boolean
    #   * {Types::RequestValidator#validate_request_parameters #validate_request_parameters} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_request_validator({
    #     rest_api_id: "String", # required
    #     request_validator_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.validate_request_body #=> Boolean
    #   resp.validate_request_parameters #=> Boolean
    #
    # @overload update_request_validator(params = {})
    # @param [Hash] params ({})
    def update_request_validator(params = {}, options = {})
      req = build_request(:update_request_validator, params)
      req.send_request(options)
    end

    # Changes information about a Resource resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :resource_id
    #   \[Required\] The identifier of the Resource resource.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::Resource] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Resource#id #id} => String
    #   * {Types::Resource#parent_id #parent_id} => String
    #   * {Types::Resource#path_part #path_part} => String
    #   * {Types::Resource#path #path} => String
    #   * {Types::Resource#resource_methods #resource_methods} => Hash&lt;String,Types::Method&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource({
    #     rest_api_id: "String", # required
    #     resource_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.parent_id #=> String
    #   resp.path_part #=> String
    #   resp.path #=> String
    #   resp.resource_methods #=> Hash
    #   resp.resource_methods["String"].http_method #=> String
    #   resp.resource_methods["String"].authorization_type #=> String
    #   resp.resource_methods["String"].authorizer_id #=> String
    #   resp.resource_methods["String"].api_key_required #=> Boolean
    #   resp.resource_methods["String"].request_validator_id #=> String
    #   resp.resource_methods["String"].operation_name #=> String
    #   resp.resource_methods["String"].request_parameters #=> Hash
    #   resp.resource_methods["String"].request_parameters["String"] #=> Boolean
    #   resp.resource_methods["String"].request_models #=> Hash
    #   resp.resource_methods["String"].request_models["String"] #=> String
    #   resp.resource_methods["String"].method_responses #=> Hash
    #   resp.resource_methods["String"].method_responses["String"].status_code #=> String
    #   resp.resource_methods["String"].method_responses["String"].response_parameters #=> Hash
    #   resp.resource_methods["String"].method_responses["String"].response_parameters["String"] #=> Boolean
    #   resp.resource_methods["String"].method_responses["String"].response_models #=> Hash
    #   resp.resource_methods["String"].method_responses["String"].response_models["String"] #=> String
    #   resp.resource_methods["String"].method_integration.type #=> String, one of "HTTP", "AWS", "MOCK", "HTTP_PROXY", "AWS_PROXY"
    #   resp.resource_methods["String"].method_integration.http_method #=> String
    #   resp.resource_methods["String"].method_integration.uri #=> String
    #   resp.resource_methods["String"].method_integration.connection_type #=> String, one of "INTERNET", "VPC_LINK"
    #   resp.resource_methods["String"].method_integration.connection_id #=> String
    #   resp.resource_methods["String"].method_integration.credentials #=> String
    #   resp.resource_methods["String"].method_integration.request_parameters #=> Hash
    #   resp.resource_methods["String"].method_integration.request_parameters["String"] #=> String
    #   resp.resource_methods["String"].method_integration.request_templates #=> Hash
    #   resp.resource_methods["String"].method_integration.request_templates["String"] #=> String
    #   resp.resource_methods["String"].method_integration.passthrough_behavior #=> String
    #   resp.resource_methods["String"].method_integration.content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.resource_methods["String"].method_integration.timeout_in_millis #=> Integer
    #   resp.resource_methods["String"].method_integration.cache_namespace #=> String
    #   resp.resource_methods["String"].method_integration.cache_key_parameters #=> Array
    #   resp.resource_methods["String"].method_integration.cache_key_parameters[0] #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses #=> Hash
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].status_code #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].selection_pattern #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_parameters #=> Hash
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_parameters["String"] #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_templates #=> Hash
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].response_templates["String"] #=> String
    #   resp.resource_methods["String"].method_integration.integration_responses["String"].content_handling #=> String, one of "CONVERT_TO_BINARY", "CONVERT_TO_TEXT"
    #   resp.resource_methods["String"].authorization_scopes #=> Array
    #   resp.resource_methods["String"].authorization_scopes[0] #=> String
    #
    # @overload update_resource(params = {})
    # @param [Hash] params ({})
    def update_resource(params = {}, options = {})
      req = build_request(:update_resource, params)
      req.send_request(options)
    end

    # Changes information about the specified API.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::RestApi] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestApi#id #id} => String
    #   * {Types::RestApi#name #name} => String
    #   * {Types::RestApi#description #description} => String
    #   * {Types::RestApi#created_date #created_date} => Time
    #   * {Types::RestApi#version #version} => String
    #   * {Types::RestApi#warnings #warnings} => Array&lt;String&gt;
    #   * {Types::RestApi#binary_media_types #binary_media_types} => Array&lt;String&gt;
    #   * {Types::RestApi#minimum_compression_size #minimum_compression_size} => Integer
    #   * {Types::RestApi#api_key_source #api_key_source} => String
    #   * {Types::RestApi#endpoint_configuration #endpoint_configuration} => Types::EndpointConfiguration
    #   * {Types::RestApi#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rest_api({
    #     rest_api_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.created_date #=> Time
    #   resp.version #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0] #=> String
    #   resp.binary_media_types #=> Array
    #   resp.binary_media_types[0] #=> String
    #   resp.minimum_compression_size #=> Integer
    #   resp.api_key_source #=> String, one of "HEADER", "AUTHORIZER"
    #   resp.endpoint_configuration.types #=> Array
    #   resp.endpoint_configuration.types[0] #=> String, one of "REGIONAL", "EDGE", "PRIVATE"
    #   resp.policy #=> String
    #
    # @overload update_rest_api(params = {})
    # @param [Hash] params ({})
    def update_rest_api(params = {}, options = {})
      req = build_request(:update_rest_api, params)
      req.send_request(options)
    end

    # Changes information about a Stage resource.
    #
    # @option params [required, String] :rest_api_id
    #   \[Required\] The string identifier of the associated RestApi.
    #
    # @option params [required, String] :stage_name
    #   \[Required\] The name of the Stage resource to change information
    #   about.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::Stage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Stage#deployment_id #deployment_id} => String
    #   * {Types::Stage#client_certificate_id #client_certificate_id} => String
    #   * {Types::Stage#stage_name #stage_name} => String
    #   * {Types::Stage#description #description} => String
    #   * {Types::Stage#cache_cluster_enabled #cache_cluster_enabled} => Boolean
    #   * {Types::Stage#cache_cluster_size #cache_cluster_size} => String
    #   * {Types::Stage#cache_cluster_status #cache_cluster_status} => String
    #   * {Types::Stage#method_settings #method_settings} => Hash&lt;String,Types::MethodSetting&gt;
    #   * {Types::Stage#variables #variables} => Hash&lt;String,String&gt;
    #   * {Types::Stage#documentation_version #documentation_version} => String
    #   * {Types::Stage#access_log_settings #access_log_settings} => Types::AccessLogSettings
    #   * {Types::Stage#canary_settings #canary_settings} => Types::CanarySettings
    #   * {Types::Stage#tracing_enabled #tracing_enabled} => Boolean
    #   * {Types::Stage#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::Stage#created_date #created_date} => Time
    #   * {Types::Stage#last_updated_date #last_updated_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stage({
    #     rest_api_id: "String", # required
    #     stage_name: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.deployment_id #=> String
    #   resp.client_certificate_id #=> String
    #   resp.stage_name #=> String
    #   resp.description #=> String
    #   resp.cache_cluster_enabled #=> Boolean
    #   resp.cache_cluster_size #=> String, one of "0.5", "1.6", "6.1", "13.5", "28.4", "58.2", "118", "237"
    #   resp.cache_cluster_status #=> String, one of "CREATE_IN_PROGRESS", "AVAILABLE", "DELETE_IN_PROGRESS", "NOT_AVAILABLE", "FLUSH_IN_PROGRESS"
    #   resp.method_settings #=> Hash
    #   resp.method_settings["String"].metrics_enabled #=> Boolean
    #   resp.method_settings["String"].logging_level #=> String
    #   resp.method_settings["String"].data_trace_enabled #=> Boolean
    #   resp.method_settings["String"].throttling_burst_limit #=> Integer
    #   resp.method_settings["String"].throttling_rate_limit #=> Float
    #   resp.method_settings["String"].caching_enabled #=> Boolean
    #   resp.method_settings["String"].cache_ttl_in_seconds #=> Integer
    #   resp.method_settings["String"].cache_data_encrypted #=> Boolean
    #   resp.method_settings["String"].require_authorization_for_cache_control #=> Boolean
    #   resp.method_settings["String"].unauthorized_cache_control_header_strategy #=> String, one of "FAIL_WITH_403", "SUCCEED_WITH_RESPONSE_HEADER", "SUCCEED_WITHOUT_RESPONSE_HEADER"
    #   resp.variables #=> Hash
    #   resp.variables["String"] #=> String
    #   resp.documentation_version #=> String
    #   resp.access_log_settings.format #=> String
    #   resp.access_log_settings.destination_arn #=> String
    #   resp.canary_settings.percent_traffic #=> Float
    #   resp.canary_settings.deployment_id #=> String
    #   resp.canary_settings.stage_variable_overrides #=> Hash
    #   resp.canary_settings.stage_variable_overrides["String"] #=> String
    #   resp.canary_settings.use_stage_cache #=> Boolean
    #   resp.tracing_enabled #=> Boolean
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.created_date #=> Time
    #   resp.last_updated_date #=> Time
    #
    # @overload update_stage(params = {})
    # @param [Hash] params ({})
    def update_stage(params = {}, options = {})
      req = build_request(:update_stage, params)
      req.send_request(options)
    end

    # Grants a temporary extension to the remaining quota of a usage plan
    # associated with a specified API key.
    #
    # @option params [required, String] :usage_plan_id
    #   \[Required\] The Id of the usage plan associated with the usage data.
    #
    # @option params [required, String] :key_id
    #   \[Required\] The identifier of the API key associated with the usage
    #   plan in which a temporary extension is granted to the remaining quota.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::Usage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::Usage#usage_plan_id #usage_plan_id} => String
    #   * {Types::Usage#start_date #start_date} => String
    #   * {Types::Usage#end_date #end_date} => String
    #   * {Types::Usage#position #position} => String
    #   * {Types::Usage#items #items} => Hash&lt;String,Array&lt;Array&lt;Integer&gt;&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_usage({
    #     usage_plan_id: "String", # required
    #     key_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.usage_plan_id #=> String
    #   resp.start_date #=> String
    #   resp.end_date #=> String
    #   resp.position #=> String
    #   resp.items #=> Hash
    #   resp.items["String"] #=> Array
    #   resp.items["String"][0] #=> Array
    #   resp.items["String"][0][0] #=> Integer
    #
    # @overload update_usage(params = {})
    # @param [Hash] params ({})
    def update_usage(params = {}, options = {})
      req = build_request(:update_usage, params)
      req.send_request(options)
    end

    # Updates a usage plan of a given plan Id.
    #
    # @option params [required, String] :usage_plan_id
    #   \[Required\] The Id of the to-be-updated usage plan.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::UsagePlan] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UsagePlan#id #id} => String
    #   * {Types::UsagePlan#name #name} => String
    #   * {Types::UsagePlan#description #description} => String
    #   * {Types::UsagePlan#api_stages #api_stages} => Array&lt;Types::ApiStage&gt;
    #   * {Types::UsagePlan#throttle #throttle} => Types::ThrottleSettings
    #   * {Types::UsagePlan#quota #quota} => Types::QuotaSettings
    #   * {Types::UsagePlan#product_code #product_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_usage_plan({
    #     usage_plan_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.api_stages #=> Array
    #   resp.api_stages[0].api_id #=> String
    #   resp.api_stages[0].stage #=> String
    #   resp.api_stages[0].throttle #=> Hash
    #   resp.api_stages[0].throttle["String"].burst_limit #=> Integer
    #   resp.api_stages[0].throttle["String"].rate_limit #=> Float
    #   resp.throttle.burst_limit #=> Integer
    #   resp.throttle.rate_limit #=> Float
    #   resp.quota.limit #=> Integer
    #   resp.quota.offset #=> Integer
    #   resp.quota.period #=> String, one of "DAY", "WEEK", "MONTH"
    #   resp.product_code #=> String
    #
    # @overload update_usage_plan(params = {})
    # @param [Hash] params ({})
    def update_usage_plan(params = {}, options = {})
      req = build_request(:update_usage_plan, params)
      req.send_request(options)
    end

    # Updates an existing VpcLink of a specified identifier.
    #
    # @option params [required, String] :vpc_link_id
    #   \[Required\] The identifier of the VpcLink. It is used in an
    #   Integration to reference this VpcLink.
    #
    # @option params [Array<Types::PatchOperation>] :patch_operations
    #   A list of update operations to be applied to the specified resource
    #   and in the order specified in this list.
    #
    # @return [Types::VpcLink] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VpcLink#id #id} => String
    #   * {Types::VpcLink#name #name} => String
    #   * {Types::VpcLink#description #description} => String
    #   * {Types::VpcLink#target_arns #target_arns} => Array&lt;String&gt;
    #   * {Types::VpcLink#status #status} => String
    #   * {Types::VpcLink#status_message #status_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpc_link({
    #     vpc_link_id: "String", # required
    #     patch_operations: [
    #       {
    #         op: "add", # accepts add, remove, replace, move, copy, test
    #         path: "String",
    #         value: "String",
    #         from: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.target_arns #=> Array
    #   resp.target_arns[0] #=> String
    #   resp.status #=> String, one of "AVAILABLE", "PENDING", "DELETING", "FAILED"
    #   resp.status_message #=> String
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
      context[:gem_name] = 'aws-sdk-apigateway'
      context[:gem_version] = '1.16.0'
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
