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

Aws::Plugins::GlobalConfiguration.add_identifier(:appsync)

module Aws::AppSync
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :appsync

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

    # Creates a unique key that you can distribute to clients who are
    # executing your API.
    #
    # @option params [required, String] :api_id
    #   The ID for your GraphQL API.
    #
    # @option params [String] :description
    #   A description of the purpose of the API key.
    #
    # @option params [Integer] :expires
    #   The time from creation time after which the API key expires. The date
    #   is represented as seconds since the epoch, rounded down to the nearest
    #   hour. The default value for this parameter is 7 days from creation
    #   time. For more information, see .
    #
    # @return [Types::CreateApiKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApiKeyResponse#api_key #api_key} => Types::ApiKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api_key({
    #     api_id: "String", # required
    #     description: "String",
    #     expires: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.api_key.id #=> String
    #   resp.api_key.description #=> String
    #   resp.api_key.expires #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateApiKey AWS API Documentation
    #
    # @overload create_api_key(params = {})
    # @param [Hash] params ({})
    def create_api_key(params = {}, options = {})
      req = build_request(:create_api_key, params)
      req.send_request(options)
    end

    # Creates a `DataSource` object.
    #
    # @option params [required, String] :api_id
    #   The API ID for the GraphQL API for the `DataSource`.
    #
    # @option params [required, String] :name
    #   A user-supplied name for the `DataSource`.
    #
    # @option params [String] :description
    #   A description of the `DataSource`.
    #
    # @option params [required, String] :type
    #   The type of the `DataSource`.
    #
    # @option params [String] :service_role_arn
    #   The IAM service role ARN for the data source. The system assumes this
    #   role when accessing the data source.
    #
    # @option params [Types::DynamodbDataSourceConfig] :dynamodb_config
    #   DynamoDB settings.
    #
    # @option params [Types::LambdaDataSourceConfig] :lambda_config
    #   AWS Lambda settings.
    #
    # @option params [Types::ElasticsearchDataSourceConfig] :elasticsearch_config
    #   Amazon Elasticsearch settings.
    #
    # @option params [Types::HttpDataSourceConfig] :http_config
    #   Http endpoint settings.
    #
    # @return [Types::CreateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceResponse#data_source #data_source} => Types::DataSource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source({
    #     api_id: "String", # required
    #     name: "ResourceName", # required
    #     description: "String",
    #     type: "AWS_LAMBDA", # required, accepts AWS_LAMBDA, AMAZON_DYNAMODB, AMAZON_ELASTICSEARCH, NONE, HTTP
    #     service_role_arn: "String",
    #     dynamodb_config: {
    #       table_name: "String", # required
    #       aws_region: "String", # required
    #       use_caller_credentials: false,
    #     },
    #     lambda_config: {
    #       lambda_function_arn: "String", # required
    #     },
    #     elasticsearch_config: {
    #       endpoint: "String", # required
    #       aws_region: "String", # required
    #     },
    #     http_config: {
    #       endpoint: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.data_source_arn #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.description #=> String
    #   resp.data_source.type #=> String, one of "AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP"
    #   resp.data_source.service_role_arn #=> String
    #   resp.data_source.dynamodb_config.table_name #=> String
    #   resp.data_source.dynamodb_config.aws_region #=> String
    #   resp.data_source.dynamodb_config.use_caller_credentials #=> Boolean
    #   resp.data_source.lambda_config.lambda_function_arn #=> String
    #   resp.data_source.elasticsearch_config.endpoint #=> String
    #   resp.data_source.elasticsearch_config.aws_region #=> String
    #   resp.data_source.http_config.endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateDataSource AWS API Documentation
    #
    # @overload create_data_source(params = {})
    # @param [Hash] params ({})
    def create_data_source(params = {}, options = {})
      req = build_request(:create_data_source, params)
      req.send_request(options)
    end

    # Creates a `GraphqlApi` object.
    #
    # @option params [required, String] :name
    #   A user-supplied name for the `GraphqlApi`.
    #
    # @option params [Types::LogConfig] :log_config
    #   The Amazon CloudWatch logs configuration.
    #
    # @option params [required, String] :authentication_type
    #   The authentication type: API key, IAM, or Amazon Cognito User Pools.
    #
    # @option params [Types::UserPoolConfig] :user_pool_config
    #   The Amazon Cognito User Pool configuration.
    #
    # @option params [Types::OpenIDConnectConfig] :open_id_connect_config
    #   The Open Id Connect configuration configuration.
    #
    # @return [Types::CreateGraphqlApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGraphqlApiResponse#graphql_api #graphql_api} => Types::GraphqlApi
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_graphql_api({
    #     name: "String", # required
    #     log_config: {
    #       field_log_level: "NONE", # required, accepts NONE, ERROR, ALL
    #       cloud_watch_logs_role_arn: "String", # required
    #     },
    #     authentication_type: "API_KEY", # required, accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #     user_pool_config: {
    #       user_pool_id: "String", # required
    #       aws_region: "String", # required
    #       default_action: "ALLOW", # required, accepts ALLOW, DENY
    #       app_id_client_regex: "String",
    #     },
    #     open_id_connect_config: {
    #       issuer: "String", # required
    #       client_id: "String",
    #       iat_ttl: 1,
    #       auth_ttl: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.graphql_api.name #=> String
    #   resp.graphql_api.api_id #=> String
    #   resp.graphql_api.authentication_type #=> String, one of "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"
    #   resp.graphql_api.log_config.field_log_level #=> String, one of "NONE", "ERROR", "ALL"
    #   resp.graphql_api.log_config.cloud_watch_logs_role_arn #=> String
    #   resp.graphql_api.user_pool_config.user_pool_id #=> String
    #   resp.graphql_api.user_pool_config.aws_region #=> String
    #   resp.graphql_api.user_pool_config.default_action #=> String, one of "ALLOW", "DENY"
    #   resp.graphql_api.user_pool_config.app_id_client_regex #=> String
    #   resp.graphql_api.open_id_connect_config.issuer #=> String
    #   resp.graphql_api.open_id_connect_config.client_id #=> String
    #   resp.graphql_api.open_id_connect_config.iat_ttl #=> Integer
    #   resp.graphql_api.open_id_connect_config.auth_ttl #=> Integer
    #   resp.graphql_api.arn #=> String
    #   resp.graphql_api.uris #=> Hash
    #   resp.graphql_api.uris["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateGraphqlApi AWS API Documentation
    #
    # @overload create_graphql_api(params = {})
    # @param [Hash] params ({})
    def create_graphql_api(params = {}, options = {})
      req = build_request(:create_graphql_api, params)
      req.send_request(options)
    end

    # Creates a `Resolver` object.
    #
    # A resolver converts incoming requests into a format that a data source
    # can understand and converts the data source's responses into GraphQL.
    #
    # @option params [required, String] :api_id
    #   The ID for the GraphQL API for which the resolver is being created.
    #
    # @option params [required, String] :type_name
    #   The name of the `Type`.
    #
    # @option params [required, String] :field_name
    #   The name of the field to attach the resolver to.
    #
    # @option params [required, String] :data_source_name
    #   The name of the data source for which the resolver is being created.
    #
    # @option params [required, String] :request_mapping_template
    #   The mapping template to be used for requests.
    #
    #   A resolver uses a request mapping template to convert a GraphQL
    #   expression into a format that a data source can understand. Mapping
    #   templates are written in Apache Velocity Template Language (VTL).
    #
    # @option params [String] :response_mapping_template
    #   The mapping template to be used for responses from the data source.
    #
    # @return [Types::CreateResolverResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateResolverResponse#resolver #resolver} => Types::Resolver
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resolver({
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #     field_name: "ResourceName", # required
    #     data_source_name: "ResourceName", # required
    #     request_mapping_template: "MappingTemplate", # required
    #     response_mapping_template: "MappingTemplate",
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver.type_name #=> String
    #   resp.resolver.field_name #=> String
    #   resp.resolver.data_source_name #=> String
    #   resp.resolver.resolver_arn #=> String
    #   resp.resolver.request_mapping_template #=> String
    #   resp.resolver.response_mapping_template #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateResolver AWS API Documentation
    #
    # @overload create_resolver(params = {})
    # @param [Hash] params ({})
    def create_resolver(params = {}, options = {})
      req = build_request(:create_resolver, params)
      req.send_request(options)
    end

    # Creates a `Type` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :definition
    #   The type definition, in GraphQL Schema Definition Language (SDL)
    #   format.
    #
    #   For more information, see the [GraphQL SDL documentation][1].
    #
    #
    #
    #   [1]: http://graphql.org/learn/schema/
    #
    # @option params [required, String] :format
    #   The type format: SDL or JSON.
    #
    # @return [Types::CreateTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTypeResponse#type #type} => Types::Type
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_type({
    #     api_id: "String", # required
    #     definition: "String", # required
    #     format: "SDL", # required, accepts SDL, JSON
    #   })
    #
    # @example Response structure
    #
    #   resp.type.name #=> String
    #   resp.type.description #=> String
    #   resp.type.arn #=> String
    #   resp.type.definition #=> String
    #   resp.type.format #=> String, one of "SDL", "JSON"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateType AWS API Documentation
    #
    # @overload create_type(params = {})
    # @param [Hash] params ({})
    def create_type(params = {}, options = {})
      req = build_request(:create_type, params)
      req.send_request(options)
    end

    # Deletes an API key.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :id
    #   The ID for the API key.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_api_key({
    #     api_id: "String", # required
    #     id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteApiKey AWS API Documentation
    #
    # @overload delete_api_key(params = {})
    # @param [Hash] params ({})
    def delete_api_key(params = {}, options = {})
      req = build_request(:delete_api_key, params)
      req.send_request(options)
    end

    # Deletes a `DataSource` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :name
    #   The name of the data source.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     api_id: "String", # required
    #     name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteDataSource AWS API Documentation
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
      req.send_request(options)
    end

    # Deletes a `GraphqlApi` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_graphql_api({
    #     api_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteGraphqlApi AWS API Documentation
    #
    # @overload delete_graphql_api(params = {})
    # @param [Hash] params ({})
    def delete_graphql_api(params = {}, options = {})
      req = build_request(:delete_graphql_api, params)
      req.send_request(options)
    end

    # Deletes a `Resolver` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :type_name
    #   The name of the resolver type.
    #
    # @option params [required, String] :field_name
    #   The resolver field name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resolver({
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #     field_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteResolver AWS API Documentation
    #
    # @overload delete_resolver(params = {})
    # @param [Hash] params ({})
    def delete_resolver(params = {}, options = {})
      req = build_request(:delete_resolver, params)
      req.send_request(options)
    end

    # Deletes a `Type` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :type_name
    #   The type name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_type({
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteType AWS API Documentation
    #
    # @overload delete_type(params = {})
    # @param [Hash] params ({})
    def delete_type(params = {}, options = {})
      req = build_request(:delete_type, params)
      req.send_request(options)
    end

    # Retrieves a `DataSource` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :name
    #   The name of the data source.
    #
    # @return [Types::GetDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSourceResponse#data_source #data_source} => Types::DataSource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_source({
    #     api_id: "String", # required
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.data_source_arn #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.description #=> String
    #   resp.data_source.type #=> String, one of "AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP"
    #   resp.data_source.service_role_arn #=> String
    #   resp.data_source.dynamodb_config.table_name #=> String
    #   resp.data_source.dynamodb_config.aws_region #=> String
    #   resp.data_source.dynamodb_config.use_caller_credentials #=> Boolean
    #   resp.data_source.lambda_config.lambda_function_arn #=> String
    #   resp.data_source.elasticsearch_config.endpoint #=> String
    #   resp.data_source.elasticsearch_config.aws_region #=> String
    #   resp.data_source.http_config.endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetDataSource AWS API Documentation
    #
    # @overload get_data_source(params = {})
    # @param [Hash] params ({})
    def get_data_source(params = {}, options = {})
      req = build_request(:get_data_source, params)
      req.send_request(options)
    end

    # Retrieves a `GraphqlApi` object.
    #
    # @option params [required, String] :api_id
    #   The API ID for the GraphQL API.
    #
    # @return [Types::GetGraphqlApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGraphqlApiResponse#graphql_api #graphql_api} => Types::GraphqlApi
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_graphql_api({
    #     api_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.graphql_api.name #=> String
    #   resp.graphql_api.api_id #=> String
    #   resp.graphql_api.authentication_type #=> String, one of "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"
    #   resp.graphql_api.log_config.field_log_level #=> String, one of "NONE", "ERROR", "ALL"
    #   resp.graphql_api.log_config.cloud_watch_logs_role_arn #=> String
    #   resp.graphql_api.user_pool_config.user_pool_id #=> String
    #   resp.graphql_api.user_pool_config.aws_region #=> String
    #   resp.graphql_api.user_pool_config.default_action #=> String, one of "ALLOW", "DENY"
    #   resp.graphql_api.user_pool_config.app_id_client_regex #=> String
    #   resp.graphql_api.open_id_connect_config.issuer #=> String
    #   resp.graphql_api.open_id_connect_config.client_id #=> String
    #   resp.graphql_api.open_id_connect_config.iat_ttl #=> Integer
    #   resp.graphql_api.open_id_connect_config.auth_ttl #=> Integer
    #   resp.graphql_api.arn #=> String
    #   resp.graphql_api.uris #=> Hash
    #   resp.graphql_api.uris["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetGraphqlApi AWS API Documentation
    #
    # @overload get_graphql_api(params = {})
    # @param [Hash] params ({})
    def get_graphql_api(params = {}, options = {})
      req = build_request(:get_graphql_api, params)
      req.send_request(options)
    end

    # Retrieves the introspection schema for a GraphQL API.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :format
    #   The schema format: SDL or JSON.
    #
    # @return [Types::GetIntrospectionSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntrospectionSchemaResponse#schema #schema} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_introspection_schema({
    #     api_id: "String", # required
    #     format: "SDL", # required, accepts SDL, JSON
    #   })
    #
    # @example Response structure
    #
    #   resp.schema #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetIntrospectionSchema AWS API Documentation
    #
    # @overload get_introspection_schema(params = {})
    # @param [Hash] params ({})
    def get_introspection_schema(params = {}, options = {})
      req = build_request(:get_introspection_schema, params)
      req.send_request(options)
    end

    # Retrieves a `Resolver` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :type_name
    #   The resolver type name.
    #
    # @option params [required, String] :field_name
    #   The resolver field name.
    #
    # @return [Types::GetResolverResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResolverResponse#resolver #resolver} => Types::Resolver
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resolver({
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #     field_name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver.type_name #=> String
    #   resp.resolver.field_name #=> String
    #   resp.resolver.data_source_name #=> String
    #   resp.resolver.resolver_arn #=> String
    #   resp.resolver.request_mapping_template #=> String
    #   resp.resolver.response_mapping_template #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetResolver AWS API Documentation
    #
    # @overload get_resolver(params = {})
    # @param [Hash] params ({})
    def get_resolver(params = {}, options = {})
      req = build_request(:get_resolver, params)
      req.send_request(options)
    end

    # Retrieves the current status of a schema creation operation.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @return [Types::GetSchemaCreationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSchemaCreationStatusResponse#status #status} => String
    #   * {Types::GetSchemaCreationStatusResponse#details #details} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema_creation_status({
    #     api_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "PROCESSING", "ACTIVE", "DELETING"
    #   resp.details #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetSchemaCreationStatus AWS API Documentation
    #
    # @overload get_schema_creation_status(params = {})
    # @param [Hash] params ({})
    def get_schema_creation_status(params = {}, options = {})
      req = build_request(:get_schema_creation_status, params)
      req.send_request(options)
    end

    # Retrieves a `Type` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :type_name
    #   The type name.
    #
    # @option params [required, String] :format
    #   The type format: SDL or JSON.
    #
    # @return [Types::GetTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTypeResponse#type #type} => Types::Type
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_type({
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #     format: "SDL", # required, accepts SDL, JSON
    #   })
    #
    # @example Response structure
    #
    #   resp.type.name #=> String
    #   resp.type.description #=> String
    #   resp.type.arn #=> String
    #   resp.type.definition #=> String
    #   resp.type.format #=> String, one of "SDL", "JSON"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetType AWS API Documentation
    #
    # @overload get_type(params = {})
    # @param [Hash] params ({})
    def get_type(params = {}, options = {})
      req = build_request(:get_type, params)
      req.send_request(options)
    end

    # Lists the API keys for a given API.
    #
    # <note markdown="1"> API keys are deleted automatically sometime after they expire.
    # However, they may still be included in the response until they have
    # actually been deleted. You can safely call `DeleteApiKey` to manually
    # delete a key before it's automatically deleted.
    #
    #  </note>
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results you want the request to return.
    #
    # @return [Types::ListApiKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApiKeysResponse#api_keys #api_keys} => Array&lt;Types::ApiKey&gt;
    #   * {Types::ListApiKeysResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_api_keys({
    #     api_id: "String", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.api_keys #=> Array
    #   resp.api_keys[0].id #=> String
    #   resp.api_keys[0].description #=> String
    #   resp.api_keys[0].expires #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListApiKeys AWS API Documentation
    #
    # @overload list_api_keys(params = {})
    # @param [Hash] params ({})
    def list_api_keys(params = {}, options = {})
      req = build_request(:list_api_keys, params)
      req.send_request(options)
    end

    # Lists the data sources for a given API.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results you want the request to return.
    #
    # @return [Types::ListDataSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourcesResponse#data_sources #data_sources} => Array&lt;Types::DataSource&gt;
    #   * {Types::ListDataSourcesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources({
    #     api_id: "String", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_sources #=> Array
    #   resp.data_sources[0].data_source_arn #=> String
    #   resp.data_sources[0].name #=> String
    #   resp.data_sources[0].description #=> String
    #   resp.data_sources[0].type #=> String, one of "AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP"
    #   resp.data_sources[0].service_role_arn #=> String
    #   resp.data_sources[0].dynamodb_config.table_name #=> String
    #   resp.data_sources[0].dynamodb_config.aws_region #=> String
    #   resp.data_sources[0].dynamodb_config.use_caller_credentials #=> Boolean
    #   resp.data_sources[0].lambda_config.lambda_function_arn #=> String
    #   resp.data_sources[0].elasticsearch_config.endpoint #=> String
    #   resp.data_sources[0].elasticsearch_config.aws_region #=> String
    #   resp.data_sources[0].http_config.endpoint #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListDataSources AWS API Documentation
    #
    # @overload list_data_sources(params = {})
    # @param [Hash] params ({})
    def list_data_sources(params = {}, options = {})
      req = build_request(:list_data_sources, params)
      req.send_request(options)
    end

    # Lists your GraphQL APIs.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results you want the request to return.
    #
    # @return [Types::ListGraphqlApisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGraphqlApisResponse#graphql_apis #graphql_apis} => Array&lt;Types::GraphqlApi&gt;
    #   * {Types::ListGraphqlApisResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_graphql_apis({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.graphql_apis #=> Array
    #   resp.graphql_apis[0].name #=> String
    #   resp.graphql_apis[0].api_id #=> String
    #   resp.graphql_apis[0].authentication_type #=> String, one of "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"
    #   resp.graphql_apis[0].log_config.field_log_level #=> String, one of "NONE", "ERROR", "ALL"
    #   resp.graphql_apis[0].log_config.cloud_watch_logs_role_arn #=> String
    #   resp.graphql_apis[0].user_pool_config.user_pool_id #=> String
    #   resp.graphql_apis[0].user_pool_config.aws_region #=> String
    #   resp.graphql_apis[0].user_pool_config.default_action #=> String, one of "ALLOW", "DENY"
    #   resp.graphql_apis[0].user_pool_config.app_id_client_regex #=> String
    #   resp.graphql_apis[0].open_id_connect_config.issuer #=> String
    #   resp.graphql_apis[0].open_id_connect_config.client_id #=> String
    #   resp.graphql_apis[0].open_id_connect_config.iat_ttl #=> Integer
    #   resp.graphql_apis[0].open_id_connect_config.auth_ttl #=> Integer
    #   resp.graphql_apis[0].arn #=> String
    #   resp.graphql_apis[0].uris #=> Hash
    #   resp.graphql_apis[0].uris["String"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListGraphqlApis AWS API Documentation
    #
    # @overload list_graphql_apis(params = {})
    # @param [Hash] params ({})
    def list_graphql_apis(params = {}, options = {})
      req = build_request(:list_graphql_apis, params)
      req.send_request(options)
    end

    # Lists the resolvers for a given API and type.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :type_name
    #   The type name.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results you want the request to return.
    #
    # @return [Types::ListResolversResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResolversResponse#resolvers #resolvers} => Array&lt;Types::Resolver&gt;
    #   * {Types::ListResolversResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolvers({
    #     api_id: "String", # required
    #     type_name: "String", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resolvers #=> Array
    #   resp.resolvers[0].type_name #=> String
    #   resp.resolvers[0].field_name #=> String
    #   resp.resolvers[0].data_source_name #=> String
    #   resp.resolvers[0].resolver_arn #=> String
    #   resp.resolvers[0].request_mapping_template #=> String
    #   resp.resolvers[0].response_mapping_template #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListResolvers AWS API Documentation
    #
    # @overload list_resolvers(params = {})
    # @param [Hash] params ({})
    def list_resolvers(params = {}, options = {})
      req = build_request(:list_resolvers, params)
      req.send_request(options)
    end

    # Lists the types for a given API.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :format
    #   The type format: SDL or JSON.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results you want the request to return.
    #
    # @return [Types::ListTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTypesResponse#types #types} => Array&lt;Types::Type&gt;
    #   * {Types::ListTypesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_types({
    #     api_id: "String", # required
    #     format: "SDL", # required, accepts SDL, JSON
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.types #=> Array
    #   resp.types[0].name #=> String
    #   resp.types[0].description #=> String
    #   resp.types[0].arn #=> String
    #   resp.types[0].definition #=> String
    #   resp.types[0].format #=> String, one of "SDL", "JSON"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListTypes AWS API Documentation
    #
    # @overload list_types(params = {})
    # @param [Hash] params ({})
    def list_types(params = {}, options = {})
      req = build_request(:list_types, params)
      req.send_request(options)
    end

    # Adds a new schema to your GraphQL API.
    #
    # This operation is asynchronous. Use to determine when it has
    # completed.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String, IO] :definition
    #   The schema definition, in GraphQL schema language format.
    #
    # @return [Types::StartSchemaCreationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSchemaCreationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_schema_creation({
    #     api_id: "String", # required
    #     definition: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "PROCESSING", "ACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/StartSchemaCreation AWS API Documentation
    #
    # @overload start_schema_creation(params = {})
    # @param [Hash] params ({})
    def start_schema_creation(params = {}, options = {})
      req = build_request(:start_schema_creation, params)
      req.send_request(options)
    end

    # Updates an API key.
    #
    # @option params [required, String] :api_id
    #   The ID for the GraphQL API
    #
    # @option params [required, String] :id
    #   The API key ID.
    #
    # @option params [String] :description
    #   A description of the purpose of the API key.
    #
    # @option params [Integer] :expires
    #   The time from update time after which the API key expires. The date is
    #   represented as seconds since the epoch. For more information, see .
    #
    # @return [Types::UpdateApiKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApiKeyResponse#api_key #api_key} => Types::ApiKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api_key({
    #     api_id: "String", # required
    #     id: "String", # required
    #     description: "String",
    #     expires: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.api_key.id #=> String
    #   resp.api_key.description #=> String
    #   resp.api_key.expires #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateApiKey AWS API Documentation
    #
    # @overload update_api_key(params = {})
    # @param [Hash] params ({})
    def update_api_key(params = {}, options = {})
      req = build_request(:update_api_key, params)
      req.send_request(options)
    end

    # Updates a `DataSource` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :name
    #   The new name for the data source.
    #
    # @option params [String] :description
    #   The new description for the data source.
    #
    # @option params [required, String] :type
    #   The new data source type.
    #
    # @option params [String] :service_role_arn
    #   The new service role ARN for the data source.
    #
    # @option params [Types::DynamodbDataSourceConfig] :dynamodb_config
    #   The new DynamoDB configuration.
    #
    # @option params [Types::LambdaDataSourceConfig] :lambda_config
    #   The new Lambda configuration.
    #
    # @option params [Types::ElasticsearchDataSourceConfig] :elasticsearch_config
    #   The new Elasticsearch configuration.
    #
    # @option params [Types::HttpDataSourceConfig] :http_config
    #   The new http endpoint configuration
    #
    # @return [Types::UpdateDataSourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourceResponse#data_source #data_source} => Types::DataSource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     api_id: "String", # required
    #     name: "ResourceName", # required
    #     description: "String",
    #     type: "AWS_LAMBDA", # required, accepts AWS_LAMBDA, AMAZON_DYNAMODB, AMAZON_ELASTICSEARCH, NONE, HTTP
    #     service_role_arn: "String",
    #     dynamodb_config: {
    #       table_name: "String", # required
    #       aws_region: "String", # required
    #       use_caller_credentials: false,
    #     },
    #     lambda_config: {
    #       lambda_function_arn: "String", # required
    #     },
    #     elasticsearch_config: {
    #       endpoint: "String", # required
    #       aws_region: "String", # required
    #     },
    #     http_config: {
    #       endpoint: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.data_source_arn #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.description #=> String
    #   resp.data_source.type #=> String, one of "AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP"
    #   resp.data_source.service_role_arn #=> String
    #   resp.data_source.dynamodb_config.table_name #=> String
    #   resp.data_source.dynamodb_config.aws_region #=> String
    #   resp.data_source.dynamodb_config.use_caller_credentials #=> Boolean
    #   resp.data_source.lambda_config.lambda_function_arn #=> String
    #   resp.data_source.elasticsearch_config.endpoint #=> String
    #   resp.data_source.elasticsearch_config.aws_region #=> String
    #   resp.data_source.http_config.endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates a `GraphqlApi` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :name
    #   The new name for the `GraphqlApi` object.
    #
    # @option params [Types::LogConfig] :log_config
    #   The Amazon CloudWatch logs configuration for the `GraphqlApi` object.
    #
    # @option params [String] :authentication_type
    #   The new authentication type for the `GraphqlApi` object.
    #
    # @option params [Types::UserPoolConfig] :user_pool_config
    #   The new Amazon Cognito User Pool configuration for the `GraphqlApi`
    #   object.
    #
    # @option params [Types::OpenIDConnectConfig] :open_id_connect_config
    #   The Open Id Connect configuration configuration for the `GraphqlApi`
    #   object.
    #
    # @return [Types::UpdateGraphqlApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGraphqlApiResponse#graphql_api #graphql_api} => Types::GraphqlApi
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_graphql_api({
    #     api_id: "String", # required
    #     name: "String", # required
    #     log_config: {
    #       field_log_level: "NONE", # required, accepts NONE, ERROR, ALL
    #       cloud_watch_logs_role_arn: "String", # required
    #     },
    #     authentication_type: "API_KEY", # accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #     user_pool_config: {
    #       user_pool_id: "String", # required
    #       aws_region: "String", # required
    #       default_action: "ALLOW", # required, accepts ALLOW, DENY
    #       app_id_client_regex: "String",
    #     },
    #     open_id_connect_config: {
    #       issuer: "String", # required
    #       client_id: "String",
    #       iat_ttl: 1,
    #       auth_ttl: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.graphql_api.name #=> String
    #   resp.graphql_api.api_id #=> String
    #   resp.graphql_api.authentication_type #=> String, one of "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"
    #   resp.graphql_api.log_config.field_log_level #=> String, one of "NONE", "ERROR", "ALL"
    #   resp.graphql_api.log_config.cloud_watch_logs_role_arn #=> String
    #   resp.graphql_api.user_pool_config.user_pool_id #=> String
    #   resp.graphql_api.user_pool_config.aws_region #=> String
    #   resp.graphql_api.user_pool_config.default_action #=> String, one of "ALLOW", "DENY"
    #   resp.graphql_api.user_pool_config.app_id_client_regex #=> String
    #   resp.graphql_api.open_id_connect_config.issuer #=> String
    #   resp.graphql_api.open_id_connect_config.client_id #=> String
    #   resp.graphql_api.open_id_connect_config.iat_ttl #=> Integer
    #   resp.graphql_api.open_id_connect_config.auth_ttl #=> Integer
    #   resp.graphql_api.arn #=> String
    #   resp.graphql_api.uris #=> Hash
    #   resp.graphql_api.uris["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateGraphqlApi AWS API Documentation
    #
    # @overload update_graphql_api(params = {})
    # @param [Hash] params ({})
    def update_graphql_api(params = {}, options = {})
      req = build_request(:update_graphql_api, params)
      req.send_request(options)
    end

    # Updates a `Resolver` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :type_name
    #   The new type name.
    #
    # @option params [required, String] :field_name
    #   The new field name.
    #
    # @option params [required, String] :data_source_name
    #   The new data source name.
    #
    # @option params [required, String] :request_mapping_template
    #   The new request mapping template.
    #
    # @option params [String] :response_mapping_template
    #   The new response mapping template.
    #
    # @return [Types::UpdateResolverResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateResolverResponse#resolver #resolver} => Types::Resolver
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resolver({
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #     field_name: "ResourceName", # required
    #     data_source_name: "ResourceName", # required
    #     request_mapping_template: "MappingTemplate", # required
    #     response_mapping_template: "MappingTemplate",
    #   })
    #
    # @example Response structure
    #
    #   resp.resolver.type_name #=> String
    #   resp.resolver.field_name #=> String
    #   resp.resolver.data_source_name #=> String
    #   resp.resolver.resolver_arn #=> String
    #   resp.resolver.request_mapping_template #=> String
    #   resp.resolver.response_mapping_template #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateResolver AWS API Documentation
    #
    # @overload update_resolver(params = {})
    # @param [Hash] params ({})
    def update_resolver(params = {}, options = {})
      req = build_request(:update_resolver, params)
      req.send_request(options)
    end

    # Updates a `Type` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :type_name
    #   The new type name.
    #
    # @option params [String] :definition
    #   The new definition.
    #
    # @option params [required, String] :format
    #   The new type format: SDL or JSON.
    #
    # @return [Types::UpdateTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTypeResponse#type #type} => Types::Type
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_type({
    #     api_id: "String", # required
    #     type_name: "ResourceName", # required
    #     definition: "String",
    #     format: "SDL", # required, accepts SDL, JSON
    #   })
    #
    # @example Response structure
    #
    #   resp.type.name #=> String
    #   resp.type.description #=> String
    #   resp.type.arn #=> String
    #   resp.type.definition #=> String
    #   resp.type.format #=> String, one of "SDL", "JSON"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateType AWS API Documentation
    #
    # @overload update_type(params = {})
    # @param [Hash] params ({})
    def update_type(params = {}, options = {})
      req = build_request(:update_type, params)
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
      context[:gem_name] = 'aws-sdk-appsync'
      context[:gem_version] = '1.6.0'
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
