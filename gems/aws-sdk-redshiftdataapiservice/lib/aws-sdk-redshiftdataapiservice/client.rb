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

Aws::Plugins::GlobalConfiguration.add_identifier(:redshiftdataapiservice)

module Aws::RedshiftDataAPIService
  # An API client for RedshiftDataAPIService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::RedshiftDataAPIService::Client.new(
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

    @identifier = :redshiftdataapiservice

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

    # Cancels a running query. To be canceled, a query must be running.
    #
    # @option params [required, String] :id
    #   The identifier of the SQL statement to cancel. This value is a
    #   universally unique identifier (UUID) generated by Amazon Redshift Data
    #   API. This identifier is returned by `ExecuteStatment` and
    #   `ListStatements`.
    #
    # @return [Types::CancelStatementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelStatementResponse#status #status} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_statement({
    #     id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/CancelStatement AWS API Documentation
    #
    # @overload cancel_statement(params = {})
    # @param [Hash] params ({})
    def cancel_statement(params = {}, options = {})
      req = build_request(:cancel_statement, params)
      req.send_request(options)
    end

    # Describes the details about a specific instance when a query was run
    # by the Amazon Redshift Data API. The information includes when the
    # query started, when it finished, the query status, the number of rows
    # returned, and the SQL statement.
    #
    # @option params [required, String] :id
    #   The identifier of the SQL statement to describe. This value is a
    #   universally unique identifier (UUID) generated by Amazon Redshift Data
    #   API. This identifier is returned by `ExecuteStatment` and
    #   `ListStatements`.
    #
    # @return [Types::DescribeStatementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStatementResponse#cluster_identifier #cluster_identifier} => String
    #   * {Types::DescribeStatementResponse#created_at #created_at} => Time
    #   * {Types::DescribeStatementResponse#database #database} => String
    #   * {Types::DescribeStatementResponse#db_user #db_user} => String
    #   * {Types::DescribeStatementResponse#duration #duration} => Integer
    #   * {Types::DescribeStatementResponse#error #error} => String
    #   * {Types::DescribeStatementResponse#id #id} => String
    #   * {Types::DescribeStatementResponse#query_string #query_string} => String
    #   * {Types::DescribeStatementResponse#redshift_pid #redshift_pid} => Integer
    #   * {Types::DescribeStatementResponse#redshift_query_id #redshift_query_id} => Integer
    #   * {Types::DescribeStatementResponse#result_rows #result_rows} => Integer
    #   * {Types::DescribeStatementResponse#result_size #result_size} => Integer
    #   * {Types::DescribeStatementResponse#secret_arn #secret_arn} => String
    #   * {Types::DescribeStatementResponse#status #status} => String
    #   * {Types::DescribeStatementResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_statement({
    #     id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_identifier #=> String
    #   resp.created_at #=> Time
    #   resp.database #=> String
    #   resp.db_user #=> String
    #   resp.duration #=> Integer
    #   resp.error #=> String
    #   resp.id #=> String
    #   resp.query_string #=> String
    #   resp.redshift_pid #=> Integer
    #   resp.redshift_query_id #=> Integer
    #   resp.result_rows #=> Integer
    #   resp.result_size #=> Integer
    #   resp.secret_arn #=> String
    #   resp.status #=> String, one of "ABORTED", "ALL", "FAILED", "FINISHED", "PICKED", "STARTED", "SUBMITTED"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/DescribeStatement AWS API Documentation
    #
    # @overload describe_statement(params = {})
    # @param [Hash] params ({})
    def describe_statement(params = {}, options = {})
      req = build_request(:describe_statement, params)
      req.send_request(options)
    end

    # Describes the detailed information about a table from metadata in the
    # cluster. The information includes its columns. A token is returned to
    # page through the column list. Depending on the authorization method,
    # use one of the following combinations of request parameters:
    #
    # * AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the
    #   secret and the cluster identifier that matches the cluster in the
    #   secret.
    #
    # * Temporary credentials - specify the cluster identifier, the database
    #   name, and the database user name. Permission to call the
    #   `redshift:GetClusterCredentials` operation is required to use this
    #   method.
    #
    # @option params [required, String] :cluster_identifier
    #   The cluster identifier. This parameter is required when authenticating
    #   using either AWS Secrets Manager or temporary credentials.
    #
    # @option params [String] :database
    #   The name of the database. This parameter is required when
    #   authenticating using temporary credentials.
    #
    # @option params [String] :db_user
    #   The database user name. This parameter is required when authenticating
    #   using temporary credentials.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tables to return in the response. If more tables
    #   exist than fit in one response, then `NextToken` is returned to page
    #   through the results.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @option params [String] :schema
    #   The schema that contains the table. If no schema is specified, then
    #   matching tables for all schemas are returned.
    #
    # @option params [String] :secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using AWS Secrets
    #   Manager.
    #
    # @option params [String] :table
    #   The table name. If no table is specified, then all tables for all
    #   matching schemas are returned. If no table and no schema is specified,
    #   then all tables for all schemas in the database are returned
    #
    # @return [Types::DescribeTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTableResponse#column_list #column_list} => Array&lt;Types::ColumnMetadata&gt;
    #   * {Types::DescribeTableResponse#next_token #next_token} => String
    #   * {Types::DescribeTableResponse#table_name #table_name} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table({
    #     cluster_identifier: "Location", # required
    #     database: "String",
    #     db_user: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     schema: "String",
    #     secret_arn: "SecretArn",
    #     table: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.column_list #=> Array
    #   resp.column_list[0].column_default #=> String
    #   resp.column_list[0].is_case_sensitive #=> Boolean
    #   resp.column_list[0].is_currency #=> Boolean
    #   resp.column_list[0].is_signed #=> Boolean
    #   resp.column_list[0].label #=> String
    #   resp.column_list[0].length #=> Integer
    #   resp.column_list[0].name #=> String
    #   resp.column_list[0].nullable #=> Integer
    #   resp.column_list[0].precision #=> Integer
    #   resp.column_list[0].scale #=> Integer
    #   resp.column_list[0].schema_name #=> String
    #   resp.column_list[0].table_name #=> String
    #   resp.column_list[0].type_name #=> String
    #   resp.next_token #=> String
    #   resp.table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/DescribeTable AWS API Documentation
    #
    # @overload describe_table(params = {})
    # @param [Hash] params ({})
    def describe_table(params = {}, options = {})
      req = build_request(:describe_table, params)
      req.send_request(options)
    end

    # Runs an SQL statement, which can be data manipulation language (DML)
    # or data definition language (DDL). This statement must be a single SQL
    # statement. Depending on the authorization method, use one of the
    # following combinations of request parameters:
    #
    # * AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the
    #   secret and the cluster identifier that matches the cluster in the
    #   secret.
    #
    # * Temporary credentials - specify the cluster identifier, the database
    #   name, and the database user name. Permission to call the
    #   `redshift:GetClusterCredentials` operation is required to use this
    #   method.
    #
    # @option params [required, String] :cluster_identifier
    #   The cluster identifier. This parameter is required when authenticating
    #   using either AWS Secrets Manager or temporary credentials.
    #
    # @option params [String] :database
    #   The name of the database. This parameter is required when
    #   authenticating using temporary credentials.
    #
    # @option params [String] :db_user
    #   The database user name. This parameter is required when authenticating
    #   using temporary credentials.
    #
    # @option params [String] :secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using AWS Secrets
    #   Manager.
    #
    # @option params [required, String] :sql
    #   The SQL statement text to run.
    #
    # @option params [String] :statement_name
    #   The name of the SQL statement. You can name the SQL statement when you
    #   create it to identify the query.
    #
    # @option params [Boolean] :with_event
    #   A value that indicates whether to send an event to the Amazon
    #   EventBridge event bus after the SQL statement runs.
    #
    # @return [Types::ExecuteStatementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteStatementOutput#cluster_identifier #cluster_identifier} => String
    #   * {Types::ExecuteStatementOutput#created_at #created_at} => Time
    #   * {Types::ExecuteStatementOutput#database #database} => String
    #   * {Types::ExecuteStatementOutput#db_user #db_user} => String
    #   * {Types::ExecuteStatementOutput#id #id} => String
    #   * {Types::ExecuteStatementOutput#secret_arn #secret_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_statement({
    #     cluster_identifier: "Location", # required
    #     database: "String",
    #     db_user: "String",
    #     secret_arn: "SecretArn",
    #     sql: "StatementString", # required
    #     statement_name: "StatementNameString",
    #     with_event: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_identifier #=> String
    #   resp.created_at #=> Time
    #   resp.database #=> String
    #   resp.db_user #=> String
    #   resp.id #=> String
    #   resp.secret_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ExecuteStatement AWS API Documentation
    #
    # @overload execute_statement(params = {})
    # @param [Hash] params ({})
    def execute_statement(params = {}, options = {})
      req = build_request(:execute_statement, params)
      req.send_request(options)
    end

    # Fetches the temporarily cached result of an SQL statement. A token is
    # returned to page through the statement results.
    #
    # @option params [required, String] :id
    #   The identifier of the SQL statement whose results are to be fetched.
    #   This value is a universally unique identifier (UUID) generated by
    #   Amazon Redshift Data API. This identifier is returned by
    #   `ExecuteStatment` and `ListStatements`.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @return [Types::GetStatementResultResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStatementResultResponse#column_metadata #column_metadata} => Array&lt;Types::ColumnMetadata&gt;
    #   * {Types::GetStatementResultResponse#next_token #next_token} => String
    #   * {Types::GetStatementResultResponse#records #records} => Array&lt;Array&lt;Types::Field&gt;&gt;
    #   * {Types::GetStatementResultResponse#total_num_rows #total_num_rows} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_statement_result({
    #     id: "UUID", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.column_metadata #=> Array
    #   resp.column_metadata[0].column_default #=> String
    #   resp.column_metadata[0].is_case_sensitive #=> Boolean
    #   resp.column_metadata[0].is_currency #=> Boolean
    #   resp.column_metadata[0].is_signed #=> Boolean
    #   resp.column_metadata[0].label #=> String
    #   resp.column_metadata[0].length #=> Integer
    #   resp.column_metadata[0].name #=> String
    #   resp.column_metadata[0].nullable #=> Integer
    #   resp.column_metadata[0].precision #=> Integer
    #   resp.column_metadata[0].scale #=> Integer
    #   resp.column_metadata[0].schema_name #=> String
    #   resp.column_metadata[0].table_name #=> String
    #   resp.column_metadata[0].type_name #=> String
    #   resp.next_token #=> String
    #   resp.records #=> Array
    #   resp.records[0] #=> Array
    #   resp.records[0][0].blob_value #=> String
    #   resp.records[0][0].boolean_value #=> Boolean
    #   resp.records[0][0].double_value #=> Float
    #   resp.records[0][0].is_null #=> Boolean
    #   resp.records[0][0].long_value #=> Integer
    #   resp.records[0][0].string_value #=> String
    #   resp.total_num_rows #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/GetStatementResult AWS API Documentation
    #
    # @overload get_statement_result(params = {})
    # @param [Hash] params ({})
    def get_statement_result(params = {}, options = {})
      req = build_request(:get_statement_result, params)
      req.send_request(options)
    end

    # List the databases in a cluster. A token is returned to page through
    # the database list. Depending on the authorization method, use one of
    # the following combinations of request parameters:
    #
    # * AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the
    #   secret and the cluster identifier that matches the cluster in the
    #   secret.
    #
    # * Temporary credentials - specify the cluster identifier, the database
    #   name, and the database user name. Permission to call the
    #   `redshift:GetClusterCredentials` operation is required to use this
    #   method.
    #
    # @option params [required, String] :cluster_identifier
    #   The cluster identifier. This parameter is required when authenticating
    #   using either AWS Secrets Manager or temporary credentials.
    #
    # @option params [String] :database
    #   The name of the database. This parameter is required when
    #   authenticating using temporary credentials.
    #
    # @option params [String] :db_user
    #   The database user name. This parameter is required when authenticating
    #   using temporary credentials.
    #
    # @option params [Integer] :max_results
    #   The maximum number of databases to return in the response. If more
    #   databases exist than fit in one response, then `NextToken` is returned
    #   to page through the results.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @option params [String] :secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using AWS Secrets
    #   Manager.
    #
    # @return [Types::ListDatabasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatabasesResponse#databases #databases} => Array&lt;String&gt;
    #   * {Types::ListDatabasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_databases({
    #     cluster_identifier: "Location", # required
    #     database: "String",
    #     db_user: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     secret_arn: "SecretArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.databases #=> Array
    #   resp.databases[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListDatabases AWS API Documentation
    #
    # @overload list_databases(params = {})
    # @param [Hash] params ({})
    def list_databases(params = {}, options = {})
      req = build_request(:list_databases, params)
      req.send_request(options)
    end

    # Lists the schemas in a database. A token is returned to page through
    # the schema list. Depending on the authorization method, use one of the
    # following combinations of request parameters:
    #
    # * AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the
    #   secret and the cluster identifier that matches the cluster in the
    #   secret.
    #
    # * Temporary credentials - specify the cluster identifier, the database
    #   name, and the database user name. Permission to call the
    #   `redshift:GetClusterCredentials` operation is required to use this
    #   method.
    #
    # @option params [required, String] :cluster_identifier
    #   The cluster identifier. This parameter is required when authenticating
    #   using either AWS Secrets Manager or temporary credentials.
    #
    # @option params [required, String] :database
    #   The name of the database. This parameter is required when
    #   authenticating using temporary credentials.
    #
    # @option params [String] :db_user
    #   The database user name. This parameter is required when authenticating
    #   using temporary credentials.
    #
    # @option params [Integer] :max_results
    #   The maximum number of schemas to return in the response. If more
    #   schemas exist than fit in one response, then `NextToken` is returned
    #   to page through the results.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @option params [String] :schema_pattern
    #   A pattern to filter results by schema name. Within a schema pattern,
    #   "%" means match any substring of 0 or more characters and "\_"
    #   means match any one character. Only schema name entries matching the
    #   search pattern are returned.
    #
    # @option params [String] :secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using AWS Secrets
    #   Manager.
    #
    # @return [Types::ListSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchemasResponse#next_token #next_token} => String
    #   * {Types::ListSchemasResponse#schemas #schemas} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schemas({
    #     cluster_identifier: "Location", # required
    #     database: "String", # required
    #     db_user: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     schema_pattern: "String",
    #     secret_arn: "SecretArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.schemas #=> Array
    #   resp.schemas[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListSchemas AWS API Documentation
    #
    # @overload list_schemas(params = {})
    # @param [Hash] params ({})
    def list_schemas(params = {}, options = {})
      req = build_request(:list_schemas, params)
      req.send_request(options)
    end

    # List of SQL statements. By default, only finished statements are
    # shown. A token is returned to page through the statement list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of SQL statements to return in the response. If
    #   more SQL statements exist than fit in one response, then `NextToken`
    #   is returned to page through the results.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @option params [String] :statement_name
    #   The name of the SQL statement specified as input to `ExecuteStatement`
    #   to identify the query. You can list multiple statements by providing a
    #   prefix that matches the beginning of the statement name. For example,
    #   to list myStatement1, myStatement2, myStatement3, and so on, then
    #   provide the a value of `myStatement`. Data API does a case-sensitive
    #   match of SQL statement names to the prefix value you provide.
    #
    # @option params [String] :status
    #   The status of the SQL statement to list. Status values are defined as
    #   follows:
    #
    #   * ABORTED - The query run was stopped by the user.
    #
    #   * ALL - A status value that includes all query statuses. This value
    #     can be used to filter results.
    #
    #   * FAILED - The query run failed.
    #
    #   * FINISHED - The query has finished running.
    #
    #   * PICKED - The query has been chosen to be run.
    #
    #   * STARTED - The query run has started.
    #
    #   * SUBMITTED - The query was submitted, but not yet processed.
    #
    # @return [Types::ListStatementsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStatementsResponse#next_token #next_token} => String
    #   * {Types::ListStatementsResponse#statements #statements} => Array&lt;Types::StatementData&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_statements({
    #     max_results: 1,
    #     next_token: "String",
    #     statement_name: "StatementNameString",
    #     status: "ABORTED", # accepts ABORTED, ALL, FAILED, FINISHED, PICKED, STARTED, SUBMITTED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.statements #=> Array
    #   resp.statements[0].created_at #=> Time
    #   resp.statements[0].id #=> String
    #   resp.statements[0].query_string #=> String
    #   resp.statements[0].secret_arn #=> String
    #   resp.statements[0].statement_name #=> String
    #   resp.statements[0].status #=> String, one of "ABORTED", "ALL", "FAILED", "FINISHED", "PICKED", "STARTED", "SUBMITTED"
    #   resp.statements[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListStatements AWS API Documentation
    #
    # @overload list_statements(params = {})
    # @param [Hash] params ({})
    def list_statements(params = {}, options = {})
      req = build_request(:list_statements, params)
      req.send_request(options)
    end

    # List the tables in a database. If neither `SchemaPattern` nor
    # `TablePattern` are specified, then all tables in the database are
    # returned. A token is returned to page through the table list.
    # Depending on the authorization method, use one of the following
    # combinations of request parameters:
    #
    # * AWS Secrets Manager - specify the Amazon Resource Name (ARN) of the
    #   secret and the cluster identifier that matches the cluster in the
    #   secret.
    #
    # * Temporary credentials - specify the cluster identifier, the database
    #   name, and the database user name. Permission to call the
    #   `redshift:GetClusterCredentials` operation is required to use this
    #   method.
    #
    # @option params [required, String] :cluster_identifier
    #   The cluster identifier. This parameter is required when authenticating
    #   using either AWS Secrets Manager or temporary credentials.
    #
    # @option params [required, String] :database
    #   The name of the database. This parameter is required when
    #   authenticating using temporary credentials.
    #
    # @option params [String] :db_user
    #   The database user name. This parameter is required when authenticating
    #   using temporary credentials.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tables to return in the response. If more tables
    #   exist than fit in one response, then `NextToken` is returned to page
    #   through the results.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @option params [String] :schema_pattern
    #   A pattern to filter results by schema name. Within a schema pattern,
    #   "%" means match any substring of 0 or more characters and "\_"
    #   means match any one character. Only schema name entries matching the
    #   search pattern are returned. If `SchemaPattern` is not specified, then
    #   all tables that match `TablePattern` are returned. If neither
    #   `SchemaPattern` or `TablePattern` are specified, then all tables are
    #   returned.
    #
    # @option params [String] :secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using AWS Secrets
    #   Manager.
    #
    # @option params [String] :table_pattern
    #   A pattern to filter results by table name. Within a table pattern,
    #   "%" means match any substring of 0 or more characters and "\_"
    #   means match any one character. Only table name entries matching the
    #   search pattern are returned. If `TablePattern` is not specified, then
    #   all tables that match `SchemaPattern`are returned. If neither
    #   `SchemaPattern` or `TablePattern` are specified, then all tables are
    #   returned.
    #
    # @return [Types::ListTablesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTablesResponse#next_token #next_token} => String
    #   * {Types::ListTablesResponse#tables #tables} => Array&lt;Types::TableMember&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables({
    #     cluster_identifier: "Location", # required
    #     database: "String", # required
    #     db_user: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     schema_pattern: "String",
    #     secret_arn: "SecretArn",
    #     table_pattern: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tables #=> Array
    #   resp.tables[0].name #=> String
    #   resp.tables[0].schema #=> String
    #   resp.tables[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListTables AWS API Documentation
    #
    # @overload list_tables(params = {})
    # @param [Hash] params ({})
    def list_tables(params = {}, options = {})
      req = build_request(:list_tables, params)
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
      context[:gem_name] = 'aws-sdk-redshiftdataapiservice'
      context[:gem_version] = '1.2.0'
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
