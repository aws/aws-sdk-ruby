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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:rdsdata)

module Aws::RDSData
  # An API client for Aws::RDSData.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::RdsDataService
    @identifier = :rdsdata

    add_plugin(::Aws::RDSData::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::RDSData::EndpointProvider)
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

    # <p>Runs a batch SQL statement over an array of data.</p>
    #          <p>You can run bulk update and insert operations for multiple records using a DML 
    #             statement with different parameter sets. Bulk operations can provide a significant 
    #             performance improvement over individual insert and update operations.</p>
    #          <note>
    #             <p>If a call isn't part of a transaction because it doesn't include the <code>transactionID</code> parameter,
    #                 changes that result from the call are committed automatically.</p>
    #             <p>There isn't a fixed upper limit on the number of parameter sets. However, the maximum size of the HTTP request
    #                 submitted through the Data API is 4 MiB. If the request exceeds this limit, the Data API returns an error and doesn't
    #                 process the request. This 4-MiB limit includes the size of the HTTP headers and the JSON notation in the request. Thus, the
    #                 number of parameter sets that you can include depends on a combination of factors, such as the size of the SQL statement and
    #                 the size of each parameter set.</p>
    #             <p>The response size limit is 1 MiB. If the call returns more than 1 MiB of response data, the call is terminated.</p>
    #          </note>
    # @param [Hash, Types::BatchExecuteStatementInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    # @option params [String] :secret_arn
    #   <p>The ARN of the secret that enables access to the DB cluster. Enter the database user name and password for the credentials in
    #               the secret.</p>
    #            <p>For information about creating the secret, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/create_database_secret.html">Create a database secret</a>.</p>
    # @option params [String] :sql
    #   <p>The SQL statement to run. Don't include a semicolon (;) at the end of the SQL statement.</p>
    # @option params [String] :database
    #   <p>The name of the database.</p>
    # @option params [String] :schema
    #   <p>The name of the database schema.</p>
    #            <note>
    #               <p>Currently, the <code>schema</code> parameter isn't supported.</p>
    #            </note>
    # @option params [Array<Array<Types::SqlParameter>>] :parameter_sets
    #   <p>The parameter set for the batch operation.</p>
    #            <p>The SQL statement is executed as many times as the number of parameter sets provided. 
    #             To execute a SQL statement with no parameters, use one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>Specify one or more empty parameter sets.</p>
    #               </li>
    #               <li>
    #                  <p>Use the <code>ExecuteStatement</code> operation instead of the <code>BatchExecuteStatement</code> operation.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Array parameters are not supported.</p>
    #            </note>
    # @option params [String] :transaction_id
    #   <p>The identifier of a transaction that was started by using the
    #                   <code>BeginTransaction</code> operation. Specify the transaction ID of the
    #               transaction that you want to include the SQL statement in.</p>
    #            <p>If the SQL statement is not part of a transaction, don't set this
    #               parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     secret_arn: "Arn", # required
    #     sql: "SqlStatement", # required
    #     database: "DbName",
    #     schema: "DbName",
    #     parameter_sets: [
    #       [
    #         {
    #           name: "ParameterName",
    #           value: {
    #             # One of:
    #             is_null: false,
    #             boolean_value: false,
    #             long_value: 1,
    #             double_value: 1.0,
    #             string_value: "String",
    #             blob_value: "data",
    #             array_value: {
    #               # One of:
    #               boolean_values: [false],
    #               long_values: [1],
    #               double_values: [1.0],
    #               string_values: ["String"],
    #               array_values: [{
    #                 # recursive ArrayValue
    #               }]
    #             }
    #           },
    #           type_hint: "TypeHint"
    #         }
    #       ]
    #     ],
    #     transaction_id: "Id"
    #   }
    #   options = {}
    #   response = client.batch_execute_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_results: [
    #       {
    #         generated_fields: [{
    #           # One of:
    #           is_null: false,
    #           boolean_value: false,
    #           long_value: 1,
    #           double_value: 1.0,
    #           string_value: "String",
    #           blob_value: "data",
    #           array_value: {
    #             # One of:
    #             boolean_values: [false],
    #             long_values: [1],
    #             double_values: [1.0],
    #             string_values: ["String"],
    #             array_values: [{
    #               # recursive ArrayValue
    #             }]
    #           }
    #         }]
    #       }
    #     ]
    #   }
    # @return [Types::BatchExecuteStatementOutput]
    def batch_execute_statement(params = {}, options = {})
      request = build_request(:batch_execute_statement, params)
      request.send_request(options)
    end

    # <p>Starts a SQL transaction.</p>
    #          <note>
    #             <p>A transaction can run for a maximum of 24 hours. A transaction is terminated and rolled back automatically after 24
    #                 hours.</p>
    #             <p>A transaction times out if no calls use its transaction ID in three minutes. If a transaction times out before it's
    #                 committed, it's rolled back automatically.</p>
    #             <p>For Aurora MySQL, DDL statements inside a transaction cause an implicit commit. We recommend that you run each MySQL DDL statement in a separate
    #                     <code>ExecuteStatement</code> call with <code>continueAfterTimeout</code> enabled.</p>
    #          </note>
    # @param [Hash, Types::BeginTransactionInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    # @option params [String] :database
    #   <p>The name of the database.</p>
    # @option params [String] :schema
    #   <p>The name of the database schema.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     secret_arn: "Arn", # required
    #     database: "DbName",
    #     schema: "DbName"
    #   }
    #   options = {}
    #   response = client.begin_transaction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transaction_id: "Id"
    #   }
    # @return [Types::BeginTransactionOutput]
    def begin_transaction(params = {}, options = {})
      request = build_request(:begin_transaction, params)
      request.send_request(options)
    end

    # <p>Ends a SQL transaction started with the <code>BeginTransaction</code> operation and
    #             commits the changes.</p>
    # @param [Hash, Types::CommitTransactionInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    # @option params [String] :transaction_id
    #   <p>The identifier of the transaction to end and commit.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     secret_arn: "Arn", # required
    #     transaction_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.commit_transaction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transaction_status: "TransactionStatus"
    #   }
    # @return [Types::CommitTransactionOutput]
    def commit_transaction(params = {}, options = {})
      request = build_request(:commit_transaction, params)
      request.send_request(options)
    end

    # <p>Runs one or more SQL statements.</p>
    #          <note>
    #             <p>This operation isn't supported for Aurora Serverless v2 and provisioned DB clusters.
    #             For Aurora Serverless v1 DB clusters, the operation is deprecated.
    #             Use the <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> operation.</p>
    #          </note>
    # @param [Hash, Types::ExecuteSqlInput] params
    # @option params [String] :db_cluster_or_instance_arn
    #   <p>The ARN of the Aurora Serverless DB cluster.</p>
    # @option params [String] :aws_secret_store_arn
    #   <p>The Amazon Resource Name (ARN) of the secret that enables access to the DB cluster. Enter the database user name and password
    #               for the credentials in the secret.</p>
    #            <p>For information about creating the secret, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/create_database_secret.html">Create a database secret</a>.</p>
    # @option params [String] :sql_statements
    #   <p>One or more SQL statements to run on the DB cluster.</p>
    #            <p>You can separate SQL statements from each other with a semicolon (;). Any valid SQL
    #               statement is permitted, including data definition, data manipulation, and commit
    #               statements. </p>
    # @option params [String] :database
    #   <p>The name of the database.</p>
    # @option params [String] :schema
    #   <p>The name of the database schema.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     db_cluster_or_instance_arn: "Arn", # required
    #     aws_secret_store_arn: "Arn", # required
    #     sql_statements: "SqlStatement", # required
    #     database: "DbName",
    #     schema: "DbName"
    #   }
    #   options = {}
    #   response = client.execute_sql(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sql_statement_results: [
    #       {
    #         result_frame: {
    #           result_set_metadata: {
    #             column_count: 1,
    #             column_metadata: [
    #               {
    #                 name: "String",
    #                 type: 1,
    #                 type_name: "String",
    #                 label: "String",
    #                 schema_name: "String",
    #                 table_name: "String",
    #                 is_auto_increment: false,
    #                 is_signed: false,
    #                 is_currency: false,
    #                 is_case_sensitive: false,
    #                 nullable: 1,
    #                 precision: 1,
    #                 scale: 1,
    #                 array_base_column_type: 1
    #               }
    #             ]
    #           },
    #           records: [
    #             {
    #               values: [{
    #                 # One of:
    #                 is_null: false,
    #                 bit_value: false,
    #                 big_int_value: 1,
    #                 int_value: 1,
    #                 double_value: 1.0,
    #                 real_value: 1.0,
    #                 string_value: "String",
    #                 blob_value: "data",
    #                 array_values: [{
    #                   # recursive Value
    #                 }],
    #                 struct_value: {
    #                   attributes: [{
    #                     # recursive Value
    #                   }]
    #                 }
    #               }]
    #             }
    #           ]
    #         },
    #         number_of_records_updated: 1
    #       }
    #     ]
    #   }
    # @deprecated
    #   The ExecuteSql API is deprecated, please use the ExecuteStatement API.
    #   Since: 2019-03-21
    # @return [Types::ExecuteSqlOutput]
    def execute_sql(params = {}, options = {})
      request = build_request(:execute_sql, params)
      request.send_request(options)
    end

    # <p>Runs a SQL statement against a database.</p>
    #          <note>
    #             <p>If a call isn't part of a transaction because it doesn't include the
    #                     <code>transactionID</code> parameter, changes that result from the call are
    #                 committed automatically.</p>
    #             <p>If the binary response data from the database is more than 1 MB, the call is terminated.</p>
    #          </note>
    # @param [Hash, Types::ExecuteStatementInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    # @option params [String] :secret_arn
    #   <p>The ARN of the secret that enables access to the DB cluster. Enter the database user name and password for the credentials in
    #               the secret.</p>
    #            <p>For information about creating the secret, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/create_database_secret.html">Create a database secret</a>.</p>
    # @option params [String] :sql
    #   <p>The SQL statement to run.</p>
    # @option params [String] :database
    #   <p>The name of the database.</p>
    # @option params [String] :schema
    #   <p>The name of the database schema.</p>
    #            <note>
    #               <p>Currently, the <code>schema</code> parameter isn't supported.</p>
    #            </note>
    # @option params [Array<Types::SqlParameter>] :parameters
    #   <p>The parameters for the SQL statement.</p>
    #            <note>
    #               <p>Array parameters are not supported.</p>
    #            </note>
    # @option params [String] :transaction_id
    #   <p>The identifier of a transaction that was started by using the
    #                   <code>BeginTransaction</code> operation. Specify the transaction ID of the
    #               transaction that you want to include the SQL statement in.</p>
    #            <p>If the SQL statement is not part of a transaction, don't set this parameter.</p>
    # @option params [Boolean] :include_result_metadata
    #   <p>A value that indicates whether to include metadata in the results.</p>
    # @option params [Boolean] :continue_after_timeout
    #   <p>A value that indicates whether to continue running the statement after 
    #               the call times out. By default, the statement stops running when the call 
    #               times out.</p>
    #            <note>
    #               <p>For DDL statements, we recommend continuing to run the statement after 
    #                  the call times out. When a DDL statement terminates before it is finished 
    #                  running, it can result in errors and possibly corrupted data structures.</p>
    #            </note>
    # @option params [Types::ResultSetOptions] :result_set_options
    #   <p>Options that control how the result set is returned.</p>
    # @option params [String] :format_records_as
    #   <p>A value that indicates whether to format the result set as a single JSON string.
    #           This parameter only applies to <code>SELECT</code> statements and is ignored for
    #           other types of statements. Allowed values are <code>NONE</code> and <code>JSON</code>.
    #           The default value is <code>NONE</code>. The result is returned in the <code>formattedRecords</code> field.</p>
    #            <p>For usage information about the JSON format for result sets, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using the Data API</a>
    #             in the <i>Amazon Aurora User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     secret_arn: "Arn", # required
    #     sql: "SqlStatement", # required
    #     database: "DbName",
    #     schema: "DbName",
    #     parameters: [
    #       {
    #         name: "ParameterName",
    #         value: {
    #           # One of:
    #           is_null: false,
    #           boolean_value: false,
    #           long_value: 1,
    #           double_value: 1.0,
    #           string_value: "String",
    #           blob_value: "data",
    #           array_value: {
    #             # One of:
    #             boolean_values: [false],
    #             long_values: [1],
    #             double_values: [1.0],
    #             string_values: ["String"],
    #             array_values: [{
    #               # recursive ArrayValue
    #             }]
    #           }
    #         },
    #         type_hint: "TypeHint"
    #       }
    #     ],
    #     transaction_id: "Id",
    #     include_result_metadata: false,
    #     continue_after_timeout: false,
    #     result_set_options: {
    #       decimal_return_type: "DecimalReturnType",
    #       long_return_type: "LongReturnType"
    #     },
    #     format_records_as: "RecordsFormatType"
    #   }
    #   options = {}
    #   response = client.execute_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     records: [
    #       [{
    #         # One of:
    #         is_null: false,
    #         boolean_value: false,
    #         long_value: 1,
    #         double_value: 1.0,
    #         string_value: "String",
    #         blob_value: "data",
    #         array_value: {
    #           # One of:
    #           boolean_values: [false],
    #           long_values: [1],
    #           double_values: [1.0],
    #           string_values: ["String"],
    #           array_values: [{
    #             # recursive ArrayValue
    #           }]
    #         }
    #       }]
    #     ],
    #     column_metadata: [
    #       {
    #         name: "String",
    #         type: 1,
    #         type_name: "String",
    #         label: "String",
    #         schema_name: "String",
    #         table_name: "String",
    #         is_auto_increment: false,
    #         is_signed: false,
    #         is_currency: false,
    #         is_case_sensitive: false,
    #         nullable: 1,
    #         precision: 1,
    #         scale: 1,
    #         array_base_column_type: 1
    #       }
    #     ],
    #     number_of_records_updated: 1,
    #     generated_fields: [{
    #       # One of:
    #       is_null: false,
    #       boolean_value: false,
    #       long_value: 1,
    #       double_value: 1.0,
    #       string_value: "String",
    #       blob_value: "data",
    #       array_value: {
    #         # One of:
    #         boolean_values: [false],
    #         long_values: [1],
    #         double_values: [1.0],
    #         string_values: ["String"],
    #         array_values: [{
    #           # recursive ArrayValue
    #         }]
    #       }
    #     }],
    #     formatted_records: "FormattedSqlRecords"
    #   }
    # @return [Types::ExecuteStatementOutput]
    def execute_statement(params = {}, options = {})
      request = build_request(:execute_statement, params)
      request.send_request(options)
    end

    # <p>Performs a rollback of a transaction. Rolling back a transaction cancels its changes.</p>
    # @param [Hash, Types::RollbackTransactionInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.</p>
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the DB cluster.</p>
    # @option params [String] :transaction_id
    #   <p>The identifier of the transaction to roll back.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     secret_arn: "Arn", # required
    #     transaction_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.rollback_transaction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     transaction_status: "TransactionStatus"
    #   }
    # @return [Types::RollbackTransactionOutput]
    def rollback_transaction(params = {}, options = {})
      request = build_request(:rollback_transaction, params)
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
      context[:gem_name] = 'aws-sdk-rdsdata'
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
    end
  end
end
