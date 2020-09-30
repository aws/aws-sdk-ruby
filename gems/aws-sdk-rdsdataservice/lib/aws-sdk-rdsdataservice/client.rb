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

Aws::Plugins::GlobalConfiguration.add_identifier(:rdsdataservice)

module Aws::RDSDataService
  # An API client for RDSDataService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::RDSDataService::Client.new(
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

    @identifier = :rdsdataservice

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

    # Runs a batch SQL statement over an array of data.
    #
    # You can run bulk update and insert operations for multiple records
    # using a DML statement with different parameter sets. Bulk operations
    # can provide a significant performance improvement over individual
    # insert and update operations.
    #
    # If a call isn't part of a transaction because it doesn't include the
    # `transactionID` parameter, changes that result from the call are
    # committed automatically.
    #
    # @option params [String] :database
    #   The name of the database.
    #
    # @option params [Array<Array>] :parameter_sets
    #   The parameter set for the batch operation.
    #
    #   The SQL statement is executed as many times as the number of parameter
    #   sets provided. To execute a SQL statement with no parameters, use one
    #   of the following options:
    #
    #   * Specify one or more empty parameter sets.
    #
    #   * Use the `ExecuteStatement` operation instead of the
    #     `BatchExecuteStatement` operation.
    #
    #   <note markdown="1"> Array parameters are not supported.
    #
    #    </note>
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #
    # @option params [String] :schema
    #   The name of the database schema.
    #
    # @option params [required, String] :secret_arn
    #   The name or ARN of the secret that enables access to the DB cluster.
    #
    # @option params [required, String] :sql
    #   The SQL statement to run.
    #
    # @option params [String] :transaction_id
    #   The identifier of a transaction that was started by using the
    #   `BeginTransaction` operation. Specify the transaction ID of the
    #   transaction that you want to include the SQL statement in.
    #
    #   If the SQL statement is not part of a transaction, don't set this
    #   parameter.
    #
    # @return [Types::BatchExecuteStatementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchExecuteStatementResponse#update_results #update_results} => Array&lt;Types::UpdateResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_execute_statement({
    #     database: "DbName",
    #     parameter_sets: [
    #       [
    #         {
    #           name: "ParameterName",
    #           type_hint: "DATE", # accepts DATE, DECIMAL, TIME, TIMESTAMP
    #           value: {
    #             array_value: {
    #               array_values: [
    #                 {
    #                   # recursive ArrayValue
    #                 },
    #               ],
    #               boolean_values: [false],
    #               double_values: [1.0],
    #               long_values: [1],
    #               string_values: ["String"],
    #             },
    #             blob_value: "data",
    #             boolean_value: false,
    #             double_value: 1.0,
    #             is_null: false,
    #             long_value: 1,
    #             string_value: "String",
    #           },
    #         },
    #       ],
    #     ],
    #     resource_arn: "Arn", # required
    #     schema: "DbName",
    #     secret_arn: "Arn", # required
    #     sql: "SqlStatement", # required
    #     transaction_id: "Id",
    #   })
    #
    # @example Response structure
    #
    #   resp.update_results #=> Array
    #   resp.update_results[0].generated_fields #=> Array
    #   resp.update_results[0].generated_fields[0].array_value.array_values #=> Array
    #   resp.update_results[0].generated_fields[0].array_value.array_values[0] #=> Types::ArrayValue
    #   resp.update_results[0].generated_fields[0].array_value.boolean_values #=> Array
    #   resp.update_results[0].generated_fields[0].array_value.boolean_values[0] #=> Boolean
    #   resp.update_results[0].generated_fields[0].array_value.double_values #=> Array
    #   resp.update_results[0].generated_fields[0].array_value.double_values[0] #=> Float
    #   resp.update_results[0].generated_fields[0].array_value.long_values #=> Array
    #   resp.update_results[0].generated_fields[0].array_value.long_values[0] #=> Integer
    #   resp.update_results[0].generated_fields[0].array_value.string_values #=> Array
    #   resp.update_results[0].generated_fields[0].array_value.string_values[0] #=> String
    #   resp.update_results[0].generated_fields[0].blob_value #=> String
    #   resp.update_results[0].generated_fields[0].boolean_value #=> Boolean
    #   resp.update_results[0].generated_fields[0].double_value #=> Float
    #   resp.update_results[0].generated_fields[0].is_null #=> Boolean
    #   resp.update_results[0].generated_fields[0].long_value #=> Integer
    #   resp.update_results[0].generated_fields[0].string_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/BatchExecuteStatement AWS API Documentation
    #
    # @overload batch_execute_statement(params = {})
    # @param [Hash] params ({})
    def batch_execute_statement(params = {}, options = {})
      req = build_request(:batch_execute_statement, params)
      req.send_request(options)
    end

    # Starts a SQL transaction.
    #
    #      <important> <p>A transaction can run for a maximum of 24 hours. A transaction is terminated and rolled back automatically after 24 hours.</p> <p>A transaction times out if no calls use its transaction ID in three minutes. If a transaction times out before it's committed, it's rolled back automatically.</p> <p>DDL statements inside a transaction cause an implicit commit. We recommend that you run each DDL statement in a separate <code>ExecuteStatement</code> call with <code>continueAfterTimeout</code> enabled.</p> </important>
    #
    # @option params [String] :database
    #   The name of the database.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #
    # @option params [String] :schema
    #   The name of the database schema.
    #
    # @option params [required, String] :secret_arn
    #   The name or ARN of the secret that enables access to the DB cluster.
    #
    # @return [Types::BeginTransactionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BeginTransactionResponse#transaction_id #transaction_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.begin_transaction({
    #     database: "DbName",
    #     resource_arn: "Arn", # required
    #     schema: "DbName",
    #     secret_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transaction_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/BeginTransaction AWS API Documentation
    #
    # @overload begin_transaction(params = {})
    # @param [Hash] params ({})
    def begin_transaction(params = {}, options = {})
      req = build_request(:begin_transaction, params)
      req.send_request(options)
    end

    # Ends a SQL transaction started with the `BeginTransaction` operation
    # and commits the changes.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #
    # @option params [required, String] :secret_arn
    #   The name or ARN of the secret that enables access to the DB cluster.
    #
    # @option params [required, String] :transaction_id
    #   The identifier of the transaction to end and commit.
    #
    # @return [Types::CommitTransactionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CommitTransactionResponse#transaction_status #transaction_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.commit_transaction({
    #     resource_arn: "Arn", # required
    #     secret_arn: "Arn", # required
    #     transaction_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transaction_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/CommitTransaction AWS API Documentation
    #
    # @overload commit_transaction(params = {})
    # @param [Hash] params ({})
    def commit_transaction(params = {}, options = {})
      req = build_request(:commit_transaction, params)
      req.send_request(options)
    end

    # Runs one or more SQL statements.
    #
    # This operation is deprecated. Use the `BatchExecuteStatement` or
    # `ExecuteStatement` operation.
    #
    # @option params [required, String] :aws_secret_store_arn
    #   The Amazon Resource Name (ARN) of the secret that enables access to
    #   the DB cluster.
    #
    # @option params [String] :database
    #   The name of the database.
    #
    # @option params [required, String] :db_cluster_or_instance_arn
    #   The ARN of the Aurora Serverless DB cluster.
    #
    # @option params [String] :schema
    #   The name of the database schema.
    #
    # @option params [required, String] :sql_statements
    #   One or more SQL statements to run on the DB cluster.
    #
    #   You can separate SQL statements from each other with a semicolon (;).
    #   Any valid SQL statement is permitted, including data definition, data
    #   manipulation, and commit statements.
    #
    # @return [Types::ExecuteSqlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteSqlResponse#sql_statement_results #sql_statement_results} => Array&lt;Types::SqlStatementResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_sql({
    #     aws_secret_store_arn: "Arn", # required
    #     database: "DbName",
    #     db_cluster_or_instance_arn: "Arn", # required
    #     schema: "DbName",
    #     sql_statements: "SqlStatement", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sql_statement_results #=> Array
    #   resp.sql_statement_results[0].number_of_records_updated #=> Integer
    #   resp.sql_statement_results[0].result_frame.records #=> Array
    #   resp.sql_statement_results[0].result_frame.records[0].values #=> Array
    #   resp.sql_statement_results[0].result_frame.records[0].values[0].array_values #=> Array
    #   resp.sql_statement_results[0].result_frame.records[0].values[0].array_values[0] #=> Types::Value
    #   resp.sql_statement_results[0].result_frame.records[0].values[0].big_int_value #=> Integer
    #   resp.sql_statement_results[0].result_frame.records[0].values[0].bit_value #=> Boolean
    #   resp.sql_statement_results[0].result_frame.records[0].values[0].blob_value #=> String
    #   resp.sql_statement_results[0].result_frame.records[0].values[0].double_value #=> Float
    #   resp.sql_statement_results[0].result_frame.records[0].values[0].int_value #=> Integer
    #   resp.sql_statement_results[0].result_frame.records[0].values[0].is_null #=> Boolean
    #   resp.sql_statement_results[0].result_frame.records[0].values[0].real_value #=> Float
    #   resp.sql_statement_results[0].result_frame.records[0].values[0].string_value #=> String
    #   resp.sql_statement_results[0].result_frame.records[0].values[0].struct_value.attributes #=> Array
    #   resp.sql_statement_results[0].result_frame.records[0].values[0].struct_value.attributes[0] #=> Types::Value
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_count #=> Integer
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata #=> Array
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].array_base_column_type #=> Integer
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].is_auto_increment #=> Boolean
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].is_case_sensitive #=> Boolean
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].is_currency #=> Boolean
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].is_signed #=> Boolean
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].label #=> String
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].name #=> String
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].nullable #=> Integer
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].precision #=> Integer
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].scale #=> Integer
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].schema_name #=> String
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].table_name #=> String
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].type #=> Integer
    #   resp.sql_statement_results[0].result_frame.result_set_metadata.column_metadata[0].type_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ExecuteSql AWS API Documentation
    #
    # @overload execute_sql(params = {})
    # @param [Hash] params ({})
    def execute_sql(params = {}, options = {})
      req = build_request(:execute_sql, params)
      req.send_request(options)
    end

    # Runs a SQL statement against a database.
    #
    # If a call isn't part of a transaction because it doesn't include the
    # `transactionID` parameter, changes that result from the call are
    # committed automatically.
    #
    # The response size limit is 1 MB. If the call returns more than 1 MB of
    # response data, the call is terminated.
    #
    # @option params [Boolean] :continue_after_timeout
    #   A value that indicates whether to continue running the statement after
    #   the call times out. By default, the statement stops running when the
    #   call times out.
    #
    #   For DDL statements, we recommend continuing to run the statement after
    #   the call times out. When a DDL statement terminates before it is
    #   finished running, it can result in errors and possibly corrupted data
    #   structures.
    #
    # @option params [String] :database
    #   The name of the database.
    #
    # @option params [Boolean] :include_result_metadata
    #   A value that indicates whether to include metadata in the results.
    #
    # @option params [Array<Types::SqlParameter>] :parameters
    #   The parameters for the SQL statement.
    #
    #   <note markdown="1"> Array parameters are not supported.
    #
    #    </note>
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #
    # @option params [Types::ResultSetOptions] :result_set_options
    #   Options that control how the result set is returned.
    #
    # @option params [String] :schema
    #   The name of the database schema.
    #
    # @option params [required, String] :secret_arn
    #   The name or ARN of the secret that enables access to the DB cluster.
    #
    # @option params [required, String] :sql
    #   The SQL statement to run.
    #
    # @option params [String] :transaction_id
    #   The identifier of a transaction that was started by using the
    #   `BeginTransaction` operation. Specify the transaction ID of the
    #   transaction that you want to include the SQL statement in.
    #
    #   If the SQL statement is not part of a transaction, don't set this
    #   parameter.
    #
    # @return [Types::ExecuteStatementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteStatementResponse#column_metadata #column_metadata} => Array&lt;Types::ColumnMetadata&gt;
    #   * {Types::ExecuteStatementResponse#generated_fields #generated_fields} => Array&lt;Types::Field&gt;
    #   * {Types::ExecuteStatementResponse#number_of_records_updated #number_of_records_updated} => Integer
    #   * {Types::ExecuteStatementResponse#records #records} => Array&lt;Array&lt;Types::Field&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_statement({
    #     continue_after_timeout: false,
    #     database: "DbName",
    #     include_result_metadata: false,
    #     parameters: [
    #       {
    #         name: "ParameterName",
    #         type_hint: "DATE", # accepts DATE, DECIMAL, TIME, TIMESTAMP
    #         value: {
    #           array_value: {
    #             array_values: [
    #               {
    #                 # recursive ArrayValue
    #               },
    #             ],
    #             boolean_values: [false],
    #             double_values: [1.0],
    #             long_values: [1],
    #             string_values: ["String"],
    #           },
    #           blob_value: "data",
    #           boolean_value: false,
    #           double_value: 1.0,
    #           is_null: false,
    #           long_value: 1,
    #           string_value: "String",
    #         },
    #       },
    #     ],
    #     resource_arn: "Arn", # required
    #     result_set_options: {
    #       decimal_return_type: "DOUBLE_OR_LONG", # accepts DOUBLE_OR_LONG, STRING
    #     },
    #     schema: "DbName",
    #     secret_arn: "Arn", # required
    #     sql: "SqlStatement", # required
    #     transaction_id: "Id",
    #   })
    #
    # @example Response structure
    #
    #   resp.column_metadata #=> Array
    #   resp.column_metadata[0].array_base_column_type #=> Integer
    #   resp.column_metadata[0].is_auto_increment #=> Boolean
    #   resp.column_metadata[0].is_case_sensitive #=> Boolean
    #   resp.column_metadata[0].is_currency #=> Boolean
    #   resp.column_metadata[0].is_signed #=> Boolean
    #   resp.column_metadata[0].label #=> String
    #   resp.column_metadata[0].name #=> String
    #   resp.column_metadata[0].nullable #=> Integer
    #   resp.column_metadata[0].precision #=> Integer
    #   resp.column_metadata[0].scale #=> Integer
    #   resp.column_metadata[0].schema_name #=> String
    #   resp.column_metadata[0].table_name #=> String
    #   resp.column_metadata[0].type #=> Integer
    #   resp.column_metadata[0].type_name #=> String
    #   resp.generated_fields #=> Array
    #   resp.generated_fields[0].array_value.array_values #=> Array
    #   resp.generated_fields[0].array_value.array_values[0] #=> Types::ArrayValue
    #   resp.generated_fields[0].array_value.boolean_values #=> Array
    #   resp.generated_fields[0].array_value.boolean_values[0] #=> Boolean
    #   resp.generated_fields[0].array_value.double_values #=> Array
    #   resp.generated_fields[0].array_value.double_values[0] #=> Float
    #   resp.generated_fields[0].array_value.long_values #=> Array
    #   resp.generated_fields[0].array_value.long_values[0] #=> Integer
    #   resp.generated_fields[0].array_value.string_values #=> Array
    #   resp.generated_fields[0].array_value.string_values[0] #=> String
    #   resp.generated_fields[0].blob_value #=> String
    #   resp.generated_fields[0].boolean_value #=> Boolean
    #   resp.generated_fields[0].double_value #=> Float
    #   resp.generated_fields[0].is_null #=> Boolean
    #   resp.generated_fields[0].long_value #=> Integer
    #   resp.generated_fields[0].string_value #=> String
    #   resp.number_of_records_updated #=> Integer
    #   resp.records #=> Array
    #   resp.records[0] #=> Array
    #   resp.records[0][0].array_value.array_values #=> Array
    #   resp.records[0][0].array_value.array_values[0] #=> Types::ArrayValue
    #   resp.records[0][0].array_value.boolean_values #=> Array
    #   resp.records[0][0].array_value.boolean_values[0] #=> Boolean
    #   resp.records[0][0].array_value.double_values #=> Array
    #   resp.records[0][0].array_value.double_values[0] #=> Float
    #   resp.records[0][0].array_value.long_values #=> Array
    #   resp.records[0][0].array_value.long_values[0] #=> Integer
    #   resp.records[0][0].array_value.string_values #=> Array
    #   resp.records[0][0].array_value.string_values[0] #=> String
    #   resp.records[0][0].blob_value #=> String
    #   resp.records[0][0].boolean_value #=> Boolean
    #   resp.records[0][0].double_value #=> Float
    #   resp.records[0][0].is_null #=> Boolean
    #   resp.records[0][0].long_value #=> Integer
    #   resp.records[0][0].string_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/ExecuteStatement AWS API Documentation
    #
    # @overload execute_statement(params = {})
    # @param [Hash] params ({})
    def execute_statement(params = {}, options = {})
      req = build_request(:execute_statement, params)
      req.send_request(options)
    end

    # Performs a rollback of a transaction. Rolling back a transaction
    # cancels its changes.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    #
    # @option params [required, String] :secret_arn
    #   The name or ARN of the secret that enables access to the DB cluster.
    #
    # @option params [required, String] :transaction_id
    #   The identifier of the transaction to roll back.
    #
    # @return [Types::RollbackTransactionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RollbackTransactionResponse#transaction_status #transaction_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rollback_transaction({
    #     resource_arn: "Arn", # required
    #     secret_arn: "Arn", # required
    #     transaction_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transaction_status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01/RollbackTransaction AWS API Documentation
    #
    # @overload rollback_transaction(params = {})
    # @param [Hash] params ({})
    def rollback_transaction(params = {}, options = {})
      req = build_request(:rollback_transaction, params)
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
      context[:gem_name] = 'aws-sdk-rdsdataservice'
      context[:gem_version] = '1.23.0'
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
