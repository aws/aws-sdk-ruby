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
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::RedshiftData
  # An API client for Aws::RedshiftData.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::RedshiftData

    add_plugin(::Aws::RedshiftData::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::RedshiftData::EndpointProvider)
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
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
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

    # <p>Runs one or more SQL statements, which can be data manipulation language (DML) or data definition
    #       language (DDL). 
    #       Depending on the authorization
    #       method, use one of the following combinations of request parameters: </p>
    #          <ul>
    #             <li>
    #                <p>Secrets Manager - when connecting to a cluster, provide the <code>secret-arn</code> of a secret 
    #                                     stored in Secrets Manager which has <code>username</code> and <code>password</code>. 
    #                                     The specified secret contains credentials
    #                                     to connect to the <code>database</code> you specify. 
    #                                     When you are connecting to a cluster, you also supply the database name, 
    #                                     If you provide a cluster identifier (<code>dbClusterIdentifier</code>), it must match the cluster identifier stored in the secret.       
    #                                     When you are connecting to a serverless workgroup, you also supply the database name.</p>
    #             </li>
    #             <li>
    #                <p>Temporary credentials - when connecting to your data warehouse, choose one of the following options:</p>
    #                <ul>
    #                   <li>
    #                      <p>When connecting to a serverless workgroup, specify the workgroup name and database name.
    #                                         The database user name is derived from the IAM identity. For example, <code>arn:iam::123456789012:user:foo</code> has the database user name <code>IAM:foo</code>.
    #                                         Also, permission to call the <code>redshift-serverless:GetCredentials</code> operation is required.</p>
    #                   </li>
    #                   <li>
    #                      <p>When connecting to a cluster as an IAM identity, specify the cluster identifier and the database name.
    #                                         The database user name is derived from the IAM identity. For example, <code>arn:iam::123456789012:user:foo</code> has the database user name <code>IAM:foo</code>.
    #                                         Also, permission to call the <code>redshift:GetClusterCredentialsWithIAM</code> operation is required.</p>
    #                   </li>
    #                   <li>
    #                      <p>When connecting to a cluster as a database user, specify the cluster identifier, the database name, and the database user name. 
    #                                         Also, permission to call the <code>redshift:GetClusterCredentials</code> operation is required.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>For more information about the Amazon Redshift Data API and CLI usage examples, see 
    #       <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the 
    #       <i>Amazon Redshift Management Guide</i>. </p>
    # @param [Hash, Types::BatchExecuteStatementInput] params
    # @option params [Array<String>] :sqls
    #   <p>One or more SQL statements to run. 
    #         
    #         The SQL statements are run as a single transaction. They run serially in the order of the array. 
    #         Subsequent SQL statements don't start until the previous statement in the array completes. 
    #         If any SQL statement fails, then because they are run as one transaction, all work is rolled back.</p>
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>
    # @option params [String] :db_user
    #   <p>The database user name. This parameter is required when connecting to a cluster as a database user and authenticating using temporary credentials. </p>
    # @option params [String] :database
    #   <p>The name of the database. This parameter is required when authenticating using either Secrets Manager or temporary credentials. </p>
    # @option params [Boolean] :with_event
    #   <p>A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statements run. </p>
    # @option params [String] :statement_name
    #   <p>The name of the SQL statements. You can name the SQL statements when you create them to identify the query. </p>
    # @option params [String] :workgroup_name
    #   <p>The serverless workgroup name or Amazon Resource Name (ARN). This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [Integer] :session_keep_alive_seconds
    #   <p>The number of seconds to keep the session alive after the query finishes. The maximum time a session can keep alive is 24 hours. After 24 hours, the session is forced closed and the query is terminated.</p>
    # @option params [String] :session_id
    #   <p>The session identifier of the query.</p>
    # @option params [String] :result_format
    #   <p>The data format of the result of the SQL statement. If no format is specified, the default is JSON.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sqls: ["StatementString"], # required
    #     cluster_identifier: "ClusterIdentifierString",
    #     secret_arn: "SecretArn",
    #     db_user: "String",
    #     database: "String",
    #     with_event: false,
    #     statement_name: "StatementNameString",
    #     workgroup_name: "WorkgroupNameString",
    #     client_token: "ClientToken",
    #     session_keep_alive_seconds: 1,
    #     session_id: "UUID",
    #     result_format: "ResultFormatString"
    #   }
    #   options = {}
    #   response = client.batch_execute_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "UUID",
    #     created_at: Time.now,
    #     cluster_identifier: "ClusterIdentifierString",
    #     db_user: "String",
    #     db_groups: ["String"],
    #     database: "String",
    #     secret_arn: "SecretArn",
    #     workgroup_name: "WorkgroupNameString",
    #     session_id: "UUID"
    #   }
    # @return [Types::BatchExecuteStatementOutput]
    def batch_execute_statement(params = {}, options = {})
      request = build_request(:batch_execute_statement, params)
      request.send_request(options)
    end

    # <p>Cancels a running query. To be canceled, a query must be running. </p>
    #          <p>For more information about the Amazon Redshift Data API and CLI usage examples, see 
    #        <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the 
    #        <i>Amazon Redshift Management Guide</i>. </p>
    # @param [Hash, Types::CancelStatementRequest] params
    # @option params [String] :id
    #   <p>The identifier of the SQL statement to cancel. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. 
    #           This identifier is returned by <code>BatchExecuteStatment</code>, <code>ExecuteStatment</code>, and <code>ListStatements</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.cancel_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: false
    #   }
    # @return [Types::CancelStatementResponse]
    def cancel_statement(params = {}, options = {})
      request = build_request(:cancel_statement, params)
      request.send_request(options)
    end

    # <p>Describes the details about a specific instance when a query was run by the Amazon Redshift Data API. The information
    #       includes when the query started, when it finished, the query status, the number of rows returned, and the SQL
    #       statement. </p>
    #          <p>For more information about the Amazon Redshift Data API and CLI usage examples, see 
    #        <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the 
    #        <i>Amazon Redshift Management Guide</i>. </p>
    # @param [Hash, Types::DescribeStatementRequest] params
    # @option params [String] :id
    #   <p>The identifier of the SQL statement to describe. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. 
    #          A suffix indicates the number of the SQL statement.
    #          For example, <code>d9b6c0c9-0747-4bf4-b142-e8883122f766:2</code> has a suffix of <code>:2</code> that indicates the second SQL statement of a batch query.
    #          This identifier is returned by <code>BatchExecuteStatment</code>, <code>ExecuteStatement</code>, and <code>ListStatements</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "UUID", # required
    #   }
    #   options = {}
    #   response = client.describe_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "UUID", # required
    #     secret_arn: "SecretArn",
    #     db_user: "String",
    #     database: "String",
    #     cluster_identifier: "String",
    #     duration: 1,
    #     error: "String",
    #     status: "StatusString",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     redshift_pid: 1,
    #     has_result_set: false,
    #     query_string: "StatementString",
    #     result_rows: 1,
    #     result_size: 1,
    #     redshift_query_id: 1,
    #     query_parameters: [
    #       {
    #         name: "ParameterName", # required
    #         value: "ParameterValue", # required
    #       }
    #     ],
    #     sub_statements: [
    #       {
    #         id: "UUID", # required
    #         duration: 1,
    #         error: "String",
    #         status: "StatementStatusString",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         query_string: "StatementString",
    #         result_rows: 1,
    #         result_size: 1,
    #         redshift_query_id: 1,
    #         has_result_set: false
    #       }
    #     ],
    #     workgroup_name: "WorkgroupNameString",
    #     session_id: "String",
    #     result_format: "ResultFormatString"
    #   }
    # @return [Types::DescribeStatementResponse]
    def describe_statement(params = {}, options = {})
      request = build_request(:describe_statement, params)
      request.send_request(options)
    end

    # <p>Describes the detailed information about a table from metadata in the cluster. The
    #       information includes its columns. 
    #       A token is returned to page through the column list.
    #       Depending on the authorization method, use one of the
    #       following combinations of request parameters: </p>
    #          <ul>
    #             <li>
    #                <p>Secrets Manager - when connecting to a cluster, provide the <code>secret-arn</code> of a secret 
    #                                     stored in Secrets Manager which has <code>username</code> and <code>password</code>. 
    #                                     The specified secret contains credentials
    #                                     to connect to the <code>database</code> you specify. 
    #                                     When you are connecting to a cluster, you also supply the database name, 
    #                                     If you provide a cluster identifier (<code>dbClusterIdentifier</code>), it must match the cluster identifier stored in the secret.       
    #                                     When you are connecting to a serverless workgroup, you also supply the database name.</p>
    #             </li>
    #             <li>
    #                <p>Temporary credentials - when connecting to your data warehouse, choose one of the following options:</p>
    #                <ul>
    #                   <li>
    #                      <p>When connecting to a serverless workgroup, specify the workgroup name and database name.
    #                                         The database user name is derived from the IAM identity. For example, <code>arn:iam::123456789012:user:foo</code> has the database user name <code>IAM:foo</code>.
    #                                         Also, permission to call the <code>redshift-serverless:GetCredentials</code> operation is required.</p>
    #                   </li>
    #                   <li>
    #                      <p>When connecting to a cluster as an IAM identity, specify the cluster identifier and the database name.
    #                                         The database user name is derived from the IAM identity. For example, <code>arn:iam::123456789012:user:foo</code> has the database user name <code>IAM:foo</code>.
    #                                         Also, permission to call the <code>redshift:GetClusterCredentialsWithIAM</code> operation is required.</p>
    #                   </li>
    #                   <li>
    #                      <p>When connecting to a cluster as a database user, specify the cluster identifier, the database name, and the database user name. 
    #                                         Also, permission to call the <code>redshift:GetClusterCredentials</code> operation is required.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>For more information about the Amazon Redshift Data API and CLI usage examples, see 
    #        <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the 
    #        <i>Amazon Redshift Management Guide</i>. </p>
    # @param [Hash, Types::DescribeTableRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>
    # @option params [String] :db_user
    #   <p>The database user name. This parameter is required when connecting to a cluster as a database user and authenticating using temporary credentials. </p>
    # @option params [String] :database
    #   <p>The name of the database that contains the tables to be described.  
    #         If <code>ConnectedDatabase</code> is not specified, this is also the database to connect to with your authentication credentials.</p>
    # @option params [String] :connected_database
    #   <p>A database name. The connected database is specified when you connect with your authentication credentials. </p>
    # @option params [String] :schema
    #   <p>The schema that contains the table. If no schema is specified, then matching tables for all schemas are returned. </p>
    # @option params [String] :table
    #   <p>The table name. If no table is specified, then all tables for all matching schemas are returned. 
    #          If no table and no schema is specified, then all tables for all schemas in the database are returned</p>
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of tables to return in the response. 
    #         If more tables exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>
    # @option params [String] :workgroup_name
    #   <p>The serverless workgroup name or Amazon Resource Name (ARN). This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifierString",
    #     secret_arn: "SecretArn",
    #     db_user: "String",
    #     database: "String", # required
    #     connected_database: "String",
    #     schema: "String",
    #     table: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     workgroup_name: "WorkgroupNameString"
    #   }
    #   options = {}
    #   response = client.describe_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_name: "String",
    #     column_list: [
    #       {
    #         is_case_sensitive: false,
    #         is_currency: false,
    #         is_signed: false,
    #         label: "String",
    #         name: "String",
    #         nullable: 1,
    #         precision: 1,
    #         scale: 1,
    #         schema_name: "String",
    #         table_name: "String",
    #         type_name: "String",
    #         length: 1,
    #         column_default: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeTableResponse]
    def describe_table(params = {}, options = {})
      request = build_request(:describe_table, params)
      request.send_request(options)
    end

    # <p>Runs an SQL statement, which can be data manipulation language (DML) or data definition
    #       language (DDL). This statement must be a single SQL statement. 
    #       Depending on the authorization
    #       method, use one of the following combinations of request parameters: </p>
    #          <ul>
    #             <li>
    #                <p>Secrets Manager - when connecting to a cluster, provide the <code>secret-arn</code> of a secret 
    #                                     stored in Secrets Manager which has <code>username</code> and <code>password</code>. 
    #                                     The specified secret contains credentials
    #                                     to connect to the <code>database</code> you specify. 
    #                                     When you are connecting to a cluster, you also supply the database name, 
    #                                     If you provide a cluster identifier (<code>dbClusterIdentifier</code>), it must match the cluster identifier stored in the secret.       
    #                                     When you are connecting to a serverless workgroup, you also supply the database name.</p>
    #             </li>
    #             <li>
    #                <p>Temporary credentials - when connecting to your data warehouse, choose one of the following options:</p>
    #                <ul>
    #                   <li>
    #                      <p>When connecting to a serverless workgroup, specify the workgroup name and database name.
    #                                         The database user name is derived from the IAM identity. For example, <code>arn:iam::123456789012:user:foo</code> has the database user name <code>IAM:foo</code>.
    #                                         Also, permission to call the <code>redshift-serverless:GetCredentials</code> operation is required.</p>
    #                   </li>
    #                   <li>
    #                      <p>When connecting to a cluster as an IAM identity, specify the cluster identifier and the database name.
    #                                         The database user name is derived from the IAM identity. For example, <code>arn:iam::123456789012:user:foo</code> has the database user name <code>IAM:foo</code>.
    #                                         Also, permission to call the <code>redshift:GetClusterCredentialsWithIAM</code> operation is required.</p>
    #                   </li>
    #                   <li>
    #                      <p>When connecting to a cluster as a database user, specify the cluster identifier, the database name, and the database user name. 
    #                                         Also, permission to call the <code>redshift:GetClusterCredentials</code> operation is required.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>For more information about the Amazon Redshift Data API and CLI usage examples, see 
    #        <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the 
    #        <i>Amazon Redshift Management Guide</i>. </p>
    # @param [Hash, Types::ExecuteStatementInput] params
    # @option params [String] :sql
    #   <p>The SQL statement text to run. </p>
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>
    # @option params [String] :db_user
    #   <p>The database user name. This parameter is required when connecting to a cluster as a database user and authenticating using temporary credentials. </p>
    # @option params [String] :database
    #   <p>The name of the database. This parameter is required when authenticating using either Secrets Manager or temporary credentials. </p>
    # @option params [Boolean] :with_event
    #   <p>A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statement runs. </p>
    # @option params [String] :statement_name
    #   <p>The name of the SQL statement. You can name the SQL statement when you create it to identify the query. </p>
    # @option params [Array<Types::SqlParameter>] :parameters
    #   <p>The parameters for the SQL statement.</p>
    # @option params [String] :workgroup_name
    #   <p>The serverless workgroup name or Amazon Resource Name (ARN). This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    # @option params [Integer] :session_keep_alive_seconds
    #   <p>The number of seconds to keep the session alive after the query finishes. The maximum time a session can keep alive is 24 hours. After 24 hours, the session is forced closed and the query is terminated.</p>
    # @option params [String] :session_id
    #   <p>The session identifier of the query.</p>
    # @option params [String] :result_format
    #   <p>The data format of the result of the SQL statement. If no format is specified, the default is JSON.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sql: "StatementString", # required
    #     cluster_identifier: "ClusterIdentifierString",
    #     secret_arn: "SecretArn",
    #     db_user: "String",
    #     database: "String",
    #     with_event: false,
    #     statement_name: "StatementNameString",
    #     parameters: [
    #       {
    #         name: "ParameterName", # required
    #         value: "ParameterValue", # required
    #       }
    #     ],
    #     workgroup_name: "WorkgroupNameString",
    #     client_token: "ClientToken",
    #     session_keep_alive_seconds: 1,
    #     session_id: "UUID",
    #     result_format: "ResultFormatString"
    #   }
    #   options = {}
    #   response = client.execute_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "UUID",
    #     created_at: Time.now,
    #     cluster_identifier: "ClusterIdentifierString",
    #     db_user: "String",
    #     db_groups: ["String"],
    #     database: "String",
    #     secret_arn: "SecretArn",
    #     workgroup_name: "WorkgroupNameString",
    #     session_id: "UUID"
    #   }
    # @return [Types::ExecuteStatementOutput]
    def execute_statement(params = {}, options = {})
      request = build_request(:execute_statement, params)
      request.send_request(options)
    end

    # <p>Fetches the temporarily cached result of an SQL statement in JSON format. 
    #        The <code>ExecuteStatement</code> or <code>BatchExecuteStatement</code> operation that ran the SQL statement must have specified <code>ResultFormat</code> as <code>JSON</code>
    #        , or let the format default to JSON.
    #        A token is returned to page through the statement results.</p>
    #          <p>For more information about the Amazon Redshift Data API and CLI usage examples, see 
    #        <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the 
    #        <i>Amazon Redshift Management Guide</i>. </p>
    # @param [Hash, Types::GetStatementResultRequest] params
    # @option params [String] :id
    #   <p>The identifier of the SQL statement whose results are to be fetched. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. 
    #          A suffix indicates then number of the SQL statement.
    #          For example, <code>d9b6c0c9-0747-4bf4-b142-e8883122f766:2</code> has a suffix of <code>:2</code> that indicates the second SQL statement of a batch query.
    #          This identifier is returned by <code>BatchExecuteStatment</code>, <code>ExecuteStatment</code>, and <code>ListStatements</code>. </p>
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "UUID", # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_statement_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     records: [ # required
    #       [{
    #         # One of:
    #         is_null: false,
    #         boolean_value: false,
    #         long_value: 1,
    #         double_value: 1.0,
    #         string_value: "String",
    #         blob_value: "data"
    #       }]
    #     ],
    #     column_metadata: [
    #       {
    #         is_case_sensitive: false,
    #         is_currency: false,
    #         is_signed: false,
    #         label: "String",
    #         name: "String",
    #         nullable: 1,
    #         precision: 1,
    #         scale: 1,
    #         schema_name: "String",
    #         table_name: "String",
    #         type_name: "String",
    #         length: 1,
    #         column_default: "String"
    #       }
    #     ],
    #     total_num_rows: 1,
    #     next_token: "String"
    #   }
    # @return [Types::GetStatementResultResponse]
    def get_statement_result(params = {}, options = {})
      request = build_request(:get_statement_result, params)
      request.send_request(options)
    end

    # <p>Fetches the temporarily cached result of an SQL statement in CSV format. 
    #       The <code>ExecuteStatement</code> or <code>BatchExecuteStatement</code> operation that ran the SQL statement must have specified <code>ResultFormat</code> as <code>CSV</code>.
    #       A token is returned to page through the statement results.</p>
    #          <p>For more information about the Amazon Redshift Data API and CLI usage examples, see 
    #       <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the 
    #       <i>Amazon Redshift Management Guide</i>. </p>
    # @param [Hash, Types::GetStatementResultV2Request] params
    # @option params [String] :id
    #   <p>The identifier of the SQL statement whose results are to be fetched. This value is a universally unique identifier (UUID) generated by Amazon Redshift Data API. 
    #         A suffix indicates then number of the SQL statement.
    #         For example, <code>d9b6c0c9-0747-4bf4-b142-e8883122f766:2</code> has a suffix of <code>:2</code> that indicates the second SQL statement of a batch query.
    #         This identifier is returned by <code>BatchExecuteStatment</code>, <code>ExecuteStatment</code>, and <code>ListStatements</code>. </p>
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "UUID", # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.get_statement_result_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     records: [{ # required
    #       # One of:
    #       csv_records: "String"
    #     }],
    #     column_metadata: [
    #       {
    #         is_case_sensitive: false,
    #         is_currency: false,
    #         is_signed: false,
    #         label: "String",
    #         name: "String",
    #         nullable: 1,
    #         precision: 1,
    #         scale: 1,
    #         schema_name: "String",
    #         table_name: "String",
    #         type_name: "String",
    #         length: 1,
    #         column_default: "String"
    #       }
    #     ],
    #     total_num_rows: 1,
    #     result_format: "ResultFormatString",
    #     next_token: "String"
    #   }
    # @return [Types::GetStatementResultV2Response]
    def get_statement_result_v2(params = {}, options = {})
      request = build_request(:get_statement_result_v2, params)
      request.send_request(options)
    end

    # <p>List the databases in a cluster. 
    #       A token is returned to page through the database list.
    #       Depending on the authorization method, use one of the
    #       following combinations of request parameters: </p>
    #          <ul>
    #             <li>
    #                <p>Secrets Manager - when connecting to a cluster, provide the <code>secret-arn</code> of a secret 
    #                                     stored in Secrets Manager which has <code>username</code> and <code>password</code>. 
    #                                     The specified secret contains credentials
    #                                     to connect to the <code>database</code> you specify. 
    #                                     When you are connecting to a cluster, you also supply the database name, 
    #                                     If you provide a cluster identifier (<code>dbClusterIdentifier</code>), it must match the cluster identifier stored in the secret.       
    #                                     When you are connecting to a serverless workgroup, you also supply the database name.</p>
    #             </li>
    #             <li>
    #                <p>Temporary credentials - when connecting to your data warehouse, choose one of the following options:</p>
    #                <ul>
    #                   <li>
    #                      <p>When connecting to a serverless workgroup, specify the workgroup name and database name.
    #                                         The database user name is derived from the IAM identity. For example, <code>arn:iam::123456789012:user:foo</code> has the database user name <code>IAM:foo</code>.
    #                                         Also, permission to call the <code>redshift-serverless:GetCredentials</code> operation is required.</p>
    #                   </li>
    #                   <li>
    #                      <p>When connecting to a cluster as an IAM identity, specify the cluster identifier and the database name.
    #                                         The database user name is derived from the IAM identity. For example, <code>arn:iam::123456789012:user:foo</code> has the database user name <code>IAM:foo</code>.
    #                                         Also, permission to call the <code>redshift:GetClusterCredentialsWithIAM</code> operation is required.</p>
    #                   </li>
    #                   <li>
    #                      <p>When connecting to a cluster as a database user, specify the cluster identifier, the database name, and the database user name. 
    #                                         Also, permission to call the <code>redshift:GetClusterCredentials</code> operation is required.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>For more information about the Amazon Redshift Data API and CLI usage examples, see 
    #        <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the 
    #        <i>Amazon Redshift Management Guide</i>. </p>
    # @param [Hash, Types::ListDatabasesRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>
    # @option params [String] :database
    #   <p>The name of the database. This parameter is required when authenticating using either Secrets Manager or temporary credentials. </p>
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>
    # @option params [String] :db_user
    #   <p>The database user name. This parameter is required when connecting to a cluster as a database user and authenticating using temporary credentials. </p>
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of databases to return in the response. 
    #          If more databases exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>
    # @option params [String] :workgroup_name
    #   <p>The serverless workgroup name or Amazon Resource Name (ARN). This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifierString",
    #     database: "String", # required
    #     secret_arn: "SecretArn",
    #     db_user: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     workgroup_name: "WorkgroupNameString"
    #   }
    #   options = {}
    #   response = client.list_databases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     databases: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListDatabasesResponse]
    def list_databases(params = {}, options = {})
      request = build_request(:list_databases, params)
      request.send_request(options)
    end

    # <p>Lists the schemas in a database. 
    #       A token is returned to page through the schema list. 
    #       Depending on the authorization method, use one of the
    #       following combinations of request parameters: </p>
    #          <ul>
    #             <li>
    #                <p>Secrets Manager - when connecting to a cluster, provide the <code>secret-arn</code> of a secret 
    #                                     stored in Secrets Manager which has <code>username</code> and <code>password</code>. 
    #                                     The specified secret contains credentials
    #                                     to connect to the <code>database</code> you specify. 
    #                                     When you are connecting to a cluster, you also supply the database name, 
    #                                     If you provide a cluster identifier (<code>dbClusterIdentifier</code>), it must match the cluster identifier stored in the secret.       
    #                                     When you are connecting to a serverless workgroup, you also supply the database name.</p>
    #             </li>
    #             <li>
    #                <p>Temporary credentials - when connecting to your data warehouse, choose one of the following options:</p>
    #                <ul>
    #                   <li>
    #                      <p>When connecting to a serverless workgroup, specify the workgroup name and database name.
    #                                         The database user name is derived from the IAM identity. For example, <code>arn:iam::123456789012:user:foo</code> has the database user name <code>IAM:foo</code>.
    #                                         Also, permission to call the <code>redshift-serverless:GetCredentials</code> operation is required.</p>
    #                   </li>
    #                   <li>
    #                      <p>When connecting to a cluster as an IAM identity, specify the cluster identifier and the database name.
    #                                         The database user name is derived from the IAM identity. For example, <code>arn:iam::123456789012:user:foo</code> has the database user name <code>IAM:foo</code>.
    #                                         Also, permission to call the <code>redshift:GetClusterCredentialsWithIAM</code> operation is required.</p>
    #                   </li>
    #                   <li>
    #                      <p>When connecting to a cluster as a database user, specify the cluster identifier, the database name, and the database user name. 
    #                                         Also, permission to call the <code>redshift:GetClusterCredentials</code> operation is required.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>For more information about the Amazon Redshift Data API and CLI usage examples, see 
    #        <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the 
    #        <i>Amazon Redshift Management Guide</i>. </p>
    # @param [Hash, Types::ListSchemasRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>
    # @option params [String] :db_user
    #   <p>The database user name. This parameter is required when connecting to a cluster as a database user and authenticating using temporary credentials. </p>
    # @option params [String] :database
    #   <p>The name of the database that contains the schemas to list. 
    #        If <code>ConnectedDatabase</code> is not specified, this is also the database to connect to with your authentication credentials.</p>
    # @option params [String] :connected_database
    #   <p>A database name. The connected database is specified when you connect with your authentication credentials. </p>
    # @option params [String] :schema_pattern
    #   <p>A pattern to filter results by schema name. Within a schema pattern, "%" means match any
    #         substring of 0 or more characters and "_" means match any one character. Only schema name
    #         entries matching the search pattern are returned. </p>
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of schemas to return in the response. 
    #          If more schemas exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>
    # @option params [String] :workgroup_name
    #   <p>The serverless workgroup name or Amazon Resource Name (ARN). This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifierString",
    #     secret_arn: "SecretArn",
    #     db_user: "String",
    #     database: "String", # required
    #     connected_database: "String",
    #     schema_pattern: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     workgroup_name: "WorkgroupNameString"
    #   }
    #   options = {}
    #   response = client.list_schemas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schemas: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListSchemasResponse]
    def list_schemas(params = {}, options = {})
      request = build_request(:list_schemas, params)
      request.send_request(options)
    end

    # <p>List of SQL statements. By default, only finished statements are shown. 
    #         A token is returned to page through the statement list. </p>
    #          <p>When you use identity-enhanced role sessions to list statements, you must provide either the 
    #      <code>cluster-identifier</code> or <code>workgroup-name</code> parameter. This ensures that the IdC user
    #      can only access the Amazon Redshift IdC applications they are assigned. For more information, see 
    #        <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation-overview.html">
    #          Trusted identity propagation overview</a>.</p>
    #          <p>For more information about the Amazon Redshift Data API and CLI usage examples, see 
    #        <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the 
    #        <i>Amazon Redshift Management Guide</i>. </p>
    # @param [Hash, Types::ListStatementsRequest] params
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of SQL statements to return in the response. 
    #          If more SQL statements exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>
    # @option params [String] :statement_name
    #   <p>The name of the SQL statement specified as input to <code>BatchExecuteStatement</code> or <code>ExecuteStatement</code> to identify the query. 
    #         You can list multiple statements by providing a prefix that matches the beginning of the statement name. 
    #         For example, to list myStatement1, myStatement2, myStatement3, and so on, then provide the a value of <code>myStatement</code>.  
    #         Data API does a case-sensitive match of SQL statement names to the prefix value you provide. </p>
    # @option params [String] :status
    #   <p>The status of the SQL statement to list. Status values are defined as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>ABORTED - The query run was stopped by the user. </p>
    #               </li>
    #               <li>
    #                  <p>ALL -  A status value that includes all query statuses. This value can be used to filter results. </p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The query run failed. </p>
    #               </li>
    #               <li>
    #                  <p>FINISHED - The query has finished running. </p>
    #               </li>
    #               <li>
    #                  <p>PICKED - The query has been chosen to be run. </p>
    #               </li>
    #               <li>
    #                  <p>STARTED - The query run has started. </p>
    #               </li>
    #               <li>
    #                  <p>SUBMITTED - The query was submitted, but not yet processed. </p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :role_level
    #   <p>A value that filters which statements to return in the response. If true, all statements run by the caller's IAM role are returned. 
    #         If false, only statements run by the caller's IAM role in the current IAM session are returned.  The default is true. </p>
    # @option params [String] :database
    #   <p>The name of the database when listing statements run against a <code>ClusterIdentifier</code> or <code>WorkgroupName</code>. 
    #          </p>
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. Only statements that ran on this cluster are returned. 
    #         When providing <code>ClusterIdentifier</code>, then <code>WorkgroupName</code> can't be specified.</p>
    # @option params [String] :workgroup_name
    #   <p>The serverless workgroup name or Amazon Resource Name (ARN). Only statements that ran on this workgroup are returned. 
    #         When providing <code>WorkgroupName</code>, then <code>ClusterIdentifier</code> can't be specified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     statement_name: "StatementNameString",
    #     status: "StatusString",
    #     role_level: false,
    #     database: "String",
    #     cluster_identifier: "ClusterIdentifierString",
    #     workgroup_name: "WorkgroupNameString"
    #   }
    #   options = {}
    #   response = client.list_statements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     statements: [ # required
    #       {
    #         id: "UUID", # required
    #         query_string: "StatementString",
    #         query_strings: ["StatementString"],
    #         secret_arn: "SecretArn",
    #         status: "StatusString",
    #         statement_name: "StatementNameString",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         query_parameters: [
    #           {
    #             name: "ParameterName", # required
    #             value: "ParameterValue", # required
    #           }
    #         ],
    #         is_batch_statement: false,
    #         result_format: "ResultFormatString",
    #         session_id: "UUID"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListStatementsResponse]
    def list_statements(params = {}, options = {})
      request = build_request(:list_statements, params)
      request.send_request(options)
    end

    # <p>List the tables in a database. If neither <code>SchemaPattern</code> nor <code>TablePattern</code> are specified, then 
    #        all tables in the database are returned.
    #       A token is returned to page through the table list. 
    #       Depending on the authorization method, use one of the
    #       following combinations of request parameters: </p>
    #          <ul>
    #             <li>
    #                <p>Secrets Manager - when connecting to a cluster, provide the <code>secret-arn</code> of a secret 
    #                                     stored in Secrets Manager which has <code>username</code> and <code>password</code>. 
    #                                     The specified secret contains credentials
    #                                     to connect to the <code>database</code> you specify. 
    #                                     When you are connecting to a cluster, you also supply the database name, 
    #                                     If you provide a cluster identifier (<code>dbClusterIdentifier</code>), it must match the cluster identifier stored in the secret.       
    #                                     When you are connecting to a serverless workgroup, you also supply the database name.</p>
    #             </li>
    #             <li>
    #                <p>Temporary credentials - when connecting to your data warehouse, choose one of the following options:</p>
    #                <ul>
    #                   <li>
    #                      <p>When connecting to a serverless workgroup, specify the workgroup name and database name.
    #                                         The database user name is derived from the IAM identity. For example, <code>arn:iam::123456789012:user:foo</code> has the database user name <code>IAM:foo</code>.
    #                                         Also, permission to call the <code>redshift-serverless:GetCredentials</code> operation is required.</p>
    #                   </li>
    #                   <li>
    #                      <p>When connecting to a cluster as an IAM identity, specify the cluster identifier and the database name.
    #                                         The database user name is derived from the IAM identity. For example, <code>arn:iam::123456789012:user:foo</code> has the database user name <code>IAM:foo</code>.
    #                                         Also, permission to call the <code>redshift:GetClusterCredentialsWithIAM</code> operation is required.</p>
    #                   </li>
    #                   <li>
    #                      <p>When connecting to a cluster as a database user, specify the cluster identifier, the database name, and the database user name. 
    #                                         Also, permission to call the <code>redshift:GetClusterCredentials</code> operation is required.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>For more information about the Amazon Redshift Data API and CLI usage examples, see 
    #        <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html">Using the Amazon Redshift Data API</a> in the 
    #        <i>Amazon Redshift Management Guide</i>. </p>
    # @param [Hash, Types::ListTablesRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials. </p>
    # @option params [String] :secret_arn
    #   <p>The name or ARN of the secret that enables access to the database. This parameter is required when authenticating using Secrets Manager. </p>
    # @option params [String] :db_user
    #   <p>The database user name. This parameter is required when connecting to a cluster as a database user and authenticating using temporary credentials. </p>
    # @option params [String] :database
    #   <p>The name of the database that contains the tables to list. 
    #         If <code>ConnectedDatabase</code> is not specified, this is also the database to connect to with your authentication credentials.</p>
    # @option params [String] :connected_database
    #   <p>A database name. The connected database is specified when you connect with your authentication credentials. </p>
    # @option params [String] :schema_pattern
    #   <p>A pattern to filter results by schema name. Within a schema pattern, "%" means match any
    #         substring of 0 or more characters and "_" means match any one character. Only schema name
    #         entries matching the search pattern are returned. If <code>SchemaPattern</code> is not specified, then all tables that match 
    #          <code>TablePattern</code> are returned. 
    #          If neither <code>SchemaPattern</code> or <code>TablePattern</code> are specified, then all tables are returned. </p>
    # @option params [String] :table_pattern
    #   <p>A pattern to filter results by table name. Within a table pattern, "%" means match any
    #         substring of 0 or more characters and "_" means match any one character. Only table name
    #         entries matching the search pattern are returned. If <code>TablePattern</code> is not specified, then all tables that match 
    #          <code>SchemaPattern</code>are returned.  
    #          If neither <code>SchemaPattern</code> or <code>TablePattern</code> are specified, then all tables are returned. </p>
    # @option params [String] :next_token
    #   <p>A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned NextToken value in the next NextToken parameter and retrying the command. If the NextToken field is empty, all response records have been retrieved for the request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of tables to return in the response. 
    #          If more tables exist than fit in one response, then <code>NextToken</code> is returned to page through the results. </p>
    # @option params [String] :workgroup_name
    #   <p>The serverless workgroup name or Amazon Resource Name (ARN). This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifierString",
    #     secret_arn: "SecretArn",
    #     db_user: "String",
    #     database: "String", # required
    #     connected_database: "String",
    #     schema_pattern: "String",
    #     table_pattern: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     workgroup_name: "WorkgroupNameString"
    #   }
    #   options = {}
    #   response = client.list_tables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tables: [
    #       {
    #         name: "String",
    #         type: "String",
    #         schema: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTablesResponse]
    def list_tables(params = {}, options = {})
      request = build_request(:list_tables, params)
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
      context[:gem_name] = 'aws-sdk-redshiftdata'
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
