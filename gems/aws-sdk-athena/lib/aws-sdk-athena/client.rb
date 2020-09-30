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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:athena)

module Aws::Athena
  # An API client for Athena.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Athena::Client.new(
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

    @identifier = :athena

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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

    # Returns the details of a single named query or a list of up to 50
    # queries, which you provide as an array of query ID strings. Requires
    # you to have access to the workgroup in which the queries were saved.
    # Use ListNamedQueriesInput to get the list of named query IDs in the
    # specified workgroup. If information could not be retrieved for a
    # submitted query ID, information about the query ID submitted is listed
    # under UnprocessedNamedQueryId. Named queries differ from executed
    # queries. Use BatchGetQueryExecutionInput to get details about each
    # unique query execution, and ListQueryExecutionsInput to get a list of
    # query execution IDs.
    #
    # @option params [required, Array<String>] :named_query_ids
    #   An array of query IDs.
    #
    # @return [Types::BatchGetNamedQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetNamedQueryOutput#named_queries #named_queries} => Array&lt;Types::NamedQuery&gt;
    #   * {Types::BatchGetNamedQueryOutput#unprocessed_named_query_ids #unprocessed_named_query_ids} => Array&lt;Types::UnprocessedNamedQueryId&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_named_query({
    #     named_query_ids: ["NamedQueryId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.named_queries #=> Array
    #   resp.named_queries[0].name #=> String
    #   resp.named_queries[0].description #=> String
    #   resp.named_queries[0].database #=> String
    #   resp.named_queries[0].query_string #=> String
    #   resp.named_queries[0].named_query_id #=> String
    #   resp.named_queries[0].work_group #=> String
    #   resp.unprocessed_named_query_ids #=> Array
    #   resp.unprocessed_named_query_ids[0].named_query_id #=> String
    #   resp.unprocessed_named_query_ids[0].error_code #=> String
    #   resp.unprocessed_named_query_ids[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/BatchGetNamedQuery AWS API Documentation
    #
    # @overload batch_get_named_query(params = {})
    # @param [Hash] params ({})
    def batch_get_named_query(params = {}, options = {})
      req = build_request(:batch_get_named_query, params)
      req.send_request(options)
    end

    # Returns the details of a single query execution or a list of up to 50
    # query executions, which you provide as an array of query execution ID
    # strings. Requires you to have access to the workgroup in which the
    # queries ran. To get a list of query execution IDs, use
    # ListQueryExecutionsInput$WorkGroup. Query executions differ from named
    # (saved) queries. Use BatchGetNamedQueryInput to get details about
    # named queries.
    #
    # @option params [required, Array<String>] :query_execution_ids
    #   An array of query execution IDs.
    #
    # @return [Types::BatchGetQueryExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetQueryExecutionOutput#query_executions #query_executions} => Array&lt;Types::QueryExecution&gt;
    #   * {Types::BatchGetQueryExecutionOutput#unprocessed_query_execution_ids #unprocessed_query_execution_ids} => Array&lt;Types::UnprocessedQueryExecutionId&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_query_execution({
    #     query_execution_ids: ["QueryExecutionId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.query_executions #=> Array
    #   resp.query_executions[0].query_execution_id #=> String
    #   resp.query_executions[0].query #=> String
    #   resp.query_executions[0].statement_type #=> String, one of "DDL", "DML", "UTILITY"
    #   resp.query_executions[0].result_configuration.output_location #=> String
    #   resp.query_executions[0].result_configuration.encryption_configuration.encryption_option #=> String, one of "SSE_S3", "SSE_KMS", "CSE_KMS"
    #   resp.query_executions[0].result_configuration.encryption_configuration.kms_key #=> String
    #   resp.query_executions[0].query_execution_context.database #=> String
    #   resp.query_executions[0].query_execution_context.catalog #=> String
    #   resp.query_executions[0].status.state #=> String, one of "QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"
    #   resp.query_executions[0].status.state_change_reason #=> String
    #   resp.query_executions[0].status.submission_date_time #=> Time
    #   resp.query_executions[0].status.completion_date_time #=> Time
    #   resp.query_executions[0].statistics.engine_execution_time_in_millis #=> Integer
    #   resp.query_executions[0].statistics.data_scanned_in_bytes #=> Integer
    #   resp.query_executions[0].statistics.data_manifest_location #=> String
    #   resp.query_executions[0].statistics.total_execution_time_in_millis #=> Integer
    #   resp.query_executions[0].statistics.query_queue_time_in_millis #=> Integer
    #   resp.query_executions[0].statistics.query_planning_time_in_millis #=> Integer
    #   resp.query_executions[0].statistics.service_processing_time_in_millis #=> Integer
    #   resp.query_executions[0].work_group #=> String
    #   resp.unprocessed_query_execution_ids #=> Array
    #   resp.unprocessed_query_execution_ids[0].query_execution_id #=> String
    #   resp.unprocessed_query_execution_ids[0].error_code #=> String
    #   resp.unprocessed_query_execution_ids[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/BatchGetQueryExecution AWS API Documentation
    #
    # @overload batch_get_query_execution(params = {})
    # @param [Hash] params ({})
    def batch_get_query_execution(params = {}, options = {})
      req = build_request(:batch_get_query_execution, params)
      req.send_request(options)
    end

    # Creates (registers) a data catalog with the specified name and
    # properties. Catalogs created are visible to all users of the same AWS
    # account.
    #
    # @option params [required, String] :name
    #   The name of the data catalog to create. The catalog name must be
    #   unique for the AWS account and can use a maximum of 128 alphanumeric,
    #   underscore, at sign, or hyphen characters.
    #
    # @option params [required, String] :type
    #   The type of data catalog to create: `LAMBDA` for a federated catalog,
    #   `GLUE` for AWS Glue Catalog, or `HIVE` for an external hive metastore.
    #
    # @option params [String] :description
    #   A description of the data catalog to be created.
    #
    # @option params [Hash<String,String>] :parameters
    #   Specifies the Lambda function or functions to use for creating the
    #   data catalog. This is a mapping whose values depend on the catalog
    #   type.
    #
    #   * For the `HIVE` data catalog type, use the following syntax. The
    #     `metadata-function` parameter is required. `The sdk-version`
    #     parameter is optional and defaults to the currently supported
    #     version.
    #
    #     `metadata-function=lambda_arn, sdk-version=version_number `
    #
    #   * For the `LAMBDA` data catalog type, use one of the following sets of
    #     required parameters, but not both.
    #
    #     * If you have one Lambda function that processes metadata and
    #       another for reading the actual data, use the following syntax.
    #       Both parameters are required.
    #
    #       `metadata-function=lambda_arn, record-function=lambda_arn `
    #
    #     * If you have a composite Lambda function that processes both
    #       metadata and data, use the following syntax to specify your Lambda
    #       function.
    #
    #       `function=lambda_arn `
    #
    #   * The `GLUE` type has no parameters.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of comma separated tags to add to the data catalog that is
    #   created.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_catalog({
    #     name: "CatalogNameString", # required
    #     type: "LAMBDA", # required, accepts LAMBDA, GLUE, HIVE
    #     description: "DescriptionString",
    #     parameters: {
    #       "KeyString" => "ParametersMapValue",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateDataCatalog AWS API Documentation
    #
    # @overload create_data_catalog(params = {})
    # @param [Hash] params ({})
    def create_data_catalog(params = {}, options = {})
      req = build_request(:create_data_catalog, params)
      req.send_request(options)
    end

    # Creates a named query in the specified workgroup. Requires that you
    # have access to the workgroup.
    #
    # For code samples using the AWS SDK for Java, see [Examples and Code
    # Samples][1] in the *Amazon Athena User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/athena/latest/ug/code-samples.html
    #
    # @option params [required, String] :name
    #   The query name.
    #
    # @option params [String] :description
    #   The query description.
    #
    # @option params [required, String] :database
    #   The database to which the query belongs.
    #
    # @option params [required, String] :query_string
    #   The contents of the query with all query statements.
    #
    # @option params [String] :client_request_token
    #   A unique case-sensitive string used to ensure the request to create
    #   the query is idempotent (executes only once). If another
    #   `CreateNamedQuery` request is received, the same response is returned
    #   and another query is not created. If a parameter has changed, for
    #   example, the `QueryString`, an error is returned.
    #
    #   This token is listed as not required because AWS SDKs (for example the
    #   AWS SDK for Java) auto-generate the token for users. If you are not
    #   using the AWS SDK or the AWS CLI, you must provide this token or the
    #   action will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :work_group
    #   The name of the workgroup in which the named query is being created.
    #
    # @return [Types::CreateNamedQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNamedQueryOutput#named_query_id #named_query_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_named_query({
    #     name: "NameString", # required
    #     description: "DescriptionString",
    #     database: "DatabaseString", # required
    #     query_string: "QueryString", # required
    #     client_request_token: "IdempotencyToken",
    #     work_group: "WorkGroupName",
    #   })
    #
    # @example Response structure
    #
    #   resp.named_query_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateNamedQuery AWS API Documentation
    #
    # @overload create_named_query(params = {})
    # @param [Hash] params ({})
    def create_named_query(params = {}, options = {})
      req = build_request(:create_named_query, params)
      req.send_request(options)
    end

    # Creates a workgroup with the specified name.
    #
    # @option params [required, String] :name
    #   The workgroup name.
    #
    # @option params [Types::WorkGroupConfiguration] :configuration
    #   The configuration for the workgroup, which includes the location in
    #   Amazon S3 where query results are stored, the encryption
    #   configuration, if any, used for encrypting query results, whether the
    #   Amazon CloudWatch Metrics are enabled for the workgroup, the limit for
    #   the amount of bytes scanned (cutoff) per query, if it is specified,
    #   and whether workgroup's settings (specified with
    #   EnforceWorkGroupConfiguration) in the WorkGroupConfiguration override
    #   client-side settings. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    #
    # @option params [String] :description
    #   The workgroup description.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of comma separated tags to add to the workgroup that is
    #   created.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_work_group({
    #     name: "WorkGroupName", # required
    #     configuration: {
    #       result_configuration: {
    #         output_location: "String",
    #         encryption_configuration: {
    #           encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #           kms_key: "String",
    #         },
    #       },
    #       enforce_work_group_configuration: false,
    #       publish_cloud_watch_metrics_enabled: false,
    #       bytes_scanned_cutoff_per_query: 1,
    #       requester_pays_enabled: false,
    #     },
    #     description: "WorkGroupDescriptionString",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/CreateWorkGroup AWS API Documentation
    #
    # @overload create_work_group(params = {})
    # @param [Hash] params ({})
    def create_work_group(params = {}, options = {})
      req = build_request(:create_work_group, params)
      req.send_request(options)
    end

    # Deletes a data catalog.
    #
    # @option params [required, String] :name
    #   The name of the data catalog to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_catalog({
    #     name: "CatalogNameString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteDataCatalog AWS API Documentation
    #
    # @overload delete_data_catalog(params = {})
    # @param [Hash] params ({})
    def delete_data_catalog(params = {}, options = {})
      req = build_request(:delete_data_catalog, params)
      req.send_request(options)
    end

    # Deletes the named query if you have access to the workgroup in which
    # the query was saved.
    #
    # For code samples using the AWS SDK for Java, see [Examples and Code
    # Samples][1] in the *Amazon Athena User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/athena/latest/ug/code-samples.html
    #
    # @option params [required, String] :named_query_id
    #   The unique ID of the query to delete.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_named_query({
    #     named_query_id: "NamedQueryId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteNamedQuery AWS API Documentation
    #
    # @overload delete_named_query(params = {})
    # @param [Hash] params ({})
    def delete_named_query(params = {}, options = {})
      req = build_request(:delete_named_query, params)
      req.send_request(options)
    end

    # Deletes the workgroup with the specified name. The primary workgroup
    # cannot be deleted.
    #
    # @option params [required, String] :work_group
    #   The unique name of the workgroup to delete.
    #
    # @option params [Boolean] :recursive_delete_option
    #   The option to delete the workgroup and its contents even if the
    #   workgroup contains any named queries.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_work_group({
    #     work_group: "WorkGroupName", # required
    #     recursive_delete_option: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/DeleteWorkGroup AWS API Documentation
    #
    # @overload delete_work_group(params = {})
    # @param [Hash] params ({})
    def delete_work_group(params = {}, options = {})
      req = build_request(:delete_work_group, params)
      req.send_request(options)
    end

    # Returns the specified data catalog.
    #
    # @option params [required, String] :name
    #   The name of the data catalog to return.
    #
    # @return [Types::GetDataCatalogOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataCatalogOutput#data_catalog #data_catalog} => Types::DataCatalog
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_catalog({
    #     name: "CatalogNameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.data_catalog.name #=> String
    #   resp.data_catalog.description #=> String
    #   resp.data_catalog.type #=> String, one of "LAMBDA", "GLUE", "HIVE"
    #   resp.data_catalog.parameters #=> Hash
    #   resp.data_catalog.parameters["KeyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetDataCatalog AWS API Documentation
    #
    # @overload get_data_catalog(params = {})
    # @param [Hash] params ({})
    def get_data_catalog(params = {}, options = {})
      req = build_request(:get_data_catalog, params)
      req.send_request(options)
    end

    # Returns a database object for the specfied database and data catalog.
    #
    # @option params [required, String] :catalog_name
    #   The name of the data catalog that contains the database to return.
    #
    # @option params [required, String] :database_name
    #   The name of the database to return.
    #
    # @return [Types::GetDatabaseOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDatabaseOutput#database #database} => Types::Database
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_database({
    #     catalog_name: "CatalogNameString", # required
    #     database_name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.database.name #=> String
    #   resp.database.description #=> String
    #   resp.database.parameters #=> Hash
    #   resp.database.parameters["KeyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetDatabase AWS API Documentation
    #
    # @overload get_database(params = {})
    # @param [Hash] params ({})
    def get_database(params = {}, options = {})
      req = build_request(:get_database, params)
      req.send_request(options)
    end

    # Returns information about a single query. Requires that you have
    # access to the workgroup in which the query was saved.
    #
    # @option params [required, String] :named_query_id
    #   The unique ID of the query. Use ListNamedQueries to get query IDs.
    #
    # @return [Types::GetNamedQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNamedQueryOutput#named_query #named_query} => Types::NamedQuery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_named_query({
    #     named_query_id: "NamedQueryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.named_query.name #=> String
    #   resp.named_query.description #=> String
    #   resp.named_query.database #=> String
    #   resp.named_query.query_string #=> String
    #   resp.named_query.named_query_id #=> String
    #   resp.named_query.work_group #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetNamedQuery AWS API Documentation
    #
    # @overload get_named_query(params = {})
    # @param [Hash] params ({})
    def get_named_query(params = {}, options = {})
      req = build_request(:get_named_query, params)
      req.send_request(options)
    end

    # Returns information about a single execution of a query if you have
    # access to the workgroup in which the query ran. Each time a query
    # executes, information about the query execution is saved with a unique
    # ID.
    #
    # @option params [required, String] :query_execution_id
    #   The unique ID of the query execution.
    #
    # @return [Types::GetQueryExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryExecutionOutput#query_execution #query_execution} => Types::QueryExecution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_execution({
    #     query_execution_id: "QueryExecutionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.query_execution.query_execution_id #=> String
    #   resp.query_execution.query #=> String
    #   resp.query_execution.statement_type #=> String, one of "DDL", "DML", "UTILITY"
    #   resp.query_execution.result_configuration.output_location #=> String
    #   resp.query_execution.result_configuration.encryption_configuration.encryption_option #=> String, one of "SSE_S3", "SSE_KMS", "CSE_KMS"
    #   resp.query_execution.result_configuration.encryption_configuration.kms_key #=> String
    #   resp.query_execution.query_execution_context.database #=> String
    #   resp.query_execution.query_execution_context.catalog #=> String
    #   resp.query_execution.status.state #=> String, one of "QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"
    #   resp.query_execution.status.state_change_reason #=> String
    #   resp.query_execution.status.submission_date_time #=> Time
    #   resp.query_execution.status.completion_date_time #=> Time
    #   resp.query_execution.statistics.engine_execution_time_in_millis #=> Integer
    #   resp.query_execution.statistics.data_scanned_in_bytes #=> Integer
    #   resp.query_execution.statistics.data_manifest_location #=> String
    #   resp.query_execution.statistics.total_execution_time_in_millis #=> Integer
    #   resp.query_execution.statistics.query_queue_time_in_millis #=> Integer
    #   resp.query_execution.statistics.query_planning_time_in_millis #=> Integer
    #   resp.query_execution.statistics.service_processing_time_in_millis #=> Integer
    #   resp.query_execution.work_group #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryExecution AWS API Documentation
    #
    # @overload get_query_execution(params = {})
    # @param [Hash] params ({})
    def get_query_execution(params = {}, options = {})
      req = build_request(:get_query_execution, params)
      req.send_request(options)
    end

    # Streams the results of a single query execution specified by
    # `QueryExecutionId` from the Athena query results location in Amazon
    # S3. For more information, see [Query Results][1] in the *Amazon Athena
    # User Guide*. This request does not execute the query but returns
    # results. Use StartQueryExecution to run a query.
    #
    # To stream query results successfully, the IAM principal with
    # permission to call `GetQueryResults` also must have permissions to the
    # Amazon S3 `GetObject` action for the Athena query results location.
    #
    # IAM principals with permission to the Amazon S3 `GetObject` action for
    # the query results location are able to retrieve query results from
    # Amazon S3 even if permission to the `GetQueryResults` action is
    # denied. To restrict user or role access, ensure that Amazon S3
    # permissions to the Athena query location are denied.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/athena/latest/ug/querying.html
    #
    # @option params [required, String] :query_execution_id
    #   The unique ID of the query execution.
    #
    # @option params [String] :next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain the
    #   next set of pages, pass in the `NextToken` from the response object of
    #   the previous page call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results (rows) to return in this request.
    #
    # @return [Types::GetQueryResultsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryResultsOutput#update_count #update_count} => Integer
    #   * {Types::GetQueryResultsOutput#result_set #result_set} => Types::ResultSet
    #   * {Types::GetQueryResultsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_query_results({
    #     query_execution_id: "QueryExecutionId", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.update_count #=> Integer
    #   resp.result_set.rows #=> Array
    #   resp.result_set.rows[0].data #=> Array
    #   resp.result_set.rows[0].data[0].var_char_value #=> String
    #   resp.result_set.result_set_metadata.column_info #=> Array
    #   resp.result_set.result_set_metadata.column_info[0].catalog_name #=> String
    #   resp.result_set.result_set_metadata.column_info[0].schema_name #=> String
    #   resp.result_set.result_set_metadata.column_info[0].table_name #=> String
    #   resp.result_set.result_set_metadata.column_info[0].name #=> String
    #   resp.result_set.result_set_metadata.column_info[0].label #=> String
    #   resp.result_set.result_set_metadata.column_info[0].type #=> String
    #   resp.result_set.result_set_metadata.column_info[0].precision #=> Integer
    #   resp.result_set.result_set_metadata.column_info[0].scale #=> Integer
    #   resp.result_set.result_set_metadata.column_info[0].nullable #=> String, one of "NOT_NULL", "NULLABLE", "UNKNOWN"
    #   resp.result_set.result_set_metadata.column_info[0].case_sensitive #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryResults AWS API Documentation
    #
    # @overload get_query_results(params = {})
    # @param [Hash] params ({})
    def get_query_results(params = {}, options = {})
      req = build_request(:get_query_results, params)
      req.send_request(options)
    end

    # Returns table metadata for the specified catalog, database, and table.
    #
    # @option params [required, String] :catalog_name
    #   The name of the data catalog that contains the database and table
    #   metadata to return.
    #
    # @option params [required, String] :database_name
    #   The name of the database that contains the table metadata to return.
    #
    # @option params [required, String] :table_name
    #   The name of the table for which metadata is returned.
    #
    # @return [Types::GetTableMetadataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTableMetadataOutput#table_metadata #table_metadata} => Types::TableMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_table_metadata({
    #     catalog_name: "CatalogNameString", # required
    #     database_name: "NameString", # required
    #     table_name: "NameString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.table_metadata.name #=> String
    #   resp.table_metadata.create_time #=> Time
    #   resp.table_metadata.last_access_time #=> Time
    #   resp.table_metadata.table_type #=> String
    #   resp.table_metadata.columns #=> Array
    #   resp.table_metadata.columns[0].name #=> String
    #   resp.table_metadata.columns[0].type #=> String
    #   resp.table_metadata.columns[0].comment #=> String
    #   resp.table_metadata.partition_keys #=> Array
    #   resp.table_metadata.partition_keys[0].name #=> String
    #   resp.table_metadata.partition_keys[0].type #=> String
    #   resp.table_metadata.partition_keys[0].comment #=> String
    #   resp.table_metadata.parameters #=> Hash
    #   resp.table_metadata.parameters["KeyString"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetTableMetadata AWS API Documentation
    #
    # @overload get_table_metadata(params = {})
    # @param [Hash] params ({})
    def get_table_metadata(params = {}, options = {})
      req = build_request(:get_table_metadata, params)
      req.send_request(options)
    end

    # Returns information about the workgroup with the specified name.
    #
    # @option params [required, String] :work_group
    #   The name of the workgroup.
    #
    # @return [Types::GetWorkGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkGroupOutput#work_group #work_group} => Types::WorkGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_work_group({
    #     work_group: "WorkGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.work_group.name #=> String
    #   resp.work_group.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.work_group.configuration.result_configuration.output_location #=> String
    #   resp.work_group.configuration.result_configuration.encryption_configuration.encryption_option #=> String, one of "SSE_S3", "SSE_KMS", "CSE_KMS"
    #   resp.work_group.configuration.result_configuration.encryption_configuration.kms_key #=> String
    #   resp.work_group.configuration.enforce_work_group_configuration #=> Boolean
    #   resp.work_group.configuration.publish_cloud_watch_metrics_enabled #=> Boolean
    #   resp.work_group.configuration.bytes_scanned_cutoff_per_query #=> Integer
    #   resp.work_group.configuration.requester_pays_enabled #=> Boolean
    #   resp.work_group.description #=> String
    #   resp.work_group.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetWorkGroup AWS API Documentation
    #
    # @overload get_work_group(params = {})
    # @param [Hash] params ({})
    def get_work_group(params = {}, options = {})
      req = build_request(:get_work_group, params)
      req.send_request(options)
    end

    # Lists the data catalogs in the current AWS account.
    #
    # @option params [String] :next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain the
    #   next set of pages, pass in the NextToken from the response object of
    #   the previous page call.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of data catalogs to return.
    #
    # @return [Types::ListDataCatalogsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataCatalogsOutput#data_catalogs_summary #data_catalogs_summary} => Array&lt;Types::DataCatalogSummary&gt;
    #   * {Types::ListDataCatalogsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_catalogs({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_catalogs_summary #=> Array
    #   resp.data_catalogs_summary[0].catalog_name #=> String
    #   resp.data_catalogs_summary[0].type #=> String, one of "LAMBDA", "GLUE", "HIVE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListDataCatalogs AWS API Documentation
    #
    # @overload list_data_catalogs(params = {})
    # @param [Hash] params ({})
    def list_data_catalogs(params = {}, options = {})
      req = build_request(:list_data_catalogs, params)
      req.send_request(options)
    end

    # Lists the databases in the specified data catalog.
    #
    # @option params [required, String] :catalog_name
    #   The name of the data catalog that contains the databases to return.
    #
    # @option params [String] :next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain the
    #   next set of pages, pass in the `NextToken` from the response object of
    #   the previous page call.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of results to return.
    #
    # @return [Types::ListDatabasesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatabasesOutput#database_list #database_list} => Array&lt;Types::Database&gt;
    #   * {Types::ListDatabasesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_databases({
    #     catalog_name: "CatalogNameString", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.database_list #=> Array
    #   resp.database_list[0].name #=> String
    #   resp.database_list[0].description #=> String
    #   resp.database_list[0].parameters #=> Hash
    #   resp.database_list[0].parameters["KeyString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListDatabases AWS API Documentation
    #
    # @overload list_databases(params = {})
    # @param [Hash] params ({})
    def list_databases(params = {}, options = {})
      req = build_request(:list_databases, params)
      req.send_request(options)
    end

    # Provides a list of available query IDs only for queries saved in the
    # specified workgroup. Requires that you have access to the specified
    # workgroup. If a workgroup is not specified, lists the saved queries
    # for the primary workgroup.
    #
    # For code samples using the AWS SDK for Java, see [Examples and Code
    # Samples][1] in the *Amazon Athena User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/athena/latest/ug/code-samples.html
    #
    # @option params [String] :next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain the
    #   next set of pages, pass in the `NextToken` from the response object of
    #   the previous page call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of queries to return in this request.
    #
    # @option params [String] :work_group
    #   The name of the workgroup from which the named queries are being
    #   returned. If a workgroup is not specified, the saved queries for the
    #   primary workgroup are returned.
    #
    # @return [Types::ListNamedQueriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNamedQueriesOutput#named_query_ids #named_query_ids} => Array&lt;String&gt;
    #   * {Types::ListNamedQueriesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_named_queries({
    #     next_token: "Token",
    #     max_results: 1,
    #     work_group: "WorkGroupName",
    #   })
    #
    # @example Response structure
    #
    #   resp.named_query_ids #=> Array
    #   resp.named_query_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListNamedQueries AWS API Documentation
    #
    # @overload list_named_queries(params = {})
    # @param [Hash] params ({})
    def list_named_queries(params = {}, options = {})
      req = build_request(:list_named_queries, params)
      req.send_request(options)
    end

    # Provides a list of available query execution IDs for the queries in
    # the specified workgroup. If a workgroup is not specified, returns a
    # list of query execution IDs for the primary workgroup. Requires you to
    # have access to the workgroup in which the queries ran.
    #
    # For code samples using the AWS SDK for Java, see [Examples and Code
    # Samples][1] in the *Amazon Athena User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/athena/latest/ug/code-samples.html
    #
    # @option params [String] :next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain the
    #   next set of pages, pass in the `NextToken` from the response object of
    #   the previous page call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of query executions to return in this request.
    #
    # @option params [String] :work_group
    #   The name of the workgroup from which queries are being returned. If a
    #   workgroup is not specified, a list of available query execution IDs
    #   for the queries in the primary workgroup is returned.
    #
    # @return [Types::ListQueryExecutionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueryExecutionsOutput#query_execution_ids #query_execution_ids} => Array&lt;String&gt;
    #   * {Types::ListQueryExecutionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_query_executions({
    #     next_token: "Token",
    #     max_results: 1,
    #     work_group: "WorkGroupName",
    #   })
    #
    # @example Response structure
    #
    #   resp.query_execution_ids #=> Array
    #   resp.query_execution_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListQueryExecutions AWS API Documentation
    #
    # @overload list_query_executions(params = {})
    # @param [Hash] params ({})
    def list_query_executions(params = {}, options = {})
      req = build_request(:list_query_executions, params)
      req.send_request(options)
    end

    # Lists the metadata for the tables in the specified data catalog
    # database.
    #
    # @option params [required, String] :catalog_name
    #   The name of the data catalog for which table metadata should be
    #   returned.
    #
    # @option params [required, String] :database_name
    #   The name of the database for which table metadata should be returned.
    #
    # @option params [String] :expression
    #   A regex filter that pattern-matches table names. If no expression is
    #   supplied, metadata for all tables are listed.
    #
    # @option params [String] :next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain the
    #   next set of pages, pass in the NextToken from the response object of
    #   the previous page call.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of results to return.
    #
    # @return [Types::ListTableMetadataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTableMetadataOutput#table_metadata_list #table_metadata_list} => Array&lt;Types::TableMetadata&gt;
    #   * {Types::ListTableMetadataOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_table_metadata({
    #     catalog_name: "CatalogNameString", # required
    #     database_name: "NameString", # required
    #     expression: "ExpressionString",
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.table_metadata_list #=> Array
    #   resp.table_metadata_list[0].name #=> String
    #   resp.table_metadata_list[0].create_time #=> Time
    #   resp.table_metadata_list[0].last_access_time #=> Time
    #   resp.table_metadata_list[0].table_type #=> String
    #   resp.table_metadata_list[0].columns #=> Array
    #   resp.table_metadata_list[0].columns[0].name #=> String
    #   resp.table_metadata_list[0].columns[0].type #=> String
    #   resp.table_metadata_list[0].columns[0].comment #=> String
    #   resp.table_metadata_list[0].partition_keys #=> Array
    #   resp.table_metadata_list[0].partition_keys[0].name #=> String
    #   resp.table_metadata_list[0].partition_keys[0].type #=> String
    #   resp.table_metadata_list[0].partition_keys[0].comment #=> String
    #   resp.table_metadata_list[0].parameters #=> Hash
    #   resp.table_metadata_list[0].parameters["KeyString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListTableMetadata AWS API Documentation
    #
    # @overload list_table_metadata(params = {})
    # @param [Hash] params ({})
    def list_table_metadata(params = {}, options = {})
      req = build_request(:list_table_metadata, params)
      req.send_request(options)
    end

    # Lists the tags associated with an Athena workgroup or data catalog
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   Lists the tags for the resource with the specified ARN.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no
    #   additional results for this request, where the request lists the tags
    #   for the resource with the specified ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request that lists
    #   the tags for the resource.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists available workgroups for the account.
    #
    # @option params [String] :next_token
    #   A token generated by the Athena service that specifies where to
    #   continue pagination if a previous request was truncated. To obtain the
    #   next set of pages, pass in the `NextToken` from the response object of
    #   the previous page call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of workgroups to return in this request.
    #
    # @return [Types::ListWorkGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkGroupsOutput#work_groups #work_groups} => Array&lt;Types::WorkGroupSummary&gt;
    #   * {Types::ListWorkGroupsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_work_groups({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.work_groups #=> Array
    #   resp.work_groups[0].name #=> String
    #   resp.work_groups[0].state #=> String, one of "ENABLED", "DISABLED"
    #   resp.work_groups[0].description #=> String
    #   resp.work_groups[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/ListWorkGroups AWS API Documentation
    #
    # @overload list_work_groups(params = {})
    # @param [Hash] params ({})
    def list_work_groups(params = {}, options = {})
      req = build_request(:list_work_groups, params)
      req.send_request(options)
    end

    # Runs the SQL query statements contained in the `Query`. Requires you
    # to have access to the workgroup in which the query ran. Running
    # queries against an external catalog requires GetDataCatalog permission
    # to the catalog. For code samples using the AWS SDK for Java, see
    # [Examples and Code Samples][1] in the *Amazon Athena User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/athena/latest/ug/code-samples.html
    #
    # @option params [required, String] :query_string
    #   The SQL query statements to be executed.
    #
    # @option params [String] :client_request_token
    #   A unique case-sensitive string used to ensure the request to create
    #   the query is idempotent (executes only once). If another
    #   `StartQueryExecution` request is received, the same response is
    #   returned and another query is not created. If a parameter has changed,
    #   for example, the `QueryString`, an error is returned.
    #
    #   This token is listed as not required because AWS SDKs (for example the
    #   AWS SDK for Java) auto-generate the token for users. If you are not
    #   using the AWS SDK or the AWS CLI, you must provide this token or the
    #   action will fail.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::QueryExecutionContext] :query_execution_context
    #   The database within which the query executes.
    #
    # @option params [Types::ResultConfiguration] :result_configuration
    #   Specifies information about where and how to save the results of the
    #   query execution. If the query runs in a workgroup, then workgroup's
    #   settings may override query settings. This affects the query results
    #   location. The workgroup settings override is specified in
    #   EnforceWorkGroupConfiguration (true/false) in the
    #   WorkGroupConfiguration. See
    #   WorkGroupConfiguration$EnforceWorkGroupConfiguration.
    #
    # @option params [String] :work_group
    #   The name of the workgroup in which the query is being started.
    #
    # @return [Types::StartQueryExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartQueryExecutionOutput#query_execution_id #query_execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_query_execution({
    #     query_string: "QueryString", # required
    #     client_request_token: "IdempotencyToken",
    #     query_execution_context: {
    #       database: "DatabaseString",
    #       catalog: "CatalogNameString",
    #     },
    #     result_configuration: {
    #       output_location: "String",
    #       encryption_configuration: {
    #         encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #         kms_key: "String",
    #       },
    #     },
    #     work_group: "WorkGroupName",
    #   })
    #
    # @example Response structure
    #
    #   resp.query_execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StartQueryExecution AWS API Documentation
    #
    # @overload start_query_execution(params = {})
    # @param [Hash] params ({})
    def start_query_execution(params = {}, options = {})
      req = build_request(:start_query_execution, params)
      req.send_request(options)
    end

    # Stops a query execution. Requires you to have access to the workgroup
    # in which the query ran.
    #
    # For code samples using the AWS SDK for Java, see [Examples and Code
    # Samples][1] in the *Amazon Athena User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/athena/latest/ug/code-samples.html
    #
    # @option params [required, String] :query_execution_id
    #   The unique ID of the query execution to stop.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_query_execution({
    #     query_execution_id: "QueryExecutionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/StopQueryExecution AWS API Documentation
    #
    # @overload stop_query_execution(params = {})
    # @param [Hash] params ({})
    def stop_query_execution(params = {}, options = {})
      req = build_request(:stop_query_execution, params)
      req.send_request(options)
    end

    # Adds one or more tags to an Athena resource. A tag is a label that you
    # assign to a resource. In Athena, a resource can be a workgroup or data
    # catalog. Each tag consists of a key and an optional value, both of
    # which you define. For example, you can use tags to categorize Athena
    # workgroups or data catalogs by purpose, owner, or environment. Use a
    # consistent set of tag keys to make it easier to search and filter
    # workgroups or data catalogs in your account. For best practices, see
    # [Tagging Best Practices][1]. Tag keys can be from 1 to 128 UTF-8
    # Unicode characters, and tag values can be from 0 to 256 UTF-8 Unicode
    # characters. Tags can use letters and numbers representable in UTF-8,
    # and the following characters: + - = . \_ : / @. Tag keys and values
    # are case-sensitive. Tag keys must be unique per resource. If you
    # specify more than one tag, separate them by commas.
    #
    #
    #
    # [1]: https://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    #
    # @option params [required, String] :resource_arn
    #   Specifies the ARN of the Athena resource (workgroup or data catalog)
    #   to which tags are to be added.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A collection of one or more tags, separated by commas, to be added to
    #   an Athena workgroup or data catalog resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a data catalog or workgroup resource.
    #
    # @option params [required, String] :resource_arn
    #   Specifies the ARN of the resource from which tags are to be removed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A comma-separated list of one or more tag keys whose tags are to be
    #   removed from the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the data catalog that has the specified name.
    #
    # @option params [required, String] :name
    #   The name of the data catalog to update. The catalog name must be
    #   unique for the AWS account and can use a maximum of 128 alphanumeric,
    #   underscore, at sign, or hyphen characters.
    #
    # @option params [required, String] :type
    #   Specifies the type of data catalog to update. Specify `LAMBDA` for a
    #   federated catalog, `GLUE` for AWS Glue Catalog, or `HIVE` for an
    #   external hive metastore.
    #
    # @option params [String] :description
    #   New or modified text that describes the data catalog.
    #
    # @option params [Hash<String,String>] :parameters
    #   Specifies the Lambda function or functions to use for updating the
    #   data catalog. This is a mapping whose values depend on the catalog
    #   type.
    #
    #   * For the `HIVE` data catalog type, use the following syntax. The
    #     `metadata-function` parameter is required. `The sdk-version`
    #     parameter is optional and defaults to the currently supported
    #     version.
    #
    #     `metadata-function=lambda_arn, sdk-version=version_number `
    #
    #   * For the `LAMBDA` data catalog type, use one of the following sets of
    #     required parameters, but not both.
    #
    #     * If you have one Lambda function that processes metadata and
    #       another for reading the actual data, use the following syntax.
    #       Both parameters are required.
    #
    #       `metadata-function=lambda_arn, record-function=lambda_arn `
    #
    #     * If you have a composite Lambda function that processes both
    #       metadata and data, use the following syntax to specify your Lambda
    #       function.
    #
    #       `function=lambda_arn `
    #
    #   * The `GLUE` type has no parameters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_catalog({
    #     name: "CatalogNameString", # required
    #     type: "LAMBDA", # required, accepts LAMBDA, GLUE, HIVE
    #     description: "DescriptionString",
    #     parameters: {
    #       "KeyString" => "ParametersMapValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateDataCatalog AWS API Documentation
    #
    # @overload update_data_catalog(params = {})
    # @param [Hash] params ({})
    def update_data_catalog(params = {}, options = {})
      req = build_request(:update_data_catalog, params)
      req.send_request(options)
    end

    # Updates the workgroup with the specified name. The workgroup's name
    # cannot be changed.
    #
    # @option params [required, String] :work_group
    #   The specified workgroup that will be updated.
    #
    # @option params [String] :description
    #   The workgroup description.
    #
    # @option params [Types::WorkGroupConfigurationUpdates] :configuration_updates
    #   The workgroup configuration that will be updated for the given
    #   workgroup.
    #
    # @option params [String] :state
    #   The workgroup state that will be updated for the given workgroup.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_work_group({
    #     work_group: "WorkGroupName", # required
    #     description: "WorkGroupDescriptionString",
    #     configuration_updates: {
    #       enforce_work_group_configuration: false,
    #       result_configuration_updates: {
    #         output_location: "String",
    #         remove_output_location: false,
    #         encryption_configuration: {
    #           encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #           kms_key: "String",
    #         },
    #         remove_encryption_configuration: false,
    #       },
    #       publish_cloud_watch_metrics_enabled: false,
    #       bytes_scanned_cutoff_per_query: 1,
    #       remove_bytes_scanned_cutoff_per_query: false,
    #       requester_pays_enabled: false,
    #     },
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/UpdateWorkGroup AWS API Documentation
    #
    # @overload update_work_group(params = {})
    # @param [Hash] params ({})
    def update_work_group(params = {}, options = {})
      req = build_request(:update_work_group, params)
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
      context[:gem_name] = 'aws-sdk-athena'
      context[:gem_version] = '1.33.0'
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
