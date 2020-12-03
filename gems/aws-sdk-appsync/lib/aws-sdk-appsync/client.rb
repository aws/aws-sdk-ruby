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

Aws::Plugins::GlobalConfiguration.add_identifier(:appsync)

module Aws::AppSync
  # An API client for AppSync.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AppSync::Client.new(
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

    # Creates a cache for the GraphQL API.
    #
    # @option params [required, String] :api_id
    #   The GraphQL API Id.
    #
    # @option params [required, Integer] :ttl
    #   TTL in seconds for cache entries.
    #
    #   Valid values are between 1 and 3600 seconds.
    #
    # @option params [Boolean] :transit_encryption_enabled
    #   Transit encryption flag when connecting to cache. This setting cannot
    #   be updated after creation.
    #
    # @option params [Boolean] :at_rest_encryption_enabled
    #   At rest encryption flag for cache. This setting cannot be updated
    #   after creation.
    #
    # @option params [required, String] :api_caching_behavior
    #   Caching behavior.
    #
    #   * **FULL\_REQUEST\_CACHING**\: All requests are fully cached.
    #
    #   * **PER\_RESOLVER\_CACHING**\: Individual resolvers that you specify
    #     are cached.
    #
    # @option params [required, String] :type
    #   The cache instance type. Valid values are
    #
    #   * `SMALL`
    #
    #   * `MEDIUM`
    #
    #   * `LARGE`
    #
    #   * `XLARGE`
    #
    #   * `LARGE_2X`
    #
    #   * `LARGE_4X`
    #
    #   * `LARGE_8X` (not available in all regions)
    #
    #   * `LARGE_12X`
    #
    #   Historically, instance types were identified by an EC2-style value. As
    #   of July 2020, this is deprecated, and the generic identifiers above
    #   should be used.
    #
    #   The following legacy instance types are available, but their use is
    #   discouraged:
    #
    #   * **T2\_SMALL**\: A t2.small instance type.
    #
    #   * **T2\_MEDIUM**\: A t2.medium instance type.
    #
    #   * **R4\_LARGE**\: A r4.large instance type.
    #
    #   * **R4\_XLARGE**\: A r4.xlarge instance type.
    #
    #   * **R4\_2XLARGE**\: A r4.2xlarge instance type.
    #
    #   * **R4\_4XLARGE**\: A r4.4xlarge instance type.
    #
    #   * **R4\_8XLARGE**\: A r4.8xlarge instance type.
    #
    # @return [Types::CreateApiCacheResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApiCacheResponse#api_cache #api_cache} => Types::ApiCache
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api_cache({
    #     api_id: "String", # required
    #     ttl: 1, # required
    #     transit_encryption_enabled: false,
    #     at_rest_encryption_enabled: false,
    #     api_caching_behavior: "FULL_REQUEST_CACHING", # required, accepts FULL_REQUEST_CACHING, PER_RESOLVER_CACHING
    #     type: "T2_SMALL", # required, accepts T2_SMALL, T2_MEDIUM, R4_LARGE, R4_XLARGE, R4_2XLARGE, R4_4XLARGE, R4_8XLARGE, SMALL, MEDIUM, LARGE, XLARGE, LARGE_2X, LARGE_4X, LARGE_8X, LARGE_12X
    #   })
    #
    # @example Response structure
    #
    #   resp.api_cache.ttl #=> Integer
    #   resp.api_cache.api_caching_behavior #=> String, one of "FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING"
    #   resp.api_cache.transit_encryption_enabled #=> Boolean
    #   resp.api_cache.at_rest_encryption_enabled #=> Boolean
    #   resp.api_cache.type #=> String, one of "T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"
    #   resp.api_cache.status #=> String, one of "AVAILABLE", "CREATING", "DELETING", "MODIFYING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateApiCache AWS API Documentation
    #
    # @overload create_api_cache(params = {})
    # @param [Hash] params ({})
    def create_api_cache(params = {}, options = {})
      req = build_request(:create_api_cache, params)
      req.send_request(options)
    end

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
    #   resp.api_key.deletes #=> Integer
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
    #   The AWS IAM service role ARN for the data source. The system assumes
    #   this role when accessing the data source.
    #
    # @option params [Types::DynamodbDataSourceConfig] :dynamodb_config
    #   Amazon DynamoDB settings.
    #
    # @option params [Types::LambdaDataSourceConfig] :lambda_config
    #   AWS Lambda settings.
    #
    # @option params [Types::ElasticsearchDataSourceConfig] :elasticsearch_config
    #   Amazon Elasticsearch Service settings.
    #
    # @option params [Types::HttpDataSourceConfig] :http_config
    #   HTTP endpoint settings.
    #
    # @option params [Types::RelationalDatabaseDataSourceConfig] :relational_database_config
    #   Relational database settings.
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
    #     type: "AWS_LAMBDA", # required, accepts AWS_LAMBDA, AMAZON_DYNAMODB, AMAZON_ELASTICSEARCH, NONE, HTTP, RELATIONAL_DATABASE
    #     service_role_arn: "String",
    #     dynamodb_config: {
    #       table_name: "String", # required
    #       aws_region: "String", # required
    #       use_caller_credentials: false,
    #       delta_sync_config: {
    #         base_table_ttl: 1,
    #         delta_sync_table_name: "String",
    #         delta_sync_table_ttl: 1,
    #       },
    #       versioned: false,
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
    #       authorization_config: {
    #         authorization_type: "AWS_IAM", # required, accepts AWS_IAM
    #         aws_iam_config: {
    #           signing_region: "String",
    #           signing_service_name: "String",
    #         },
    #       },
    #     },
    #     relational_database_config: {
    #       relational_database_source_type: "RDS_HTTP_ENDPOINT", # accepts RDS_HTTP_ENDPOINT
    #       rds_http_endpoint_config: {
    #         aws_region: "String",
    #         db_cluster_identifier: "String",
    #         database_name: "String",
    #         schema: "String",
    #         aws_secret_store_arn: "String",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.data_source_arn #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.description #=> String
    #   resp.data_source.type #=> String, one of "AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE"
    #   resp.data_source.service_role_arn #=> String
    #   resp.data_source.dynamodb_config.table_name #=> String
    #   resp.data_source.dynamodb_config.aws_region #=> String
    #   resp.data_source.dynamodb_config.use_caller_credentials #=> Boolean
    #   resp.data_source.dynamodb_config.delta_sync_config.base_table_ttl #=> Integer
    #   resp.data_source.dynamodb_config.delta_sync_config.delta_sync_table_name #=> String
    #   resp.data_source.dynamodb_config.delta_sync_config.delta_sync_table_ttl #=> Integer
    #   resp.data_source.dynamodb_config.versioned #=> Boolean
    #   resp.data_source.lambda_config.lambda_function_arn #=> String
    #   resp.data_source.elasticsearch_config.endpoint #=> String
    #   resp.data_source.elasticsearch_config.aws_region #=> String
    #   resp.data_source.http_config.endpoint #=> String
    #   resp.data_source.http_config.authorization_config.authorization_type #=> String, one of "AWS_IAM"
    #   resp.data_source.http_config.authorization_config.aws_iam_config.signing_region #=> String
    #   resp.data_source.http_config.authorization_config.aws_iam_config.signing_service_name #=> String
    #   resp.data_source.relational_database_config.relational_database_source_type #=> String, one of "RDS_HTTP_ENDPOINT"
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.aws_region #=> String
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.db_cluster_identifier #=> String
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.database_name #=> String
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.schema #=> String
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.aws_secret_store_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateDataSource AWS API Documentation
    #
    # @overload create_data_source(params = {})
    # @param [Hash] params ({})
    def create_data_source(params = {}, options = {})
      req = build_request(:create_data_source, params)
      req.send_request(options)
    end

    # Creates a `Function` object.
    #
    # A function is a reusable entity. Multiple functions can be used to
    # compose the resolver logic.
    #
    # @option params [required, String] :api_id
    #   The GraphQL API ID.
    #
    # @option params [required, String] :name
    #   The `Function` name. The function name does not have to be unique.
    #
    # @option params [String] :description
    #   The `Function` description.
    #
    # @option params [required, String] :data_source_name
    #   The `Function` `DataSource` name.
    #
    # @option params [String] :request_mapping_template
    #   The `Function` request mapping template. Functions support only the
    #   2018-05-29 version of the request mapping template.
    #
    # @option params [String] :response_mapping_template
    #   The `Function` response mapping template.
    #
    # @option params [required, String] :function_version
    #   The `version` of the request mapping template. Currently the supported
    #   value is 2018-05-29.
    #
    # @return [Types::CreateFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFunctionResponse#function_configuration #function_configuration} => Types::FunctionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function({
    #     api_id: "String", # required
    #     name: "ResourceName", # required
    #     description: "String",
    #     data_source_name: "ResourceName", # required
    #     request_mapping_template: "MappingTemplate",
    #     response_mapping_template: "MappingTemplate",
    #     function_version: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.function_configuration.function_id #=> String
    #   resp.function_configuration.function_arn #=> String
    #   resp.function_configuration.name #=> String
    #   resp.function_configuration.description #=> String
    #   resp.function_configuration.data_source_name #=> String
    #   resp.function_configuration.request_mapping_template #=> String
    #   resp.function_configuration.response_mapping_template #=> String
    #   resp.function_configuration.function_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateFunction AWS API Documentation
    #
    # @overload create_function(params = {})
    # @param [Hash] params ({})
    def create_function(params = {}, options = {})
      req = build_request(:create_function, params)
      req.send_request(options)
    end

    # Creates a `GraphqlApi` object.
    #
    # @option params [required, String] :name
    #   A user-supplied name for the `GraphqlApi`.
    #
    # @option params [Types::LogConfig] :log_config
    #   The Amazon CloudWatch Logs configuration.
    #
    # @option params [required, String] :authentication_type
    #   The authentication type: API key, AWS IAM, OIDC, or Amazon Cognito
    #   user pools.
    #
    # @option params [Types::UserPoolConfig] :user_pool_config
    #   The Amazon Cognito user pool configuration.
    #
    # @option params [Types::OpenIDConnectConfig] :open_id_connect_config
    #   The OpenID Connect configuration.
    #
    # @option params [Hash<String,String>] :tags
    #   A `TagMap` object.
    #
    # @option params [Array<Types::AdditionalAuthenticationProvider>] :additional_authentication_providers
    #   A list of additional authentication providers for the `GraphqlApi`
    #   API.
    #
    # @option params [Boolean] :xray_enabled
    #   A flag indicating whether to enable X-Ray tracing for the
    #   `GraphqlApi`.
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
    #       exclude_verbose_content: false,
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
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     additional_authentication_providers: [
    #       {
    #         authentication_type: "API_KEY", # accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #         open_id_connect_config: {
    #           issuer: "String", # required
    #           client_id: "String",
    #           iat_ttl: 1,
    #           auth_ttl: 1,
    #         },
    #         user_pool_config: {
    #           user_pool_id: "String", # required
    #           aws_region: "String", # required
    #           app_id_client_regex: "String",
    #         },
    #       },
    #     ],
    #     xray_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.graphql_api.name #=> String
    #   resp.graphql_api.api_id #=> String
    #   resp.graphql_api.authentication_type #=> String, one of "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"
    #   resp.graphql_api.log_config.field_log_level #=> String, one of "NONE", "ERROR", "ALL"
    #   resp.graphql_api.log_config.cloud_watch_logs_role_arn #=> String
    #   resp.graphql_api.log_config.exclude_verbose_content #=> Boolean
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
    #   resp.graphql_api.tags #=> Hash
    #   resp.graphql_api.tags["TagKey"] #=> String
    #   resp.graphql_api.additional_authentication_providers #=> Array
    #   resp.graphql_api.additional_authentication_providers[0].authentication_type #=> String, one of "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"
    #   resp.graphql_api.additional_authentication_providers[0].open_id_connect_config.issuer #=> String
    #   resp.graphql_api.additional_authentication_providers[0].open_id_connect_config.client_id #=> String
    #   resp.graphql_api.additional_authentication_providers[0].open_id_connect_config.iat_ttl #=> Integer
    #   resp.graphql_api.additional_authentication_providers[0].open_id_connect_config.auth_ttl #=> Integer
    #   resp.graphql_api.additional_authentication_providers[0].user_pool_config.user_pool_id #=> String
    #   resp.graphql_api.additional_authentication_providers[0].user_pool_config.aws_region #=> String
    #   resp.graphql_api.additional_authentication_providers[0].user_pool_config.app_id_client_regex #=> String
    #   resp.graphql_api.xray_enabled #=> Boolean
    #   resp.graphql_api.waf_web_acl_arn #=> String
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
    # @option params [String] :data_source_name
    #   The name of the data source for which the resolver is being created.
    #
    # @option params [String] :request_mapping_template
    #   The mapping template to be used for requests.
    #
    #   A resolver uses a request mapping template to convert a GraphQL
    #   expression into a format that a data source can understand. Mapping
    #   templates are written in Apache Velocity Template Language (VTL).
    #
    #   VTL request mapping templates are optional when using a Lambda data
    #   source. For all other data sources, VTL request and response mapping
    #   templates are required.
    #
    # @option params [String] :response_mapping_template
    #   The mapping template to be used for responses from the data source.
    #
    # @option params [String] :kind
    #   The resolver type.
    #
    #   * **UNIT**\: A UNIT resolver type. A UNIT resolver is the default
    #     resolver type. A UNIT resolver enables you to execute a GraphQL
    #     query against a single data source.
    #
    #   * **PIPELINE**\: A PIPELINE resolver type. A PIPELINE resolver enables
    #     you to execute a series of `Function` in a serial manner. You can
    #     use a pipeline resolver to execute a GraphQL query against multiple
    #     data sources.
    #
    # @option params [Types::PipelineConfig] :pipeline_config
    #   The `PipelineConfig`.
    #
    # @option params [Types::SyncConfig] :sync_config
    #   The `SyncConfig` for a resolver attached to a versioned datasource.
    #
    # @option params [Types::CachingConfig] :caching_config
    #   The caching configuration for the resolver.
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
    #     data_source_name: "ResourceName",
    #     request_mapping_template: "MappingTemplate",
    #     response_mapping_template: "MappingTemplate",
    #     kind: "UNIT", # accepts UNIT, PIPELINE
    #     pipeline_config: {
    #       functions: ["String"],
    #     },
    #     sync_config: {
    #       conflict_handler: "OPTIMISTIC_CONCURRENCY", # accepts OPTIMISTIC_CONCURRENCY, LAMBDA, AUTOMERGE, NONE
    #       conflict_detection: "VERSION", # accepts VERSION, NONE
    #       lambda_conflict_handler_config: {
    #         lambda_conflict_handler_arn: "String",
    #       },
    #     },
    #     caching_config: {
    #       ttl: 1,
    #       caching_keys: ["String"],
    #     },
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
    #   resp.resolver.kind #=> String, one of "UNIT", "PIPELINE"
    #   resp.resolver.pipeline_config.functions #=> Array
    #   resp.resolver.pipeline_config.functions[0] #=> String
    #   resp.resolver.sync_config.conflict_handler #=> String, one of "OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"
    #   resp.resolver.sync_config.conflict_detection #=> String, one of "VERSION", "NONE"
    #   resp.resolver.sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.resolver.caching_config.ttl #=> Integer
    #   resp.resolver.caching_config.caching_keys #=> Array
    #   resp.resolver.caching_config.caching_keys[0] #=> String
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

    # Deletes an `ApiCache` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_api_cache({
    #     api_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteApiCache AWS API Documentation
    #
    # @overload delete_api_cache(params = {})
    # @param [Hash] params ({})
    def delete_api_cache(params = {}, options = {})
      req = build_request(:delete_api_cache, params)
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

    # Deletes a `Function`.
    #
    # @option params [required, String] :api_id
    #   The GraphQL API ID.
    #
    # @option params [required, String] :function_id
    #   The `Function` ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function({
    #     api_id: "String", # required
    #     function_id: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteFunction AWS API Documentation
    #
    # @overload delete_function(params = {})
    # @param [Hash] params ({})
    def delete_function(params = {}, options = {})
      req = build_request(:delete_function, params)
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

    # Flushes an `ApiCache` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.flush_api_cache({
    #     api_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/FlushApiCache AWS API Documentation
    #
    # @overload flush_api_cache(params = {})
    # @param [Hash] params ({})
    def flush_api_cache(params = {}, options = {})
      req = build_request(:flush_api_cache, params)
      req.send_request(options)
    end

    # Retrieves an `ApiCache` object.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @return [Types::GetApiCacheResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApiCacheResponse#api_cache #api_cache} => Types::ApiCache
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_cache({
    #     api_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_cache.ttl #=> Integer
    #   resp.api_cache.api_caching_behavior #=> String, one of "FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING"
    #   resp.api_cache.transit_encryption_enabled #=> Boolean
    #   resp.api_cache.at_rest_encryption_enabled #=> Boolean
    #   resp.api_cache.type #=> String, one of "T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"
    #   resp.api_cache.status #=> String, one of "AVAILABLE", "CREATING", "DELETING", "MODIFYING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetApiCache AWS API Documentation
    #
    # @overload get_api_cache(params = {})
    # @param [Hash] params ({})
    def get_api_cache(params = {}, options = {})
      req = build_request(:get_api_cache, params)
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
    #   resp.data_source.type #=> String, one of "AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE"
    #   resp.data_source.service_role_arn #=> String
    #   resp.data_source.dynamodb_config.table_name #=> String
    #   resp.data_source.dynamodb_config.aws_region #=> String
    #   resp.data_source.dynamodb_config.use_caller_credentials #=> Boolean
    #   resp.data_source.dynamodb_config.delta_sync_config.base_table_ttl #=> Integer
    #   resp.data_source.dynamodb_config.delta_sync_config.delta_sync_table_name #=> String
    #   resp.data_source.dynamodb_config.delta_sync_config.delta_sync_table_ttl #=> Integer
    #   resp.data_source.dynamodb_config.versioned #=> Boolean
    #   resp.data_source.lambda_config.lambda_function_arn #=> String
    #   resp.data_source.elasticsearch_config.endpoint #=> String
    #   resp.data_source.elasticsearch_config.aws_region #=> String
    #   resp.data_source.http_config.endpoint #=> String
    #   resp.data_source.http_config.authorization_config.authorization_type #=> String, one of "AWS_IAM"
    #   resp.data_source.http_config.authorization_config.aws_iam_config.signing_region #=> String
    #   resp.data_source.http_config.authorization_config.aws_iam_config.signing_service_name #=> String
    #   resp.data_source.relational_database_config.relational_database_source_type #=> String, one of "RDS_HTTP_ENDPOINT"
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.aws_region #=> String
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.db_cluster_identifier #=> String
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.database_name #=> String
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.schema #=> String
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.aws_secret_store_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetDataSource AWS API Documentation
    #
    # @overload get_data_source(params = {})
    # @param [Hash] params ({})
    def get_data_source(params = {}, options = {})
      req = build_request(:get_data_source, params)
      req.send_request(options)
    end

    # Get a `Function`.
    #
    # @option params [required, String] :api_id
    #   The GraphQL API ID.
    #
    # @option params [required, String] :function_id
    #   The `Function` ID.
    #
    # @return [Types::GetFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFunctionResponse#function_configuration #function_configuration} => Types::FunctionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function({
    #     api_id: "String", # required
    #     function_id: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.function_configuration.function_id #=> String
    #   resp.function_configuration.function_arn #=> String
    #   resp.function_configuration.name #=> String
    #   resp.function_configuration.description #=> String
    #   resp.function_configuration.data_source_name #=> String
    #   resp.function_configuration.request_mapping_template #=> String
    #   resp.function_configuration.response_mapping_template #=> String
    #   resp.function_configuration.function_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetFunction AWS API Documentation
    #
    # @overload get_function(params = {})
    # @param [Hash] params ({})
    def get_function(params = {}, options = {})
      req = build_request(:get_function, params)
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
    #   resp.graphql_api.log_config.exclude_verbose_content #=> Boolean
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
    #   resp.graphql_api.tags #=> Hash
    #   resp.graphql_api.tags["TagKey"] #=> String
    #   resp.graphql_api.additional_authentication_providers #=> Array
    #   resp.graphql_api.additional_authentication_providers[0].authentication_type #=> String, one of "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"
    #   resp.graphql_api.additional_authentication_providers[0].open_id_connect_config.issuer #=> String
    #   resp.graphql_api.additional_authentication_providers[0].open_id_connect_config.client_id #=> String
    #   resp.graphql_api.additional_authentication_providers[0].open_id_connect_config.iat_ttl #=> Integer
    #   resp.graphql_api.additional_authentication_providers[0].open_id_connect_config.auth_ttl #=> Integer
    #   resp.graphql_api.additional_authentication_providers[0].user_pool_config.user_pool_id #=> String
    #   resp.graphql_api.additional_authentication_providers[0].user_pool_config.aws_region #=> String
    #   resp.graphql_api.additional_authentication_providers[0].user_pool_config.app_id_client_regex #=> String
    #   resp.graphql_api.xray_enabled #=> Boolean
    #   resp.graphql_api.waf_web_acl_arn #=> String
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
    # @option params [Boolean] :include_directives
    #   A flag that specifies whether the schema introspection should contain
    #   directives.
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
    #     include_directives: false,
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
    #   resp.resolver.kind #=> String, one of "UNIT", "PIPELINE"
    #   resp.resolver.pipeline_config.functions #=> Array
    #   resp.resolver.pipeline_config.functions[0] #=> String
    #   resp.resolver.sync_config.conflict_handler #=> String, one of "OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"
    #   resp.resolver.sync_config.conflict_detection #=> String, one of "VERSION", "NONE"
    #   resp.resolver.sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.resolver.caching_config.ttl #=> Integer
    #   resp.resolver.caching_config.caching_keys #=> Array
    #   resp.resolver.caching_config.caching_keys[0] #=> String
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
    #   resp.status #=> String, one of "PROCESSING", "ACTIVE", "DELETING", "FAILED", "SUCCESS", "NOT_APPLICABLE"
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
    # <note markdown="1"> API keys are deleted automatically 60 days after they expire. However,
    # they may still be included in the response until they have actually
    # been deleted. You can safely call `DeleteApiKey` to manually delete a
    # key before it's automatically deleted.
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
    #   resp.api_keys[0].deletes #=> Integer
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
    #   resp.data_sources[0].type #=> String, one of "AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE"
    #   resp.data_sources[0].service_role_arn #=> String
    #   resp.data_sources[0].dynamodb_config.table_name #=> String
    #   resp.data_sources[0].dynamodb_config.aws_region #=> String
    #   resp.data_sources[0].dynamodb_config.use_caller_credentials #=> Boolean
    #   resp.data_sources[0].dynamodb_config.delta_sync_config.base_table_ttl #=> Integer
    #   resp.data_sources[0].dynamodb_config.delta_sync_config.delta_sync_table_name #=> String
    #   resp.data_sources[0].dynamodb_config.delta_sync_config.delta_sync_table_ttl #=> Integer
    #   resp.data_sources[0].dynamodb_config.versioned #=> Boolean
    #   resp.data_sources[0].lambda_config.lambda_function_arn #=> String
    #   resp.data_sources[0].elasticsearch_config.endpoint #=> String
    #   resp.data_sources[0].elasticsearch_config.aws_region #=> String
    #   resp.data_sources[0].http_config.endpoint #=> String
    #   resp.data_sources[0].http_config.authorization_config.authorization_type #=> String, one of "AWS_IAM"
    #   resp.data_sources[0].http_config.authorization_config.aws_iam_config.signing_region #=> String
    #   resp.data_sources[0].http_config.authorization_config.aws_iam_config.signing_service_name #=> String
    #   resp.data_sources[0].relational_database_config.relational_database_source_type #=> String, one of "RDS_HTTP_ENDPOINT"
    #   resp.data_sources[0].relational_database_config.rds_http_endpoint_config.aws_region #=> String
    #   resp.data_sources[0].relational_database_config.rds_http_endpoint_config.db_cluster_identifier #=> String
    #   resp.data_sources[0].relational_database_config.rds_http_endpoint_config.database_name #=> String
    #   resp.data_sources[0].relational_database_config.rds_http_endpoint_config.schema #=> String
    #   resp.data_sources[0].relational_database_config.rds_http_endpoint_config.aws_secret_store_arn #=> String
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

    # List multiple functions.
    #
    # @option params [required, String] :api_id
    #   The GraphQL API ID.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results you want the request to return.
    #
    # @return [Types::ListFunctionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFunctionsResponse#functions #functions} => Array&lt;Types::FunctionConfiguration&gt;
    #   * {Types::ListFunctionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_functions({
    #     api_id: "String", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.functions #=> Array
    #   resp.functions[0].function_id #=> String
    #   resp.functions[0].function_arn #=> String
    #   resp.functions[0].name #=> String
    #   resp.functions[0].description #=> String
    #   resp.functions[0].data_source_name #=> String
    #   resp.functions[0].request_mapping_template #=> String
    #   resp.functions[0].response_mapping_template #=> String
    #   resp.functions[0].function_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListFunctions AWS API Documentation
    #
    # @overload list_functions(params = {})
    # @param [Hash] params ({})
    def list_functions(params = {}, options = {})
      req = build_request(:list_functions, params)
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
    #   resp.graphql_apis[0].log_config.exclude_verbose_content #=> Boolean
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
    #   resp.graphql_apis[0].tags #=> Hash
    #   resp.graphql_apis[0].tags["TagKey"] #=> String
    #   resp.graphql_apis[0].additional_authentication_providers #=> Array
    #   resp.graphql_apis[0].additional_authentication_providers[0].authentication_type #=> String, one of "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"
    #   resp.graphql_apis[0].additional_authentication_providers[0].open_id_connect_config.issuer #=> String
    #   resp.graphql_apis[0].additional_authentication_providers[0].open_id_connect_config.client_id #=> String
    #   resp.graphql_apis[0].additional_authentication_providers[0].open_id_connect_config.iat_ttl #=> Integer
    #   resp.graphql_apis[0].additional_authentication_providers[0].open_id_connect_config.auth_ttl #=> Integer
    #   resp.graphql_apis[0].additional_authentication_providers[0].user_pool_config.user_pool_id #=> String
    #   resp.graphql_apis[0].additional_authentication_providers[0].user_pool_config.aws_region #=> String
    #   resp.graphql_apis[0].additional_authentication_providers[0].user_pool_config.app_id_client_regex #=> String
    #   resp.graphql_apis[0].xray_enabled #=> Boolean
    #   resp.graphql_apis[0].waf_web_acl_arn #=> String
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
    #   resp.resolvers[0].kind #=> String, one of "UNIT", "PIPELINE"
    #   resp.resolvers[0].pipeline_config.functions #=> Array
    #   resp.resolvers[0].pipeline_config.functions[0] #=> String
    #   resp.resolvers[0].sync_config.conflict_handler #=> String, one of "OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"
    #   resp.resolvers[0].sync_config.conflict_detection #=> String, one of "VERSION", "NONE"
    #   resp.resolvers[0].sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.resolvers[0].caching_config.ttl #=> Integer
    #   resp.resolvers[0].caching_config.caching_keys #=> Array
    #   resp.resolvers[0].caching_config.caching_keys[0] #=> String
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

    # List the resolvers that are associated with a specific function.
    #
    # @option params [required, String] :api_id
    #   The API ID.
    #
    # @option params [required, String] :function_id
    #   The Function ID.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results you want the request to return.
    #
    # @return [Types::ListResolversByFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResolversByFunctionResponse#resolvers #resolvers} => Array&lt;Types::Resolver&gt;
    #   * {Types::ListResolversByFunctionResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resolvers_by_function({
    #     api_id: "String", # required
    #     function_id: "String", # required
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
    #   resp.resolvers[0].kind #=> String, one of "UNIT", "PIPELINE"
    #   resp.resolvers[0].pipeline_config.functions #=> Array
    #   resp.resolvers[0].pipeline_config.functions[0] #=> String
    #   resp.resolvers[0].sync_config.conflict_handler #=> String, one of "OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"
    #   resp.resolvers[0].sync_config.conflict_detection #=> String, one of "VERSION", "NONE"
    #   resp.resolvers[0].sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.resolvers[0].caching_config.ttl #=> Integer
    #   resp.resolvers[0].caching_config.caching_keys #=> Array
    #   resp.resolvers[0].caching_config.caching_keys[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListResolversByFunction AWS API Documentation
    #
    # @overload list_resolvers_by_function(params = {})
    # @param [Hash] params ({})
    def list_resolvers_by_function(params = {}, options = {})
      req = build_request(:list_resolvers_by_function, params)
      req.send_request(options)
    end

    # Lists the tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The `GraphqlApi` ARN.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
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
    # @option params [required, String, StringIO, File] :definition
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
    #   resp.status #=> String, one of "PROCESSING", "ACTIVE", "DELETING", "FAILED", "SUCCESS", "NOT_APPLICABLE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/StartSchemaCreation AWS API Documentation
    #
    # @overload start_schema_creation(params = {})
    # @param [Hash] params ({})
    def start_schema_creation(params = {}, options = {})
      req = build_request(:start_schema_creation, params)
      req.send_request(options)
    end

    # Tags a resource with user-supplied tags.
    #
    # @option params [required, String] :resource_arn
    #   The `GraphqlApi` ARN.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A `TagMap` object.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untags a resource.
    #
    # @option params [required, String] :resource_arn
    #   The `GraphqlApi` ARN.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of `TagKey` objects.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the cache for the GraphQL API.
    #
    # @option params [required, String] :api_id
    #   The GraphQL API Id.
    #
    # @option params [required, Integer] :ttl
    #   TTL in seconds for cache entries.
    #
    #   Valid values are between 1 and 3600 seconds.
    #
    # @option params [required, String] :api_caching_behavior
    #   Caching behavior.
    #
    #   * **FULL\_REQUEST\_CACHING**\: All requests are fully cached.
    #
    #   * **PER\_RESOLVER\_CACHING**\: Individual resolvers that you specify
    #     are cached.
    #
    # @option params [required, String] :type
    #   The cache instance type. Valid values are
    #
    #   * `SMALL`
    #
    #   * `MEDIUM`
    #
    #   * `LARGE`
    #
    #   * `XLARGE`
    #
    #   * `LARGE_2X`
    #
    #   * `LARGE_4X`
    #
    #   * `LARGE_8X` (not available in all regions)
    #
    #   * `LARGE_12X`
    #
    #   Historically, instance types were identified by an EC2-style value. As
    #   of July 2020, this is deprecated, and the generic identifiers above
    #   should be used.
    #
    #   The following legacy instance types are available, but their use is
    #   discouraged:
    #
    #   * **T2\_SMALL**\: A t2.small instance type.
    #
    #   * **T2\_MEDIUM**\: A t2.medium instance type.
    #
    #   * **R4\_LARGE**\: A r4.large instance type.
    #
    #   * **R4\_XLARGE**\: A r4.xlarge instance type.
    #
    #   * **R4\_2XLARGE**\: A r4.2xlarge instance type.
    #
    #   * **R4\_4XLARGE**\: A r4.4xlarge instance type.
    #
    #   * **R4\_8XLARGE**\: A r4.8xlarge instance type.
    #
    # @return [Types::UpdateApiCacheResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApiCacheResponse#api_cache #api_cache} => Types::ApiCache
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api_cache({
    #     api_id: "String", # required
    #     ttl: 1, # required
    #     api_caching_behavior: "FULL_REQUEST_CACHING", # required, accepts FULL_REQUEST_CACHING, PER_RESOLVER_CACHING
    #     type: "T2_SMALL", # required, accepts T2_SMALL, T2_MEDIUM, R4_LARGE, R4_XLARGE, R4_2XLARGE, R4_4XLARGE, R4_8XLARGE, SMALL, MEDIUM, LARGE, XLARGE, LARGE_2X, LARGE_4X, LARGE_8X, LARGE_12X
    #   })
    #
    # @example Response structure
    #
    #   resp.api_cache.ttl #=> Integer
    #   resp.api_cache.api_caching_behavior #=> String, one of "FULL_REQUEST_CACHING", "PER_RESOLVER_CACHING"
    #   resp.api_cache.transit_encryption_enabled #=> Boolean
    #   resp.api_cache.at_rest_encryption_enabled #=> Boolean
    #   resp.api_cache.type #=> String, one of "T2_SMALL", "T2_MEDIUM", "R4_LARGE", "R4_XLARGE", "R4_2XLARGE", "R4_4XLARGE", "R4_8XLARGE", "SMALL", "MEDIUM", "LARGE", "XLARGE", "LARGE_2X", "LARGE_4X", "LARGE_8X", "LARGE_12X"
    #   resp.api_cache.status #=> String, one of "AVAILABLE", "CREATING", "DELETING", "MODIFYING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateApiCache AWS API Documentation
    #
    # @overload update_api_cache(params = {})
    # @param [Hash] params ({})
    def update_api_cache(params = {}, options = {})
      req = build_request(:update_api_cache, params)
      req.send_request(options)
    end

    # Updates an API key. The key can be updated while it is not deleted.
    #
    # @option params [required, String] :api_id
    #   The ID for the GraphQL API.
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
    #   resp.api_key.deletes #=> Integer
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
    #   The new Amazon DynamoDB configuration.
    #
    # @option params [Types::LambdaDataSourceConfig] :lambda_config
    #   The new AWS Lambda configuration.
    #
    # @option params [Types::ElasticsearchDataSourceConfig] :elasticsearch_config
    #   The new Elasticsearch Service configuration.
    #
    # @option params [Types::HttpDataSourceConfig] :http_config
    #   The new HTTP endpoint configuration.
    #
    # @option params [Types::RelationalDatabaseDataSourceConfig] :relational_database_config
    #   The new relational database configuration.
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
    #     type: "AWS_LAMBDA", # required, accepts AWS_LAMBDA, AMAZON_DYNAMODB, AMAZON_ELASTICSEARCH, NONE, HTTP, RELATIONAL_DATABASE
    #     service_role_arn: "String",
    #     dynamodb_config: {
    #       table_name: "String", # required
    #       aws_region: "String", # required
    #       use_caller_credentials: false,
    #       delta_sync_config: {
    #         base_table_ttl: 1,
    #         delta_sync_table_name: "String",
    #         delta_sync_table_ttl: 1,
    #       },
    #       versioned: false,
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
    #       authorization_config: {
    #         authorization_type: "AWS_IAM", # required, accepts AWS_IAM
    #         aws_iam_config: {
    #           signing_region: "String",
    #           signing_service_name: "String",
    #         },
    #       },
    #     },
    #     relational_database_config: {
    #       relational_database_source_type: "RDS_HTTP_ENDPOINT", # accepts RDS_HTTP_ENDPOINT
    #       rds_http_endpoint_config: {
    #         aws_region: "String",
    #         db_cluster_identifier: "String",
    #         database_name: "String",
    #         schema: "String",
    #         aws_secret_store_arn: "String",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.data_source.data_source_arn #=> String
    #   resp.data_source.name #=> String
    #   resp.data_source.description #=> String
    #   resp.data_source.type #=> String, one of "AWS_LAMBDA", "AMAZON_DYNAMODB", "AMAZON_ELASTICSEARCH", "NONE", "HTTP", "RELATIONAL_DATABASE"
    #   resp.data_source.service_role_arn #=> String
    #   resp.data_source.dynamodb_config.table_name #=> String
    #   resp.data_source.dynamodb_config.aws_region #=> String
    #   resp.data_source.dynamodb_config.use_caller_credentials #=> Boolean
    #   resp.data_source.dynamodb_config.delta_sync_config.base_table_ttl #=> Integer
    #   resp.data_source.dynamodb_config.delta_sync_config.delta_sync_table_name #=> String
    #   resp.data_source.dynamodb_config.delta_sync_config.delta_sync_table_ttl #=> Integer
    #   resp.data_source.dynamodb_config.versioned #=> Boolean
    #   resp.data_source.lambda_config.lambda_function_arn #=> String
    #   resp.data_source.elasticsearch_config.endpoint #=> String
    #   resp.data_source.elasticsearch_config.aws_region #=> String
    #   resp.data_source.http_config.endpoint #=> String
    #   resp.data_source.http_config.authorization_config.authorization_type #=> String, one of "AWS_IAM"
    #   resp.data_source.http_config.authorization_config.aws_iam_config.signing_region #=> String
    #   resp.data_source.http_config.authorization_config.aws_iam_config.signing_service_name #=> String
    #   resp.data_source.relational_database_config.relational_database_source_type #=> String, one of "RDS_HTTP_ENDPOINT"
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.aws_region #=> String
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.db_cluster_identifier #=> String
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.database_name #=> String
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.schema #=> String
    #   resp.data_source.relational_database_config.rds_http_endpoint_config.aws_secret_store_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates a `Function` object.
    #
    # @option params [required, String] :api_id
    #   The GraphQL API ID.
    #
    # @option params [required, String] :name
    #   The `Function` name.
    #
    # @option params [String] :description
    #   The `Function` description.
    #
    # @option params [required, String] :function_id
    #   The function ID.
    #
    # @option params [required, String] :data_source_name
    #   The `Function` `DataSource` name.
    #
    # @option params [String] :request_mapping_template
    #   The `Function` request mapping template. Functions support only the
    #   2018-05-29 version of the request mapping template.
    #
    # @option params [String] :response_mapping_template
    #   The `Function` request mapping template.
    #
    # @option params [required, String] :function_version
    #   The `version` of the request mapping template. Currently the supported
    #   value is 2018-05-29.
    #
    # @return [Types::UpdateFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFunctionResponse#function_configuration #function_configuration} => Types::FunctionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function({
    #     api_id: "String", # required
    #     name: "ResourceName", # required
    #     description: "String",
    #     function_id: "ResourceName", # required
    #     data_source_name: "ResourceName", # required
    #     request_mapping_template: "MappingTemplate",
    #     response_mapping_template: "MappingTemplate",
    #     function_version: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.function_configuration.function_id #=> String
    #   resp.function_configuration.function_arn #=> String
    #   resp.function_configuration.name #=> String
    #   resp.function_configuration.description #=> String
    #   resp.function_configuration.data_source_name #=> String
    #   resp.function_configuration.request_mapping_template #=> String
    #   resp.function_configuration.response_mapping_template #=> String
    #   resp.function_configuration.function_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateFunction AWS API Documentation
    #
    # @overload update_function(params = {})
    # @param [Hash] params ({})
    def update_function(params = {}, options = {})
      req = build_request(:update_function, params)
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
    #   The Amazon CloudWatch Logs configuration for the `GraphqlApi` object.
    #
    # @option params [String] :authentication_type
    #   The new authentication type for the `GraphqlApi` object.
    #
    # @option params [Types::UserPoolConfig] :user_pool_config
    #   The new Amazon Cognito user pool configuration for the `GraphqlApi`
    #   object.
    #
    # @option params [Types::OpenIDConnectConfig] :open_id_connect_config
    #   The OpenID Connect configuration for the `GraphqlApi` object.
    #
    # @option params [Array<Types::AdditionalAuthenticationProvider>] :additional_authentication_providers
    #   A list of additional authentication providers for the `GraphqlApi`
    #   API.
    #
    # @option params [Boolean] :xray_enabled
    #   A flag indicating whether to enable X-Ray tracing for the
    #   `GraphqlApi`.
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
    #       exclude_verbose_content: false,
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
    #     additional_authentication_providers: [
    #       {
    #         authentication_type: "API_KEY", # accepts API_KEY, AWS_IAM, AMAZON_COGNITO_USER_POOLS, OPENID_CONNECT
    #         open_id_connect_config: {
    #           issuer: "String", # required
    #           client_id: "String",
    #           iat_ttl: 1,
    #           auth_ttl: 1,
    #         },
    #         user_pool_config: {
    #           user_pool_id: "String", # required
    #           aws_region: "String", # required
    #           app_id_client_regex: "String",
    #         },
    #       },
    #     ],
    #     xray_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.graphql_api.name #=> String
    #   resp.graphql_api.api_id #=> String
    #   resp.graphql_api.authentication_type #=> String, one of "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"
    #   resp.graphql_api.log_config.field_log_level #=> String, one of "NONE", "ERROR", "ALL"
    #   resp.graphql_api.log_config.cloud_watch_logs_role_arn #=> String
    #   resp.graphql_api.log_config.exclude_verbose_content #=> Boolean
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
    #   resp.graphql_api.tags #=> Hash
    #   resp.graphql_api.tags["TagKey"] #=> String
    #   resp.graphql_api.additional_authentication_providers #=> Array
    #   resp.graphql_api.additional_authentication_providers[0].authentication_type #=> String, one of "API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"
    #   resp.graphql_api.additional_authentication_providers[0].open_id_connect_config.issuer #=> String
    #   resp.graphql_api.additional_authentication_providers[0].open_id_connect_config.client_id #=> String
    #   resp.graphql_api.additional_authentication_providers[0].open_id_connect_config.iat_ttl #=> Integer
    #   resp.graphql_api.additional_authentication_providers[0].open_id_connect_config.auth_ttl #=> Integer
    #   resp.graphql_api.additional_authentication_providers[0].user_pool_config.user_pool_id #=> String
    #   resp.graphql_api.additional_authentication_providers[0].user_pool_config.aws_region #=> String
    #   resp.graphql_api.additional_authentication_providers[0].user_pool_config.app_id_client_regex #=> String
    #   resp.graphql_api.xray_enabled #=> Boolean
    #   resp.graphql_api.waf_web_acl_arn #=> String
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
    # @option params [String] :data_source_name
    #   The new data source name.
    #
    # @option params [String] :request_mapping_template
    #   The new request mapping template.
    #
    #   A resolver uses a request mapping template to convert a GraphQL
    #   expression into a format that a data source can understand. Mapping
    #   templates are written in Apache Velocity Template Language (VTL).
    #
    #   VTL request mapping templates are optional when using a Lambda data
    #   source. For all other data sources, VTL request and response mapping
    #   templates are required.
    #
    # @option params [String] :response_mapping_template
    #   The new response mapping template.
    #
    # @option params [String] :kind
    #   The resolver type.
    #
    #   * **UNIT**\: A UNIT resolver type. A UNIT resolver is the default
    #     resolver type. A UNIT resolver enables you to execute a GraphQL
    #     query against a single data source.
    #
    #   * **PIPELINE**\: A PIPELINE resolver type. A PIPELINE resolver enables
    #     you to execute a series of `Function` in a serial manner. You can
    #     use a pipeline resolver to execute a GraphQL query against multiple
    #     data sources.
    #
    # @option params [Types::PipelineConfig] :pipeline_config
    #   The `PipelineConfig`.
    #
    # @option params [Types::SyncConfig] :sync_config
    #   The `SyncConfig` for a resolver attached to a versioned datasource.
    #
    # @option params [Types::CachingConfig] :caching_config
    #   The caching configuration for the resolver.
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
    #     data_source_name: "ResourceName",
    #     request_mapping_template: "MappingTemplate",
    #     response_mapping_template: "MappingTemplate",
    #     kind: "UNIT", # accepts UNIT, PIPELINE
    #     pipeline_config: {
    #       functions: ["String"],
    #     },
    #     sync_config: {
    #       conflict_handler: "OPTIMISTIC_CONCURRENCY", # accepts OPTIMISTIC_CONCURRENCY, LAMBDA, AUTOMERGE, NONE
    #       conflict_detection: "VERSION", # accepts VERSION, NONE
    #       lambda_conflict_handler_config: {
    #         lambda_conflict_handler_arn: "String",
    #       },
    #     },
    #     caching_config: {
    #       ttl: 1,
    #       caching_keys: ["String"],
    #     },
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
    #   resp.resolver.kind #=> String, one of "UNIT", "PIPELINE"
    #   resp.resolver.pipeline_config.functions #=> Array
    #   resp.resolver.pipeline_config.functions[0] #=> String
    #   resp.resolver.sync_config.conflict_handler #=> String, one of "OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"
    #   resp.resolver.sync_config.conflict_detection #=> String, one of "VERSION", "NONE"
    #   resp.resolver.sync_config.lambda_conflict_handler_config.lambda_conflict_handler_arn #=> String
    #   resp.resolver.caching_config.ttl #=> Integer
    #   resp.resolver.caching_config.caching_keys #=> Array
    #   resp.resolver.caching_config.caching_keys[0] #=> String
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
      context[:gem_version] = '1.37.0'
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
