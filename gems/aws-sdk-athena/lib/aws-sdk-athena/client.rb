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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:athena)

module Aws::Athena
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
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
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

    # Returns the details of a single named query or a list of up to 50
    # queries, which you provide as an array of query ID strings. Use
    # ListNamedQueries to get the list of named query IDs. If information
    # could not be retrieved for a submitted query ID, information about the
    # query ID submitted is listed under UnprocessedNamedQueryId. Named
    # queries are different from executed queries. Use
    # BatchGetQueryExecution to get details about each unique query
    # execution, and ListQueryExecutions to get a list of query execution
    # IDs.
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
    # strings. To get a list of query execution IDs, use
    # ListQueryExecutions. Query executions are different from named (saved)
    # queries. Use BatchGetNamedQuery to get details about named queries.
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
    #   resp.query_executions[0].result_configuration.output_location #=> String
    #   resp.query_executions[0].result_configuration.encryption_configuration.encryption_option #=> String, one of "SSE_S3", "SSE_KMS", "CSE_KMS"
    #   resp.query_executions[0].result_configuration.encryption_configuration.kms_key #=> String
    #   resp.query_executions[0].query_execution_context.database #=> String
    #   resp.query_executions[0].status.state #=> String, one of "QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"
    #   resp.query_executions[0].status.state_change_reason #=> String
    #   resp.query_executions[0].status.submission_date_time #=> Time
    #   resp.query_executions[0].status.completion_date_time #=> Time
    #   resp.query_executions[0].statistics.engine_execution_time_in_millis #=> Integer
    #   resp.query_executions[0].statistics.data_scanned_in_bytes #=> Integer
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

    # Creates a named query.
    #
    # For code samples using the AWS SDK for Java, see [Examples and Code
    # Samples][1] in the *Amazon Athena User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/athena/latest/ug/code-samples.html
    #
    # @option params [required, String] :name
    #   The plain language name for the query.
    #
    # @option params [String] :description
    #   A brief explanation of the query.
    #
    # @option params [required, String] :database
    #   The database to which the query belongs.
    #
    # @option params [required, String] :query_string
    #   The text of the query itself. In other words, all query statements.
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

    # Deletes a named query.
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

    # Returns information about a single query.
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetNamedQuery AWS API Documentation
    #
    # @overload get_named_query(params = {})
    # @param [Hash] params ({})
    def get_named_query(params = {}, options = {})
      req = build_request(:get_named_query, params)
      req.send_request(options)
    end

    # Returns information about a single execution of a query. Each time a
    # query executes, information about the query execution is saved with a
    # unique ID.
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
    #   resp.query_execution.result_configuration.output_location #=> String
    #   resp.query_execution.result_configuration.encryption_configuration.encryption_option #=> String, one of "SSE_S3", "SSE_KMS", "CSE_KMS"
    #   resp.query_execution.result_configuration.encryption_configuration.kms_key #=> String
    #   resp.query_execution.query_execution_context.database #=> String
    #   resp.query_execution.status.state #=> String, one of "QUEUED", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"
    #   resp.query_execution.status.state_change_reason #=> String
    #   resp.query_execution.status.submission_date_time #=> Time
    #   resp.query_execution.status.completion_date_time #=> Time
    #   resp.query_execution.statistics.engine_execution_time_in_millis #=> Integer
    #   resp.query_execution.statistics.data_scanned_in_bytes #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/athena-2017-05-18/GetQueryExecution AWS API Documentation
    #
    # @overload get_query_execution(params = {})
    # @param [Hash] params ({})
    def get_query_execution(params = {}, options = {})
      req = build_request(:get_query_execution, params)
      req.send_request(options)
    end

    # Returns the results of a single query execution specified by
    # `QueryExecutionId`. This request does not execute the query but
    # returns results. Use StartQueryExecution to run a query.
    #
    # @option params [required, String] :query_execution_id
    #   The unique ID of the query execution.
    #
    # @option params [String] :next_token
    #   The token that specifies where to start pagination if a previous
    #   request was truncated.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results (rows) to return in this request.
    #
    # @return [Types::GetQueryResultsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetQueryResultsOutput#result_set #result_set} => Types::ResultSet
    #   * {Types::GetQueryResultsOutput#next_token #next_token} => String
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

    # Provides a list of all available query IDs.
    #
    # For code samples using the AWS SDK for Java, see [Examples and Code
    # Samples][1] in the *Amazon Athena User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/athena/latest/ug/code-samples.html
    #
    # @option params [String] :next_token
    #   The token that specifies where to start pagination if a previous
    #   request was truncated.
    #
    # @option params [Integer] :max_results
    #   The maximum number of queries to return in this request.
    #
    # @return [Types::ListNamedQueriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNamedQueriesOutput#named_query_ids #named_query_ids} => Array&lt;String&gt;
    #   * {Types::ListNamedQueriesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_named_queries({
    #     next_token: "Token",
    #     max_results: 1,
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

    # Provides a list of all available query execution IDs.
    #
    # For code samples using the AWS SDK for Java, see [Examples and Code
    # Samples][1] in the *Amazon Athena User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/athena/latest/ug/code-samples.html
    #
    # @option params [String] :next_token
    #   The token that specifies where to start pagination if a previous
    #   request was truncated.
    #
    # @option params [Integer] :max_results
    #   The maximum number of query executions to return in this request.
    #
    # @return [Types::ListQueryExecutionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueryExecutionsOutput#query_execution_ids #query_execution_ids} => Array&lt;String&gt;
    #   * {Types::ListQueryExecutionsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_query_executions({
    #     next_token: "Token",
    #     max_results: 1,
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

    # Runs (executes) the SQL query statements contained in the `Query`
    # string.
    #
    # For code samples using the AWS SDK for Java, see [Examples and Code
    # Samples][1] in the *Amazon Athena User Guide*.
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
    # @option params [required, Types::ResultConfiguration] :result_configuration
    #   Specifies information about where and how to save the results of the
    #   query execution.
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
    #     },
    #     result_configuration: { # required
    #       output_location: "String", # required
    #       encryption_configuration: {
    #         encryption_option: "SSE_S3", # required, accepts SSE_S3, SSE_KMS, CSE_KMS
    #         kms_key: "String",
    #       },
    #     },
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

    # Stops a query execution.
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
      context[:gem_version] = '1.3.0'
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
