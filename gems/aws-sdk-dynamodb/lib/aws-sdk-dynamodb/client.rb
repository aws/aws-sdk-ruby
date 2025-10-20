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
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:dynamodb)

module Aws::DynamoDB
  # An API client for Aws::DynamoDB.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::DynamoDB20120810
    @identifier = :dynamodb

    add_plugin(::Aws::DynamoDB::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DynamoDB::EndpointProvider)
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

    # <p>This operation allows you to perform batch reads or writes on data stored in DynamoDB,
    #             using PartiQL. Each read statement in a <code>BatchExecuteStatement</code> must specify
    #             an equality condition on all key attributes. This enforces that each <code>SELECT</code>
    #             statement in a batch returns at most a single item. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ql-reference.multiplestatements.batching.html">Running batch operations with PartiQL for DynamoDB </a>.</p>
    #          <note>
    #             <p>The entire batch must consist of either read statements or write statements, you
    #                 cannot mix both in one batch.</p>
    #          </note>
    #          <important>
    #             <p>A HTTP 200 response does not mean that all statements in the BatchExecuteStatement
    #                 succeeded. Error details for individual statements can be found under the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_BatchStatementResponse.html#DDB-Type-BatchStatementResponse-Error">Error</a> field of the <code>BatchStatementResponse</code> for each
    #                 statement.</p>
    #          </important>
    # @param [Hash, Types::BatchExecuteStatementInput] params
    # @option params [Array<Types::BatchStatementRequest>] :statements
    #   <p>The list of PartiQL statements representing the batch to run.</p>
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     statements: [ # required
    #       {
    #         statement: "PartiQLStatement", # required
    #         parameters: [{
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }],
    #         consistent_read: false,
    #         return_values_on_condition_check_failure: "ALL_OLD" # One of: ["ALL_OLD", "NONE"]
    #       }
    #     ],
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"]
    #   }
    #   options = {}
    #   response = client.batch_execute_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     responses: [
    #       {
    #         error: {
    #           code: "ConditionalCheckFailed" # One of: ["ConditionalCheckFailed", "ItemCollectionSizeLimitExceeded", "RequestLimitExceeded", "ValidationError", "ProvisionedThroughputExceeded", "TransactionConflict", "ThrottlingError", "InternalServerError", "ResourceNotFound", "AccessDenied", "DuplicateItem"],
    #           message: "String",
    #           item: {
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           }
    #         },
    #         table_name: "TableName",
    #         item: {
    #           "AttributeName" => {
    #             # One of:
    #             s: "StringAttributeValue",
    #             n: "NumberAttributeValue",
    #             b: "data",
    #             ss: ["StringAttributeValue"],
    #             ns: ["NumberAttributeValue"],
    #             bs: ["data"],
    #             m: {
    #               "AttributeName" => {
    #                 # recursive AttributeValue
    #               }
    #             },
    #             l: [{
    #               # recursive AttributeValue
    #             }],
    #             null: false,
    #             bool: false
    #           }
    #         }
    #       }
    #     ],
    #     consumed_capacity: [
    #       {
    #         table_name: "TableArn",
    #         capacity_units: 1.0,
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         table: {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         },
    #         local_secondary_indexes: {
    #           "IndexName" => {
    #             read_capacity_units: 1.0,
    #             write_capacity_units: 1.0,
    #             capacity_units: 1.0
    #           }
    #         },
    #         global_secondary_indexes: {
    #           "IndexName" => {
    #             read_capacity_units: 1.0,
    #             write_capacity_units: 1.0,
    #             capacity_units: 1.0
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchExecuteStatementOutput]
    def batch_execute_statement(params = {}, options = {})
      request = build_request(:batch_execute_statement, params)
      request.send_request(options)
    end

    # <p>The <code>BatchGetItem</code> operation returns the attributes of one or more items
    #             from one or more tables. You identify requested items by primary key.</p>
    #          <p>A single operation can retrieve up to 16 MB of data, which can contain as many as 100
    #             items. <code>BatchGetItem</code> returns a partial result if the response size limit is
    #             exceeded, the table's provisioned throughput is exceeded, more than 1MB per partition is
    #             requested, or an internal processing failure occurs. If a partial result is returned,
    #             the operation returns a value for <code>UnprocessedKeys</code>. You can use this value
    #             to retry the operation starting with the next item to get.</p>
    #          <important>
    #             <p>If you request more than 100 items, <code>BatchGetItem</code> returns a
    #                     <code>ValidationException</code> with the message "Too many items requested for
    #                 the BatchGetItem call."</p>
    #          </important>
    #          <p>For example, if you ask to retrieve 100 items, but each individual item is 300 KB in
    #             size, the system returns 52 items (so as not to exceed the 16 MB limit). It also returns
    #             an appropriate <code>UnprocessedKeys</code> value so you can get the next page of
    #             results. If desired, your application can include its own logic to assemble the pages of
    #             results into one dataset.</p>
    #          <p>If <i>none</i> of the items can be processed due to insufficient
    #             provisioned throughput on all of the tables in the request, then
    #                 <code>BatchGetItem</code> returns a
    #                 <code>ProvisionedThroughputExceededException</code>. If <i>at least
    #                 one</i> of the items is successfully processed, then
    #                 <code>BatchGetItem</code> completes successfully, while returning the keys of the
    #             unread items in <code>UnprocessedKeys</code>.</p>
    #          <important>
    #             <p>If DynamoDB returns any unprocessed items, you should retry the batch operation on
    #                 those items. However, <i>we strongly recommend that you use an exponential
    #                     backoff algorithm</i>. If you retry the batch operation immediately, the
    #                 underlying read or write requests can still fail due to throttling on the individual
    #                 tables. If you delay the batch operation using exponential backoff, the individual
    #                 requests in the batch are much more likely to succeed.</p>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#BatchOperations">Batch Operations and Error Handling</a> in the <i>Amazon DynamoDB
    #                     Developer Guide</i>.</p>
    #          </important>
    #          <p>By default, <code>BatchGetItem</code> performs eventually consistent reads on every
    #             table in the request. If you want strongly consistent reads instead, you can set
    #                 <code>ConsistentRead</code> to <code>true</code> for any or all tables.</p>
    #          <p>In order to minimize response latency, <code>BatchGetItem</code> may retrieve items in
    #             parallel.</p>
    #          <p>When designing your application, keep in mind that DynamoDB does not return items in
    #             any particular order. To help parse the response by item, include the primary key values
    #             for the items in your request in the <code>ProjectionExpression</code> parameter.</p>
    #          <p>If a requested item does not exist, it is not returned in the result. Requests for
    #             nonexistent items consume the minimum read capacity units according to the type of read.
    #             For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#CapacityUnitCalculations">Working with Tables</a> in the <i>Amazon DynamoDB Developer
    #                 Guide</i>.</p>
    #          <note>
    #             <p>
    #                <code>BatchGetItem</code> will result in a <code>ValidationException</code> if the
    #                 same key is specified multiple times.</p>
    #          </note>
    # @param [Hash, Types::BatchGetItemInput] params
    # @option params [Hash<String, Types::KeysAndAttributes>] :request_items
    #   <p>A map of one or more table names or table ARNs and, for each table, a map that
    #               describes one or more items to retrieve from that table. Each table name or ARN can be
    #               used only once per <code>BatchGetItem</code> request.</p>
    #            <p>Each element in the map of items to retrieve consists of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConsistentRead</code> - If <code>true</code>, a strongly consistent read
    #                       is used; if <code>false</code> (the default), an eventually consistent read is
    #                       used.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ExpressionAttributeNames</code> - One or more substitution tokens for
    #                       attribute names in the <code>ProjectionExpression</code> parameter. The
    #                       following are some use cases for using
    #                       <code>ExpressionAttributeNames</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                               word.</p>
    #                     </li>
    #                     <li>
    #                        <p>To create a placeholder for repeating occurrences of an attribute name
    #                               in an expression.</p>
    #                     </li>
    #                     <li>
    #                        <p>To prevent special characters in an attribute name from being
    #                               misinterpreted in an expression.</p>
    #                     </li>
    #                  </ul>
    #                  <p>Use the <b>#</b> character in an expression to
    #                       dereference an attribute name. For example, consider the following attribute
    #                       name:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Percentile</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>The name of this attribute conflicts with a reserved word, so it cannot be
    #                       used directly in an expression. (For the complete list of reserved words, see
    #                           <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved
    #                           Words</a> in the <i>Amazon DynamoDB Developer Guide</i>).
    #                       To work around this, you could specify the following for
    #                           <code>ExpressionAttributeNames</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>{"#P":"Percentile"}</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>You could then use this substitution in an expression, as in this
    #                       example:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>#P = :val</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Tokens that begin with the <b>:</b> character
    #                           are <i>expression attribute values</i>, which are placeholders
    #                           for the actual value at runtime.</p>
    #                  </note>
    #                  <p>For more information about expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB
    #                           Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Keys</code> - An array of primary key attribute values that define
    #                       specific items in the table. For each primary key, you must provide
    #                           <i>all</i> of the key attributes. For example, with a simple
    #                       primary key, you only need to provide the partition key value. For a composite
    #                       key, you must provide <i>both</i> the partition key value and the
    #                       sort key value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProjectionExpression</code> - A string that identifies one or more
    #                       attributes to retrieve from the table. These attributes can include scalars,
    #                       sets, or elements of a JSON document. The attributes in the expression must be
    #                       separated by commas.</p>
    #                  <p>If no attribute names are specified, then all attributes are returned. If any
    #                       of the requested attributes are not found, they do not appear in the
    #                       result.</p>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB
    #                           Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AttributesToGet</code> - This is a legacy parameter. Use
    #                           <code>ProjectionExpression</code> instead. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #                           Guide</i>. </p>
    #               </li>
    #            </ul>
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    # @example To retrieve multiple items from a table
    #   # This example reads multiple items from the Music table using a batch of three GetItem requests.  Only the AlbumTitle attribute is returned.
    #   params = {
    #     request_items: {
    #       "Music" => {
    #         keys: [
    #           {
    #             "Artist" => {
    #     "S" => No One You Know
    #   },
    #             "SongTitle" => {
    #     "S" => Call Me Today
    #   }
    #           },
    #           {
    #             "Artist" => {
    #     "S" => Acme Band
    #   },
    #             "SongTitle" => {
    #     "S" => Happy Day
    #   }
    #           },
    #           {
    #             "Artist" => {
    #     "S" => No One You Know
    #   },
    #             "SongTitle" => {
    #     "S" => Scared of My Shadow
    #   }
    #           }
    #         ],
    #         projection_expression: "AlbumTitle"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.batch_get_item(params, options)
    #   response.to_h #=>
    #   {
    #     responses: {
    #       "Music" => [
    #         {
    #           "AlbumTitle" => {
    #     "S" => Somewhat Famous
    #   }
    #         },
    #         {
    #           "AlbumTitle" => {
    #     "S" => Blue Sky Blues
    #   }
    #         },
    #         {
    #           "AlbumTitle" => {
    #     "S" => Louder Than Ever
    #   }
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     request_items: { # required
    #       "TableArn" => {
    #         keys: [ # required
    #           {
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           }
    #         ],
    #         attributes_to_get: ["AttributeName"],
    #         consistent_read: false,
    #         projection_expression: "ProjectionExpression",
    #         expression_attribute_names: {
    #           "ExpressionAttributeNameVariable" => "AttributeName"
    #         }
    #       }
    #     },
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"]
    #   }
    #   options = {}
    #   response = client.batch_get_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     responses: {
    #       "TableArn" => [
    #         {
    #           "AttributeName" => {
    #             # One of:
    #             s: "StringAttributeValue",
    #             n: "NumberAttributeValue",
    #             b: "data",
    #             ss: ["StringAttributeValue"],
    #             ns: ["NumberAttributeValue"],
    #             bs: ["data"],
    #             m: {
    #               "AttributeName" => {
    #                 # recursive AttributeValue
    #               }
    #             },
    #             l: [{
    #               # recursive AttributeValue
    #             }],
    #             null: false,
    #             bool: false
    #           }
    #         }
    #       ]
    #     },
    #     unprocessed_keys: {
    #       "TableArn" => {
    #         keys: [ # required
    #           {
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           }
    #         ],
    #         attributes_to_get: ["AttributeName"],
    #         consistent_read: false,
    #         projection_expression: "ProjectionExpression",
    #         expression_attribute_names: {
    #           "ExpressionAttributeNameVariable" => "AttributeName"
    #         }
    #       }
    #     },
    #     consumed_capacity: [
    #       {
    #         table_name: "TableArn",
    #         capacity_units: 1.0,
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         table: {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         },
    #         local_secondary_indexes: {
    #           "IndexName" => {
    #             read_capacity_units: 1.0,
    #             write_capacity_units: 1.0,
    #             capacity_units: 1.0
    #           }
    #         },
    #         global_secondary_indexes: {
    #           "IndexName" => {
    #             read_capacity_units: 1.0,
    #             write_capacity_units: 1.0,
    #             capacity_units: 1.0
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetItemOutput]
    def batch_get_item(params = {}, options = {})
      request = build_request(:batch_get_item, params)
      request.send_request(options)
    end

    # <p>The <code>BatchWriteItem</code> operation puts or deletes multiple items in one or
    #             more tables. A single call to <code>BatchWriteItem</code> can transmit up to 16MB of
    #             data over the network, consisting of up to 25 item put or delete operations. While
    #             individual items can be up to 400 KB once stored, it's important to note that an item's
    #             representation might be greater than 400KB while being sent in DynamoDB's JSON format
    #             for the API call. For more details on this distinction, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html">Naming Rules and Data Types</a>.</p>
    #          <note>
    #             <p>
    #                <code>BatchWriteItem</code> cannot update items. If you perform a
    #                     <code>BatchWriteItem</code> operation on an existing item, that item's values
    #                 will be overwritten by the operation and it will appear like it was updated. To
    #                 update items, we recommend you use the <code>UpdateItem</code> action.</p>
    #          </note>
    #          <p>The individual <code>PutItem</code> and <code>DeleteItem</code> operations specified
    #             in <code>BatchWriteItem</code> are atomic; however <code>BatchWriteItem</code> as a
    #             whole is not. If any requested operations fail because the table's provisioned
    #             throughput is exceeded or an internal processing failure occurs, the failed operations
    #             are returned in the <code>UnprocessedItems</code> response parameter. You can
    #             investigate and optionally resend the requests. Typically, you would call
    #                 <code>BatchWriteItem</code> in a loop. Each iteration would check for unprocessed
    #             items and submit a new <code>BatchWriteItem</code> request with those unprocessed items
    #             until all items have been processed.</p>
    #          <p>For tables and indexes with provisioned capacity, if none of the items can be
    #             processed due to insufficient provisioned throughput on all of the tables in the
    #             request, then <code>BatchWriteItem</code> returns a
    #                 <code>ProvisionedThroughputExceededException</code>. For all tables and indexes, if
    #             none of the items can be processed due to other throttling scenarios (such as exceeding
    #             partition level limits), then <code>BatchWriteItem</code> returns a
    #                 <code>ThrottlingException</code>.</p>
    #          <important>
    #             <p>If DynamoDB returns any unprocessed items, you should retry the batch operation on
    #                 those items. However, <i>we strongly recommend that you use an exponential
    #                     backoff algorithm</i>. If you retry the batch operation immediately, the
    #                 underlying read or write requests can still fail due to throttling on the individual
    #                 tables. If you delay the batch operation using exponential backoff, the individual
    #                 requests in the batch are much more likely to succeed.</p>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ErrorHandling.html#Programming.Errors.BatchOperations">Batch Operations and Error Handling</a> in the <i>Amazon DynamoDB
    #                     Developer Guide</i>.</p>
    #          </important>
    #          <p>With <code>BatchWriteItem</code>, you can efficiently write or delete large amounts of
    #             data, such as from Amazon EMR, or copy data from another database into DynamoDB. In
    #             order to improve performance with these large-scale operations,
    #                 <code>BatchWriteItem</code> does not behave in the same way as individual
    #                 <code>PutItem</code> and <code>DeleteItem</code> calls would. For example, you
    #             cannot specify conditions on individual put and delete requests, and
    #                 <code>BatchWriteItem</code> does not return deleted items in the response.</p>
    #          <p>If you use a programming language that supports concurrency, you can use threads to
    #             write items in parallel. Your application must include the necessary logic to manage the
    #             threads. With languages that don't support threading, you must update or delete the
    #             specified items one at a time. In both situations, <code>BatchWriteItem</code> performs
    #             the specified put and delete operations in parallel, giving you the power of the thread
    #             pool approach without having to introduce complexity into your application.</p>
    #          <p>Parallel processing reduces latency, but each specified put and delete request
    #             consumes the same number of write capacity units whether it is processed in parallel or
    #             not. Delete operations on nonexistent items consume one write capacity unit.</p>
    #          <p>If one or more of the following is true, DynamoDB rejects the entire batch write
    #             operation:</p>
    #          <ul>
    #             <li>
    #                <p>One or more tables specified in the <code>BatchWriteItem</code> request does
    #                     not exist.</p>
    #             </li>
    #             <li>
    #                <p>Primary key attributes specified on an item in the request do not match those
    #                     in the corresponding table's primary key schema.</p>
    #             </li>
    #             <li>
    #                <p>You try to perform multiple operations on the same item in the same
    #                         <code>BatchWriteItem</code> request. For example, you cannot put and delete
    #                     the same item in the same <code>BatchWriteItem</code> request. </p>
    #             </li>
    #             <li>
    #                <p> Your request contains at least two items with identical hash and range keys
    #                     (which essentially is two put operations). </p>
    #             </li>
    #             <li>
    #                <p>There are more than 25 requests in the batch.</p>
    #             </li>
    #             <li>
    #                <p>Any individual item in a batch exceeds 400 KB.</p>
    #             </li>
    #             <li>
    #                <p>The total request size exceeds 16 MB.</p>
    #             </li>
    #             <li>
    #                <p>Any individual items with keys exceeding the key length limits. For a
    #                     partition key, the limit is 2048 bytes and for a sort key, the limit is 1024
    #                     bytes.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::BatchWriteItemInput] params
    # @option params [Hash<String, Array<Types::WriteRequest>>] :request_items
    #   <p>A map of one or more table names or table ARNs and, for each table, a list of
    #               operations to be performed (<code>DeleteRequest</code> or <code>PutRequest</code>). Each
    #               element in the map consists of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the
    #                       specified item. The item to be deleted is identified by a <code>Key</code>
    #                       subelement:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Key</code> - A map of primary key attribute values that uniquely
    #                               identify the item. Each entry in this map consists of an attribute name
    #                               and an attribute value. For each primary key, you must provide
    #                                   <i>all</i> of the key attributes. For example, with a
    #                               simple primary key, you only need to provide a value for the partition
    #                               key. For a composite primary key, you must provide values for
    #                                   <i>both</i> the partition key and the sort key.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the
    #                       specified item. The item to be put is identified by an <code>Item</code>
    #                       subelement:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Item</code> - A map of attributes and their values. Each entry in
    #                               this map consists of an attribute name and an attribute value. Attribute
    #                               values must not be null; string and binary type attributes must have
    #                               lengths greater than zero; and set type attributes must not be empty.
    #                               Requests that contain empty values are rejected with a
    #                                   <code>ValidationException</code> exception.</p>
    #                        <p>If you specify any attributes that are part of an index key, then the
    #                               data types for those attributes must match those of the schema in the
    #                               table's attribute definition.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    # @option params [String] :return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    # @example To add multiple items to a table
    #   # This example adds three new items to the Music table using a batch of three PutItem requests.
    #   params = {
    #     request_items: {
    #       "Music" => [
    #         {
    #           put_request: {
    #             item: {
    #               "AlbumTitle" => {
    #     "S" => Somewhat Famous
    #   },
    #               "SongTitle" => {
    #     "S" => Call Me Today
    #   },
    #               "Artist" => {
    #     "S" => No One You Know
    #   }
    #             }
    #           }
    #         },
    #         {
    #           put_request: {
    #             item: {
    #               "AlbumTitle" => {
    #     "S" => Songs About Life
    #   },
    #               "SongTitle" => {
    #     "S" => Happy Day
    #   },
    #               "Artist" => {
    #     "S" => Acme Band
    #   }
    #             }
    #           }
    #         },
    #         {
    #           put_request: {
    #             item: {
    #               "AlbumTitle" => {
    #     "S" => Blue Sky Blues
    #   },
    #               "SongTitle" => {
    #     "S" => Scared of My Shadow
    #   },
    #               "Artist" => {
    #     "S" => No One You Know
    #   }
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.batch_write_item(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     request_items: { # required
    #       "TableArn" => [
    #         {
    #           put_request: {
    #             item: { # required
    #               "AttributeName" => {
    #                 # One of:
    #                 s: "StringAttributeValue",
    #                 n: "NumberAttributeValue",
    #                 b: "data",
    #                 ss: ["StringAttributeValue"],
    #                 ns: ["NumberAttributeValue"],
    #                 bs: ["data"],
    #                 m: {
    #                   "AttributeName" => {
    #                     # recursive AttributeValue
    #                   }
    #                 },
    #                 l: [{
    #                   # recursive AttributeValue
    #                 }],
    #                 null: false,
    #                 bool: false
    #               }
    #             }
    #           },
    #           delete_request: {
    #             key: { # required
    #               "AttributeName" => {
    #                 # One of:
    #                 s: "StringAttributeValue",
    #                 n: "NumberAttributeValue",
    #                 b: "data",
    #                 ss: ["StringAttributeValue"],
    #                 ns: ["NumberAttributeValue"],
    #                 bs: ["data"],
    #                 m: {
    #                   "AttributeName" => {
    #                     # recursive AttributeValue
    #                   }
    #                 },
    #                 l: [{
    #                   # recursive AttributeValue
    #                 }],
    #                 null: false,
    #                 bool: false
    #               }
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"],
    #     return_item_collection_metrics: "SIZE" # One of: ["SIZE", "NONE"]
    #   }
    #   options = {}
    #   response = client.batch_write_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unprocessed_items: {
    #       "TableArn" => [
    #         {
    #           put_request: {
    #             item: { # required
    #               "AttributeName" => {
    #                 # One of:
    #                 s: "StringAttributeValue",
    #                 n: "NumberAttributeValue",
    #                 b: "data",
    #                 ss: ["StringAttributeValue"],
    #                 ns: ["NumberAttributeValue"],
    #                 bs: ["data"],
    #                 m: {
    #                   "AttributeName" => {
    #                     # recursive AttributeValue
    #                   }
    #                 },
    #                 l: [{
    #                   # recursive AttributeValue
    #                 }],
    #                 null: false,
    #                 bool: false
    #               }
    #             }
    #           },
    #           delete_request: {
    #             key: { # required
    #               "AttributeName" => {
    #                 # One of:
    #                 s: "StringAttributeValue",
    #                 n: "NumberAttributeValue",
    #                 b: "data",
    #                 ss: ["StringAttributeValue"],
    #                 ns: ["NumberAttributeValue"],
    #                 bs: ["data"],
    #                 m: {
    #                   "AttributeName" => {
    #                     # recursive AttributeValue
    #                   }
    #                 },
    #                 l: [{
    #                   # recursive AttributeValue
    #                 }],
    #                 null: false,
    #                 bool: false
    #               }
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     item_collection_metrics: {
    #       "TableArn" => [
    #         {
    #           item_collection_key: {
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           size_estimate_range_gb: [1.0]
    #         }
    #       ]
    #     },
    #     consumed_capacity: [
    #       {
    #         table_name: "TableArn",
    #         capacity_units: 1.0,
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         table: {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         },
    #         local_secondary_indexes: {
    #           "IndexName" => {
    #             read_capacity_units: 1.0,
    #             write_capacity_units: 1.0,
    #             capacity_units: 1.0
    #           }
    #         },
    #         global_secondary_indexes: {
    #           "IndexName" => {
    #             read_capacity_units: 1.0,
    #             write_capacity_units: 1.0,
    #             capacity_units: 1.0
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchWriteItemOutput]
    def batch_write_item(params = {}, options = {})
      request = build_request(:batch_write_item, params)
      request.send_request(options)
    end

    # <p>Creates a backup for an existing table.</p>
    #          <p> Each time you create an on-demand backup, the entire table data is backed up. There
    #             is no limit to the number of on-demand backups that can be taken. </p>
    #          <p> When you create an on-demand backup, a time marker of the request is cataloged, and
    #             the backup is created asynchronously, by applying all changes until the time of the
    #             request to the last full table snapshot. Backup requests are processed instantaneously
    #             and become available for restore within minutes. </p>
    #          <p>You can call <code>CreateBackup</code> at a maximum rate of 50 times per
    #             second.</p>
    #          <p>All backups in DynamoDB work without consuming any provisioned throughput on the
    #             table.</p>
    #          <p> If you submit a backup request on 2018-12-14 at 14:25:00, the backup is guaranteed to
    #             contain all data committed to the table up to 14:24:00, and data committed after
    #             14:26:00 will not be. The backup might contain data modifications made between 14:24:00
    #             and 14:26:00. On-demand backup does not support causal consistency. </p>
    #          <p> Along with data, the following are also included on the backups: </p>
    #          <ul>
    #             <li>
    #                <p>Global secondary indexes (GSIs)</p>
    #             </li>
    #             <li>
    #                <p>Local secondary indexes (LSIs)</p>
    #             </li>
    #             <li>
    #                <p>Streams</p>
    #             </li>
    #             <li>
    #                <p>Provisioned read and write capacity</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::CreateBackupInput] params
    # @option params [String] :table_name
    #   <p>The name of the table. You can also provide the Amazon Resource Name (ARN) of the table in this
    #               parameter.</p>
    # @option params [String] :backup_name
    #   <p>Specified name for the backup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     backup_name: "BackupName", # required
    #   }
    #   options = {}
    #   response = client.create_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_details: {
    #       backup_arn: "BackupArn", # required
    #       backup_name: "BackupName", # required
    #       backup_size_bytes: 1,
    #       backup_status: "CREATING" # One of: ["CREATING", "DELETED", "AVAILABLE"], # required
    #       backup_type: "USER" # One of: ["USER", "SYSTEM", "AWS_BACKUP"], # required
    #       backup_creation_date_time: Time.now, # required
    #       backup_expiry_date_time: Time.now
    #     }
    #   }
    # @return [Types::CreateBackupOutput]
    def create_backup(params = {}, options = {})
      request = build_request(:create_backup, params)
      request.send_request(options)
    end

    # <p>Creates a global table from an existing table. A global table creates a replication
    #             relationship between two or more DynamoDB tables with the same table name in the
    #             provided Regions. </p>
    #          <important>
    #             <p>This documentation is for version 2017.11.29 (Legacy) of global tables, which should be avoided for new global tables. Customers should use <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html">Global Tables version 2019.11.21 (Current)</a> when possible, because it provides greater flexibility, higher efficiency, and consumes less write capacity than 2017.11.29 (Legacy).</p>
    #             <p>To determine which version you're using, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html">Determining the global table version you are using</a>. To update existing global tables from version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html">Upgrading global tables</a>.</p>
    #          </important>
    #          <p>If you want to add a new replica table to a global table, each of the following
    #             conditions must be true:</p>
    #          <ul>
    #             <li>
    #                <p>The table must have the same primary key as all of the other replicas.</p>
    #             </li>
    #             <li>
    #                <p>The table must have the same name as all of the other replicas.</p>
    #             </li>
    #             <li>
    #                <p>The table must have DynamoDB Streams enabled, with the stream containing both
    #                     the new and the old images of the item.</p>
    #             </li>
    #             <li>
    #                <p>None of the replica tables in the global table can contain any data.</p>
    #             </li>
    #          </ul>
    #          <p> If global secondary indexes are specified, then the following conditions must also be
    #             met: </p>
    #          <ul>
    #             <li>
    #                <p> The global secondary indexes must have the same name. </p>
    #             </li>
    #             <li>
    #                <p> The global secondary indexes must have the same hash key and sort key (if
    #                     present). </p>
    #             </li>
    #          </ul>
    #          <p> If local secondary indexes are specified, then the following conditions must also be
    #             met: </p>
    #          <ul>
    #             <li>
    #                <p> The local secondary indexes must have the same name. </p>
    #             </li>
    #             <li>
    #                <p> The local secondary indexes must have the same hash key and sort key (if
    #                     present). </p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p> Write capacity settings should be set consistently across your replica tables and
    #                 secondary indexes. DynamoDB strongly recommends enabling auto scaling to manage the
    #                 write capacity settings for all of your global tables replicas and indexes. </p>
    #             <p> If you prefer to manage write capacity settings manually, you should provision
    #                 equal replicated write capacity units to your replica tables. You should also
    #                 provision equal replicated write capacity units to matching secondary indexes across
    #                 your global table. </p>
    #          </important>
    # @param [Hash, Types::CreateGlobalTableInput] params
    # @option params [String] :global_table_name
    #   <p>The global table name.</p>
    # @option params [Array<Types::Replica>] :replication_group
    #   <p>The Regions where the global table needs to be created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_table_name: "TableName", # required
    #     replication_group: [ # required
    #       {
    #         region_name: "RegionName"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_global_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_table_description: {
    #       replication_group: [
    #         {
    #           region_name: "RegionName",
    #           replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #           replica_status_description: "ReplicaStatusDescription",
    #           replica_status_percent_progress: "ReplicaStatusPercentProgress",
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName",
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1
    #               },
    #               warm_throughput: {
    #                 read_units_per_second: 1,
    #                 write_units_per_second: 1,
    #                 status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #               }
    #             }
    #           ],
    #           replica_inaccessible_date_time: Time.now,
    #           replica_table_class_summary: {
    #             table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #             last_update_date_time: Time.now
    #           }
    #         }
    #       ],
    #       global_table_arn: "GlobalTableArnString",
    #       creation_date_time: Time.now,
    #       global_table_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "UPDATING"],
    #       global_table_name: "TableName"
    #     }
    #   }
    # @return [Types::CreateGlobalTableOutput]
    def create_global_table(params = {}, options = {})
      request = build_request(:create_global_table, params)
      request.send_request(options)
    end

    # <p>The <code>CreateTable</code> operation adds a new table to your account. In an Amazon Web Services account, table names must be unique within each Region. That is, you can
    #             have two tables with same name if you create the tables in different Regions.</p>
    #          <p>
    #             <code>CreateTable</code> is an asynchronous operation. Upon receiving a
    #                 <code>CreateTable</code> request, DynamoDB immediately returns a response with a
    #                 <code>TableStatus</code> of <code>CREATING</code>. After the table is created,
    #             DynamoDB sets the <code>TableStatus</code> to <code>ACTIVE</code>. You can perform read
    #             and write operations only on an <code>ACTIVE</code> table. </p>
    #          <p>You can optionally define secondary indexes on the new table, as part of the
    #                 <code>CreateTable</code> operation. If you want to create multiple tables with
    #             secondary indexes on them, you must create the tables sequentially. Only one table with
    #             secondary indexes can be in the <code>CREATING</code> state at any given time.</p>
    #          <p>You can use the <code>DescribeTable</code> action to check the table status.</p>
    # @param [Hash, Types::CreateTableInput] params
    # @option params [Array<Types::AttributeDefinition>] :attribute_definitions
    #   <p>An array of attributes that describe the key schema for the table and indexes.</p>
    # @option params [String] :table_name
    #   <p>The name of the table to create. You can also provide the Amazon Resource Name (ARN) of the table in
    #               this parameter.</p>
    # @option params [Array<Types::KeySchemaElement>] :key_schema
    #   <p>Specifies the attributes that make up the primary key for a table or an index. The
    #               attributes in <code>KeySchema</code> must also be defined in the
    #                   <code>AttributeDefinitions</code> array. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html">Data
    #                   Model</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #            <p>Each <code>KeySchemaElement</code> in the array is composed of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AttributeName</code> - The name of this key attribute.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeyType</code> - The role that the key attribute will assume:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>HASH</code> - partition key</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RANGE</code> - sort key</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from the DynamoDB usage
    #                   of an internal hash function to evenly distribute data items across partitions,
    #                   based on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with the same
    #                   partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #            <p>For a simple primary key (partition key), you must provide exactly one element with a
    #                   <code>KeyType</code> of <code>HASH</code>.</p>
    #            <p>For a composite primary key (partition key and sort key), you must provide exactly two
    #               elements, in this order: The first element must have a <code>KeyType</code> of
    #                   <code>HASH</code>, and the second element must have a <code>KeyType</code> of
    #                   <code>RANGE</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key">Working with Tables</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Array<Types::LocalSecondaryIndex>] :local_secondary_indexes
    #   <p>One or more local secondary indexes (the maximum is 5) to be created on the table.
    #               Each index is scoped to a given partition key value. There is a 10 GB size limit per
    #               partition key value; otherwise, the size of a local secondary index is
    #               unconstrained.</p>
    #            <p>Each local secondary index in the array includes the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IndexName</code> - The name of the local secondary index. Must be unique
    #                       only for this table.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeySchema</code> - Specifies the key schema for the local secondary index.
    #                       The key schema must begin with the same partition key as the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection</code> - Specifies attributes that are copied (projected) from
    #                       the table into the index. These are in addition to the primary key attributes
    #                       and index key attributes, which are automatically projected. Each attribute
    #                       specification is composed of:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ProjectionType</code> - One of the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>KEYS_ONLY</code> - Only the index and primary keys are
    #                                       projected into the index.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INCLUDE</code> - Only the specified table attributes are
    #                                       projected into the index. The list of projected attributes is in
    #                                           <code>NonKeyAttributes</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ALL</code> - All of the table attributes are projected
    #                                       into the index.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NonKeyAttributes</code> - A list of one or more non-key attribute
    #                               names that are projected into the secondary index. The total count of
    #                               attributes provided in <code>NonKeyAttributes</code>, summed across all
    #                               of the secondary indexes, must not exceed 100. If you project the same
    #                               attribute into two different indexes, this counts as two distinct
    #                               attributes when determining the total. This limit only applies when you
    #                               specify the ProjectionType of <code>INCLUDE</code>. You still can
    #                               specify the ProjectionType of <code>ALL</code> to project all attributes
    #                               from the source table, even if the table has more than 100
    #                               attributes.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [Array<Types::GlobalSecondaryIndex>] :global_secondary_indexes
    #   <p>One or more global secondary indexes (the maximum is 20) to be created on the table.
    #               Each global secondary index in the array includes the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IndexName</code> - The name of the global secondary index. Must be unique
    #                       only for this table.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeySchema</code> - Specifies the key schema for the global secondary
    #                       index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection</code> - Specifies attributes that are copied (projected) from
    #                       the table into the index. These are in addition to the primary key attributes
    #                       and index key attributes, which are automatically projected. Each attribute
    #                       specification is composed of:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ProjectionType</code> - One of the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>KEYS_ONLY</code> - Only the index and primary keys are
    #                                       projected into the index.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INCLUDE</code> - Only the specified table attributes are
    #                                       projected into the index. The list of projected attributes is in
    #                                           <code>NonKeyAttributes</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ALL</code> - All of the table attributes are projected
    #                                       into the index.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NonKeyAttributes</code> - A list of one or more non-key attribute
    #                               names that are projected into the secondary index. The total count of
    #                               attributes provided in <code>NonKeyAttributes</code>, summed across all
    #                               of the secondary indexes, must not exceed 100. If you project the same
    #                               attribute into two different indexes, this counts as two distinct
    #                               attributes when determining the total. This limit only applies when you
    #                               specify the ProjectionType of <code>INCLUDE</code>. You still can
    #                               specify the ProjectionType of <code>ALL</code> to project all attributes
    #                               from the source table, even if the table has more than 100
    #                               attributes.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProvisionedThroughput</code> - The provisioned throughput settings for the
    #                       global secondary index, consisting of read and write capacity units.</p>
    #               </li>
    #            </ul>
    # @option params [String] :billing_mode
    #   <p>Controls how you are charged for read and write throughput and how you manage
    #               capacity. This setting can be changed later.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
    #                       for most DynamoDB workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
    #                       to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/on-demand-capacity-mode.html">On-demand capacity mode</a>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
    #                       steady workloads with predictable growth where capacity requirements can be
    #                       reliably forecasted. <code>PROVISIONED</code> sets the billing mode to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html">Provisioned capacity mode</a>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::ProvisionedThroughput] :provisioned_throughput
    #   <p>Represents the provisioned throughput settings for a specified table or index. The
    #               settings can be modified using the <code>UpdateTable</code> operation.</p>
    #            <p> If you set BillingMode as <code>PROVISIONED</code>, you must specify this property.
    #               If you set BillingMode as <code>PAY_PER_REQUEST</code>, you cannot specify this
    #               property.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Types::StreamSpecification] :stream_specification
    #   <p>The settings for DynamoDB Streams on the table. These settings consist of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>StreamEnabled</code> - Indicates whether DynamoDB Streams is to be enabled
    #                       (true) or disabled (false).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StreamViewType</code> - When an item in the table is modified,
    #                           <code>StreamViewType</code> determines what information is written to the
    #                       table's stream. Valid values for <code>StreamViewType</code> are:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>KEYS_ONLY</code> - Only the key attributes of the modified item
    #                               are written to the stream.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NEW_IMAGE</code> - The entire item, as it appears after it was
    #                               modified, is written to the stream.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>OLD_IMAGE</code> - The entire item, as it appeared before it was
    #                               modified, is written to the stream.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images
    #                               of the item are written to the stream.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [Types::SSESpecification] :sse_specification
    #   <p>Represents the settings used to enable server-side encryption.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs to label the table. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging
    #                   for DynamoDB</a>.</p>
    # @option params [String] :table_class
    #   <p>The table class of the new table. Valid values are <code>STANDARD</code> and
    #                   <code>STANDARD_INFREQUENT_ACCESS</code>.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>Indicates whether deletion protection is to be enabled (true) or disabled (false) on
    #               the table.</p>
    # @option params [Types::WarmThroughput] :warm_throughput
    #   <p>Represents the warm throughput (in read units per second and write units per second)
    #               for creating a table.</p>
    # @option params [String] :resource_policy
    #   <p>An Amazon Web Services resource-based policy document in JSON format that will be
    #               attached to the table.</p>
    #            <p>When you attach a resource-based policy while creating a table, the policy application
    #               is <i>strongly consistent</i>.</p>
    #            <p>The maximum size supported for a resource-based policy document is 20 KB. DynamoDB counts whitespaces when calculating the size of a policy against this
    #               limit. For a full list of all considerations that apply for resource-based policies, see
    #                   <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-considerations.html">Resource-based
    #                   policy considerations</a>.</p>
    #            <note>
    #               <p>You need to specify the <code>CreateTable</code> and
    #                       <code>PutResourcePolicy</code>
    #                   IAM actions for authorizing a user to create a table with a
    #                   resource-based policy.</p>
    #            </note>
    # @option params [Types::OnDemandThroughput] :on_demand_throughput
    #   <p>Sets the maximum number of read and write units for the specified table in on-demand
    #               capacity mode. If you use this parameter, you must specify
    #                   <code>MaxReadRequestUnits</code>, <code>MaxWriteRequestUnits</code>, or both.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attribute_definitions: [ # required
    #       {
    #         attribute_name: "KeySchemaAttributeName", # required
    #         attribute_type: "S" # One of: ["S", "N", "B"], # required
    #       }
    #     ],
    #     table_name: "TableArn", # required
    #     key_schema: [ # required
    #       {
    #         attribute_name: "KeySchemaAttributeName", # required
    #         key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #       }
    #     ],
    #     local_secondary_indexes: [
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #           }
    #         ],
    #         projection: { # required
    #           projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #           non_key_attributes: ["NonKeyAttributeName"]
    #         }
    #       }
    #     ],
    #     global_secondary_indexes: [
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #           }
    #         ],
    #         projection: { # required
    #           projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #           non_key_attributes: ["NonKeyAttributeName"]
    #         },
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #         on_demand_throughput: {
    #           max_read_request_units: 1,
    #           max_write_request_units: 1
    #         },
    #         warm_throughput: {
    #           read_units_per_second: 1,
    #           write_units_per_second: 1
    #         }
    #       }
    #     ],
    #     billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #     provisioned_throughput: {
    #       read_capacity_units: 1, # required
    #       write_capacity_units: 1, # required
    #     },
    #     stream_specification: {
    #       stream_enabled: false, # required
    #       stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #     },
    #     sse_specification: {
    #       enabled: false,
    #       sse_type: "AES256" # One of: ["AES256", "KMS"],
    #       kms_master_key_id: "KMSMasterKeyId"
    #     },
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ],
    #     table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #     deletion_protection_enabled: false,
    #     warm_throughput: {
    #       read_units_per_second: 1,
    #       write_units_per_second: 1
    #     },
    #     resource_policy: "ResourcePolicy",
    #     on_demand_throughput: {
    #       max_read_request_units: 1,
    #       max_write_request_units: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_description: {
    #       attribute_definitions: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           attribute_type: "S" # One of: ["S", "N", "B"], # required
    #         }
    #       ],
    #       table_name: "TableName",
    #       key_schema: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #         }
    #       ],
    #       table_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #       creation_date_time: Time.now,
    #       provisioned_throughput: {
    #         last_increase_date_time: Time.now,
    #         last_decrease_date_time: Time.now,
    #         number_of_decreases_today: 1,
    #         read_capacity_units: 1,
    #         write_capacity_units: 1
    #       },
    #       table_size_bytes: 1,
    #       item_count: 1,
    #       table_arn: "String",
    #       table_id: "TableId",
    #       billing_mode_summary: {
    #         billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #         last_update_to_pay_per_request_date_time: Time.now
    #       },
    #       local_secondary_indexes: [
    #         {
    #           index_name: "IndexName",
    #           key_schema: [
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: {
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           index_size_bytes: 1,
    #           item_count: 1,
    #           index_arn: "String"
    #         }
    #       ],
    #       global_secondary_indexes: [
    #         {
    #           index_name: "IndexName",
    #           key_schema: [
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: {
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           index_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"],
    #           backfilling: false,
    #           provisioned_throughput: {
    #             last_increase_date_time: Time.now,
    #             last_decrease_date_time: Time.now,
    #             number_of_decreases_today: 1,
    #             read_capacity_units: 1,
    #             write_capacity_units: 1
    #           },
    #           index_size_bytes: 1,
    #           item_count: 1,
    #           index_arn: "String",
    #           on_demand_throughput: {
    #             max_read_request_units: 1,
    #             max_write_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #           }
    #         }
    #       ],
    #       stream_specification: {
    #         stream_enabled: false, # required
    #         stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #       },
    #       latest_stream_label: "String",
    #       latest_stream_arn: "StreamArn",
    #       global_table_version: "String",
    #       replicas: [
    #         {
    #           region_name: "RegionName",
    #           replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #           replica_status_description: "ReplicaStatusDescription",
    #           replica_status_percent_progress: "ReplicaStatusPercentProgress",
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName",
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1
    #               },
    #               warm_throughput: {
    #                 read_units_per_second: 1,
    #                 write_units_per_second: 1,
    #                 status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #               }
    #             }
    #           ],
    #           replica_inaccessible_date_time: Time.now,
    #           replica_table_class_summary: {
    #             table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #             last_update_date_time: Time.now
    #           }
    #         }
    #       ],
    #       global_table_witnesses: [
    #         {
    #           region_name: "RegionName",
    #           witness_status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE"]
    #         }
    #       ],
    #       restore_summary: {
    #         source_backup_arn: "BackupArn",
    #         source_table_arn: "TableArn",
    #         restore_date_time: Time.now, # required
    #         restore_in_progress: false, # required
    #       },
    #       sse_description: {
    #         status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"],
    #         sse_type: "AES256" # One of: ["AES256", "KMS"],
    #         kms_master_key_arn: "KMSMasterKeyArn",
    #         inaccessible_encryption_date_time: Time.now
    #       },
    #       archival_summary: {
    #         archival_date_time: Time.now,
    #         archival_reason: "ArchivalReason",
    #         archival_backup_arn: "BackupArn"
    #       },
    #       table_class_summary: {
    #         table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #         last_update_date_time: Time.now
    #       },
    #       deletion_protection_enabled: false,
    #       on_demand_throughput: {
    #         max_read_request_units: 1,
    #         max_write_request_units: 1
    #       },
    #       warm_throughput: {
    #         read_units_per_second: 1,
    #         write_units_per_second: 1,
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #       },
    #       multi_region_consistency: "EVENTUAL" # One of: ["EVENTUAL", "STRONG"]
    #     }
    #   }
    # @return [Types::CreateTableOutput]
    def create_table(params = {}, options = {})
      request = build_request(:create_table, params)
      request.send_request(options)
    end

    # <p>Deletes an existing backup of a table.</p>
    #          <p>You can call <code>DeleteBackup</code> at a maximum rate of 10 times per
    #             second.</p>
    # @param [Hash, Types::DeleteBackupInput] params
    # @option params [String] :backup_arn
    #   <p>The ARN associated with the backup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_arn: "BackupArn", # required
    #   }
    #   options = {}
    #   response = client.delete_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_description: {
    #       backup_details: {
    #         backup_arn: "BackupArn", # required
    #         backup_name: "BackupName", # required
    #         backup_size_bytes: 1,
    #         backup_status: "CREATING" # One of: ["CREATING", "DELETED", "AVAILABLE"], # required
    #         backup_type: "USER" # One of: ["USER", "SYSTEM", "AWS_BACKUP"], # required
    #         backup_creation_date_time: Time.now, # required
    #         backup_expiry_date_time: Time.now
    #       },
    #       source_table_details: {
    #         table_name: "TableName", # required
    #         table_id: "TableId", # required
    #         table_arn: "TableArn",
    #         table_size_bytes: 1,
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #           }
    #         ],
    #         table_creation_date_time: Time.now, # required
    #         provisioned_throughput: { # required
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #         on_demand_throughput: {
    #           max_read_request_units: 1,
    #           max_write_request_units: 1
    #         },
    #         item_count: 1,
    #         billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"]
    #       },
    #       source_table_feature_details: {
    #         local_secondary_indexes: [
    #           {
    #             index_name: "IndexName",
    #             key_schema: [
    #               {
    #                 attribute_name: "KeySchemaAttributeName", # required
    #                 key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #               }
    #             ],
    #             projection: {
    #               projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #               non_key_attributes: ["NonKeyAttributeName"]
    #             }
    #           }
    #         ],
    #         global_secondary_indexes: [
    #           {
    #             index_name: "IndexName",
    #             key_schema: [
    #               {
    #                 attribute_name: "KeySchemaAttributeName", # required
    #                 key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #               }
    #             ],
    #             projection: {
    #               projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #               non_key_attributes: ["NonKeyAttributeName"]
    #             },
    #             provisioned_throughput: {
    #               read_capacity_units: 1, # required
    #               write_capacity_units: 1, # required
    #             },
    #             on_demand_throughput: {
    #               max_read_request_units: 1,
    #               max_write_request_units: 1
    #             }
    #           }
    #         ],
    #         stream_description: {
    #           stream_enabled: false, # required
    #           stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #         },
    #         time_to_live_description: {
    #           time_to_live_status: "ENABLING" # One of: ["ENABLING", "DISABLING", "ENABLED", "DISABLED"],
    #           attribute_name: "TimeToLiveAttributeName"
    #         },
    #         sse_description: {
    #           status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"],
    #           sse_type: "AES256" # One of: ["AES256", "KMS"],
    #           kms_master_key_arn: "KMSMasterKeyArn",
    #           inaccessible_encryption_date_time: Time.now
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DeleteBackupOutput]
    def delete_backup(params = {}, options = {})
      request = build_request(:delete_backup, params)
      request.send_request(options)
    end

    # <p>Deletes a single item in a table by primary key. You can perform a conditional delete
    #             operation that deletes the item if it exists, or if it has an expected attribute
    #             value.</p>
    #          <p>In addition to deleting an item, you can also return the item's attribute values in
    #             the same operation, using the <code>ReturnValues</code> parameter.</p>
    #          <p>Unless you specify conditions, the <code>DeleteItem</code> is an idempotent operation;
    #             running it multiple times on the same item or attribute does <i>not</i>
    #             result in an error response.</p>
    #          <p>Conditional deletes are useful for deleting items only if specific conditions are met.
    #             If those conditions are met, DynamoDB performs the delete. Otherwise, the item is not
    #             deleted.</p>
    # @param [Hash, Types::DeleteItemInput] params
    # @option params [String] :table_name
    #   <p>The name of the table from which to delete the item. You can also provide the
    #               Amazon Resource Name (ARN) of the table in this parameter.</p>
    # @option params [Hash<String, Types::AttributeValue>] :key
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, representing the
    #               primary key of the item to delete.</p>
    #            <p>For the primary key, you must provide all of the key attributes. For example, with a
    #               simple primary key, you only need to provide a value for the partition key. For a
    #               composite primary key, you must provide values for both the partition key and the sort
    #               key.</p>
    # @option params [Hash<String, Types::ExpectedAttributeValue>] :expected
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    # @option params [String] :conditional_operator
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [String] :return_values
    #   <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared
    #               before they were deleted. For <code>DeleteItem</code>, the valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
    #                       value is <code>NONE</code>, then nothing is returned. (This setting is the
    #                       default for <code>ReturnValues</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_OLD</code> - The content of the old item is returned.</p>
    #               </li>
    #            </ul>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #            <note>
    #               <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations;
    #                   however, <code>DeleteItem</code> does not recognize any values other than
    #                       <code>NONE</code> or <code>ALL_OLD</code>.</p>
    #            </note>
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    # @option params [String] :return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    # @option params [String] :condition_expression
    #   <p>A condition that must be satisfied in order for a conditional <code>DeleteItem</code>
    #               to succeed.</p>
    #            <p>An expression can contain any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
    #                           contains | begins_with | size</code>
    #                  </p>
    #                  <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Comparison operators: <code>= | <> |
    #               < | > | <= | >= |
    #               BETWEEN | IN </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p> Logical operators: <code>AND | OR | NOT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about condition expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Hash<String, String>] :expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Hash<String, Types::AttributeValue>] :expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <i>ProductStatus</i> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [String] :return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for a <code>DeleteItem</code>
    #               operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    # @example To delete an item
    #   # This example deletes an item from the Music table.
    #   params = {
    #     table_name: "Music",
    #     key: {
    #       "Artist" => {
    #     "S" => No One You Know
    #   },
    #       "SongTitle" => {
    #     "S" => Scared of My Shadow
    #   }
    #     }
    #   }
    #   options = {}
    #   response = client.delete_item(params, options)
    #   response.to_h #=>
    #   {
    #     consumed_capacity: {
    #       capacity_units: 1,
    #       table_name: "Music"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     key: { # required
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     expected: {
    #       "AttributeName" => {
    #         value: {
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         },
    #         exists: false,
    #         comparison_operator: "EQ" # One of: ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"],
    #         attribute_value_list: [{
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }]
    #       }
    #     },
    #     conditional_operator: "AND" # One of: ["AND", "OR"],
    #     return_values: "NONE" # One of: ["NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW", "UPDATED_NEW"],
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"],
    #     return_item_collection_metrics: "SIZE" # One of: ["SIZE", "NONE"],
    #     condition_expression: "ConditionExpression",
    #     expression_attribute_names: {
    #       "ExpressionAttributeNameVariable" => "AttributeName"
    #     },
    #     expression_attribute_values: {
    #       "ExpressionAttributeValueVariable" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     return_values_on_condition_check_failure: "ALL_OLD" # One of: ["ALL_OLD", "NONE"]
    #   }
    #   options = {}
    #   response = client.delete_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: {
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     consumed_capacity: {
    #       table_name: "TableArn",
    #       capacity_units: 1.0,
    #       read_capacity_units: 1.0,
    #       write_capacity_units: 1.0,
    #       table: {
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         capacity_units: 1.0
    #       },
    #       local_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       },
    #       global_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       }
    #     },
    #     item_collection_metrics: {
    #       item_collection_key: {
    #         "AttributeName" => {
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }
    #       },
    #       size_estimate_range_gb: [1.0]
    #     }
    #   }
    # @return [Types::DeleteItemOutput]
    def delete_item(params = {}, options = {})
      request = build_request(:delete_item, params)
      request.send_request(options)
    end

    # <p>Deletes the resource-based policy attached to the resource, which can be a table or
    #             stream.</p>
    #          <p>
    #             <code>DeleteResourcePolicy</code> is an idempotent operation; running it multiple
    #             times on the same resource <i>doesn't</i> result in an error response,
    #             unless you specify an <code>ExpectedRevisionId</code>, which will then return a
    #                 <code>PolicyNotFoundException</code>.</p>
    #          <important>
    #             <p>To make sure that you don't inadvertently lock yourself out of your own resources,
    #                 the root principal in your Amazon Web Services account can perform
    #                     <code>DeleteResourcePolicy</code> requests, even if your resource-based policy
    #                 explicitly denies the root principal's access. </p>
    #          </important>
    #          <note>
    #             <p>
    #                <code>DeleteResourcePolicy</code> is an asynchronous operation. If you issue a
    #                     <code>GetResourcePolicy</code> request immediately after running the
    #                     <code>DeleteResourcePolicy</code> request, DynamoDB might still return
    #                 the deleted policy. This is because the policy for your resource might not have been
    #                 deleted yet. Wait for a few seconds, and then try the <code>GetResourcePolicy</code>
    #                 request again.</p>
    #          </note>
    # @param [Hash, Types::DeleteResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the DynamoDB resource from which the policy will be
    #               removed. The resources you can specify include tables and streams. If you remove the
    #               policy of a table, it will also remove the permissions for the table's indexes defined
    #               in that policy document. This is because index permissions are defined in the table's
    #               policy.</p>
    # @option params [String] :expected_revision_id
    #   <p>A string value that you can use to conditionally delete your policy. When you provide
    #               an expected revision ID, if the revision ID of the existing policy on the resource
    #               doesn't match or if there's no policy attached to the resource, the request will fail
    #               and return a <code>PolicyNotFoundException</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArnString", # required
    #     expected_revision_id: "PolicyRevisionId"
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revision_id: "PolicyRevisionId"
    #   }
    # @return [Types::DeleteResourcePolicyOutput]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>The <code>DeleteTable</code> operation deletes a table and all of its items. After a
    #                 <code>DeleteTable</code> request, the specified table is in the
    #                 <code>DELETING</code> state until DynamoDB completes the deletion. If the table is
    #             in the <code>ACTIVE</code> state, you can delete it. If a table is in
    #                 <code>CREATING</code> or <code>UPDATING</code> states, then DynamoDB returns a
    #                 <code>ResourceInUseException</code>. If the specified table does not exist, DynamoDB
    #             returns a <code>ResourceNotFoundException</code>. If table is already in the
    #                 <code>DELETING</code> state, no error is returned. </p>
    #          <note>
    #             <p>DynamoDB might continue to accept data read and write operations, such as
    #                     <code>GetItem</code> and <code>PutItem</code>, on a table in the
    #                     <code>DELETING</code> state until the table deletion is complete. For the full
    #                 list of table states, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TableDescription.html#DDB-Type-TableDescription-TableStatus">TableStatus</a>.</p>
    #          </note>
    #          <p>When you delete a table, any indexes on that table are also deleted.</p>
    #          <p>If you have DynamoDB Streams enabled on the table, then the corresponding stream on
    #             that table goes into the <code>DISABLED</code> state, and the stream is automatically
    #             deleted after 24 hours.</p>
    #          <p>Use the <code>DescribeTable</code> action to check the status of the table. </p>
    # @param [Hash, Types::DeleteTableInput] params
    # @option params [String] :table_name
    #   <p>The name of the table to delete. You can also provide the Amazon Resource Name (ARN) of the table in
    #               this parameter.</p>
    # @example To delete a table
    #   # This example deletes the Music table.
    #   params = {
    #     table_name: "Music"
    #   }
    #   options = {}
    #   response = client.delete_table(params, options)
    #   response.to_h #=>
    #   {
    #     table_description: {
    #       table_status: DELETING,
    #       table_size_bytes: 0,
    #       item_count: 0,
    #       table_name: "Music",
    #       provisioned_throughput: {
    #         number_of_decreases_today: 1,
    #         write_capacity_units: 5,
    #         read_capacity_units: 5
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #   }
    #   options = {}
    #   response = client.delete_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_description: {
    #       attribute_definitions: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           attribute_type: "S" # One of: ["S", "N", "B"], # required
    #         }
    #       ],
    #       table_name: "TableName",
    #       key_schema: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #         }
    #       ],
    #       table_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #       creation_date_time: Time.now,
    #       provisioned_throughput: {
    #         last_increase_date_time: Time.now,
    #         last_decrease_date_time: Time.now,
    #         number_of_decreases_today: 1,
    #         read_capacity_units: 1,
    #         write_capacity_units: 1
    #       },
    #       table_size_bytes: 1,
    #       item_count: 1,
    #       table_arn: "String",
    #       table_id: "TableId",
    #       billing_mode_summary: {
    #         billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #         last_update_to_pay_per_request_date_time: Time.now
    #       },
    #       local_secondary_indexes: [
    #         {
    #           index_name: "IndexName",
    #           key_schema: [
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: {
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           index_size_bytes: 1,
    #           item_count: 1,
    #           index_arn: "String"
    #         }
    #       ],
    #       global_secondary_indexes: [
    #         {
    #           index_name: "IndexName",
    #           key_schema: [
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: {
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           index_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"],
    #           backfilling: false,
    #           provisioned_throughput: {
    #             last_increase_date_time: Time.now,
    #             last_decrease_date_time: Time.now,
    #             number_of_decreases_today: 1,
    #             read_capacity_units: 1,
    #             write_capacity_units: 1
    #           },
    #           index_size_bytes: 1,
    #           item_count: 1,
    #           index_arn: "String",
    #           on_demand_throughput: {
    #             max_read_request_units: 1,
    #             max_write_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #           }
    #         }
    #       ],
    #       stream_specification: {
    #         stream_enabled: false, # required
    #         stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #       },
    #       latest_stream_label: "String",
    #       latest_stream_arn: "StreamArn",
    #       global_table_version: "String",
    #       replicas: [
    #         {
    #           region_name: "RegionName",
    #           replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #           replica_status_description: "ReplicaStatusDescription",
    #           replica_status_percent_progress: "ReplicaStatusPercentProgress",
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName",
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1
    #               },
    #               warm_throughput: {
    #                 read_units_per_second: 1,
    #                 write_units_per_second: 1,
    #                 status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #               }
    #             }
    #           ],
    #           replica_inaccessible_date_time: Time.now,
    #           replica_table_class_summary: {
    #             table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #             last_update_date_time: Time.now
    #           }
    #         }
    #       ],
    #       global_table_witnesses: [
    #         {
    #           region_name: "RegionName",
    #           witness_status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE"]
    #         }
    #       ],
    #       restore_summary: {
    #         source_backup_arn: "BackupArn",
    #         source_table_arn: "TableArn",
    #         restore_date_time: Time.now, # required
    #         restore_in_progress: false, # required
    #       },
    #       sse_description: {
    #         status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"],
    #         sse_type: "AES256" # One of: ["AES256", "KMS"],
    #         kms_master_key_arn: "KMSMasterKeyArn",
    #         inaccessible_encryption_date_time: Time.now
    #       },
    #       archival_summary: {
    #         archival_date_time: Time.now,
    #         archival_reason: "ArchivalReason",
    #         archival_backup_arn: "BackupArn"
    #       },
    #       table_class_summary: {
    #         table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #         last_update_date_time: Time.now
    #       },
    #       deletion_protection_enabled: false,
    #       on_demand_throughput: {
    #         max_read_request_units: 1,
    #         max_write_request_units: 1
    #       },
    #       warm_throughput: {
    #         read_units_per_second: 1,
    #         write_units_per_second: 1,
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #       },
    #       multi_region_consistency: "EVENTUAL" # One of: ["EVENTUAL", "STRONG"]
    #     }
    #   }
    # @return [Types::DeleteTableOutput]
    def delete_table(params = {}, options = {})
      request = build_request(:delete_table, params)
      request.send_request(options)
    end

    # <p>Describes an existing backup of a table.</p>
    #          <p>You can call <code>DescribeBackup</code> at a maximum rate of 10 times per
    #             second.</p>
    # @param [Hash, Types::DescribeBackupInput] params
    # @option params [String] :backup_arn
    #   <p>The Amazon Resource Name (ARN) associated with the backup.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_arn: "BackupArn", # required
    #   }
    #   options = {}
    #   response = client.describe_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_description: {
    #       backup_details: {
    #         backup_arn: "BackupArn", # required
    #         backup_name: "BackupName", # required
    #         backup_size_bytes: 1,
    #         backup_status: "CREATING" # One of: ["CREATING", "DELETED", "AVAILABLE"], # required
    #         backup_type: "USER" # One of: ["USER", "SYSTEM", "AWS_BACKUP"], # required
    #         backup_creation_date_time: Time.now, # required
    #         backup_expiry_date_time: Time.now
    #       },
    #       source_table_details: {
    #         table_name: "TableName", # required
    #         table_id: "TableId", # required
    #         table_arn: "TableArn",
    #         table_size_bytes: 1,
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #           }
    #         ],
    #         table_creation_date_time: Time.now, # required
    #         provisioned_throughput: { # required
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #         on_demand_throughput: {
    #           max_read_request_units: 1,
    #           max_write_request_units: 1
    #         },
    #         item_count: 1,
    #         billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"]
    #       },
    #       source_table_feature_details: {
    #         local_secondary_indexes: [
    #           {
    #             index_name: "IndexName",
    #             key_schema: [
    #               {
    #                 attribute_name: "KeySchemaAttributeName", # required
    #                 key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #               }
    #             ],
    #             projection: {
    #               projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #               non_key_attributes: ["NonKeyAttributeName"]
    #             }
    #           }
    #         ],
    #         global_secondary_indexes: [
    #           {
    #             index_name: "IndexName",
    #             key_schema: [
    #               {
    #                 attribute_name: "KeySchemaAttributeName", # required
    #                 key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #               }
    #             ],
    #             projection: {
    #               projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #               non_key_attributes: ["NonKeyAttributeName"]
    #             },
    #             provisioned_throughput: {
    #               read_capacity_units: 1, # required
    #               write_capacity_units: 1, # required
    #             },
    #             on_demand_throughput: {
    #               max_read_request_units: 1,
    #               max_write_request_units: 1
    #             }
    #           }
    #         ],
    #         stream_description: {
    #           stream_enabled: false, # required
    #           stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #         },
    #         time_to_live_description: {
    #           time_to_live_status: "ENABLING" # One of: ["ENABLING", "DISABLING", "ENABLED", "DISABLED"],
    #           attribute_name: "TimeToLiveAttributeName"
    #         },
    #         sse_description: {
    #           status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"],
    #           sse_type: "AES256" # One of: ["AES256", "KMS"],
    #           kms_master_key_arn: "KMSMasterKeyArn",
    #           inaccessible_encryption_date_time: Time.now
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeBackupOutput]
    def describe_backup(params = {}, options = {})
      request = build_request(:describe_backup, params)
      request.send_request(options)
    end

    # <p>Checks the status of continuous backups and point in time recovery on the specified
    #             table. Continuous backups are <code>ENABLED</code> on all tables at table creation. If
    #             point in time recovery is enabled, <code>PointInTimeRecoveryStatus</code> will be set to
    #             ENABLED.</p>
    #          <p> After continuous backups and point in time recovery are enabled, you can restore to
    #             any point in time within <code>EarliestRestorableDateTime</code> and
    #                 <code>LatestRestorableDateTime</code>. </p>
    #          <p>
    #             <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time.
    #             You can restore your table to any point in time in the last 35 days. You can set the
    #             recovery period to any value between 1 and 35 days. </p>
    #          <p>You can call <code>DescribeContinuousBackups</code> at a maximum rate of 10 times per
    #             second.</p>
    # @param [Hash, Types::DescribeContinuousBackupsInput] params
    # @option params [String] :table_name
    #   <p>Name of the table for which the customer wants to check the continuous backups and
    #               point in time recovery settings.</p>
    #            <p>You can also provide the Amazon Resource Name (ARN) of the table in this parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #   }
    #   options = {}
    #   response = client.describe_continuous_backups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     continuous_backups_description: {
    #       continuous_backups_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       point_in_time_recovery_description: {
    #         point_in_time_recovery_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         recovery_period_in_days: 1,
    #         earliest_restorable_date_time: Time.now,
    #         latest_restorable_date_time: Time.now
    #       }
    #     }
    #   }
    # @return [Types::DescribeContinuousBackupsOutput]
    def describe_continuous_backups(params = {}, options = {})
      request = build_request(:describe_continuous_backups, params)
      request.send_request(options)
    end

    # <p>Returns information about contributor insights for a given table or global secondary
    #             index.</p>
    # @param [Hash, Types::DescribeContributorInsightsInput] params
    # @option params [String] :table_name
    #   <p>The name of the table to describe. You can also provide the Amazon Resource Name (ARN) of the table in
    #               this parameter.</p>
    # @option params [String] :index_name
    #   <p>The name of the global secondary index to describe, if applicable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     index_name: "IndexName"
    #   }
    #   options = {}
    #   response = client.describe_contributor_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_name: "TableName",
    #     index_name: "IndexName",
    #     contributor_insights_rule_list: ["ContributorInsightsRule"],
    #     contributor_insights_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"],
    #     last_update_date_time: Time.now,
    #     failure_exception: {
    #       exception_name: "ExceptionName",
    #       exception_description: "ExceptionDescription"
    #     },
    #     contributor_insights_mode: "ACCESSED_AND_THROTTLED_KEYS" # One of: ["ACCESSED_AND_THROTTLED_KEYS", "THROTTLED_KEYS"]
    #   }
    # @return [Types::DescribeContributorInsightsOutput]
    def describe_contributor_insights(params = {}, options = {})
      request = build_request(:describe_contributor_insights, params)
      request.send_request(options)
    end

    # <p>Returns the regional endpoint information. For more information on policy permissions,
    #             please see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/inter-network-traffic-privacy.html#inter-network-traffic-DescribeEndpoints">Internetwork traffic privacy</a>.</p>
    # @param [Hash, Types::DescribeEndpointsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoints: [ # required
    #       {
    #         address: "String", # required
    #         cache_period_in_minutes: 1, # required
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEndpointsResponse]
    def describe_endpoints(params = {}, options = {})
      request = build_request(:describe_endpoints, params)
      request.send_request(options)
    end

    # <p>Describes an existing table export.</p>
    # @param [Hash, Types::DescribeExportInput] params
    # @option params [String] :export_arn
    #   <p>The Amazon Resource Name (ARN) associated with the export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_arn: "ExportArn", # required
    #   }
    #   options = {}
    #   response = client.describe_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_description: {
    #       export_arn: "ExportArn",
    #       export_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       export_manifest: "ExportManifest",
    #       table_arn: "TableArn",
    #       table_id: "TableId",
    #       export_time: Time.now,
    #       client_token: "ClientToken",
    #       s3_bucket: "S3Bucket",
    #       s3_bucket_owner: "S3BucketOwner",
    #       s3_prefix: "S3Prefix",
    #       s3_sse_algorithm: "AES256" # One of: ["AES256", "KMS"],
    #       s3_sse_kms_key_id: "S3SseKmsKeyId",
    #       failure_code: "FailureCode",
    #       failure_message: "FailureMessage",
    #       export_format: "DYNAMODB_JSON" # One of: ["DYNAMODB_JSON", "ION"],
    #       billed_size_bytes: 1,
    #       item_count: 1,
    #       export_type: "FULL_EXPORT" # One of: ["FULL_EXPORT", "INCREMENTAL_EXPORT"],
    #       incremental_export_specification: {
    #         export_from_time: Time.now,
    #         export_to_time: Time.now,
    #         export_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "NEW_AND_OLD_IMAGES"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeExportOutput]
    def describe_export(params = {}, options = {})
      request = build_request(:describe_export, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified global table.</p>
    #          <important>
    #             <p>This documentation is for version 2017.11.29 (Legacy) of global tables, which should be avoided for new global tables. Customers should use <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html">Global Tables version 2019.11.21 (Current)</a> when possible, because it provides greater flexibility, higher efficiency, and consumes less write capacity than 2017.11.29 (Legacy).</p>
    #             <p>To determine which version you're using, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html">Determining the global table version you are using</a>. To update existing global tables from version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html">Upgrading global tables</a>.</p>
    #          </important>
    # @param [Hash, Types::DescribeGlobalTableInput] params
    # @option params [String] :global_table_name
    #   <p>The name of the global table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_table_name: "TableName", # required
    #   }
    #   options = {}
    #   response = client.describe_global_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_table_description: {
    #       replication_group: [
    #         {
    #           region_name: "RegionName",
    #           replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #           replica_status_description: "ReplicaStatusDescription",
    #           replica_status_percent_progress: "ReplicaStatusPercentProgress",
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName",
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1
    #               },
    #               warm_throughput: {
    #                 read_units_per_second: 1,
    #                 write_units_per_second: 1,
    #                 status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #               }
    #             }
    #           ],
    #           replica_inaccessible_date_time: Time.now,
    #           replica_table_class_summary: {
    #             table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #             last_update_date_time: Time.now
    #           }
    #         }
    #       ],
    #       global_table_arn: "GlobalTableArnString",
    #       creation_date_time: Time.now,
    #       global_table_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "UPDATING"],
    #       global_table_name: "TableName"
    #     }
    #   }
    # @return [Types::DescribeGlobalTableOutput]
    def describe_global_table(params = {}, options = {})
      request = build_request(:describe_global_table, params)
      request.send_request(options)
    end

    # <p>Describes Region-specific settings for a global table.</p>
    #          <important>
    #             <p>This documentation is for version 2017.11.29 (Legacy) of global tables, which should be avoided for new global tables. Customers should use <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html">Global Tables version 2019.11.21 (Current)</a> when possible, because it provides greater flexibility, higher efficiency, and consumes less write capacity than 2017.11.29 (Legacy).</p>
    #             <p>To determine which version you're using, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html">Determining the global table version you are using</a>. To update existing global tables from version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html">Upgrading global tables</a>.</p>
    #          </important>
    # @param [Hash, Types::DescribeGlobalTableSettingsInput] params
    # @option params [String] :global_table_name
    #   <p>The name of the global table to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_table_name: "TableName", # required
    #   }
    #   options = {}
    #   response = client.describe_global_table_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_table_name: "TableName",
    #     replica_settings: [
    #       {
    #         region_name: "RegionName", # required
    #         replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #         replica_billing_mode_summary: {
    #           billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #           last_update_to_pay_per_request_date_time: Time.now
    #         },
    #         replica_provisioned_read_capacity_units: 1,
    #         replica_provisioned_read_capacity_auto_scaling_settings: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "String",
    #           scaling_policies: [
    #             {
    #               policy_name: "AutoScalingPolicyName",
    #               target_tracking_scaling_policy_configuration: {
    #                 disable_scale_in: false,
    #                 scale_in_cooldown: 1,
    #                 scale_out_cooldown: 1,
    #                 target_value: 1.0, # required
    #               }
    #             }
    #           ]
    #         },
    #         replica_provisioned_write_capacity_units: 1,
    #         replica_provisioned_write_capacity_auto_scaling_settings: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "String",
    #           scaling_policies: [
    #             {
    #               policy_name: "AutoScalingPolicyName",
    #               target_tracking_scaling_policy_configuration: {
    #                 disable_scale_in: false,
    #                 scale_in_cooldown: 1,
    #                 scale_out_cooldown: 1,
    #                 target_value: 1.0, # required
    #               }
    #             }
    #           ]
    #         },
    #         replica_global_secondary_index_settings: [
    #           {
    #             index_name: "IndexName", # required
    #             index_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"],
    #             provisioned_read_capacity_units: 1,
    #             provisioned_read_capacity_auto_scaling_settings: {
    #               minimum_units: 1,
    #               maximum_units: 1,
    #               auto_scaling_disabled: false,
    #               auto_scaling_role_arn: "String",
    #               scaling_policies: [
    #                 {
    #                   policy_name: "AutoScalingPolicyName",
    #                   target_tracking_scaling_policy_configuration: {
    #                     disable_scale_in: false,
    #                     scale_in_cooldown: 1,
    #                     scale_out_cooldown: 1,
    #                     target_value: 1.0, # required
    #                   }
    #                 }
    #               ]
    #             },
    #             provisioned_write_capacity_units: 1,
    #             provisioned_write_capacity_auto_scaling_settings: {
    #               minimum_units: 1,
    #               maximum_units: 1,
    #               auto_scaling_disabled: false,
    #               auto_scaling_role_arn: "String",
    #               scaling_policies: [
    #                 {
    #                   policy_name: "AutoScalingPolicyName",
    #                   target_tracking_scaling_policy_configuration: {
    #                     disable_scale_in: false,
    #                     scale_in_cooldown: 1,
    #                     scale_out_cooldown: 1,
    #                     target_value: 1.0, # required
    #                   }
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         replica_table_class_summary: {
    #           table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #           last_update_date_time: Time.now
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::DescribeGlobalTableSettingsOutput]
    def describe_global_table_settings(params = {}, options = {})
      request = build_request(:describe_global_table_settings, params)
      request.send_request(options)
    end

    # <p> Represents the properties of the import. </p>
    # @param [Hash, Types::DescribeImportInput] params
    # @option params [String] :import_arn
    #   <p> The Amazon Resource Name (ARN) associated with the table you're importing to. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     import_arn: "ImportArn", # required
    #   }
    #   options = {}
    #   response = client.describe_import(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_table_description: { # required
    #       import_arn: "ImportArn",
    #       import_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "CANCELLING", "CANCELLED", "FAILED"],
    #       table_arn: "TableArn",
    #       table_id: "TableId",
    #       client_token: "ClientToken",
    #       s3_bucket_source: {
    #         s3_bucket_owner: "S3BucketOwner",
    #         s3_bucket: "S3Bucket", # required
    #         s3_key_prefix: "S3Prefix"
    #       },
    #       error_count: 1,
    #       cloud_watch_log_group_arn: "CloudWatchLogGroupArn",
    #       input_format: "DYNAMODB_JSON" # One of: ["DYNAMODB_JSON", "ION", "CSV"],
    #       input_format_options: {
    #         csv: {
    #           delimiter: "CsvDelimiter",
    #           header_list: ["CsvHeader"]
    #         }
    #       },
    #       input_compression_type: "GZIP" # One of: ["GZIP", "ZSTD", "NONE"],
    #       table_creation_parameters: {
    #         table_name: "TableName", # required
    #         attribute_definitions: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             attribute_type: "S" # One of: ["S", "N", "B"], # required
    #           }
    #         ],
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #           }
    #         ],
    #         billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #         on_demand_throughput: {
    #           max_read_request_units: 1,
    #           max_write_request_units: 1
    #         },
    #         sse_specification: {
    #           enabled: false,
    #           sse_type: "AES256" # One of: ["AES256", "KMS"],
    #           kms_master_key_id: "KMSMasterKeyId"
    #         },
    #         global_secondary_indexes: [
    #           {
    #             index_name: "IndexName", # required
    #             key_schema: [ # required
    #               {
    #                 attribute_name: "KeySchemaAttributeName", # required
    #                 key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #               }
    #             ],
    #             projection: { # required
    #               projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #               non_key_attributes: ["NonKeyAttributeName"]
    #             },
    #             provisioned_throughput: {
    #               read_capacity_units: 1, # required
    #               write_capacity_units: 1, # required
    #             },
    #             on_demand_throughput: {
    #               max_read_request_units: 1,
    #               max_write_request_units: 1
    #             },
    #             warm_throughput: {
    #               read_units_per_second: 1,
    #               write_units_per_second: 1
    #             }
    #           }
    #         ]
    #       },
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       processed_size_bytes: 1,
    #       processed_item_count: 1,
    #       imported_item_count: 1,
    #       failure_code: "FailureCode",
    #       failure_message: "FailureMessage"
    #     }
    #   }
    # @return [Types::DescribeImportOutput]
    def describe_import(params = {}, options = {})
      request = build_request(:describe_import, params)
      request.send_request(options)
    end

    # <p>Returns information about the status of Kinesis streaming.</p>
    # @param [Hash, Types::DescribeKinesisStreamingDestinationInput] params
    # @option params [String] :table_name
    #   <p>The name of the table being described. You can also provide the Amazon Resource Name (ARN) of the table
    #               in this parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #   }
    #   options = {}
    #   response = client.describe_kinesis_streaming_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_name: "TableName",
    #     kinesis_data_stream_destinations: [
    #       {
    #         stream_arn: "StreamArn",
    #         destination_status: "ENABLING" # One of: ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"],
    #         destination_status_description: "String",
    #         approximate_creation_date_time_precision: "MILLISECOND" # One of: ["MILLISECOND", "MICROSECOND"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeKinesisStreamingDestinationOutput]
    def describe_kinesis_streaming_destination(params = {}, options = {})
      request = build_request(:describe_kinesis_streaming_destination, params)
      request.send_request(options)
    end

    # <p>Returns the current provisioned-capacity quotas for your Amazon Web Services account in
    #             a Region, both for the Region as a whole and for any one DynamoDB table that you create
    #             there.</p>
    #          <p>When you establish an Amazon Web Services account, the account has initial quotas on
    #             the maximum read capacity units and write capacity units that you can provision across
    #             all of your DynamoDB tables in a given Region. Also, there are per-table
    #             quotas that apply when you create a table there. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                 Account, and Table Quotas</a> page in the <i>Amazon DynamoDB
    #                 Developer Guide</i>.</p>
    #          <p>Although you can increase these quotas by filing a case at <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support Center</a>, obtaining the
    #             increase is not instantaneous. The <code>DescribeLimits</code> action lets you write
    #             code to compare the capacity you are currently using to those quotas imposed by your
    #             account so that you have enough time to apply for an increase before you hit a
    #             quota.</p>
    #          <p>For example, you could use one of the Amazon Web Services SDKs to do the
    #             following:</p>
    #          <ol>
    #             <li>
    #                <p>Call <code>DescribeLimits</code> for a particular Region to obtain your
    #                     current account quotas on provisioned capacity there.</p>
    #             </li>
    #             <li>
    #                <p>Create a variable to hold the aggregate read capacity units provisioned for
    #                     all your tables in that Region, and one to hold the aggregate write capacity
    #                     units. Zero them both.</p>
    #             </li>
    #             <li>
    #                <p>Call <code>ListTables</code> to obtain a list of all your DynamoDB
    #                     tables.</p>
    #             </li>
    #             <li>
    #                <p>For each table name listed by <code>ListTables</code>, do the
    #                     following:</p>
    #                <ul>
    #                   <li>
    #                      <p>Call <code>DescribeTable</code> with the table name.</p>
    #                   </li>
    #                   <li>
    #                      <p>Use the data returned by <code>DescribeTable</code> to add the read
    #                             capacity units and write capacity units provisioned for the table itself
    #                             to your variables.</p>
    #                   </li>
    #                   <li>
    #                      <p>If the table has one or more global secondary indexes (GSIs), loop
    #                             over these GSIs and add their provisioned capacity values to your
    #                             variables as well.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Report the account quotas for that Region returned by
    #                         <code>DescribeLimits</code>, along with the total current provisioned
    #                     capacity levels you have calculated.</p>
    #             </li>
    #          </ol>
    #          <p>This will let you see whether you are getting close to your account-level
    #             quotas.</p>
    #          <p>The per-table quotas apply only when you are creating a new table. They restrict the
    #             sum of the provisioned capacity of the new table itself and all its global secondary
    #             indexes.</p>
    #          <p>For existing tables and their GSIs, DynamoDB doesn't let you increase provisioned
    #             capacity extremely rapidly, but the only quota that applies is that the aggregate
    #             provisioned capacity over all your tables and GSIs cannot exceed either of the
    #             per-account quotas.</p>
    #          <note>
    #             <p>
    #                <code>DescribeLimits</code> should only be called periodically. You can expect
    #                 throttling errors if you call it more than once in a minute.</p>
    #          </note>
    #          <p>The <code>DescribeLimits</code> Request element has no content.</p>
    # @param [Hash, Types::DescribeLimitsInput] params
    # @example To determine capacity limits per table and account, in the current AWS region
    #   # The following example returns the maximum read and write capacity units per table, and for the AWS account, in the current AWS region.
    #   params = {}
    #   options = {}
    #   response = client.describe_limits(params, options)
    #   response.to_h #=>
    #   {
    #     table_max_write_capacity_units: 10000,
    #     table_max_read_capacity_units: 10000,
    #     account_max_read_capacity_units: 20000,
    #     account_max_write_capacity_units: 20000
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_max_read_capacity_units: 1,
    #     account_max_write_capacity_units: 1,
    #     table_max_read_capacity_units: 1,
    #     table_max_write_capacity_units: 1
    #   }
    # @return [Types::DescribeLimitsOutput]
    def describe_limits(params = {}, options = {})
      request = build_request(:describe_limits, params)
      request.send_request(options)
    end

    # <p>Returns information about the table, including the current status of the table, when
    #             it was created, the primary key schema, and any indexes on the table.</p>
    #          <note>
    #             <p>If you issue a <code>DescribeTable</code> request immediately after a
    #                     <code>CreateTable</code> request, DynamoDB might return a
    #                     <code>ResourceNotFoundException</code>. This is because
    #                     <code>DescribeTable</code> uses an eventually consistent query, and the metadata
    #                 for your table might not be available at that moment. Wait for a few seconds, and
    #                 then try the <code>DescribeTable</code> request again.</p>
    #          </note>
    # @param [Hash, Types::DescribeTableInput] params
    # @option params [String] :table_name
    #   <p>The name of the table to describe. You can also provide the Amazon Resource Name (ARN) of the table in
    #               this parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #   }
    #   options = {}
    #   response = client.describe_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table: {
    #       attribute_definitions: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           attribute_type: "S" # One of: ["S", "N", "B"], # required
    #         }
    #       ],
    #       table_name: "TableName",
    #       key_schema: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #         }
    #       ],
    #       table_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #       creation_date_time: Time.now,
    #       provisioned_throughput: {
    #         last_increase_date_time: Time.now,
    #         last_decrease_date_time: Time.now,
    #         number_of_decreases_today: 1,
    #         read_capacity_units: 1,
    #         write_capacity_units: 1
    #       },
    #       table_size_bytes: 1,
    #       item_count: 1,
    #       table_arn: "String",
    #       table_id: "TableId",
    #       billing_mode_summary: {
    #         billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #         last_update_to_pay_per_request_date_time: Time.now
    #       },
    #       local_secondary_indexes: [
    #         {
    #           index_name: "IndexName",
    #           key_schema: [
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: {
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           index_size_bytes: 1,
    #           item_count: 1,
    #           index_arn: "String"
    #         }
    #       ],
    #       global_secondary_indexes: [
    #         {
    #           index_name: "IndexName",
    #           key_schema: [
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: {
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           index_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"],
    #           backfilling: false,
    #           provisioned_throughput: {
    #             last_increase_date_time: Time.now,
    #             last_decrease_date_time: Time.now,
    #             number_of_decreases_today: 1,
    #             read_capacity_units: 1,
    #             write_capacity_units: 1
    #           },
    #           index_size_bytes: 1,
    #           item_count: 1,
    #           index_arn: "String",
    #           on_demand_throughput: {
    #             max_read_request_units: 1,
    #             max_write_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #           }
    #         }
    #       ],
    #       stream_specification: {
    #         stream_enabled: false, # required
    #         stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #       },
    #       latest_stream_label: "String",
    #       latest_stream_arn: "StreamArn",
    #       global_table_version: "String",
    #       replicas: [
    #         {
    #           region_name: "RegionName",
    #           replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #           replica_status_description: "ReplicaStatusDescription",
    #           replica_status_percent_progress: "ReplicaStatusPercentProgress",
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName",
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1
    #               },
    #               warm_throughput: {
    #                 read_units_per_second: 1,
    #                 write_units_per_second: 1,
    #                 status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #               }
    #             }
    #           ],
    #           replica_inaccessible_date_time: Time.now,
    #           replica_table_class_summary: {
    #             table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #             last_update_date_time: Time.now
    #           }
    #         }
    #       ],
    #       global_table_witnesses: [
    #         {
    #           region_name: "RegionName",
    #           witness_status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE"]
    #         }
    #       ],
    #       restore_summary: {
    #         source_backup_arn: "BackupArn",
    #         source_table_arn: "TableArn",
    #         restore_date_time: Time.now, # required
    #         restore_in_progress: false, # required
    #       },
    #       sse_description: {
    #         status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"],
    #         sse_type: "AES256" # One of: ["AES256", "KMS"],
    #         kms_master_key_arn: "KMSMasterKeyArn",
    #         inaccessible_encryption_date_time: Time.now
    #       },
    #       archival_summary: {
    #         archival_date_time: Time.now,
    #         archival_reason: "ArchivalReason",
    #         archival_backup_arn: "BackupArn"
    #       },
    #       table_class_summary: {
    #         table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #         last_update_date_time: Time.now
    #       },
    #       deletion_protection_enabled: false,
    #       on_demand_throughput: {
    #         max_read_request_units: 1,
    #         max_write_request_units: 1
    #       },
    #       warm_throughput: {
    #         read_units_per_second: 1,
    #         write_units_per_second: 1,
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #       },
    #       multi_region_consistency: "EVENTUAL" # One of: ["EVENTUAL", "STRONG"]
    #     }
    #   }
    # @return [Types::DescribeTableOutput]
    def describe_table(params = {}, options = {})
      request = build_request(:describe_table, params)
      request.send_request(options)
    end

    # <p>Describes auto scaling settings across replicas of the global table at once.</p>
    # @param [Hash, Types::DescribeTableReplicaAutoScalingInput] params
    # @option params [String] :table_name
    #   <p>The name of the table. You can also provide the Amazon Resource Name (ARN) of the table in this
    #               parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #   }
    #   options = {}
    #   response = client.describe_table_replica_auto_scaling(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_auto_scaling_description: {
    #       table_name: "TableName",
    #       table_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #       replicas: [
    #         {
    #           region_name: "RegionName",
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName",
    #               index_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"],
    #               provisioned_read_capacity_auto_scaling_settings: {
    #                 minimum_units: 1,
    #                 maximum_units: 1,
    #                 auto_scaling_disabled: false,
    #                 auto_scaling_role_arn: "String",
    #                 scaling_policies: [
    #                   {
    #                     policy_name: "AutoScalingPolicyName",
    #                     target_tracking_scaling_policy_configuration: {
    #                       disable_scale_in: false,
    #                       scale_in_cooldown: 1,
    #                       scale_out_cooldown: 1,
    #                       target_value: 1.0, # required
    #                     }
    #                   }
    #                 ]
    #               },
    #               provisioned_write_capacity_auto_scaling_settings: {
    #                 minimum_units: 1,
    #                 maximum_units: 1,
    #                 auto_scaling_disabled: false,
    #                 auto_scaling_role_arn: "String",
    #                 scaling_policies: [
    #                   {
    #                     policy_name: "AutoScalingPolicyName",
    #                     target_tracking_scaling_policy_configuration: {
    #                       disable_scale_in: false,
    #                       scale_in_cooldown: 1,
    #                       scale_out_cooldown: 1,
    #                       target_value: 1.0, # required
    #                     }
    #                   }
    #                 ]
    #               }
    #             }
    #           ],
    #           replica_provisioned_read_capacity_auto_scaling_settings: {
    #             minimum_units: 1,
    #             maximum_units: 1,
    #             auto_scaling_disabled: false,
    #             auto_scaling_role_arn: "String",
    #             scaling_policies: [
    #               {
    #                 policy_name: "AutoScalingPolicyName",
    #                 target_tracking_scaling_policy_configuration: {
    #                   disable_scale_in: false,
    #                   scale_in_cooldown: 1,
    #                   scale_out_cooldown: 1,
    #                   target_value: 1.0, # required
    #                 }
    #               }
    #             ]
    #           },
    #           replica_provisioned_write_capacity_auto_scaling_settings: {
    #             minimum_units: 1,
    #             maximum_units: 1,
    #             auto_scaling_disabled: false,
    #             auto_scaling_role_arn: "String",
    #             scaling_policies: [
    #               {
    #                 policy_name: "AutoScalingPolicyName",
    #                 target_tracking_scaling_policy_configuration: {
    #                   disable_scale_in: false,
    #                   scale_in_cooldown: 1,
    #                   scale_out_cooldown: 1,
    #                   target_value: 1.0, # required
    #                 }
    #               }
    #             ]
    #           },
    #           replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeTableReplicaAutoScalingOutput]
    def describe_table_replica_auto_scaling(params = {}, options = {})
      request = build_request(:describe_table_replica_auto_scaling, params)
      request.send_request(options)
    end

    # <p>Gives a description of the Time to Live (TTL) status on the specified table. </p>
    # @param [Hash, Types::DescribeTimeToLiveInput] params
    # @option params [String] :table_name
    #   <p>The name of the table to be described. You can also provide the Amazon Resource Name (ARN) of the table
    #               in this parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #   }
    #   options = {}
    #   response = client.describe_time_to_live(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     time_to_live_description: {
    #       time_to_live_status: "ENABLING" # One of: ["ENABLING", "DISABLING", "ENABLED", "DISABLED"],
    #       attribute_name: "TimeToLiveAttributeName"
    #     }
    #   }
    # @return [Types::DescribeTimeToLiveOutput]
    def describe_time_to_live(params = {}, options = {})
      request = build_request(:describe_time_to_live, params)
      request.send_request(options)
    end

    # <p>Stops replication from the DynamoDB table to the Kinesis data stream. This
    #             is done without deleting either of the resources.</p>
    # @param [Hash, Types::DisableKinesisStreamingDestinationInput] params
    # @option params [String] :table_name
    #   <p>The name of the DynamoDB table. You can also provide the Amazon Resource Name (ARN) of the
    #               table in this parameter.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN for a Kinesis data stream.</p>
    # @option params [Types::EnableKinesisStreamingConfiguration] :enable_kinesis_streaming_configuration
    #   <p>The source for the Kinesis streaming information that is being enabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     stream_arn: "StreamArn", # required
    #     enable_kinesis_streaming_configuration: {
    #       approximate_creation_date_time_precision: "MILLISECOND" # One of: ["MILLISECOND", "MICROSECOND"]
    #     }
    #   }
    #   options = {}
    #   response = client.disable_kinesis_streaming_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_name: "TableName",
    #     stream_arn: "StreamArn",
    #     destination_status: "ENABLING" # One of: ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"],
    #     enable_kinesis_streaming_configuration: {
    #       approximate_creation_date_time_precision: "MILLISECOND" # One of: ["MILLISECOND", "MICROSECOND"]
    #     }
    #   }
    # @return [Types::DisableKinesisStreamingDestinationOutput]
    def disable_kinesis_streaming_destination(params = {}, options = {})
      request = build_request(:disable_kinesis_streaming_destination, params)
      request.send_request(options)
    end

    # <p>Starts table data replication to the specified Kinesis data stream at a timestamp
    #             chosen during the enable workflow. If this operation doesn't return results immediately,
    #             use DescribeKinesisStreamingDestination to check if streaming to the Kinesis data stream
    #             is ACTIVE.</p>
    # @param [Hash, Types::EnableKinesisStreamingDestinationInput] params
    # @option params [String] :table_name
    #   <p>The name of the DynamoDB table. You can also provide the Amazon Resource Name (ARN) of the
    #               table in this parameter.</p>
    # @option params [String] :stream_arn
    #   <p>The ARN for a Kinesis data stream.</p>
    # @option params [Types::EnableKinesisStreamingConfiguration] :enable_kinesis_streaming_configuration
    #   <p>The source for the Kinesis streaming information that is being enabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     stream_arn: "StreamArn", # required
    #     enable_kinesis_streaming_configuration: {
    #       approximate_creation_date_time_precision: "MILLISECOND" # One of: ["MILLISECOND", "MICROSECOND"]
    #     }
    #   }
    #   options = {}
    #   response = client.enable_kinesis_streaming_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_name: "TableName",
    #     stream_arn: "StreamArn",
    #     destination_status: "ENABLING" # One of: ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"],
    #     enable_kinesis_streaming_configuration: {
    #       approximate_creation_date_time_precision: "MILLISECOND" # One of: ["MILLISECOND", "MICROSECOND"]
    #     }
    #   }
    # @return [Types::EnableKinesisStreamingDestinationOutput]
    def enable_kinesis_streaming_destination(params = {}, options = {})
      request = build_request(:enable_kinesis_streaming_destination, params)
      request.send_request(options)
    end

    # <p>This operation allows you to perform reads and singleton writes on data stored in
    #             DynamoDB, using PartiQL.</p>
    #          <p>For PartiQL reads (<code>SELECT</code> statement), if the total number of processed
    #             items exceeds the maximum dataset size limit of 1 MB, the read stops and results are
    #             returned to the user as a <code>LastEvaluatedKey</code> value to continue the read in a
    #             subsequent operation. If the filter criteria in <code>WHERE</code> clause does not match
    #             any data, the read will return an empty result set.</p>
    #          <p>A single <code>SELECT</code> statement response can return up to the maximum number of
    #             items (if using the Limit parameter) or a maximum of 1 MB of data (and then apply any
    #             filtering to the results using <code>WHERE</code> clause). If
    #                 <code>LastEvaluatedKey</code> is present in the response, you need to paginate the
    #             result set. If <code>NextToken</code> is present, you need to paginate the result set
    #             and include <code>NextToken</code>.</p>
    # @param [Hash, Types::ExecuteStatementInput] params
    # @option params [String] :statement
    #   <p>The PartiQL statement representing the operation to run.</p>
    # @option params [Array<Types::AttributeValue>] :parameters
    #   <p>The parameters for the PartiQL statement, if any.</p>
    # @option params [Boolean] :consistent_read
    #   <p>The consistency of a read operation. If set to <code>true</code>, then a strongly
    #               consistent read is used; otherwise, an eventually consistent read is used.</p>
    # @option params [String] :next_token
    #   <p>Set this value to get remaining results, if <code>NextToken</code> was returned in the
    #               statement response.</p>
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to evaluate (not necessarily the number of matching
    #               items). If DynamoDB processes the number of items up to the limit while processing the
    #               results, it stops the operation and returns the matching values up to that point, along
    #               with a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation so you
    #               can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
    #               DynamoDB reaches this limit, it stops the operation and returns the matching values up
    #               to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
    #               operation to continue the operation. </p>
    # @option params [String] :return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for an
    #                   <code>ExecuteStatement</code> operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     statement: "PartiQLStatement", # required
    #     parameters: [{
    #       # One of:
    #       s: "StringAttributeValue",
    #       n: "NumberAttributeValue",
    #       b: "data",
    #       ss: ["StringAttributeValue"],
    #       ns: ["NumberAttributeValue"],
    #       bs: ["data"],
    #       m: {
    #         "AttributeName" => {
    #           # recursive AttributeValue
    #         }
    #       },
    #       l: [{
    #         # recursive AttributeValue
    #       }],
    #       null: false,
    #       bool: false
    #     }],
    #     consistent_read: false,
    #     next_token: "PartiQLNextToken",
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"],
    #     limit: 1,
    #     return_values_on_condition_check_failure: "ALL_OLD" # One of: ["ALL_OLD", "NONE"]
    #   }
    #   options = {}
    #   response = client.execute_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         "AttributeName" => {
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }
    #       }
    #     ],
    #     next_token: "PartiQLNextToken",
    #     consumed_capacity: {
    #       table_name: "TableArn",
    #       capacity_units: 1.0,
    #       read_capacity_units: 1.0,
    #       write_capacity_units: 1.0,
    #       table: {
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         capacity_units: 1.0
    #       },
    #       local_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       },
    #       global_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       }
    #     },
    #     last_evaluated_key: {
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     }
    #   }
    # @return [Types::ExecuteStatementOutput]
    def execute_statement(params = {}, options = {})
      request = build_request(:execute_statement, params)
      request.send_request(options)
    end

    # <p>This operation allows you to perform transactional reads or writes on data stored in
    #             DynamoDB, using PartiQL.</p>
    #          <note>
    #             <p>The entire transaction must consist of either read statements or write statements,
    #                 you cannot mix both in one transaction. The EXISTS function is an exception and can
    #                 be used to check the condition of specific attributes of the item in a similar
    #                 manner to <code>ConditionCheck</code> in the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/transaction-apis.html#transaction-apis-txwriteitems">TransactWriteItems</a> API.</p>
    #          </note>
    # @param [Hash, Types::ExecuteTransactionInput] params
    # @option params [Array<Types::ParameterizedStatement>] :transact_statements
    #   <p>The list of PartiQL statements representing the transaction to run.</p>
    # @option params [String] :client_request_token
    #   <p>Set this value to get remaining results, if <code>NextToken</code> was returned in the
    #               statement response.</p>
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactGetItems.html">TransactGetItems</a> and <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactWriteItems.html">TransactWriteItems</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transact_statements: [ # required
    #       {
    #         statement: "PartiQLStatement", # required
    #         parameters: [{
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }],
    #         return_values_on_condition_check_failure: "ALL_OLD" # One of: ["ALL_OLD", "NONE"]
    #       }
    #     ],
    #     client_request_token: "ClientRequestToken",
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"]
    #   }
    #   options = {}
    #   response = client.execute_transaction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     responses: [
    #       {
    #         item: {
    #           "AttributeName" => {
    #             # One of:
    #             s: "StringAttributeValue",
    #             n: "NumberAttributeValue",
    #             b: "data",
    #             ss: ["StringAttributeValue"],
    #             ns: ["NumberAttributeValue"],
    #             bs: ["data"],
    #             m: {
    #               "AttributeName" => {
    #                 # recursive AttributeValue
    #               }
    #             },
    #             l: [{
    #               # recursive AttributeValue
    #             }],
    #             null: false,
    #             bool: false
    #           }
    #         }
    #       }
    #     ],
    #     consumed_capacity: [
    #       {
    #         table_name: "TableArn",
    #         capacity_units: 1.0,
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         table: {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         },
    #         local_secondary_indexes: {
    #           "IndexName" => {
    #             read_capacity_units: 1.0,
    #             write_capacity_units: 1.0,
    #             capacity_units: 1.0
    #           }
    #         },
    #         global_secondary_indexes: {
    #           "IndexName" => {
    #             read_capacity_units: 1.0,
    #             write_capacity_units: 1.0,
    #             capacity_units: 1.0
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ExecuteTransactionOutput]
    def execute_transaction(params = {}, options = {})
      request = build_request(:execute_transaction, params)
      request.send_request(options)
    end

    # <p>Exports table data to an S3 bucket. The table must have point in time recovery
    #             enabled, and you can export data from any time within the point in time recovery
    #             window.</p>
    # @param [Hash, Types::ExportTableToPointInTimeInput] params
    # @option params [String] :table_arn
    #   <p>The Amazon Resource Name (ARN) associated with the table to export.</p>
    # @option params [Time] :export_time
    #   <p>Time in the past from which to export table data, counted in seconds from the start of
    #               the Unix epoch. The table export will be a snapshot of the table's state at this point
    #               in time.</p>
    # @option params [String] :client_token
    #   <p>Providing a <code>ClientToken</code> makes the call to
    #                   <code>ExportTableToPointInTimeInput</code> idempotent, meaning that multiple
    #               identical calls have the same effect as one single call.</p>
    #            <p>A client token is valid for 8 hours after the first request that uses it is completed.
    #               After 8 hours, any request with the same client token is treated as a new request. Do
    #               not resubmit the same request with the same client token for more than 8 hours, or the
    #               result might not be idempotent.</p>
    #            <p>If you submit a request with the same client token but a change in other parameters
    #               within the 8-hour idempotency window, DynamoDB returns an
    #                   <code>ImportConflictException</code>.</p>
    # @option params [String] :s3_bucket
    #   <p>The name of the Amazon S3 bucket to export the snapshot to.</p>
    # @option params [String] :s3_bucket_owner
    #   <p>The ID of the Amazon Web Services account that owns the bucket the export will be
    #               stored in.</p>
    #            <note>
    #               <p>S3BucketOwner is a required parameter when exporting to a S3 bucket in another
    #                   account.</p>
    #            </note>
    # @option params [String] :s3_prefix
    #   <p>The Amazon S3 bucket prefix to use as the file name and path of the exported
    #               snapshot.</p>
    # @option params [String] :s3_sse_algorithm
    #   <p>Type of encryption used on the bucket where export data will be stored. Valid values
    #               for <code>S3SseAlgorithm</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AES256</code> - server-side encryption with Amazon S3 managed
    #                       keys</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KMS</code> - server-side encryption with KMS managed
    #                       keys</p>
    #               </li>
    #            </ul>
    # @option params [String] :s3_sse_kms_key_id
    #   <p>The ID of the KMS managed key used to encrypt the S3 bucket where
    #               export data will be stored (if applicable).</p>
    # @option params [String] :export_format
    #   <p>The format for the exported data. Valid values for <code>ExportFormat</code> are
    #                   <code>DYNAMODB_JSON</code> or <code>ION</code>.</p>
    # @option params [String] :export_type
    #   <p>Choice of whether to execute as a full export or incremental export. Valid values are
    #               FULL_EXPORT or INCREMENTAL_EXPORT. The default value is FULL_EXPORT. If
    #               INCREMENTAL_EXPORT is provided, the IncrementalExportSpecification must also be
    #               used.</p>
    # @option params [Types::IncrementalExportSpecification] :incremental_export_specification
    #   <p>Optional object containing the parameters specific to an incremental export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_arn: "TableArn", # required
    #     export_time: Time.now,
    #     client_token: "ClientToken",
    #     s3_bucket: "S3Bucket", # required
    #     s3_bucket_owner: "S3BucketOwner",
    #     s3_prefix: "S3Prefix",
    #     s3_sse_algorithm: "AES256" # One of: ["AES256", "KMS"],
    #     s3_sse_kms_key_id: "S3SseKmsKeyId",
    #     export_format: "DYNAMODB_JSON" # One of: ["DYNAMODB_JSON", "ION"],
    #     export_type: "FULL_EXPORT" # One of: ["FULL_EXPORT", "INCREMENTAL_EXPORT"],
    #     incremental_export_specification: {
    #       export_from_time: Time.now,
    #       export_to_time: Time.now,
    #       export_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "NEW_AND_OLD_IMAGES"]
    #     }
    #   }
    #   options = {}
    #   response = client.export_table_to_point_in_time(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_description: {
    #       export_arn: "ExportArn",
    #       export_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       export_manifest: "ExportManifest",
    #       table_arn: "TableArn",
    #       table_id: "TableId",
    #       export_time: Time.now,
    #       client_token: "ClientToken",
    #       s3_bucket: "S3Bucket",
    #       s3_bucket_owner: "S3BucketOwner",
    #       s3_prefix: "S3Prefix",
    #       s3_sse_algorithm: "AES256" # One of: ["AES256", "KMS"],
    #       s3_sse_kms_key_id: "S3SseKmsKeyId",
    #       failure_code: "FailureCode",
    #       failure_message: "FailureMessage",
    #       export_format: "DYNAMODB_JSON" # One of: ["DYNAMODB_JSON", "ION"],
    #       billed_size_bytes: 1,
    #       item_count: 1,
    #       export_type: "FULL_EXPORT" # One of: ["FULL_EXPORT", "INCREMENTAL_EXPORT"],
    #       incremental_export_specification: {
    #         export_from_time: Time.now,
    #         export_to_time: Time.now,
    #         export_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "NEW_AND_OLD_IMAGES"]
    #       }
    #     }
    #   }
    # @return [Types::ExportTableToPointInTimeOutput]
    def export_table_to_point_in_time(params = {}, options = {})
      request = build_request(:export_table_to_point_in_time, params)
      request.send_request(options)
    end

    # <p>The <code>GetItem</code> operation returns a set of attributes for the item with the
    #             given primary key. If there is no matching item, <code>GetItem</code> does not return
    #             any data and there will be no <code>Item</code> element in the response.</p>
    #          <p>
    #             <code>GetItem</code> provides an eventually consistent read by default. If your
    #             application requires a strongly consistent read, set <code>ConsistentRead</code> to
    #                 <code>true</code>. Although a strongly consistent read might take more time than an
    #             eventually consistent read, it always returns the last updated value.</p>
    # @param [Hash, Types::GetItemInput] params
    # @option params [String] :table_name
    #   <p>The name of the table containing the requested item. You can also provide the
    #               Amazon Resource Name (ARN) of the table in this parameter.</p>
    # @option params [Hash<String, Types::AttributeValue>] :key
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, representing the
    #               primary key of the item to retrieve.</p>
    #            <p>For the primary key, you must provide all of the attributes. For example, with a
    #               simple primary key, you only need to provide a value for the partition key. For a
    #               composite primary key, you must provide values for both the partition key and the sort
    #               key.</p>
    # @option params [Array<String>] :attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    # @option params [Boolean] :consistent_read
    #   <p>Determines the read consistency model: If set to <code>true</code>, then the operation
    #               uses strongly consistent reads; otherwise, the operation uses eventually consistent
    #               reads.</p>
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    # @option params [String] :projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the table. These
    #               attributes can include scalars, sets, or elements of a JSON document. The attributes in
    #               the expression must be separated by commas.</p>
    #            <p>If no attribute names are specified, then all attributes are returned. If any of the
    #               requested attributes are not found, they do not appear in the result.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Hash<String, String>] :expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @example To read an item from a table
    #   # This example retrieves an item from the Music table. The table has a partition key and a sort key (Artist and SongTitle), so you must specify both of these attributes.
    #   params = {
    #     table_name: "Music",
    #     key: {
    #       "Artist" => {
    #     "S" => Acme Band
    #   },
    #       "SongTitle" => {
    #     "S" => Happy Day
    #   }
    #     }
    #   }
    #   options = {}
    #   response = client.get_item(params, options)
    #   response.to_h #=>
    #   {
    #     item: {
    #       "AlbumTitle" => {
    #     "S" => Songs About Life
    #   },
    #       "SongTitle" => {
    #     "S" => Happy Day
    #   },
    #       "Artist" => {
    #     "S" => Acme Band
    #   }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     key: { # required
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     attributes_to_get: ["AttributeName"],
    #     consistent_read: false,
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"],
    #     projection_expression: "ProjectionExpression",
    #     expression_attribute_names: {
    #       "ExpressionAttributeNameVariable" => "AttributeName"
    #     }
    #   }
    #   options = {}
    #   response = client.get_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     item: {
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     consumed_capacity: {
    #       table_name: "TableArn",
    #       capacity_units: 1.0,
    #       read_capacity_units: 1.0,
    #       write_capacity_units: 1.0,
    #       table: {
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         capacity_units: 1.0
    #       },
    #       local_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       },
    #       global_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetItemOutput]
    def get_item(params = {}, options = {})
      request = build_request(:get_item, params)
      request.send_request(options)
    end

    # <p>Returns the resource-based policy document attached to the resource, which can be a
    #             table or stream, in JSON format.</p>
    #          <p>
    #             <code>GetResourcePolicy</code> follows an <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html">
    #                <i>eventually consistent</i>
    #             </a> model. The following list
    #             describes the outcomes when you issue the <code>GetResourcePolicy</code> request
    #             immediately after issuing another request:</p>
    #          <ul>
    #             <li>
    #                <p>If you issue a <code>GetResourcePolicy</code> request immediately after a
    #                         <code>PutResourcePolicy</code> request, DynamoDB might return a
    #                         <code>PolicyNotFoundException</code>.</p>
    #             </li>
    #             <li>
    #                <p>If you issue a <code>GetResourcePolicy</code>request immediately after a
    #                         <code>DeleteResourcePolicy</code> request, DynamoDB might return
    #                     the policy that was present before the deletion request.</p>
    #             </li>
    #             <li>
    #                <p>If you issue a <code>GetResourcePolicy</code> request immediately after a
    #                         <code>CreateTable</code> request, which includes a resource-based policy,
    #                         DynamoDB might return a <code>ResourceNotFoundException</code> or
    #                     a <code>PolicyNotFoundException</code>.</p>
    #             </li>
    #          </ul>
    #          <p>Because <code>GetResourcePolicy</code> uses an <i>eventually
    #                 consistent</i> query, the metadata for your policy or table might not be
    #             available at that moment. Wait for a few seconds, and then retry the
    #                 <code>GetResourcePolicy</code> request.</p>
    #          <p>After a <code>GetResourcePolicy</code> request returns a policy created using the
    #                 <code>PutResourcePolicy</code> request, the policy will be applied in the
    #             authorization of requests to the resource. Because this process is eventually
    #             consistent, it will take some time to apply the policy to all requests to a resource.
    #             Policies that you attach while creating a table using the <code>CreateTable</code>
    #             request will always be applied to all requests for that table.</p>
    # @param [Hash, Types::GetResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the DynamoDB resource to which the policy is attached. The
    #               resources you can specify include tables and streams.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArnString", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "ResourcePolicy",
    #     revision_id: "PolicyRevisionId"
    #   }
    # @return [Types::GetResourcePolicyOutput]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p> Imports table data from an S3 bucket. </p>
    # @param [Hash, Types::ImportTableInput] params
    # @option params [String] :client_token
    #   <p>Providing a <code>ClientToken</code> makes the call to <code>ImportTableInput</code>
    #               idempotent, meaning that multiple identical calls have the same effect as one single
    #               call.</p>
    #            <p>A client token is valid for 8 hours after the first request that uses it is completed.
    #               After 8 hours, any request with the same client token is treated as a new request. Do
    #               not resubmit the same request with the same client token for more than 8 hours, or the
    #               result might not be idempotent.</p>
    #            <p>If you submit a request with the same client token but a change in other parameters
    #               within the 8-hour idempotency window, DynamoDB returns an
    #                   <code>IdempotentParameterMismatch</code> exception.</p>
    # @option params [Types::S3BucketSource] :s3_bucket_source
    #   <p> The S3 bucket that provides the source for the import. </p>
    # @option params [String] :input_format
    #   <p> The format of the source data. Valid values for <code>ImportFormat</code> are
    #                   <code>CSV</code>, <code>DYNAMODB_JSON</code> or <code>ION</code>. </p>
    # @option params [Types::InputFormatOptions] :input_format_options
    #   <p> Additional properties that specify how the input is formatted, </p>
    # @option params [String] :input_compression_type
    #   <p> Type of compression to be used on the input coming from the imported table. </p>
    # @option params [Types::TableCreationParameters] :table_creation_parameters
    #   <p>Parameters for the table to import the data into. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     s3_bucket_source: { # required
    #       s3_bucket_owner: "S3BucketOwner",
    #       s3_bucket: "S3Bucket", # required
    #       s3_key_prefix: "S3Prefix"
    #     },
    #     input_format: "DYNAMODB_JSON" # One of: ["DYNAMODB_JSON", "ION", "CSV"], # required
    #     input_format_options: {
    #       csv: {
    #         delimiter: "CsvDelimiter",
    #         header_list: ["CsvHeader"]
    #       }
    #     },
    #     input_compression_type: "GZIP" # One of: ["GZIP", "ZSTD", "NONE"],
    #     table_creation_parameters: { # required
    #       table_name: "TableName", # required
    #       attribute_definitions: [ # required
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           attribute_type: "S" # One of: ["S", "N", "B"], # required
    #         }
    #       ],
    #       key_schema: [ # required
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #         }
    #       ],
    #       billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #       provisioned_throughput: {
    #         read_capacity_units: 1, # required
    #         write_capacity_units: 1, # required
    #       },
    #       on_demand_throughput: {
    #         max_read_request_units: 1,
    #         max_write_request_units: 1
    #       },
    #       sse_specification: {
    #         enabled: false,
    #         sse_type: "AES256" # One of: ["AES256", "KMS"],
    #         kms_master_key_id: "KMSMasterKeyId"
    #       },
    #       global_secondary_indexes: [
    #         {
    #           index_name: "IndexName", # required
    #           key_schema: [ # required
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: { # required
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           provisioned_throughput: {
    #             read_capacity_units: 1, # required
    #             write_capacity_units: 1, # required
    #           },
    #           on_demand_throughput: {
    #             max_read_request_units: 1,
    #             max_write_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.import_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_table_description: { # required
    #       import_arn: "ImportArn",
    #       import_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "CANCELLING", "CANCELLED", "FAILED"],
    #       table_arn: "TableArn",
    #       table_id: "TableId",
    #       client_token: "ClientToken",
    #       s3_bucket_source: {
    #         s3_bucket_owner: "S3BucketOwner",
    #         s3_bucket: "S3Bucket", # required
    #         s3_key_prefix: "S3Prefix"
    #       },
    #       error_count: 1,
    #       cloud_watch_log_group_arn: "CloudWatchLogGroupArn",
    #       input_format: "DYNAMODB_JSON" # One of: ["DYNAMODB_JSON", "ION", "CSV"],
    #       input_format_options: {
    #         csv: {
    #           delimiter: "CsvDelimiter",
    #           header_list: ["CsvHeader"]
    #         }
    #       },
    #       input_compression_type: "GZIP" # One of: ["GZIP", "ZSTD", "NONE"],
    #       table_creation_parameters: {
    #         table_name: "TableName", # required
    #         attribute_definitions: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             attribute_type: "S" # One of: ["S", "N", "B"], # required
    #           }
    #         ],
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #           }
    #         ],
    #         billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #         on_demand_throughput: {
    #           max_read_request_units: 1,
    #           max_write_request_units: 1
    #         },
    #         sse_specification: {
    #           enabled: false,
    #           sse_type: "AES256" # One of: ["AES256", "KMS"],
    #           kms_master_key_id: "KMSMasterKeyId"
    #         },
    #         global_secondary_indexes: [
    #           {
    #             index_name: "IndexName", # required
    #             key_schema: [ # required
    #               {
    #                 attribute_name: "KeySchemaAttributeName", # required
    #                 key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #               }
    #             ],
    #             projection: { # required
    #               projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #               non_key_attributes: ["NonKeyAttributeName"]
    #             },
    #             provisioned_throughput: {
    #               read_capacity_units: 1, # required
    #               write_capacity_units: 1, # required
    #             },
    #             on_demand_throughput: {
    #               max_read_request_units: 1,
    #               max_write_request_units: 1
    #             },
    #             warm_throughput: {
    #               read_units_per_second: 1,
    #               write_units_per_second: 1
    #             }
    #           }
    #         ]
    #       },
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       processed_size_bytes: 1,
    #       processed_item_count: 1,
    #       imported_item_count: 1,
    #       failure_code: "FailureCode",
    #       failure_message: "FailureMessage"
    #     }
    #   }
    # @return [Types::ImportTableOutput]
    def import_table(params = {}, options = {})
      request = build_request(:import_table, params)
      request.send_request(options)
    end

    # <p>List DynamoDB backups that are associated with an Amazon Web Services account and
    #             weren't made with Amazon Web Services Backup. To list these backups for a given table,
    #             specify <code>TableName</code>. <code>ListBackups</code> returns a paginated list of
    #             results with at most 1 MB worth of items in a page. You can also specify a maximum
    #             number of entries to be returned in a page.</p>
    #          <p>In the request, start time is inclusive, but end time is exclusive. Note that these
    #             boundaries are for the time at which the original backup was requested.</p>
    #          <p>You can call <code>ListBackups</code> a maximum of five times per second.</p>
    #          <p>If you want to retrieve the complete list of backups made with Amazon Web Services
    #             Backup, use the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_ListBackupJobs.html">Amazon Web Services Backup
    #                 list API.</a>
    #          </p>
    # @param [Hash, Types::ListBackupsInput] params
    # @option params [String] :table_name
    #   <p>Lists the backups from the table specified in <code>TableName</code>. You can also
    #               provide the Amazon Resource Name (ARN) of the table in this parameter.</p>
    # @option params [Integer] :limit
    #   <p>Maximum number of backups to return at once.</p>
    # @option params [Time] :time_range_lower_bound
    #   <p>Only backups created after this time are listed. <code>TimeRangeLowerBound</code> is
    #               inclusive.</p>
    # @option params [Time] :time_range_upper_bound
    #   <p>Only backups created before this time are listed. <code>TimeRangeUpperBound</code> is
    #               exclusive. </p>
    # @option params [String] :exclusive_start_backup_arn
    #   <p>
    #               <code>LastEvaluatedBackupArn</code> is the Amazon Resource Name (ARN) of the backup last
    #               evaluated when the current page of results was returned, inclusive of the current page
    #               of results. This value may be specified as the <code>ExclusiveStartBackupArn</code> of a
    #               new <code>ListBackups</code> operation in order to fetch the next page of results.
    #           </p>
    # @option params [String] :backup_type
    #   <p>The backups from the table specified by <code>BackupType</code> are listed.</p>
    #            <p>Where <code>BackupType</code> can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>USER</code> - On-demand backup created by you. (The default setting if no
    #                       other backup types are specified.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYSTEM</code> - On-demand backup automatically created by DynamoDB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> - All types of on-demand backups (USER and SYSTEM).</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn",
    #     limit: 1,
    #     time_range_lower_bound: Time.now,
    #     time_range_upper_bound: Time.now,
    #     exclusive_start_backup_arn: "BackupArn",
    #     backup_type: "USER" # One of: ["USER", "SYSTEM", "AWS_BACKUP", "ALL"]
    #   }
    #   options = {}
    #   response = client.list_backups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup_summaries: [
    #       {
    #         table_name: "TableName",
    #         table_id: "TableId",
    #         table_arn: "TableArn",
    #         backup_arn: "BackupArn",
    #         backup_name: "BackupName",
    #         backup_creation_date_time: Time.now,
    #         backup_expiry_date_time: Time.now,
    #         backup_status: "CREATING" # One of: ["CREATING", "DELETED", "AVAILABLE"],
    #         backup_type: "USER" # One of: ["USER", "SYSTEM", "AWS_BACKUP"],
    #         backup_size_bytes: 1
    #       }
    #     ],
    #     last_evaluated_backup_arn: "BackupArn"
    #   }
    # @return [Types::ListBackupsOutput]
    def list_backups(params = {}, options = {})
      request = build_request(:list_backups, params)
      request.send_request(options)
    end

    # <p>Returns a list of ContributorInsightsSummary for a table and all its global secondary
    #             indexes.</p>
    # @param [Hash, Types::ListContributorInsightsInput] params
    # @option params [String] :table_name
    #   <p>The name of the table. You can also provide the Amazon Resource Name (ARN) of the table in this
    #               parameter.</p>
    # @option params [String] :next_token
    #   <p>A token to for the desired page, if there is one.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn",
    #     next_token: "NextTokenString",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_contributor_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contributor_insights_summaries: [
    #       {
    #         table_name: "TableName",
    #         index_name: "IndexName",
    #         contributor_insights_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"],
    #         contributor_insights_mode: "ACCESSED_AND_THROTTLED_KEYS" # One of: ["ACCESSED_AND_THROTTLED_KEYS", "THROTTLED_KEYS"]
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListContributorInsightsOutput]
    def list_contributor_insights(params = {}, options = {})
      request = build_request(:list_contributor_insights, params)
      request.send_request(options)
    end

    # <p>Lists completed exports within the past 90 days.</p>
    # @param [Hash, Types::ListExportsInput] params
    # @option params [String] :table_arn
    #   <p>The Amazon Resource Name (ARN) associated with the exported table.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return per page.</p>
    # @option params [String] :next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous
    #               call to <code>ListExports</code>. When provided in this manner, the API fetches the next
    #               page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_arn: "TableArn",
    #     max_results: 1,
    #     next_token: "ExportNextToken"
    #   }
    #   options = {}
    #   response = client.list_exports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_summaries: [
    #       {
    #         export_arn: "ExportArn",
    #         export_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"],
    #         export_type: "FULL_EXPORT" # One of: ["FULL_EXPORT", "INCREMENTAL_EXPORT"]
    #       }
    #     ],
    #     next_token: "ExportNextToken"
    #   }
    # @return [Types::ListExportsOutput]
    def list_exports(params = {}, options = {})
      request = build_request(:list_exports, params)
      request.send_request(options)
    end

    # <p>Lists all global tables that have a replica in the specified Region.</p>
    #          <important>
    #             <p>This documentation is for version 2017.11.29 (Legacy) of global tables, which should be avoided for new global tables. Customers should use <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html">Global Tables version 2019.11.21 (Current)</a> when possible, because it provides greater flexibility, higher efficiency, and consumes less write capacity than 2017.11.29 (Legacy).</p>
    #             <p>To determine which version you're using, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html">Determining the global table version you are using</a>. To update existing global tables from version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html">Upgrading global tables</a>.</p>
    #          </important>
    # @param [Hash, Types::ListGlobalTablesInput] params
    # @option params [String] :exclusive_start_global_table_name
    #   <p>The first global table name that this operation will evaluate.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of table names to return, if the parameter is not specified
    #               DynamoDB defaults to 100.</p>
    #            <p>If the number of global tables DynamoDB finds reaches this limit, it stops the
    #               operation and returns the table names collected up to that point, with a table name in
    #               the <code>LastEvaluatedGlobalTableName</code> to apply in a subsequent operation to the
    #                   <code>ExclusiveStartGlobalTableName</code> parameter.</p>
    # @option params [String] :region_name
    #   <p>Lists the global tables in a specific Region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     exclusive_start_global_table_name: "TableName",
    #     limit: 1,
    #     region_name: "RegionName"
    #   }
    #   options = {}
    #   response = client.list_global_tables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_tables: [
    #       {
    #         global_table_name: "TableName",
    #         replication_group: [
    #           {
    #             region_name: "RegionName"
    #           }
    #         ]
    #       }
    #     ],
    #     last_evaluated_global_table_name: "TableName"
    #   }
    # @return [Types::ListGlobalTablesOutput]
    def list_global_tables(params = {}, options = {})
      request = build_request(:list_global_tables, params)
      request.send_request(options)
    end

    # <p> Lists completed imports within the past 90 days. </p>
    # @param [Hash, Types::ListImportsInput] params
    # @option params [String] :table_arn
    #   <p> The Amazon Resource Name (ARN) associated with the table that was imported to.
    #           </p>
    # @option params [Integer] :page_size
    #   <p> The number of <code>ImportSummary </code>objects returned in a single page. </p>
    # @option params [String] :next_token
    #   <p> An optional string that, if supplied, must be copied from the output of a previous
    #               call to <code>ListImports</code>. When provided in this manner, the API fetches the next
    #               page of results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_arn: "TableArn",
    #     page_size: 1,
    #     next_token: "ImportNextToken"
    #   }
    #   options = {}
    #   response = client.list_imports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     import_summary_list: [
    #       {
    #         import_arn: "ImportArn",
    #         import_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "CANCELLING", "CANCELLED", "FAILED"],
    #         table_arn: "TableArn",
    #         s3_bucket_source: {
    #           s3_bucket_owner: "S3BucketOwner",
    #           s3_bucket: "S3Bucket", # required
    #           s3_key_prefix: "S3Prefix"
    #         },
    #         cloud_watch_log_group_arn: "CloudWatchLogGroupArn",
    #         input_format: "DYNAMODB_JSON" # One of: ["DYNAMODB_JSON", "ION", "CSV"],
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "ImportNextToken"
    #   }
    # @return [Types::ListImportsOutput]
    def list_imports(params = {}, options = {})
      request = build_request(:list_imports, params)
      request.send_request(options)
    end

    # <p>Returns an array of table names associated with the current account and endpoint. The
    #             output from <code>ListTables</code> is paginated, with each page returning a maximum of
    #             100 table names.</p>
    # @param [Hash, Types::ListTablesInput] params
    # @option params [String] :exclusive_start_table_name
    #   <p>The first table name that this operation will evaluate. Use the value that was
    #               returned for <code>LastEvaluatedTableName</code> in a previous operation, so that you
    #               can obtain the next page of results.</p>
    # @option params [Integer] :limit
    #   <p>A maximum number of table names to return. If this parameter is not specified, the
    #               limit is 100.</p>
    # @example To list tables
    #   # This example lists all of the tables associated with the current AWS account and endpoint.
    #   params = {}
    #   options = {}
    #   response = client.list_tables(params, options)
    #   response.to_h #=>
    #   {
    #     table_names: [
    #       "Forum",
    #       "ProductCatalog",
    #       "Reply",
    #       "Thread"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     exclusive_start_table_name: "TableName",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_tables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_names: ["TableName"],
    #     last_evaluated_table_name: "TableName"
    #   }
    # @return [Types::ListTablesOutput]
    def list_tables(params = {}, options = {})
      request = build_request(:list_tables, params)
      request.send_request(options)
    end

    # <p>List all tags on an Amazon DynamoDB resource. You can call ListTagsOfResource up to 10
    #             times per second, per account.</p>
    #          <p>For an overview on tagging DynamoDB resources, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a>
    #             in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    # @param [Hash, Types::ListTagsOfResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource
    #               Name (ARN).</p>
    # @option params [String] :next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous
    #               call to ListTagOfResource. When provided in this manner, this API fetches the next page
    #               of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArnString", # required
    #     next_token: "NextTokenString"
    #   }
    #   options = {}
    #   response = client.list_tags_of_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListTagsOfResourceOutput]
    def list_tags_of_resource(params = {}, options = {})
      request = build_request(:list_tags_of_resource, params)
      request.send_request(options)
    end

    # <p>Creates a new item, or replaces an old item with a new item. If an item that has the
    #             same primary key as the new item already exists in the specified table, the new item
    #             completely replaces the existing item. You can perform a conditional put operation (add
    #             a new item if one with the specified primary key doesn't exist), or replace an existing
    #             item if it has certain attribute values. You can return the item's attribute values in
    #             the same operation, using the <code>ReturnValues</code> parameter.</p>
    #          <p>When you add an item, the primary key attributes are the only required attributes. </p>
    #          <p>Empty String and Binary attribute values are allowed. Attribute values of type String
    #             and Binary must have a length greater than zero if the attribute is used as a key
    #             attribute for a table or index. Set type attributes cannot be empty. </p>
    #          <p>Invalid Requests with empty values will be rejected with a
    #                 <code>ValidationException</code> exception.</p>
    #          <note>
    #             <p>To prevent a new item from replacing an existing item, use a conditional
    #                 expression that contains the <code>attribute_not_exists</code> function with the
    #                 name of the attribute being used as the partition key for the table. Since every
    #                 record must contain that attribute, the <code>attribute_not_exists</code> function
    #                 will only succeed if no matching item exists.</p>
    #          </note>
    #          <p>For more information about <code>PutItem</code>, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithItems.html">Working with
    #                 Items</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    # @param [Hash, Types::PutItemInput] params
    # @option params [String] :table_name
    #   <p>The name of the table to contain the item. You can also provide the Amazon Resource Name (ARN) of the
    #               table in this parameter.</p>
    # @option params [Hash<String, Types::AttributeValue>] :item
    #   <p>A map of attribute name/value pairs, one for each attribute. Only the primary key
    #               attributes are required; you can optionally provide other attribute name-value pairs for
    #               the item.</p>
    #            <p>You must provide all of the attributes for the primary key. For example, with a simple
    #               primary key, you only need to provide a value for the partition key. For a composite
    #               primary key, you must provide both values for both the partition key and the sort
    #               key.</p>
    #            <p>If you specify any attributes that are part of an index key, then the data types for
    #               those attributes must match those of the schema in the table's attribute
    #               definition.</p>
    #            <p>Empty String and Binary attribute values are allowed. Attribute values of type String
    #               and Binary must have a length greater than zero if the attribute is used as a key
    #               attribute for a table or index.</p>
    #            <p>For more information about primary keys, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.PrimaryKey">Primary Key</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #            <p>Each element in the <code>Item</code> map is an <code>AttributeValue</code>
    #               object.</p>
    # @option params [Hash<String, Types::ExpectedAttributeValue>] :expected
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    # @option params [String] :return_values
    #   <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared
    #               before they were updated with the <code>PutItem</code> request. For
    #               <code>PutItem</code>, the valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
    #                       value is <code>NONE</code>, then nothing is returned. (This setting is the
    #                       default for <code>ReturnValues</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_OLD</code> - If <code>PutItem</code> overwrote an attribute name-value
    #                       pair, then the content of the old item is returned.</p>
    #               </li>
    #            </ul>
    #            <p>The values returned are strongly consistent.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #            <note>
    #               <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations;
    #                   however, <code>PutItem</code> does not recognize any values other than
    #                       <code>NONE</code> or <code>ALL_OLD</code>.</p>
    #            </note>
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    # @option params [String] :return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    # @option params [String] :conditional_operator
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [String] :condition_expression
    #   <p>A condition that must be satisfied in order for a conditional <code>PutItem</code>
    #               operation to succeed.</p>
    #            <p>An expression can contain any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
    #                           contains | begins_with | size</code>
    #                  </p>
    #                  <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Comparison operators: <code>= | <> |
    #               < | > | <= | >= |
    #               BETWEEN | IN </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p> Logical operators: <code>AND | OR | NOT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information on condition expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Hash<String, String>] :expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Hash<String, Types::AttributeValue>] :expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <i>ProductStatus</i> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [String] :return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for a <code>PutItem</code>
    #               operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    # @example To add an item to a table
    #   # This example adds a new item to the Music table.
    #   params = {
    #     table_name: "Music",
    #     item: {
    #       "AlbumTitle" => {
    #     "S" => Somewhat Famous
    #   },
    #       "SongTitle" => {
    #     "S" => Call Me Today
    #   },
    #       "Artist" => {
    #     "S" => No One You Know
    #   }
    #     },
    #     return_consumed_capacity: TOTAL
    #   }
    #   options = {}
    #   response = client.put_item(params, options)
    #   response.to_h #=>
    #   {
    #     consumed_capacity: {
    #       capacity_units: 1,
    #       table_name: "Music"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     item: { # required
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     expected: {
    #       "AttributeName" => {
    #         value: {
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         },
    #         exists: false,
    #         comparison_operator: "EQ" # One of: ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"],
    #         attribute_value_list: [{
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }]
    #       }
    #     },
    #     return_values: "NONE" # One of: ["NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW", "UPDATED_NEW"],
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"],
    #     return_item_collection_metrics: "SIZE" # One of: ["SIZE", "NONE"],
    #     conditional_operator: "AND" # One of: ["AND", "OR"],
    #     condition_expression: "ConditionExpression",
    #     expression_attribute_names: {
    #       "ExpressionAttributeNameVariable" => "AttributeName"
    #     },
    #     expression_attribute_values: {
    #       "ExpressionAttributeValueVariable" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     return_values_on_condition_check_failure: "ALL_OLD" # One of: ["ALL_OLD", "NONE"]
    #   }
    #   options = {}
    #   response = client.put_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: {
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     consumed_capacity: {
    #       table_name: "TableArn",
    #       capacity_units: 1.0,
    #       read_capacity_units: 1.0,
    #       write_capacity_units: 1.0,
    #       table: {
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         capacity_units: 1.0
    #       },
    #       local_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       },
    #       global_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       }
    #     },
    #     item_collection_metrics: {
    #       item_collection_key: {
    #         "AttributeName" => {
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }
    #       },
    #       size_estimate_range_gb: [1.0]
    #     }
    #   }
    # @return [Types::PutItemOutput]
    def put_item(params = {}, options = {})
      request = build_request(:put_item, params)
      request.send_request(options)
    end

    # <p>Attaches a resource-based policy document to the resource, which can be a table or
    #             stream. When you attach a resource-based policy using this API, the policy application
    #             is <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html">
    #                <i>eventually consistent</i>
    #             </a>.</p>
    #          <p>
    #             <code>PutResourcePolicy</code> is an idempotent operation; running it multiple times
    #             on the same resource using the same policy document will return the same revision ID. If
    #             you specify an <code>ExpectedRevisionId</code> that doesn't match the current policy's
    #                 <code>RevisionId</code>, the <code>PolicyNotFoundException</code> will be
    #             returned.</p>
    #          <note>
    #             <p>
    #                <code>PutResourcePolicy</code> is an asynchronous operation. If you issue a
    #                     <code>GetResourcePolicy</code> request immediately after a
    #                     <code>PutResourcePolicy</code> request, DynamoDB might return your
    #                 previous policy, if there was one, or return the
    #                     <code>PolicyNotFoundException</code>. This is because
    #                     <code>GetResourcePolicy</code> uses an eventually consistent query, and the
    #                 metadata for your policy or table might not be available at that moment. Wait for a
    #                 few seconds, and then try the <code>GetResourcePolicy</code> request again.</p>
    #          </note>
    # @param [Hash, Types::PutResourcePolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the DynamoDB resource to which the policy will be attached.
    #               The resources you can specify include tables and streams.</p>
    #            <p>You can control index permissions using the base table's policy. To specify the same permission level for your table and its indexes, you can provide both the table and index Amazon Resource Name (ARN)s in the <code>Resource</code> field of a given <code>Statement</code> in your policy document. Alternatively, to specify different permissions for your table, indexes, or both, you can define multiple <code>Statement</code> fields in your policy document.</p>
    # @option params [String] :policy
    #   <p>An Amazon Web Services resource-based policy document in JSON format.</p>
    #            <ul>
    #               <li>
    #                  <p>The maximum size supported for a resource-based policy document is 20 KB.
    #                           DynamoDB counts whitespaces when calculating the size of a policy
    #                       against this limit.</p>
    #               </li>
    #               <li>
    #                  <p>Within a resource-based policy, if the action for a DynamoDB
    #                       service-linked role (SLR) to replicate data for a global table is denied, adding
    #                       or deleting a replica will fail with an error.</p>
    #               </li>
    #            </ul>
    #            <p>For a full list of all considerations that apply while attaching a resource-based
    #               policy, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-considerations.html">Resource-based
    #                   policy considerations</a>.</p>
    # @option params [String] :expected_revision_id
    #   <p>A string value that you can use to conditionally update your policy. You can provide
    #               the revision ID of your existing policy to make mutating requests against that
    #               policy.</p>
    #            <note>
    #               <p>When you provide an expected revision ID, if the revision ID of the existing
    #                   policy on the resource doesn't match or if there's no policy attached to the
    #                   resource, your request will be rejected with a
    #                   <code>PolicyNotFoundException</code>.</p>
    #            </note>
    #            <p>To conditionally attach a policy when no policy exists for the resource, specify
    #                   <code>NO_POLICY</code> for the revision ID.</p>
    # @option params [Boolean] :confirm_remove_self_resource_access
    #   <p>Set this parameter to <code>true</code> to confirm that you want to remove your
    #               permissions to change the policy of this resource in the future.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArnString", # required
    #     policy: "ResourcePolicy", # required
    #     expected_revision_id: "PolicyRevisionId",
    #     confirm_remove_self_resource_access: false
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revision_id: "PolicyRevisionId"
    #   }
    # @return [Types::PutResourcePolicyOutput]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>You must provide the name of the partition key attribute and a single value for that
    #             attribute. <code>Query</code> returns all items with that partition key value.
    #             Optionally, you can provide a sort key attribute and use a comparison operator to refine
    #             the search results.</p>
    #          <p>Use the <code>KeyConditionExpression</code> parameter to provide a specific value for
    #             the partition key. The <code>Query</code> operation will return all of the items from
    #             the table or index with that partition key value. You can optionally narrow the scope of
    #             the <code>Query</code> operation by specifying a sort key value and a comparison
    #             operator in <code>KeyConditionExpression</code>. To further refine the
    #                 <code>Query</code> results, you can optionally provide a
    #                 <code>FilterExpression</code>. A <code>FilterExpression</code> determines which
    #             items within the results should be returned to you. All of the other results are
    #             discarded. </p>
    #          <p> A <code>Query</code> operation always returns a result set. If no matching items are
    #             found, the result set will be empty. Queries that do not return results consume the
    #             minimum number of read capacity units for that type of read operation. </p>
    #          <note>
    #             <p> DynamoDB calculates the number of read capacity units consumed based on item
    #                 size, not on the amount of data that is returned to an application. The number of
    #                 capacity units consumed will be the same whether you request all of the attributes
    #                 (the default behavior) or just some of them (using a projection expression). The
    #                 number will also be the same whether or not you use a <code>FilterExpression</code>.
    #             </p>
    #          </note>
    #          <p>
    #             <code>Query</code> results are always sorted by the sort key value. If the data type of
    #             the sort key is Number, the results are returned in numeric order; otherwise, the
    #             results are returned in order of UTF-8 bytes. By default, the sort order is ascending.
    #             To reverse the order, set the <code>ScanIndexForward</code> parameter to false. </p>
    #          <p> A single <code>Query</code> operation will read up to the maximum number of items set
    #             (if using the <code>Limit</code> parameter) or a maximum of 1 MB of data and then apply
    #             any filtering to the results using <code>FilterExpression</code>. If
    #                 <code>LastEvaluatedKey</code> is present in the response, you will need to paginate
    #             the result set. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html#Query.Pagination">Paginating
    #                 the Results</a> in the <i>Amazon DynamoDB Developer Guide</i>. </p>
    #          <p>
    #             <code>FilterExpression</code> is applied after a <code>Query</code> finishes, but before
    #             the results are returned. A <code>FilterExpression</code> cannot contain partition key
    #             or sort key attributes. You need to specify those attributes in the
    #                 <code>KeyConditionExpression</code>. </p>
    #          <note>
    #             <p> A <code>Query</code> operation can return an empty result set and a
    #                     <code>LastEvaluatedKey</code> if all the items read for the page of results are
    #                 filtered out. </p>
    #          </note>
    #          <p>You can query a table, a local secondary index, or a global secondary index. For a
    #             query on a table or on a local secondary index, you can set the
    #                 <code>ConsistentRead</code> parameter to <code>true</code> and obtain a strongly
    #             consistent result. Global secondary indexes support eventually consistent reads only, so
    #             do not specify <code>ConsistentRead</code> when querying a global secondary
    #             index.</p>
    # @param [Hash, Types::QueryInput] params
    # @option params [String] :table_name
    #   <p>The name of the table containing the requested items. You can also provide the
    #               Amazon Resource Name (ARN) of the table in this parameter.</p>
    # @option params [String] :index_name
    #   <p>The name of an index to query. This index can be any local secondary index or global
    #               secondary index on the table. Note that if you use the <code>IndexName</code> parameter,
    #               you must also provide <code>TableName.</code>
    #            </p>
    # @option params [String] :select
    #   <p>The attributes to be returned in the result. You can retrieve all item attributes,
    #               specific item attributes, the count of matching items, or in the case of an index, some
    #               or all of the attributes projected into the index.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the
    #                       specified table or index. If you query a local secondary index, then for each
    #                       matching item in the index, DynamoDB fetches the entire item from the parent
    #                       table. If the index is configured to project all item attributes, then all of
    #                       the data can be obtained from the local secondary index, and no fetching is
    #                       required.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index.
    #                       Retrieves all attributes that have been projected into the index. If the index
    #                       is configured to project all attributes, this return value is equivalent to
    #                       specifying <code>ALL_ATTRIBUTES</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COUNT</code> - Returns the number of matching items, rather than the
    #                       matching items themselves. Note that this uses the same quantity of read
    #                       capacity units as getting the items, and is subject to the same item size
    #                       calculations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in
    #                           <code>ProjectionExpression</code>. This return value is equivalent to
    #                       specifying <code>ProjectionExpression</code> without specifying any value for
    #                           <code>Select</code>.</p>
    #                  <p>If you query or scan a local secondary index and request only attributes that
    #                       are projected into that index, the operation will read only the index and not
    #                       the table. If any of the requested attributes are not projected into the local
    #                       secondary index, DynamoDB fetches each of these attributes from the parent
    #                       table. This extra fetching incurs additional throughput cost and latency.</p>
    #                  <p>If you query or scan a global secondary index, you can only request attributes
    #                       that are projected into the index. Global secondary index queries cannot fetch
    #                       attributes from the parent table.</p>
    #               </li>
    #            </ul>
    #            <p>If neither <code>Select</code> nor <code>ProjectionExpression</code> are specified,
    #               DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and
    #                   <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both
    #                   <code>Select</code> and <code>ProjectionExpression</code> together in a single
    #               request, unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>.
    #               (This usage is equivalent to specifying <code>ProjectionExpression</code> without any
    #               value for <code>Select</code>.)</p>
    #            <note>
    #               <p>If you use the <code>ProjectionExpression</code> parameter, then the value for
    #                       <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other
    #                   value for <code>Select</code> will return an error.</p>
    #            </note>
    # @option params [Array<String>] :attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to evaluate (not necessarily the number of matching
    #               items). If DynamoDB processes the number of items up to the limit while processing the
    #               results, it stops the operation and returns the matching values up to that point, and a
    #               key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can
    #               pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
    #               DynamoDB reaches this limit, it stops the operation and returns the matching values up
    #               to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
    #               operation to continue the operation. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Query and Scan</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    # @option params [Boolean] :consistent_read
    #   <p>Determines the read consistency model: If set to <code>true</code>, then the operation
    #               uses strongly consistent reads; otherwise, the operation uses eventually consistent
    #               reads.</p>
    #            <p>Strongly consistent reads are not supported on global secondary indexes. If you query
    #               a global secondary index with <code>ConsistentRead</code> set to <code>true</code>, you
    #               will receive a <code>ValidationException</code>.</p>
    # @option params [Hash<String, Types::Condition>] :key_conditions
    #   <p>This is a legacy parameter. Use <code>KeyConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html">KeyConditions</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    # @option params [Hash<String, Types::Condition>] :query_filter
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html">QueryFilter</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    # @option params [String] :conditional_operator
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Boolean] :scan_index_forward
    #   <p>Specifies the order for index traversal: If <code>true</code> (default), the traversal
    #               is performed in ascending order; if <code>false</code>, the traversal is performed in
    #               descending order. </p>
    #            <p>Items with the same partition key value are stored in sorted order by sort key. If the
    #               sort key data type is Number, the results are stored in numeric order. For type String,
    #               the results are stored in order of UTF-8 bytes. For type Binary, DynamoDB treats each
    #               byte of the binary data as unsigned.</p>
    #            <p>If <code>ScanIndexForward</code> is <code>true</code>, DynamoDB returns the results in
    #               the order in which they are stored (by sort key value). This is the default behavior. If
    #                   <code>ScanIndexForward</code> is <code>false</code>, DynamoDB reads the results in
    #               reverse order by sort key value, and then returns the results to the client.</p>
    # @option params [Hash<String, Types::AttributeValue>] :exclusive_start_key
    #   <p>The primary key of the first item that this operation will evaluate. Use the value
    #               that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p>
    #            <p>The data type for <code>ExclusiveStartKey</code> must be String, Number, or Binary. No
    #               set data types are allowed.</p>
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    # @option params [String] :projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the table. These
    #               attributes can include scalars, sets, or elements of a JSON document. The attributes in
    #               the expression must be separated by commas.</p>
    #            <p>If no attribute names are specified, then all attributes will be returned. If any of
    #               the requested attributes are not found, they will not appear in the result.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [String] :filter_expression
    #   <p>A string that contains conditions that DynamoDB applies after the <code>Query</code>
    #               operation, but before the data is returned to you. Items that do not satisfy the
    #                   <code>FilterExpression</code> criteria are not returned.</p>
    #            <p>A <code>FilterExpression</code> does not allow key attributes. You cannot define a
    #               filter expression based on a partition key or a sort key.</p>
    #            <note>
    #               <p>A <code>FilterExpression</code> is applied after the items have already been read;
    #                   the process of filtering does not consume any additional read capacity units.</p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.FilterExpression.html">Filter
    #                   Expressions</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    # @option params [String] :key_condition_expression
    #   <p>The condition that specifies the key values for items to be retrieved by the
    #                   <code>Query</code> action.</p>
    #            <p>The condition must perform an equality test on a single partition key value.</p>
    #            <p>The condition can optionally perform one of several comparison tests on a single sort
    #               key value. This allows <code>Query</code> to retrieve one item with a given partition
    #               key value and sort key value, or several items that have the same partition key value
    #               but different sort key values.</p>
    #            <p>The partition key equality test is required, and must be specified in the following
    #               format:</p>
    #            <p>
    #               <code>partitionKeyName</code>
    #               <i>=</i>
    #               <code>:partitionkeyval</code>
    #            </p>
    #            <p>If you also want to provide a condition for the sort key, it must be combined using
    #                   <code>AND</code> with the condition for the sort key. Following is an example, using
    #               the <b>=</b> comparison operator for the sort key:</p>
    #            <p>
    #               <code>partitionKeyName</code>
    #               <code>=</code>
    #               <code>:partitionkeyval</code>
    #               <code>AND</code>
    #               <code>sortKeyName</code>
    #               <code>=</code>
    #               <code>:sortkeyval</code>
    #            </p>
    #            <p>Valid comparisons for the sort key condition are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code>=</code>
    #                     <code>:sortkeyval</code> - true if the sort key value is equal to
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code><</code>
    #                     <code>:sortkeyval</code> - true if the sort key value is less than
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code><=</code>
    #                     <code>:sortkeyval</code> - true if the sort key value is less than or equal to
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code>></code>
    #                     <code>:sortkeyval</code> - true if the sort key value is greater than
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code>>= </code>
    #                     <code>:sortkeyval</code> - true if the sort key value is greater than or equal
    #                       to <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code>BETWEEN</code>
    #                     <code>:sortkeyval1</code>
    #                     <code>AND</code>
    #                     <code>:sortkeyval2</code> - true if the sort key value is greater than or equal
    #                       to <code>:sortkeyval1</code>, and less than or equal to
    #                           <code>:sortkeyval2</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>begins_with (</code>
    #                     <code>sortKeyName</code>, <code>:sortkeyval</code>
    #                     <code>)</code> - true if the sort key value begins with a particular operand.
    #                       (You cannot use this function with a sort key that is of type Number.) Note that
    #                       the function name <code>begins_with</code> is case-sensitive.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <code>ExpressionAttributeValues</code> parameter to replace tokens such as
    #                   <code>:partitionval</code> and <code>:sortval</code> with actual values at
    #               runtime.</p>
    #            <p>You can optionally use the <code>ExpressionAttributeNames</code> parameter to replace
    #               the names of the partition key and sort key with placeholder tokens. This option might
    #               be necessary if an attribute name conflicts with a DynamoDB reserved word. For example,
    #               the following <code>KeyConditionExpression</code> parameter causes an error because
    #                   <i>Size</i> is a reserved word:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Size = :myval</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To work around this, define a placeholder (such a <code>#S</code>) to represent the
    #               attribute name <i>Size</i>. <code>KeyConditionExpression</code> then is as
    #               follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#S = :myval</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For a list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a>
    #               in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #            <p>For more information on <code>ExpressionAttributeNames</code> and
    #                   <code>ExpressionAttributeValues</code>, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html">Using
    #                   Placeholders for Attribute Names and Values</a> in the <i>Amazon DynamoDB
    #                   Developer Guide</i>.</p>
    # @option params [Hash<String, String>] :expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Hash<String, Types::AttributeValue>] :expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <i>ProductStatus</i> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @example To query an item
    #   # This example queries items in the Music table. The table has a partition key and sort key (Artist and SongTitle), but this query only specifies the partition key value. It returns song titles by the artist named "No One You Know".
    #   params = {
    #     table_name: "Music",
    #     projection_expression: "SongTitle",
    #     key_condition_expression: "Artist = :v1",
    #     expression_attribute_values: {
    #       ":v1" => {
    #     "S" => No One You Know
    #   }
    #     }
    #   }
    #   options = {}
    #   response = client.query(params, options)
    #   response.to_h #=>
    #   {
    #     count: 2,
    #     items: [
    #       {
    #         "SongTitle" => {
    #     "S" => Call Me Today
    #   }
    #       }
    #     ],
    #     scanned_count: 2,
    #     consumed_capacity: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     index_name: "IndexName",
    #     select: "ALL_ATTRIBUTES" # One of: ["ALL_ATTRIBUTES", "ALL_PROJECTED_ATTRIBUTES", "SPECIFIC_ATTRIBUTES", "COUNT"],
    #     attributes_to_get: ["AttributeName"],
    #     limit: 1,
    #     consistent_read: false,
    #     key_conditions: {
    #       "AttributeName" => {
    #         attribute_value_list: [{
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }],
    #         comparison_operator: "EQ" # One of: ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"], # required
    #       }
    #     },
    #     query_filter: {
    #       "AttributeName" => {
    #         attribute_value_list: [{
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }],
    #         comparison_operator: "EQ" # One of: ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"], # required
    #       }
    #     },
    #     conditional_operator: "AND" # One of: ["AND", "OR"],
    #     scan_index_forward: false,
    #     exclusive_start_key: {
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"],
    #     projection_expression: "ProjectionExpression",
    #     filter_expression: "ConditionExpression",
    #     key_condition_expression: "KeyExpression",
    #     expression_attribute_names: {
    #       "ExpressionAttributeNameVariable" => "AttributeName"
    #     },
    #     expression_attribute_values: {
    #       "ExpressionAttributeValueVariable" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         "AttributeName" => {
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }
    #       }
    #     ],
    #     count: 1,
    #     scanned_count: 1,
    #     last_evaluated_key: {
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     consumed_capacity: {
    #       table_name: "TableArn",
    #       capacity_units: 1.0,
    #       read_capacity_units: 1.0,
    #       write_capacity_units: 1.0,
    #       table: {
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         capacity_units: 1.0
    #       },
    #       local_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       },
    #       global_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       }
    #     }
    #   }
    # @return [Types::QueryOutput]
    def query(params = {}, options = {})
      request = build_request(:query, params)
      request.send_request(options)
    end

    # <p>Creates a new table from an existing backup. Any number of users can execute up to 50
    #             concurrent restores (any type of restore) in a given account. </p>
    #          <p>You can call <code>RestoreTableFromBackup</code> at a maximum rate of 10 times per
    #             second.</p>
    #          <p>You must manually set up the following on the restored table:</p>
    #          <ul>
    #             <li>
    #                <p>Auto scaling policies</p>
    #             </li>
    #             <li>
    #                <p>IAM policies</p>
    #             </li>
    #             <li>
    #                <p>Amazon CloudWatch metrics and alarms</p>
    #             </li>
    #             <li>
    #                <p>Tags</p>
    #             </li>
    #             <li>
    #                <p>Stream settings</p>
    #             </li>
    #             <li>
    #                <p>Time to Live (TTL) settings</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::RestoreTableFromBackupInput] params
    # @option params [String] :target_table_name
    #   <p>The name of the new table to which the backup must be restored.</p>
    # @option params [String] :backup_arn
    #   <p>The Amazon Resource Name (ARN) associated with the backup.</p>
    # @option params [String] :billing_mode_override
    #   <p>The billing mode of the restored table.</p>
    # @option params [Array<Types::GlobalSecondaryIndex>] :global_secondary_index_override
    #   <p>List of global secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    # @option params [Array<Types::LocalSecondaryIndex>] :local_secondary_index_override
    #   <p>List of local secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    # @option params [Types::ProvisionedThroughput] :provisioned_throughput_override
    #   <p>Provisioned throughput settings for the restored table.</p>
    # @option params [Types::OnDemandThroughput] :on_demand_throughput_override
    #   <p>Sets the maximum number of read and write units for the specified on-demand table. If
    #               you use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                   <code>MaxWriteRequestUnits</code>, or both.</p>
    # @option params [Types::SSESpecification] :sse_specification_override
    #   <p>The new server-side encryption settings for the restored table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_table_name: "TableName", # required
    #     backup_arn: "BackupArn", # required
    #     billing_mode_override: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #     global_secondary_index_override: [
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #           }
    #         ],
    #         projection: { # required
    #           projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #           non_key_attributes: ["NonKeyAttributeName"]
    #         },
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #         on_demand_throughput: {
    #           max_read_request_units: 1,
    #           max_write_request_units: 1
    #         },
    #         warm_throughput: {
    #           read_units_per_second: 1,
    #           write_units_per_second: 1
    #         }
    #       }
    #     ],
    #     local_secondary_index_override: [
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #           }
    #         ],
    #         projection: { # required
    #           projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #           non_key_attributes: ["NonKeyAttributeName"]
    #         }
    #       }
    #     ],
    #     provisioned_throughput_override: {
    #       read_capacity_units: 1, # required
    #       write_capacity_units: 1, # required
    #     },
    #     on_demand_throughput_override: {
    #       max_read_request_units: 1,
    #       max_write_request_units: 1
    #     },
    #     sse_specification_override: {
    #       enabled: false,
    #       sse_type: "AES256" # One of: ["AES256", "KMS"],
    #       kms_master_key_id: "KMSMasterKeyId"
    #     }
    #   }
    #   options = {}
    #   response = client.restore_table_from_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_description: {
    #       attribute_definitions: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           attribute_type: "S" # One of: ["S", "N", "B"], # required
    #         }
    #       ],
    #       table_name: "TableName",
    #       key_schema: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #         }
    #       ],
    #       table_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #       creation_date_time: Time.now,
    #       provisioned_throughput: {
    #         last_increase_date_time: Time.now,
    #         last_decrease_date_time: Time.now,
    #         number_of_decreases_today: 1,
    #         read_capacity_units: 1,
    #         write_capacity_units: 1
    #       },
    #       table_size_bytes: 1,
    #       item_count: 1,
    #       table_arn: "String",
    #       table_id: "TableId",
    #       billing_mode_summary: {
    #         billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #         last_update_to_pay_per_request_date_time: Time.now
    #       },
    #       local_secondary_indexes: [
    #         {
    #           index_name: "IndexName",
    #           key_schema: [
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: {
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           index_size_bytes: 1,
    #           item_count: 1,
    #           index_arn: "String"
    #         }
    #       ],
    #       global_secondary_indexes: [
    #         {
    #           index_name: "IndexName",
    #           key_schema: [
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: {
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           index_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"],
    #           backfilling: false,
    #           provisioned_throughput: {
    #             last_increase_date_time: Time.now,
    #             last_decrease_date_time: Time.now,
    #             number_of_decreases_today: 1,
    #             read_capacity_units: 1,
    #             write_capacity_units: 1
    #           },
    #           index_size_bytes: 1,
    #           item_count: 1,
    #           index_arn: "String",
    #           on_demand_throughput: {
    #             max_read_request_units: 1,
    #             max_write_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #           }
    #         }
    #       ],
    #       stream_specification: {
    #         stream_enabled: false, # required
    #         stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #       },
    #       latest_stream_label: "String",
    #       latest_stream_arn: "StreamArn",
    #       global_table_version: "String",
    #       replicas: [
    #         {
    #           region_name: "RegionName",
    #           replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #           replica_status_description: "ReplicaStatusDescription",
    #           replica_status_percent_progress: "ReplicaStatusPercentProgress",
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName",
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1
    #               },
    #               warm_throughput: {
    #                 read_units_per_second: 1,
    #                 write_units_per_second: 1,
    #                 status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #               }
    #             }
    #           ],
    #           replica_inaccessible_date_time: Time.now,
    #           replica_table_class_summary: {
    #             table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #             last_update_date_time: Time.now
    #           }
    #         }
    #       ],
    #       global_table_witnesses: [
    #         {
    #           region_name: "RegionName",
    #           witness_status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE"]
    #         }
    #       ],
    #       restore_summary: {
    #         source_backup_arn: "BackupArn",
    #         source_table_arn: "TableArn",
    #         restore_date_time: Time.now, # required
    #         restore_in_progress: false, # required
    #       },
    #       sse_description: {
    #         status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"],
    #         sse_type: "AES256" # One of: ["AES256", "KMS"],
    #         kms_master_key_arn: "KMSMasterKeyArn",
    #         inaccessible_encryption_date_time: Time.now
    #       },
    #       archival_summary: {
    #         archival_date_time: Time.now,
    #         archival_reason: "ArchivalReason",
    #         archival_backup_arn: "BackupArn"
    #       },
    #       table_class_summary: {
    #         table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #         last_update_date_time: Time.now
    #       },
    #       deletion_protection_enabled: false,
    #       on_demand_throughput: {
    #         max_read_request_units: 1,
    #         max_write_request_units: 1
    #       },
    #       warm_throughput: {
    #         read_units_per_second: 1,
    #         write_units_per_second: 1,
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #       },
    #       multi_region_consistency: "EVENTUAL" # One of: ["EVENTUAL", "STRONG"]
    #     }
    #   }
    # @return [Types::RestoreTableFromBackupOutput]
    def restore_table_from_backup(params = {}, options = {})
      request = build_request(:restore_table_from_backup, params)
      request.send_request(options)
    end

    # <p>Restores the specified table to the specified point in time within
    #                 <code>EarliestRestorableDateTime</code> and <code>LatestRestorableDateTime</code>.
    #             You can restore your table to any point in time in the last 35 days. You can set the
    #             recovery period to any value between 1 and 35 days. Any number of users can execute up
    #             to 50 concurrent restores (any type of restore) in a given account. </p>
    #          <p>When you restore using point in time recovery, DynamoDB restores your table data to
    #             the state based on the selected date and time (day:hour:minute:second) to a new table. </p>
    #          <p>Along with data, the following are also included on the new restored table using point
    #             in time recovery: </p>
    #          <ul>
    #             <li>
    #                <p>Global secondary indexes (GSIs)</p>
    #             </li>
    #             <li>
    #                <p>Local secondary indexes (LSIs)</p>
    #             </li>
    #             <li>
    #                <p>Provisioned read and write capacity</p>
    #             </li>
    #             <li>
    #                <p>Encryption settings</p>
    #                <important>
    #                   <p> All these settings come from the current settings of the source table at
    #                         the time of restore. </p>
    #                </important>
    #             </li>
    #          </ul>
    #          <p>You must manually set up the following on the restored table:</p>
    #          <ul>
    #             <li>
    #                <p>Auto scaling policies</p>
    #             </li>
    #             <li>
    #                <p>IAM policies</p>
    #             </li>
    #             <li>
    #                <p>Amazon CloudWatch metrics and alarms</p>
    #             </li>
    #             <li>
    #                <p>Tags</p>
    #             </li>
    #             <li>
    #                <p>Stream settings</p>
    #             </li>
    #             <li>
    #                <p>Time to Live (TTL) settings</p>
    #             </li>
    #             <li>
    #                <p>Point in time recovery settings</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::RestoreTableToPointInTimeInput] params
    # @option params [String] :source_table_arn
    #   <p>The DynamoDB table that will be restored. This value is an Amazon Resource Name
    #               (ARN).</p>
    # @option params [String] :source_table_name
    #   <p>Name of the source table that is being restored.</p>
    # @option params [String] :target_table_name
    #   <p>The name of the new table to which it must be restored to.</p>
    # @option params [Boolean] :use_latest_restorable_time
    #   <p>Restore the table to the latest possible time. <code>LatestRestorableDateTime</code>
    #               is typically 5 minutes before the current time. </p>
    # @option params [Time] :restore_date_time
    #   <p>Time in the past to restore the table to.</p>
    # @option params [String] :billing_mode_override
    #   <p>The billing mode of the restored table.</p>
    # @option params [Array<Types::GlobalSecondaryIndex>] :global_secondary_index_override
    #   <p>List of global secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    # @option params [Array<Types::LocalSecondaryIndex>] :local_secondary_index_override
    #   <p>List of local secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    # @option params [Types::ProvisionedThroughput] :provisioned_throughput_override
    #   <p>Provisioned throughput settings for the restored table.</p>
    # @option params [Types::OnDemandThroughput] :on_demand_throughput_override
    #   <p>Sets the maximum number of read and write units for the specified on-demand table. If
    #               you use this parameter, you must specify <code>MaxReadRequestUnits</code>,
    #                   <code>MaxWriteRequestUnits</code>, or both.</p>
    # @option params [Types::SSESpecification] :sse_specification_override
    #   <p>The new server-side encryption settings for the restored table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_table_arn: "TableArn",
    #     source_table_name: "TableName",
    #     target_table_name: "TableName", # required
    #     use_latest_restorable_time: false,
    #     restore_date_time: Time.now,
    #     billing_mode_override: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #     global_secondary_index_override: [
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #           }
    #         ],
    #         projection: { # required
    #           projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #           non_key_attributes: ["NonKeyAttributeName"]
    #         },
    #         provisioned_throughput: {
    #           read_capacity_units: 1, # required
    #           write_capacity_units: 1, # required
    #         },
    #         on_demand_throughput: {
    #           max_read_request_units: 1,
    #           max_write_request_units: 1
    #         },
    #         warm_throughput: {
    #           read_units_per_second: 1,
    #           write_units_per_second: 1
    #         }
    #       }
    #     ],
    #     local_secondary_index_override: [
    #       {
    #         index_name: "IndexName", # required
    #         key_schema: [ # required
    #           {
    #             attribute_name: "KeySchemaAttributeName", # required
    #             key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #           }
    #         ],
    #         projection: { # required
    #           projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #           non_key_attributes: ["NonKeyAttributeName"]
    #         }
    #       }
    #     ],
    #     provisioned_throughput_override: {
    #       read_capacity_units: 1, # required
    #       write_capacity_units: 1, # required
    #     },
    #     on_demand_throughput_override: {
    #       max_read_request_units: 1,
    #       max_write_request_units: 1
    #     },
    #     sse_specification_override: {
    #       enabled: false,
    #       sse_type: "AES256" # One of: ["AES256", "KMS"],
    #       kms_master_key_id: "KMSMasterKeyId"
    #     }
    #   }
    #   options = {}
    #   response = client.restore_table_to_point_in_time(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_description: {
    #       attribute_definitions: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           attribute_type: "S" # One of: ["S", "N", "B"], # required
    #         }
    #       ],
    #       table_name: "TableName",
    #       key_schema: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #         }
    #       ],
    #       table_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #       creation_date_time: Time.now,
    #       provisioned_throughput: {
    #         last_increase_date_time: Time.now,
    #         last_decrease_date_time: Time.now,
    #         number_of_decreases_today: 1,
    #         read_capacity_units: 1,
    #         write_capacity_units: 1
    #       },
    #       table_size_bytes: 1,
    #       item_count: 1,
    #       table_arn: "String",
    #       table_id: "TableId",
    #       billing_mode_summary: {
    #         billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #         last_update_to_pay_per_request_date_time: Time.now
    #       },
    #       local_secondary_indexes: [
    #         {
    #           index_name: "IndexName",
    #           key_schema: [
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: {
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           index_size_bytes: 1,
    #           item_count: 1,
    #           index_arn: "String"
    #         }
    #       ],
    #       global_secondary_indexes: [
    #         {
    #           index_name: "IndexName",
    #           key_schema: [
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: {
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           index_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"],
    #           backfilling: false,
    #           provisioned_throughput: {
    #             last_increase_date_time: Time.now,
    #             last_decrease_date_time: Time.now,
    #             number_of_decreases_today: 1,
    #             read_capacity_units: 1,
    #             write_capacity_units: 1
    #           },
    #           index_size_bytes: 1,
    #           item_count: 1,
    #           index_arn: "String",
    #           on_demand_throughput: {
    #             max_read_request_units: 1,
    #             max_write_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #           }
    #         }
    #       ],
    #       stream_specification: {
    #         stream_enabled: false, # required
    #         stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #       },
    #       latest_stream_label: "String",
    #       latest_stream_arn: "StreamArn",
    #       global_table_version: "String",
    #       replicas: [
    #         {
    #           region_name: "RegionName",
    #           replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #           replica_status_description: "ReplicaStatusDescription",
    #           replica_status_percent_progress: "ReplicaStatusPercentProgress",
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName",
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1
    #               },
    #               warm_throughput: {
    #                 read_units_per_second: 1,
    #                 write_units_per_second: 1,
    #                 status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #               }
    #             }
    #           ],
    #           replica_inaccessible_date_time: Time.now,
    #           replica_table_class_summary: {
    #             table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #             last_update_date_time: Time.now
    #           }
    #         }
    #       ],
    #       global_table_witnesses: [
    #         {
    #           region_name: "RegionName",
    #           witness_status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE"]
    #         }
    #       ],
    #       restore_summary: {
    #         source_backup_arn: "BackupArn",
    #         source_table_arn: "TableArn",
    #         restore_date_time: Time.now, # required
    #         restore_in_progress: false, # required
    #       },
    #       sse_description: {
    #         status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"],
    #         sse_type: "AES256" # One of: ["AES256", "KMS"],
    #         kms_master_key_arn: "KMSMasterKeyArn",
    #         inaccessible_encryption_date_time: Time.now
    #       },
    #       archival_summary: {
    #         archival_date_time: Time.now,
    #         archival_reason: "ArchivalReason",
    #         archival_backup_arn: "BackupArn"
    #       },
    #       table_class_summary: {
    #         table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #         last_update_date_time: Time.now
    #       },
    #       deletion_protection_enabled: false,
    #       on_demand_throughput: {
    #         max_read_request_units: 1,
    #         max_write_request_units: 1
    #       },
    #       warm_throughput: {
    #         read_units_per_second: 1,
    #         write_units_per_second: 1,
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #       },
    #       multi_region_consistency: "EVENTUAL" # One of: ["EVENTUAL", "STRONG"]
    #     }
    #   }
    # @return [Types::RestoreTableToPointInTimeOutput]
    def restore_table_to_point_in_time(params = {}, options = {})
      request = build_request(:restore_table_to_point_in_time, params)
      request.send_request(options)
    end

    # <p>The <code>Scan</code> operation returns one or more items and item attributes by
    #             accessing every item in a table or a secondary index. To have DynamoDB return fewer
    #             items, you can provide a <code>FilterExpression</code> operation.</p>
    #          <p>If the total size of scanned items exceeds the maximum dataset size limit of 1 MB, the
    #             scan completes and results are returned to the user. The <code>LastEvaluatedKey</code>
    #             value is also returned and the requestor can use the <code>LastEvaluatedKey</code> to
    #             continue the scan in a subsequent operation. Each scan response also includes number of
    #             items that were scanned (ScannedCount) as part of the request. If using a
    #                 <code>FilterExpression</code>, a scan result can result in no items meeting the
    #             criteria and the <code>Count</code> will result in zero. If you did not use a
    #                 <code>FilterExpression</code> in the scan request, then <code>Count</code> is the
    #             same as <code>ScannedCount</code>.</p>
    #          <note>
    #             <p>
    #                <code>Count</code> and <code>ScannedCount</code> only return the count of items
    #                 specific to a single scan request and, unless the table is less than 1MB, do not
    #                 represent the total number of items in the table. </p>
    #          </note>
    #          <p>A single <code>Scan</code> operation first reads up to the maximum number of items set
    #             (if using the <code>Limit</code> parameter) or a maximum of 1 MB of data and then
    #             applies any filtering to the results if a <code>FilterExpression</code> is provided. If
    #                 <code>LastEvaluatedKey</code> is present in the response, pagination is required to
    #             complete the full table scan. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.Pagination">Paginating the
    #                 Results</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #          <p>
    #             <code>Scan</code> operations proceed sequentially; however, for faster performance on
    #             a large table or secondary index, applications can request a parallel <code>Scan</code>
    #             operation by providing the <code>Segment</code> and <code>TotalSegments</code>
    #             parameters. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.ParallelScan">Parallel
    #                 Scan</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #          <p>By default, a <code>Scan</code> uses eventually consistent reads when accessing the
    #             items in a table. Therefore, the results from an eventually consistent <code>Scan</code>
    #             may not include the latest item changes at the time the scan iterates through each item
    #             in the table. If you require a strongly consistent read of each item as the scan
    #             iterates through the items in the table, you can set the <code>ConsistentRead</code>
    #             parameter to true. Strong consistency only relates to the consistency of the read at the
    #             item level.</p>
    #          <note>
    #             <p> DynamoDB does not provide snapshot isolation for a scan operation when the
    #                     <code>ConsistentRead</code> parameter is set to true. Thus, a DynamoDB scan
    #                 operation does not guarantee that all reads in a scan see a consistent snapshot of
    #                 the table when the scan operation was requested. </p>
    #          </note>
    # @param [Hash, Types::ScanInput] params
    # @option params [String] :table_name
    #   <p>The name of the table containing the requested items or if you provide
    #                   <code>IndexName</code>, the name of the table to which that index belongs.</p>
    #            <p>You can also provide the Amazon Resource Name (ARN) of the table in this parameter.</p>
    # @option params [String] :index_name
    #   <p>The name of a secondary index to scan. This index can be any local secondary index or
    #               global secondary index. Note that if you use the <code>IndexName</code> parameter, you
    #               must also provide <code>TableName</code>.</p>
    # @option params [Array<String>] :attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of items to evaluate (not necessarily the number of matching
    #               items). If DynamoDB processes the number of items up to the limit while processing the
    #               results, it stops the operation and returns the matching values up to that point, and a
    #               key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can
    #               pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
    #               DynamoDB reaches this limit, it stops the operation and returns the matching values up
    #               to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
    #               operation to continue the operation. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Working with Queries</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [String] :select
    #   <p>The attributes to be returned in the result. You can retrieve all item attributes,
    #               specific item attributes, the count of matching items, or in the case of an index, some
    #               or all of the attributes projected into the index.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the
    #                       specified table or index. If you query a local secondary index, then for each
    #                       matching item in the index, DynamoDB fetches the entire item from the parent
    #                       table. If the index is configured to project all item attributes, then all of
    #                       the data can be obtained from the local secondary index, and no fetching is
    #                       required.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index.
    #                       Retrieves all attributes that have been projected into the index. If the index
    #                       is configured to project all attributes, this return value is equivalent to
    #                       specifying <code>ALL_ATTRIBUTES</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COUNT</code> - Returns the number of matching items, rather than the
    #                       matching items themselves. Note that this uses the same quantity of read
    #                       capacity units as getting the items, and is subject to the same item size
    #                       calculations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in
    #                           <code>ProjectionExpression</code>. This return value is equivalent to
    #                       specifying <code>ProjectionExpression</code> without specifying any value for
    #                           <code>Select</code>.</p>
    #                  <p>If you query or scan a local secondary index and request only attributes that
    #                       are projected into that index, the operation reads only the index and not the
    #                       table. If any of the requested attributes are not projected into the local
    #                       secondary index, DynamoDB fetches each of these attributes from the parent
    #                       table. This extra fetching incurs additional throughput cost and latency.</p>
    #                  <p>If you query or scan a global secondary index, you can only request attributes
    #                       that are projected into the index. Global secondary index queries cannot fetch
    #                       attributes from the parent table.</p>
    #               </li>
    #            </ul>
    #            <p>If neither <code>Select</code> nor <code>ProjectionExpression</code> are specified,
    #               DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and
    #                   <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both
    #                   <code>Select</code> and <code>ProjectionExpression</code> together in a single
    #               request, unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>.
    #               (This usage is equivalent to specifying <code>ProjectionExpression</code> without any
    #               value for <code>Select</code>.)</p>
    #            <note>
    #               <p>If you use the <code>ProjectionExpression</code> parameter, then the value for
    #                       <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other
    #                   value for <code>Select</code> will return an error.</p>
    #            </note>
    # @option params [Hash<String, Types::Condition>] :scan_filter
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html">ScanFilter</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    # @option params [String] :conditional_operator
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Hash<String, Types::AttributeValue>] :exclusive_start_key
    #   <p>The primary key of the first item that this operation will evaluate. Use the value
    #               that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p>
    #            <p>The data type for <code>ExclusiveStartKey</code> must be String, Number or Binary. No
    #               set data types are allowed.</p>
    #            <p>In a parallel scan, a <code>Scan</code> request that includes
    #                   <code>ExclusiveStartKey</code> must specify the same segment whose previous
    #                   <code>Scan</code> returned the corresponding value of
    #               <code>LastEvaluatedKey</code>.</p>
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :total_segments
    #   <p>For a parallel <code>Scan</code> request, <code>TotalSegments</code> represents the
    #               total number of segments into which the <code>Scan</code> operation will be divided. The
    #               value of <code>TotalSegments</code> corresponds to the number of application workers
    #               that will perform the parallel scan. For example, if you want to use four application
    #               threads to scan a table or an index, specify a <code>TotalSegments</code> value of
    #               4.</p>
    #            <p>The value for <code>TotalSegments</code> must be greater than or equal to 1, and less
    #               than or equal to 1000000. If you specify a <code>TotalSegments</code> value of 1, the
    #                   <code>Scan</code> operation will be sequential rather than parallel.</p>
    #            <p>If you specify <code>TotalSegments</code>, you must also specify
    #               <code>Segment</code>.</p>
    # @option params [Integer] :segment
    #   <p>For a parallel <code>Scan</code> request, <code>Segment</code> identifies an
    #               individual segment to be scanned by an application worker.</p>
    #            <p>Segment IDs are zero-based, so the first segment is always 0. For example, if you want
    #               to use four application threads to scan a table or an index, then the first thread
    #               specifies a <code>Segment</code> value of 0, the second thread specifies 1, and so
    #               on.</p>
    #            <p>The value of <code>LastEvaluatedKey</code> returned from a parallel <code>Scan</code>
    #               request must be used as <code>ExclusiveStartKey</code> with the same segment ID in a
    #               subsequent <code>Scan</code> operation.</p>
    #            <p>The value for <code>Segment</code> must be greater than or equal to 0, and less than
    #               the value provided for <code>TotalSegments</code>.</p>
    #            <p>If you provide <code>Segment</code>, you must also provide
    #               <code>TotalSegments</code>.</p>
    # @option params [String] :projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the specified table
    #               or index. These attributes can include scalars, sets, or elements of a JSON document.
    #               The attributes in the expression must be separated by commas.</p>
    #            <p>If no attribute names are specified, then all attributes will be returned. If any of
    #               the requested attributes are not found, they will not appear in the result.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [String] :filter_expression
    #   <p>A string that contains conditions that DynamoDB applies after the <code>Scan</code>
    #               operation, but before the data is returned to you. Items that do not satisfy the
    #                   <code>FilterExpression</code> criteria are not returned.</p>
    #            <note>
    #               <p>A <code>FilterExpression</code> is applied after the items have already been read;
    #                   the process of filtering does not consume any additional read capacity units.</p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.FilterExpression">Filter
    #                   Expressions</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    # @option params [Hash<String, String>] :expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Hash<String, Types::AttributeValue>] :expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <code>ProductStatus</code> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Boolean] :consistent_read
    #   <p>A Boolean value that determines the read consistency model during the scan:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>ConsistentRead</code> is <code>false</code>, then the data returned
    #                       from <code>Scan</code> might not contain the results from other recently
    #                       completed write operations (<code>PutItem</code>, <code>UpdateItem</code>, or
    #                           <code>DeleteItem</code>).</p>
    #               </li>
    #               <li>
    #                  <p>If <code>ConsistentRead</code> is <code>true</code>, then all of the write
    #                       operations that completed before the <code>Scan</code> began are guaranteed to
    #                       be contained in the <code>Scan</code> response.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting for <code>ConsistentRead</code> is <code>false</code>.</p>
    #            <p>The <code>ConsistentRead</code> parameter is not supported on global secondary
    #               indexes. If you scan a global secondary index with <code>ConsistentRead</code> set to
    #               true, you will receive a <code>ValidationException</code>.</p>
    # @example To scan a table
    #   # This example scans the entire Music table, and then narrows the results to songs by the artist "No One You Know". For each item, only the album title and song title are returned.
    #   params = {
    #     table_name: "Music",
    #     filter_expression: "Artist = :a",
    #     projection_expression: "#ST, #AT",
    #     expression_attribute_names: {
    #       "#ST" => "SongTitle",
    #       "#AT" => "AlbumTitle"
    #     },
    #     expression_attribute_values: {
    #       ":a" => {
    #     "S" => No One You Know
    #   }
    #     }
    #   }
    #   options = {}
    #   response = client.scan(params, options)
    #   response.to_h #=>
    #   {
    #     count: 2,
    #     items: [
    #       {
    #         "SongTitle" => {
    #     "S" => Call Me Today
    #   },
    #         "AlbumTitle" => {
    #     "S" => Somewhat Famous
    #   }
    #       },
    #       {
    #         "SongTitle" => {
    #     "S" => Scared of My Shadow
    #   },
    #         "AlbumTitle" => {
    #     "S" => Blue Sky Blues
    #   }
    #       }
    #     ],
    #     scanned_count: 3,
    #     consumed_capacity: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     index_name: "IndexName",
    #     attributes_to_get: ["AttributeName"],
    #     limit: 1,
    #     select: "ALL_ATTRIBUTES" # One of: ["ALL_ATTRIBUTES", "ALL_PROJECTED_ATTRIBUTES", "SPECIFIC_ATTRIBUTES", "COUNT"],
    #     scan_filter: {
    #       "AttributeName" => {
    #         attribute_value_list: [{
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }],
    #         comparison_operator: "EQ" # One of: ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"], # required
    #       }
    #     },
    #     conditional_operator: "AND" # One of: ["AND", "OR"],
    #     exclusive_start_key: {
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"],
    #     total_segments: 1,
    #     segment: 1,
    #     projection_expression: "ProjectionExpression",
    #     filter_expression: "ConditionExpression",
    #     expression_attribute_names: {
    #       "ExpressionAttributeNameVariable" => "AttributeName"
    #     },
    #     expression_attribute_values: {
    #       "ExpressionAttributeValueVariable" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     consistent_read: false
    #   }
    #   options = {}
    #   response = client.scan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         "AttributeName" => {
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }
    #       }
    #     ],
    #     count: 1,
    #     scanned_count: 1,
    #     last_evaluated_key: {
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     consumed_capacity: {
    #       table_name: "TableArn",
    #       capacity_units: 1.0,
    #       read_capacity_units: 1.0,
    #       write_capacity_units: 1.0,
    #       table: {
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         capacity_units: 1.0
    #       },
    #       local_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       },
    #       global_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       }
    #     }
    #   }
    # @return [Types::ScanOutput]
    def scan(params = {}, options = {})
      request = build_request(:scan, params)
      request.send_request(options)
    end

    # <p>Associate a set of tags with an Amazon DynamoDB resource. You can then activate these
    #             user-defined tags so that they appear on the Billing and Cost Management console for
    #             cost allocation tracking. You can call TagResource up to five times per second, per
    #             account. </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>TagResource</code> is an asynchronous operation. If you issue a <a>ListTagsOfResource</a> request immediately after a
    #                         <code>TagResource</code> request, DynamoDB might return your
    #                     previous tag set, if there was one, or an empty tag set. This is because
    #                         <code>ListTagsOfResource</code> uses an eventually consistent query, and the
    #                     metadata for your tags or table might not be available at that moment. Wait for
    #                     a few seconds, and then try the <code>ListTagsOfResource</code> request
    #                     again.</p>
    #             </li>
    #             <li>
    #                <p>The application or removal of tags using <code>TagResource</code> and
    #                         <code>UntagResource</code> APIs is eventually consistent.
    #                         <code>ListTagsOfResource</code> API will only reflect the changes after a
    #                     few seconds.</p>
    #             </li>
    #          </ul>
    #          <p>For an overview on tagging DynamoDB resources, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a>
    #             in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Identifies the Amazon DynamoDB resource to which tags should be added. This value is
    #               an Amazon Resource Name (ARN).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the Amazon DynamoDB resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArnString", # required
    #     tags: [ # required
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       }
    #     ]
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

    # <p>
    #             <code>TransactGetItems</code> is a synchronous operation that atomically retrieves
    #             multiple items from one or more tables (but not from indexes) in a single account and
    #             Region. A <code>TransactGetItems</code> call can contain up to 100
    #                 <code>TransactGetItem</code> objects, each of which contains a <code>Get</code>
    #             structure that specifies an item to retrieve from a table in the account and Region. A
    #             call to <code>TransactGetItems</code> cannot retrieve items from tables in more than one
    #                 Amazon Web Services account or Region. The aggregate size of the items in the
    #             transaction cannot exceed 4 MB.</p>
    #          <p>DynamoDB rejects the entire <code>TransactGetItems</code> request if any of
    #             the following is true:</p>
    #          <ul>
    #             <li>
    #                <p>A conflicting operation is in the process of updating an item to be
    #                     read.</p>
    #             </li>
    #             <li>
    #                <p>There is insufficient provisioned capacity for the transaction to be
    #                     completed.</p>
    #             </li>
    #             <li>
    #                <p>There is a user error, such as an invalid data format.</p>
    #             </li>
    #             <li>
    #                <p>The aggregate size of the items in the transaction exceeded 4 MB.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::TransactGetItemsInput] params
    # @option params [Array<Types::TransactGetItem>] :transact_items
    #   <p>An ordered array of up to 100 <code>TransactGetItem</code> objects, each of which
    #               contains a <code>Get</code> structure.</p>
    # @option params [String] :return_consumed_capacity
    #   <p>A value of <code>TOTAL</code> causes consumed capacity information to be returned, and
    #               a value of <code>NONE</code> prevents that information from being returned. No other
    #               value is valid.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transact_items: [ # required
    #       {
    #         get: { # required
    #           key: { # required
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           table_name: "TableArn", # required
    #           projection_expression: "ProjectionExpression",
    #           expression_attribute_names: {
    #             "ExpressionAttributeNameVariable" => "AttributeName"
    #           }
    #         }
    #       }
    #     ],
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"]
    #   }
    #   options = {}
    #   response = client.transact_get_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     consumed_capacity: [
    #       {
    #         table_name: "TableArn",
    #         capacity_units: 1.0,
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         table: {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         },
    #         local_secondary_indexes: {
    #           "IndexName" => {
    #             read_capacity_units: 1.0,
    #             write_capacity_units: 1.0,
    #             capacity_units: 1.0
    #           }
    #         },
    #         global_secondary_indexes: {
    #           "IndexName" => {
    #             read_capacity_units: 1.0,
    #             write_capacity_units: 1.0,
    #             capacity_units: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     responses: [
    #       {
    #         item: {
    #           "AttributeName" => {
    #             # One of:
    #             s: "StringAttributeValue",
    #             n: "NumberAttributeValue",
    #             b: "data",
    #             ss: ["StringAttributeValue"],
    #             ns: ["NumberAttributeValue"],
    #             bs: ["data"],
    #             m: {
    #               "AttributeName" => {
    #                 # recursive AttributeValue
    #               }
    #             },
    #             l: [{
    #               # recursive AttributeValue
    #             }],
    #             null: false,
    #             bool: false
    #           }
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::TransactGetItemsOutput]
    def transact_get_items(params = {}, options = {})
      request = build_request(:transact_get_items, params)
      request.send_request(options)
    end

    # <p>
    #             <code>TransactWriteItems</code> is a synchronous write operation that groups up to 100
    #             action requests. These actions can target items in different tables, but not in
    #             different Amazon Web Services accounts or Regions, and no two actions can target the same
    #             item. For example, you cannot both <code>ConditionCheck</code> and <code>Update</code>
    #             the same item. The aggregate size of the items in the transaction cannot exceed 4
    #             MB.</p>
    #          <p>The actions are completed atomically so that either all of them succeed, or all of
    #             them fail. They are defined by the following objects:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Put</code>  —   Initiates a <code>PutItem</code>
    #                     operation to write a new item. This structure specifies the primary key of the
    #                     item to be written, the name of the table to write it in, an optional condition
    #                     expression that must be satisfied for the write to succeed, a list of the item's
    #                     attributes, and a field indicating whether to retrieve the item's attributes if
    #                     the condition is not met.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Update</code>  —   Initiates an <code>UpdateItem</code>
    #                     operation to update an existing item. This structure specifies the primary key
    #                     of the item to be updated, the name of the table where it resides, an optional
    #                     condition expression that must be satisfied for the update to succeed, an
    #                     expression that defines one or more attributes to be updated, and a field
    #                     indicating whether to retrieve the item's attributes if the condition is not
    #                     met.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Delete</code>  —   Initiates a <code>DeleteItem</code>
    #                     operation to delete an existing item. This structure specifies the primary key
    #                     of the item to be deleted, the name of the table where it resides, an optional
    #                     condition expression that must be satisfied for the deletion to succeed, and a
    #                     field indicating whether to retrieve the item's attributes if the condition is
    #                     not met.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ConditionCheck</code>  —   Applies a condition to an item
    #                     that is not being modified by the transaction. This structure specifies the
    #                     primary key of the item to be checked, the name of the table where it resides, a
    #                     condition expression that must be satisfied for the transaction to succeed, and
    #                     a field indicating whether to retrieve the item's attributes if the condition is
    #                     not met.</p>
    #             </li>
    #          </ul>
    #          <p>DynamoDB rejects the entire <code>TransactWriteItems</code> request if any of the
    #             following is true:</p>
    #          <ul>
    #             <li>
    #                <p>A condition in one of the condition expressions is not met.</p>
    #             </li>
    #             <li>
    #                <p>An ongoing operation is in the process of updating the same item.</p>
    #             </li>
    #             <li>
    #                <p>There is insufficient provisioned capacity for the transaction to be
    #                     completed.</p>
    #             </li>
    #             <li>
    #                <p>An item size becomes too large (bigger than 400 KB), a local secondary index
    #                     (LSI) becomes too large, or a similar validation error occurs because of changes
    #                     made by the transaction.</p>
    #             </li>
    #             <li>
    #                <p>The aggregate size of the items in the transaction exceeds 4 MB.</p>
    #             </li>
    #             <li>
    #                <p>There is a user error, such as an invalid data format.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::TransactWriteItemsInput] params
    # @option params [Array<Types::TransactWriteItem>] :transact_items
    #   <p>An ordered array of up to 100 <code>TransactWriteItem</code> objects, each of which
    #               contains a <code>ConditionCheck</code>, <code>Put</code>, <code>Update</code>, or
    #                   <code>Delete</code> object. These can operate on items in different tables, but the
    #               tables must reside in the same Amazon Web Services account and Region, and no two of them
    #               can operate on the same item. </p>
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    # @option params [String] :return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections (if any), that were modified
    #               during the operation and are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned. </p>
    # @option params [String] :client_request_token
    #   <p>Providing a <code>ClientRequestToken</code> makes the call to
    #                   <code>TransactWriteItems</code> idempotent, meaning that multiple identical calls
    #               have the same effect as one single call.</p>
    #            <p>Although multiple identical calls using the same client request token produce the same
    #               result on the server (no side effects), the responses to the calls might not be the
    #               same. If the <code>ReturnConsumedCapacity</code> parameter is set, then the initial
    #                   <code>TransactWriteItems</code> call returns the amount of write capacity units
    #               consumed in making the changes. Subsequent <code>TransactWriteItems</code> calls with
    #               the same client token return the number of read capacity units consumed in reading the
    #               item.</p>
    #            <p>A client request token is valid for 10 minutes after the first request that uses it is
    #               completed. After 10 minutes, any request with the same client token is treated as a new
    #               request. Do not resubmit the same request with the same client token for more than 10
    #               minutes, or the result might not be idempotent.</p>
    #            <p>If you submit a request with the same client token but a change in other parameters
    #               within the 10-minute idempotency window, DynamoDB returns an
    #                   <code>IdempotentParameterMismatch</code> exception.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     transact_items: [ # required
    #       {
    #         condition_check: {
    #           key: { # required
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           table_name: "TableArn", # required
    #           condition_expression: "ConditionExpression", # required
    #           expression_attribute_names: {
    #             "ExpressionAttributeNameVariable" => "AttributeName"
    #           },
    #           expression_attribute_values: {
    #             "ExpressionAttributeValueVariable" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           return_values_on_condition_check_failure: "ALL_OLD" # One of: ["ALL_OLD", "NONE"]
    #         },
    #         put: {
    #           item: { # required
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           table_name: "TableArn", # required
    #           condition_expression: "ConditionExpression",
    #           expression_attribute_names: {
    #             "ExpressionAttributeNameVariable" => "AttributeName"
    #           },
    #           expression_attribute_values: {
    #             "ExpressionAttributeValueVariable" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           return_values_on_condition_check_failure: "ALL_OLD" # One of: ["ALL_OLD", "NONE"]
    #         },
    #         delete: {
    #           key: { # required
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           table_name: "TableArn", # required
    #           condition_expression: "ConditionExpression",
    #           expression_attribute_names: {
    #             "ExpressionAttributeNameVariable" => "AttributeName"
    #           },
    #           expression_attribute_values: {
    #             "ExpressionAttributeValueVariable" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           return_values_on_condition_check_failure: "ALL_OLD" # One of: ["ALL_OLD", "NONE"]
    #         },
    #         update: {
    #           key: { # required
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           update_expression: "UpdateExpression", # required
    #           table_name: "TableArn", # required
    #           condition_expression: "ConditionExpression",
    #           expression_attribute_names: {
    #             "ExpressionAttributeNameVariable" => "AttributeName"
    #           },
    #           expression_attribute_values: {
    #             "ExpressionAttributeValueVariable" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           return_values_on_condition_check_failure: "ALL_OLD" # One of: ["ALL_OLD", "NONE"]
    #         }
    #       }
    #     ],
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"],
    #     return_item_collection_metrics: "SIZE" # One of: ["SIZE", "NONE"],
    #     client_request_token: "ClientRequestToken"
    #   }
    #   options = {}
    #   response = client.transact_write_items(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     consumed_capacity: [
    #       {
    #         table_name: "TableArn",
    #         capacity_units: 1.0,
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         table: {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         },
    #         local_secondary_indexes: {
    #           "IndexName" => {
    #             read_capacity_units: 1.0,
    #             write_capacity_units: 1.0,
    #             capacity_units: 1.0
    #           }
    #         },
    #         global_secondary_indexes: {
    #           "IndexName" => {
    #             read_capacity_units: 1.0,
    #             write_capacity_units: 1.0,
    #             capacity_units: 1.0
    #           }
    #         }
    #       }
    #     ],
    #     item_collection_metrics: {
    #       "TableArn" => [
    #         {
    #           item_collection_key: {
    #             "AttributeName" => {
    #               # One of:
    #               s: "StringAttributeValue",
    #               n: "NumberAttributeValue",
    #               b: "data",
    #               ss: ["StringAttributeValue"],
    #               ns: ["NumberAttributeValue"],
    #               bs: ["data"],
    #               m: {
    #                 "AttributeName" => {
    #                   # recursive AttributeValue
    #                 }
    #               },
    #               l: [{
    #                 # recursive AttributeValue
    #               }],
    #               null: false,
    #               bool: false
    #             }
    #           },
    #           size_estimate_range_gb: [1.0]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::TransactWriteItemsOutput]
    def transact_write_items(params = {}, options = {})
      request = build_request(:transact_write_items, params)
      request.send_request(options)
    end

    # <p>Removes the association of tags from an Amazon DynamoDB resource. You can call
    #                 <code>UntagResource</code> up to five times per second, per account. </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>UntagResource</code> is an asynchronous operation. If you issue a <a>ListTagsOfResource</a> request immediately after an
    #                         <code>UntagResource</code> request, DynamoDB might return your
    #                     previous tag set, if there was one, or an empty tag set. This is because
    #                         <code>ListTagsOfResource</code> uses an eventually consistent query, and the
    #                     metadata for your tags or table might not be available at that moment. Wait for
    #                     a few seconds, and then try the <code>ListTagsOfResource</code> request
    #                     again.</p>
    #             </li>
    #             <li>
    #                <p>The application or removal of tags using <code>TagResource</code> and
    #                         <code>UntagResource</code> APIs is eventually consistent.
    #                         <code>ListTagsOfResource</code> API will only reflect the changes after a
    #                     few seconds.</p>
    #             </li>
    #          </ul>
    #          <p>For an overview on tagging DynamoDB resources, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging for DynamoDB</a>
    #             in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The DynamoDB resource that the tags will be removed from. This value is an Amazon
    #               Resource Name (ARN).</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. Existing tags of the resource whose keys are members of this list
    #               will be removed from the DynamoDB resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArnString", # required
    #     tag_keys: ["TagKeyString"], # required
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

    # <p>
    #             <code>UpdateContinuousBackups</code> enables or disables point in time recovery for
    #             the specified table. A successful <code>UpdateContinuousBackups</code> call returns the
    #             current <code>ContinuousBackupsDescription</code>. Continuous backups are
    #                 <code>ENABLED</code> on all tables at table creation. If point in time recovery is
    #             enabled, <code>PointInTimeRecoveryStatus</code> will be set to ENABLED.</p>
    #          <p> Once continuous backups and point in time recovery are enabled, you can restore to
    #             any point in time within <code>EarliestRestorableDateTime</code> and
    #                 <code>LatestRestorableDateTime</code>. </p>
    #          <p>
    #             <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time.
    #             You can restore your table to any point in time in the last 35 days. You can set the
    #                 <code>RecoveryPeriodInDays</code> to any value between 1 and 35 days.</p>
    # @param [Hash, Types::UpdateContinuousBackupsInput] params
    # @option params [String] :table_name
    #   <p>The name of the table. You can also provide the Amazon Resource Name (ARN) of the table in this
    #               parameter.</p>
    # @option params [Types::PointInTimeRecoverySpecification] :point_in_time_recovery_specification
    #   <p>Represents the settings used to enable point in time recovery.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     point_in_time_recovery_specification: { # required
    #       point_in_time_recovery_enabled: false, # required
    #       recovery_period_in_days: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_continuous_backups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     continuous_backups_description: {
    #       continuous_backups_status: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       point_in_time_recovery_description: {
    #         point_in_time_recovery_status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         recovery_period_in_days: 1,
    #         earliest_restorable_date_time: Time.now,
    #         latest_restorable_date_time: Time.now
    #       }
    #     }
    #   }
    # @return [Types::UpdateContinuousBackupsOutput]
    def update_continuous_backups(params = {}, options = {})
      request = build_request(:update_continuous_backups, params)
      request.send_request(options)
    end

    # <p>Updates the status for contributor insights for a specific table or index. CloudWatch
    #             Contributor Insights for DynamoDB graphs display the partition key and (if applicable)
    #             sort key of frequently accessed items and frequently throttled items in plaintext. If
    #             you require the use of Amazon Web Services Key Management Service (KMS) to encrypt this
    #             table’s partition key and sort key data with an Amazon Web Services managed key or
    #             customer managed key, you should not enable CloudWatch Contributor Insights for DynamoDB
    #             for this table.</p>
    # @param [Hash, Types::UpdateContributorInsightsInput] params
    # @option params [String] :table_name
    #   <p>The name of the table. You can also provide the Amazon Resource Name (ARN) of the table in this
    #               parameter.</p>
    # @option params [String] :index_name
    #   <p>The global secondary index name, if applicable.</p>
    # @option params [String] :contributor_insights_action
    #   <p>Represents the contributor insights action.</p>
    # @option params [String] :contributor_insights_mode
    #   <p>Specifies whether to track all access and throttled events or throttled events only for
    #               the DynamoDB table or index.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     index_name: "IndexName",
    #     contributor_insights_action: "ENABLE" # One of: ["ENABLE", "DISABLE"], # required
    #     contributor_insights_mode: "ACCESSED_AND_THROTTLED_KEYS" # One of: ["ACCESSED_AND_THROTTLED_KEYS", "THROTTLED_KEYS"]
    #   }
    #   options = {}
    #   response = client.update_contributor_insights(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_name: "TableName",
    #     index_name: "IndexName",
    #     contributor_insights_status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"],
    #     contributor_insights_mode: "ACCESSED_AND_THROTTLED_KEYS" # One of: ["ACCESSED_AND_THROTTLED_KEYS", "THROTTLED_KEYS"]
    #   }
    # @return [Types::UpdateContributorInsightsOutput]
    def update_contributor_insights(params = {}, options = {})
      request = build_request(:update_contributor_insights, params)
      request.send_request(options)
    end

    # <p>Adds or removes replicas in the specified global table. The global table must already
    #             exist to be able to use this operation. Any replica to be added must be empty, have the
    #             same name as the global table, have the same key schema, have DynamoDB Streams enabled,
    #             and have the same provisioned and maximum write capacity units.</p>
    #          <important>
    #             <p>This documentation is for version 2017.11.29 (Legacy) of global tables, which should be avoided for new global tables. Customers should use <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html">Global Tables version 2019.11.21 (Current)</a> when possible, because it provides greater flexibility, higher efficiency, and consumes less write capacity than 2017.11.29 (Legacy).</p>
    #             <p>To determine which version you're using, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html">Determining the global table version you are using</a>. To update existing global tables from version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html">Upgrading global tables</a>.</p>
    #          </important>
    #          <note>
    #             <p> If you are using global tables <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html">Version
    #                     2019.11.21</a> (Current) you can use <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_UpdateTable.html">UpdateTable</a> instead. </p>
    #             <p> Although you can use <code>UpdateGlobalTable</code> to add replicas and remove
    #                 replicas in a single request, for simplicity we recommend that you issue separate
    #                 requests for adding or removing replicas. </p>
    #          </note>
    #          <p> If global secondary indexes are specified, then the following conditions must also be
    #             met: </p>
    #          <ul>
    #             <li>
    #                <p> The global secondary indexes must have the same name. </p>
    #             </li>
    #             <li>
    #                <p> The global secondary indexes must have the same hash key and sort key (if
    #                     present). </p>
    #             </li>
    #             <li>
    #                <p> The global secondary indexes must have the same provisioned and maximum write
    #                     capacity units. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateGlobalTableInput] params
    # @option params [String] :global_table_name
    #   <p>The global table name.</p>
    # @option params [Array<Types::ReplicaUpdate>] :replica_updates
    #   <p>A list of Regions that should be added or removed from the global table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_table_name: "TableName", # required
    #     replica_updates: [ # required
    #       {
    #         create: {
    #           region_name: "RegionName", # required
    #         },
    #         delete: {
    #           region_name: "RegionName", # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_global_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_table_description: {
    #       replication_group: [
    #         {
    #           region_name: "RegionName",
    #           replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #           replica_status_description: "ReplicaStatusDescription",
    #           replica_status_percent_progress: "ReplicaStatusPercentProgress",
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName",
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1
    #               },
    #               warm_throughput: {
    #                 read_units_per_second: 1,
    #                 write_units_per_second: 1,
    #                 status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #               }
    #             }
    #           ],
    #           replica_inaccessible_date_time: Time.now,
    #           replica_table_class_summary: {
    #             table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #             last_update_date_time: Time.now
    #           }
    #         }
    #       ],
    #       global_table_arn: "GlobalTableArnString",
    #       creation_date_time: Time.now,
    #       global_table_status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "UPDATING"],
    #       global_table_name: "TableName"
    #     }
    #   }
    # @return [Types::UpdateGlobalTableOutput]
    def update_global_table(params = {}, options = {})
      request = build_request(:update_global_table, params)
      request.send_request(options)
    end

    # <p>Updates settings for a global table.</p>
    #          <important>
    #             <p>This documentation is for version 2017.11.29 (Legacy) of global tables, which should be avoided for new global tables. Customers should use <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html">Global Tables version 2019.11.21 (Current)</a> when possible, because it provides greater flexibility, higher efficiency, and consumes less write capacity than 2017.11.29 (Legacy).</p>
    #             <p>To determine which version you're using, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.DetermineVersion.html">Determining the global table version you are using</a>. To update existing global tables from version 2017.11.29 (Legacy) to version 2019.11.21 (Current), see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_upgrade.html">Upgrading global tables</a>.</p>
    #          </important>
    # @param [Hash, Types::UpdateGlobalTableSettingsInput] params
    # @option params [String] :global_table_name
    #   <p>The name of the global table</p>
    # @option params [String] :global_table_billing_mode
    #   <p>The billing mode of the global table. If <code>GlobalTableBillingMode</code> is not
    #               specified, the global table defaults to <code>PROVISIONED</code> capacity billing
    #               mode.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
    #                       predictable workloads. <code>PROVISIONED</code> sets the billing mode to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html">Provisioned capacity mode</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
    #                       for unpredictable workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
    #                       to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/on-demand-capacity-mode.html">On-demand capacity mode</a>. </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :global_table_provisioned_write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException.</code>
    #            </p>
    # @option params [Types::AutoScalingSettingsUpdate] :global_table_provisioned_write_capacity_auto_scaling_settings_update
    #   <p>Auto scaling settings for managing provisioned write capacity for the global
    #               table.</p>
    # @option params [Array<Types::GlobalTableGlobalSecondaryIndexSettingsUpdate>] :global_table_global_secondary_index_settings_update
    #   <p>Represents the settings of a global secondary index for a global table that will be
    #               modified.</p>
    # @option params [Array<Types::ReplicaSettingsUpdate>] :replica_settings_update
    #   <p>Represents the settings for a global table in a Region that will be modified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_table_name: "TableName", # required
    #     global_table_billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #     global_table_provisioned_write_capacity_units: 1,
    #     global_table_provisioned_write_capacity_auto_scaling_settings_update: {
    #       minimum_units: 1,
    #       maximum_units: 1,
    #       auto_scaling_disabled: false,
    #       auto_scaling_role_arn: "AutoScalingRoleArn",
    #       scaling_policy_update: {
    #         policy_name: "AutoScalingPolicyName",
    #         target_tracking_scaling_policy_configuration: { # required
    #           disable_scale_in: false,
    #           scale_in_cooldown: 1,
    #           scale_out_cooldown: 1,
    #           target_value: 1.0, # required
    #         }
    #       }
    #     },
    #     global_table_global_secondary_index_settings_update: [
    #       {
    #         index_name: "IndexName", # required
    #         provisioned_write_capacity_units: 1,
    #         provisioned_write_capacity_auto_scaling_settings_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     replica_settings_update: [
    #       {
    #         region_name: "RegionName", # required
    #         replica_provisioned_read_capacity_units: 1,
    #         replica_provisioned_read_capacity_auto_scaling_settings_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             }
    #           }
    #         },
    #         replica_global_secondary_index_settings_update: [
    #           {
    #             index_name: "IndexName", # required
    #             provisioned_read_capacity_units: 1,
    #             provisioned_read_capacity_auto_scaling_settings_update: {
    #               minimum_units: 1,
    #               maximum_units: 1,
    #               auto_scaling_disabled: false,
    #               auto_scaling_role_arn: "AutoScalingRoleArn",
    #               scaling_policy_update: {
    #                 policy_name: "AutoScalingPolicyName",
    #                 target_tracking_scaling_policy_configuration: { # required
    #                   disable_scale_in: false,
    #                   scale_in_cooldown: 1,
    #                   scale_out_cooldown: 1,
    #                   target_value: 1.0, # required
    #                 }
    #               }
    #             }
    #           }
    #         ],
    #         replica_table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_global_table_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     global_table_name: "TableName",
    #     replica_settings: [
    #       {
    #         region_name: "RegionName", # required
    #         replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #         replica_billing_mode_summary: {
    #           billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #           last_update_to_pay_per_request_date_time: Time.now
    #         },
    #         replica_provisioned_read_capacity_units: 1,
    #         replica_provisioned_read_capacity_auto_scaling_settings: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "String",
    #           scaling_policies: [
    #             {
    #               policy_name: "AutoScalingPolicyName",
    #               target_tracking_scaling_policy_configuration: {
    #                 disable_scale_in: false,
    #                 scale_in_cooldown: 1,
    #                 scale_out_cooldown: 1,
    #                 target_value: 1.0, # required
    #               }
    #             }
    #           ]
    #         },
    #         replica_provisioned_write_capacity_units: 1,
    #         replica_provisioned_write_capacity_auto_scaling_settings: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "String",
    #           scaling_policies: [
    #             {
    #               policy_name: "AutoScalingPolicyName",
    #               target_tracking_scaling_policy_configuration: {
    #                 disable_scale_in: false,
    #                 scale_in_cooldown: 1,
    #                 scale_out_cooldown: 1,
    #                 target_value: 1.0, # required
    #               }
    #             }
    #           ]
    #         },
    #         replica_global_secondary_index_settings: [
    #           {
    #             index_name: "IndexName", # required
    #             index_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"],
    #             provisioned_read_capacity_units: 1,
    #             provisioned_read_capacity_auto_scaling_settings: {
    #               minimum_units: 1,
    #               maximum_units: 1,
    #               auto_scaling_disabled: false,
    #               auto_scaling_role_arn: "String",
    #               scaling_policies: [
    #                 {
    #                   policy_name: "AutoScalingPolicyName",
    #                   target_tracking_scaling_policy_configuration: {
    #                     disable_scale_in: false,
    #                     scale_in_cooldown: 1,
    #                     scale_out_cooldown: 1,
    #                     target_value: 1.0, # required
    #                   }
    #                 }
    #               ]
    #             },
    #             provisioned_write_capacity_units: 1,
    #             provisioned_write_capacity_auto_scaling_settings: {
    #               minimum_units: 1,
    #               maximum_units: 1,
    #               auto_scaling_disabled: false,
    #               auto_scaling_role_arn: "String",
    #               scaling_policies: [
    #                 {
    #                   policy_name: "AutoScalingPolicyName",
    #                   target_tracking_scaling_policy_configuration: {
    #                     disable_scale_in: false,
    #                     scale_in_cooldown: 1,
    #                     scale_out_cooldown: 1,
    #                     target_value: 1.0, # required
    #                   }
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         replica_table_class_summary: {
    #           table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #           last_update_date_time: Time.now
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::UpdateGlobalTableSettingsOutput]
    def update_global_table_settings(params = {}, options = {})
      request = build_request(:update_global_table_settings, params)
      request.send_request(options)
    end

    # <p>Edits an existing item's attributes, or adds a new item to the table if it does not
    #             already exist. You can put, delete, or add attribute values. You can also perform a
    #             conditional update on an existing item (insert a new attribute name-value pair if it
    #             doesn't exist, or replace an existing name-value pair if it has certain expected
    #             attribute values).</p>
    #          <p>You can also return the item's attribute values in the same <code>UpdateItem</code>
    #             operation using the <code>ReturnValues</code> parameter.</p>
    # @param [Hash, Types::UpdateItemInput] params
    # @option params [String] :table_name
    #   <p>The name of the table containing the item to update. You can also provide the
    #               Amazon Resource Name (ARN) of the table in this parameter.</p>
    # @option params [Hash<String, Types::AttributeValue>] :key
    #   <p>The primary key of the item to be updated. Each element consists of an attribute name
    #               and a value for that attribute.</p>
    #            <p>For the primary key, you must provide all of the attributes. For example, with a
    #               simple primary key, you only need to provide a value for the partition key. For a
    #               composite primary key, you must provide values for both the partition key and the sort
    #               key.</p>
    # @option params [Hash<String, Types::AttributeValueUpdate>] :attribute_updates
    #   <p>This is a legacy parameter. Use <code>UpdateExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html">AttributeUpdates</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Hash<String, Types::ExpectedAttributeValue>] :expected
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    # @option params [String] :conditional_operator
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [String] :return_values
    #   <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appear
    #               before or after they are successfully updated. For <code>UpdateItem</code>, the valid
    #               values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
    #                       value is <code>NONE</code>, then nothing is returned. (This setting is the
    #                       default for <code>ReturnValues</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_OLD</code> - Returns all of the attributes of the item, as they
    #                       appeared before the UpdateItem operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATED_OLD</code> - Returns only the updated attributes, as they appeared
    #                       before the UpdateItem operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_NEW</code> - Returns all of the attributes of the item, as they appear
    #                       after the UpdateItem operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATED_NEW</code> - Returns only the updated attributes, as they appear
    #                       after the UpdateItem operation.</p>
    #               </li>
    #            </ul>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #            <p>The values returned are strongly consistent.</p>
    # @option params [String] :return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    # @option params [String] :return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    # @option params [String] :update_expression
    #   <p>An expression that defines one or more attributes to be updated, the action to be
    #               performed on them, and new values for them.</p>
    #            <p>The following action values are available for <code>UpdateExpression</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SET</code> - Adds one or more attributes and values to an item. If any of
    #                       these attributes already exist, they are replaced by the new values. You can
    #                       also use <code>SET</code> to add or subtract from an attribute that is of type
    #                       Number. For example: <code>SET myNum = myNum + :val</code>
    #                  </p>
    #                  <p>
    #                     <code>SET</code> supports the following functions:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>if_not_exists (path, operand)</code> - if the item does not
    #                               contain an attribute at the specified path, then
    #                                   <code>if_not_exists</code> evaluates to operand; otherwise, it
    #                               evaluates to path. You can use this function to avoid overwriting an
    #                               attribute that may already be present in the item.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>list_append (operand, operand)</code> - evaluates to a list with a
    #                               new element added to it. You can append the new element to the start or
    #                               the end of the list by reversing the order of the operands.</p>
    #                     </li>
    #                  </ul>
    #                  <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REMOVE</code> - Removes one or more attributes from an item.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ADD</code> - Adds the specified value to the item, if the attribute does
    #                       not already exist. If the attribute does exist, then the behavior of
    #                           <code>ADD</code> depends on the data type of the attribute:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If the existing attribute is a number, and if <code>Value</code> is
    #                               also a number, then <code>Value</code> is mathematically added to the
    #                               existing attribute. If <code>Value</code> is a negative number, then it
    #                               is subtracted from the existing attribute.</p>
    #                        <note>
    #                           <p>If you use <code>ADD</code> to increment or decrement a number
    #                                   value for an item that doesn't exist before the update, DynamoDB
    #                                   uses <code>0</code> as the initial value.</p>
    #                           <p>Similarly, if you use <code>ADD</code> for an existing item to
    #                                   increment or decrement an attribute value that doesn't exist before
    #                                   the update, DynamoDB uses <code>0</code> as the initial value. For
    #                                   example, suppose that the item you want to update doesn't have an
    #                                   attribute named <code>itemcount</code>, but you decide to
    #                                       <code>ADD</code> the number <code>3</code> to this attribute
    #                                   anyway. DynamoDB will create the <code>itemcount</code> attribute,
    #                                   set its initial value to <code>0</code>, and finally add
    #                                       <code>3</code> to it. The result will be a new
    #                                       <code>itemcount</code> attribute in the item, with a value of
    #                                       <code>3</code>.</p>
    #                        </note>
    #                     </li>
    #                     <li>
    #                        <p>If the existing data type is a set and if <code>Value</code> is also a
    #                               set, then <code>Value</code> is added to the existing set. For example,
    #                               if the attribute value is the set <code>[1,2]</code>, and the
    #                                   <code>ADD</code> action specified <code>[3]</code>, then the final
    #                               attribute value is <code>[1,2,3]</code>. An error occurs if an
    #                                   <code>ADD</code> action is specified for a set attribute and the
    #                               attribute type specified does not match the existing set type. </p>
    #                        <p>Both sets must have the same primitive data type. For example, if the
    #                               existing data type is a set of strings, the <code>Value</code> must also
    #                               be a set of strings.</p>
    #                     </li>
    #                  </ul>
    #                  <important>
    #                     <p>The <code>ADD</code> action only supports Number and set data types. In
    #                           addition, <code>ADD</code> can only be used on top-level attributes, not
    #                           nested attributes.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE</code> - Deletes an element from a set.</p>
    #                  <p>If a set of values is specified, then those values are subtracted from the old
    #                       set. For example, if the attribute value was the set <code>[a,b,c]</code> and
    #                       the <code>DELETE</code> action specifies <code>[a,c]</code>, then the final
    #                       attribute value is <code>[b]</code>. Specifying an empty set is an error.</p>
    #                  <important>
    #                     <p>The <code>DELETE</code> action only supports set data types. In addition,
    #                               <code>DELETE</code> can only be used on top-level attributes, not nested
    #                           attributes.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #            <p>You can have many actions in a single expression, such as the following: <code>SET
    #                   a=:value1, b=:value2 DELETE :value3, :value4, :value5</code>
    #            </p>
    #            <p>For more information on update expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html">Modifying
    #                   Items and Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [String] :condition_expression
    #   <p>A condition that must be satisfied in order for a conditional update to
    #               succeed.</p>
    #            <p>An expression can contain any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
    #                           contains | begins_with | size</code>
    #                  </p>
    #                  <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Comparison operators: <code>= | <> |
    #               < | > | <= | >= |
    #               BETWEEN | IN </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p> Logical operators: <code>AND | OR | NOT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about condition expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Hash<String, String>] :expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.) To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information about expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [Hash<String, Types::AttributeValue>] :expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <code>ProductStatus</code> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    # @option params [String] :return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for an <code>UpdateItem</code>
    #               operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    # @example To update an item in a table
    #   # This example updates an item in the Music table. It adds a new attribute (Year) and modifies the AlbumTitle attribute.  All of the attributes in the item, as they appear after the update, are returned in the response.
    #   params = {
    #     table_name: "Music",
    #     key: {
    #       "Artist" => {
    #     "S" => Acme Band
    #   },
    #       "SongTitle" => {
    #     "S" => Happy Day
    #   }
    #     },
    #     update_expression: "SET #Y = :y, #AT = :t",
    #     expression_attribute_names: {
    #       "#Y" => "Year",
    #       "#AT" => "AlbumTitle"
    #     },
    #     expression_attribute_values: {
    #       ":y" => {
    #     "N" => 2015
    #   },
    #       ":t" => {
    #     "S" => Louder Than Ever
    #   }
    #     },
    #     return_values: ALL_NEW
    #   }
    #   options = {}
    #   response = client.update_item(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: {
    #       "AlbumTitle" => {
    #     "S" => Louder Than Ever
    #   },
    #       "Artist" => {
    #     "S" => Acme Band
    #   },
    #       "Year" => {
    #     "N" => 2015
    #   },
    #       "SongTitle" => {
    #     "S" => Happy Day
    #   }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     key: { # required
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     attribute_updates: {
    #       "AttributeName" => {
    #         value: {
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         },
    #         action: "ADD" # One of: ["ADD", "PUT", "DELETE"]
    #       }
    #     },
    #     expected: {
    #       "AttributeName" => {
    #         value: {
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         },
    #         exists: false,
    #         comparison_operator: "EQ" # One of: ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"],
    #         attribute_value_list: [{
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }]
    #       }
    #     },
    #     conditional_operator: "AND" # One of: ["AND", "OR"],
    #     return_values: "NONE" # One of: ["NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW", "UPDATED_NEW"],
    #     return_consumed_capacity: "INDEXES" # One of: ["INDEXES", "TOTAL", "NONE"],
    #     return_item_collection_metrics: "SIZE" # One of: ["SIZE", "NONE"],
    #     update_expression: "UpdateExpression",
    #     condition_expression: "ConditionExpression",
    #     expression_attribute_names: {
    #       "ExpressionAttributeNameVariable" => "AttributeName"
    #     },
    #     expression_attribute_values: {
    #       "ExpressionAttributeValueVariable" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     return_values_on_condition_check_failure: "ALL_OLD" # One of: ["ALL_OLD", "NONE"]
    #   }
    #   options = {}
    #   response = client.update_item(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: {
    #       "AttributeName" => {
    #         # One of:
    #         s: "StringAttributeValue",
    #         n: "NumberAttributeValue",
    #         b: "data",
    #         ss: ["StringAttributeValue"],
    #         ns: ["NumberAttributeValue"],
    #         bs: ["data"],
    #         m: {
    #           "AttributeName" => {
    #             # recursive AttributeValue
    #           }
    #         },
    #         l: [{
    #           # recursive AttributeValue
    #         }],
    #         null: false,
    #         bool: false
    #       }
    #     },
    #     consumed_capacity: {
    #       table_name: "TableArn",
    #       capacity_units: 1.0,
    #       read_capacity_units: 1.0,
    #       write_capacity_units: 1.0,
    #       table: {
    #         read_capacity_units: 1.0,
    #         write_capacity_units: 1.0,
    #         capacity_units: 1.0
    #       },
    #       local_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       },
    #       global_secondary_indexes: {
    #         "IndexName" => {
    #           read_capacity_units: 1.0,
    #           write_capacity_units: 1.0,
    #           capacity_units: 1.0
    #         }
    #       }
    #     },
    #     item_collection_metrics: {
    #       item_collection_key: {
    #         "AttributeName" => {
    #           # One of:
    #           s: "StringAttributeValue",
    #           n: "NumberAttributeValue",
    #           b: "data",
    #           ss: ["StringAttributeValue"],
    #           ns: ["NumberAttributeValue"],
    #           bs: ["data"],
    #           m: {
    #             "AttributeName" => {
    #               # recursive AttributeValue
    #             }
    #           },
    #           l: [{
    #             # recursive AttributeValue
    #           }],
    #           null: false,
    #           bool: false
    #         }
    #       },
    #       size_estimate_range_gb: [1.0]
    #     }
    #   }
    # @return [Types::UpdateItemOutput]
    def update_item(params = {}, options = {})
      request = build_request(:update_item, params)
      request.send_request(options)
    end

    # <p>The command to update the Kinesis stream destination.</p>
    # @param [Hash, Types::UpdateKinesisStreamingDestinationInput] params
    # @option params [String] :table_name
    #   <p>The table name for the Kinesis streaming destination input. You can also provide the
    #               ARN of the table in this parameter.</p>
    # @option params [String] :stream_arn
    #   <p>The Amazon Resource Name (ARN) for the Kinesis stream input.</p>
    # @option params [Types::UpdateKinesisStreamingConfiguration] :update_kinesis_streaming_configuration
    #   <p>The command to update the Kinesis stream configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     stream_arn: "StreamArn", # required
    #     update_kinesis_streaming_configuration: {
    #       approximate_creation_date_time_precision: "MILLISECOND" # One of: ["MILLISECOND", "MICROSECOND"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_kinesis_streaming_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_name: "TableName",
    #     stream_arn: "StreamArn",
    #     destination_status: "ENABLING" # One of: ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"],
    #     update_kinesis_streaming_configuration: {
    #       approximate_creation_date_time_precision: "MILLISECOND" # One of: ["MILLISECOND", "MICROSECOND"]
    #     }
    #   }
    # @return [Types::UpdateKinesisStreamingDestinationOutput]
    def update_kinesis_streaming_destination(params = {}, options = {})
      request = build_request(:update_kinesis_streaming_destination, params)
      request.send_request(options)
    end

    # <p>Modifies the provisioned throughput settings, global secondary indexes, or DynamoDB
    #             Streams settings for a given table.</p>
    #          <p>You can only perform one of the following operations at once:</p>
    #          <ul>
    #             <li>
    #                <p>Modify the provisioned throughput settings of the table.</p>
    #             </li>
    #             <li>
    #                <p>Remove a global secondary index from the table.</p>
    #             </li>
    #             <li>
    #                <p>Create a new global secondary index on the table. After the index begins
    #                     backfilling, you can use <code>UpdateTable</code> to perform other
    #                     operations.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <code>UpdateTable</code> is an asynchronous operation; while it's executing, the table
    #             status changes from <code>ACTIVE</code> to <code>UPDATING</code>. While it's
    #                 <code>UPDATING</code>, you can't issue another <code>UpdateTable</code> request.
    #             When the table returns to the <code>ACTIVE</code> state, the <code>UpdateTable</code>
    #             operation is complete.</p>
    # @param [Hash, Types::UpdateTableInput] params
    # @option params [Array<Types::AttributeDefinition>] :attribute_definitions
    #   <p>An array of attributes that describe the key schema for the table and indexes. If you
    #               are adding a new global secondary index to the table, <code>AttributeDefinitions</code>
    #               must include the key element(s) of the new index.</p>
    # @option params [String] :table_name
    #   <p>The name of the table to be updated. You can also provide the Amazon Resource Name (ARN) of the table
    #               in this parameter.</p>
    # @option params [String] :billing_mode
    #   <p>Controls how you are charged for read and write throughput and how you manage
    #               capacity. When switching from pay-per-request to provisioned capacity, initial
    #               provisioned capacity values must be set. The initial provisioned capacity values are
    #               estimated based on the consumed read and write capacity of your table and global
    #               secondary indexes over the past 30 minutes.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
    #                       for most DynamoDB workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
    #                       to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/on-demand-capacity-mode.html">On-demand capacity mode</a>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
    #                       steady workloads with predictable growth where capacity requirements can be
    #                       reliably forecasted. <code>PROVISIONED</code> sets the billing mode to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html">Provisioned capacity mode</a>.</p>
    #               </li>
    #            </ul>
    # @option params [Types::ProvisionedThroughput] :provisioned_throughput
    #   <p>The new provisioned throughput settings for the specified table or index.</p>
    # @option params [Array<Types::GlobalSecondaryIndexUpdate>] :global_secondary_index_updates
    #   <p>An array of one or more global secondary indexes for the table. For each index in the
    #               array, you can request one action:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Create</code> - add a new global secondary index to the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Update</code> - modify the provisioned throughput settings of an existing
    #                       global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Delete</code> - remove a global secondary index from the table.</p>
    #               </li>
    #            </ul>
    #            <p>You can create or delete only one global secondary index per <code>UpdateTable</code>
    #               operation.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html">Managing Global
    #                   Secondary Indexes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>. </p>
    # @option params [Types::StreamSpecification] :stream_specification
    #   <p>Represents the DynamoDB Streams configuration for the table.</p>
    #            <note>
    #               <p>You receive a <code>ValidationException</code> if you try to enable a stream on a
    #                   table that already has a stream, or if you try to disable a stream on a table that
    #                   doesn't have a stream.</p>
    #            </note>
    # @option params [Types::SSESpecification] :sse_specification
    #   <p>The new server-side encryption settings for the specified table.</p>
    # @option params [Array<Types::ReplicationGroupUpdate>] :replica_updates
    #   <p>A list of replica update actions (create, delete, or update) for the table.</p>
    # @option params [String] :table_class
    #   <p>The table class of the table to be updated. Valid values are <code>STANDARD</code> and
    #                   <code>STANDARD_INFREQUENT_ACCESS</code>.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>Indicates whether deletion protection is to be enabled (true) or disabled (false) on
    #               the table.</p>
    # @option params [String] :multi_region_consistency
    #   <p>Specifies the consistency mode for a new global table. This parameter is only valid
    #               when you create a global table by specifying one or more <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ReplicationGroupUpdate.html#DDB-Type-ReplicationGroupUpdate-Create">Create</a> actions in the <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_UpdateTable.html#DDB-UpdateTable-request-ReplicaUpdates">ReplicaUpdates</a> action list.</p>
    #            <p>You can specify one of the following consistency modes:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EVENTUAL</code>: Configures a new global table for multi-Region eventual
    #                       consistency (MREC). This is the default consistency mode for global
    #                       tables.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STRONG</code>: Configures a new global table for multi-Region strong
    #                       consistency (MRSC).</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify this field, the global table consistency mode defaults to
    #                   <code>EVENTUAL</code>. For more information about global tables consistency modes,
    #               see <a href="https://docs.aws.amazon.com/V2globaltables_HowItWorks.html#V2globaltables_HowItWorks.consistency-modes">
    #                   Consistency modes</a> in DynamoDB developer guide. </p>
    # @option params [Array<Types::GlobalTableWitnessGroupUpdate>] :global_table_witness_updates
    #   <p>A list of witness updates for a  MRSC global table. A witness provides a cost-effective
    #               alternative to a full replica in a MRSC global table by maintaining replicated change
    #               data written to global table replicas. You cannot perform read or write operations on a
    #               witness. For each witness, you can request one action:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Create</code> - add a new witness to the global table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Delete</code> - remove a witness from the global table.</p>
    #               </li>
    #            </ul>
    #            <p>You can create or delete only one witness per <code>UpdateTable</code>
    #               operation.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_HowItWorks.html#V2globaltables_HowItWorks.consistency-modes">Multi-Region strong consistency (MRSC)</a> in the Amazon DynamoDB
    #               Developer Guide</p>
    # @option params [Types::OnDemandThroughput] :on_demand_throughput
    #   <p>Updates the maximum number of read and write units for the specified table in
    #               on-demand capacity mode. If you use this parameter, you must specify
    #                   <code>MaxReadRequestUnits</code>, <code>MaxWriteRequestUnits</code>, or both.</p>
    # @option params [Types::WarmThroughput] :warm_throughput
    #   <p>Represents the warm throughput (in read units per second and write units per second)
    #               for updating a table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attribute_definitions: [
    #       {
    #         attribute_name: "KeySchemaAttributeName", # required
    #         attribute_type: "S" # One of: ["S", "N", "B"], # required
    #       }
    #     ],
    #     table_name: "TableArn", # required
    #     billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #     provisioned_throughput: {
    #       read_capacity_units: 1, # required
    #       write_capacity_units: 1, # required
    #     },
    #     global_secondary_index_updates: [
    #       {
    #         update: {
    #           index_name: "IndexName", # required
    #           provisioned_throughput: {
    #             read_capacity_units: 1, # required
    #             write_capacity_units: 1, # required
    #           },
    #           on_demand_throughput: {
    #             max_read_request_units: 1,
    #             max_write_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1
    #           }
    #         },
    #         create: {
    #           index_name: "IndexName", # required
    #           key_schema: [ # required
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: { # required
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           provisioned_throughput: {
    #             read_capacity_units: 1, # required
    #             write_capacity_units: 1, # required
    #           },
    #           on_demand_throughput: {
    #             max_read_request_units: 1,
    #             max_write_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1
    #           }
    #         },
    #         delete: {
    #           index_name: "IndexName", # required
    #         }
    #       }
    #     ],
    #     stream_specification: {
    #       stream_enabled: false, # required
    #       stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #     },
    #     sse_specification: {
    #       enabled: false,
    #       sse_type: "AES256" # One of: ["AES256", "KMS"],
    #       kms_master_key_id: "KMSMasterKeyId"
    #     },
    #     replica_updates: [
    #       {
    #         create: {
    #           region_name: "RegionName", # required
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName", # required
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1
    #               }
    #             }
    #           ],
    #           table_class_override: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #         },
    #         update: {
    #           region_name: "RegionName", # required
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName", # required
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1
    #               }
    #             }
    #           ],
    #           table_class_override: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #         },
    #         delete: {
    #           region_name: "RegionName", # required
    #         }
    #       }
    #     ],
    #     table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #     deletion_protection_enabled: false,
    #     multi_region_consistency: "EVENTUAL" # One of: ["EVENTUAL", "STRONG"],
    #     global_table_witness_updates: [
    #       {
    #         create: {
    #           region_name: "RegionName", # required
    #         },
    #         delete: {
    #           region_name: "RegionName", # required
    #         }
    #       }
    #     ],
    #     on_demand_throughput: {
    #       max_read_request_units: 1,
    #       max_write_request_units: 1
    #     },
    #     warm_throughput: {
    #       read_units_per_second: 1,
    #       write_units_per_second: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_description: {
    #       attribute_definitions: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           attribute_type: "S" # One of: ["S", "N", "B"], # required
    #         }
    #       ],
    #       table_name: "TableName",
    #       key_schema: [
    #         {
    #           attribute_name: "KeySchemaAttributeName", # required
    #           key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #         }
    #       ],
    #       table_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #       creation_date_time: Time.now,
    #       provisioned_throughput: {
    #         last_increase_date_time: Time.now,
    #         last_decrease_date_time: Time.now,
    #         number_of_decreases_today: 1,
    #         read_capacity_units: 1,
    #         write_capacity_units: 1
    #       },
    #       table_size_bytes: 1,
    #       item_count: 1,
    #       table_arn: "String",
    #       table_id: "TableId",
    #       billing_mode_summary: {
    #         billing_mode: "PROVISIONED" # One of: ["PROVISIONED", "PAY_PER_REQUEST"],
    #         last_update_to_pay_per_request_date_time: Time.now
    #       },
    #       local_secondary_indexes: [
    #         {
    #           index_name: "IndexName",
    #           key_schema: [
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: {
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           index_size_bytes: 1,
    #           item_count: 1,
    #           index_arn: "String"
    #         }
    #       ],
    #       global_secondary_indexes: [
    #         {
    #           index_name: "IndexName",
    #           key_schema: [
    #             {
    #               attribute_name: "KeySchemaAttributeName", # required
    #               key_type: "HASH" # One of: ["HASH", "RANGE"], # required
    #             }
    #           ],
    #           projection: {
    #             projection_type: "ALL" # One of: ["ALL", "KEYS_ONLY", "INCLUDE"],
    #             non_key_attributes: ["NonKeyAttributeName"]
    #           },
    #           index_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"],
    #           backfilling: false,
    #           provisioned_throughput: {
    #             last_increase_date_time: Time.now,
    #             last_decrease_date_time: Time.now,
    #             number_of_decreases_today: 1,
    #             read_capacity_units: 1,
    #             write_capacity_units: 1
    #           },
    #           index_size_bytes: 1,
    #           item_count: 1,
    #           index_arn: "String",
    #           on_demand_throughput: {
    #             max_read_request_units: 1,
    #             max_write_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #           }
    #         }
    #       ],
    #       stream_specification: {
    #         stream_enabled: false, # required
    #         stream_view_type: "NEW_IMAGE" # One of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #       },
    #       latest_stream_label: "String",
    #       latest_stream_arn: "StreamArn",
    #       global_table_version: "String",
    #       replicas: [
    #         {
    #           region_name: "RegionName",
    #           replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #           replica_status_description: "ReplicaStatusDescription",
    #           replica_status_percent_progress: "ReplicaStatusPercentProgress",
    #           kms_master_key_id: "KMSMasterKeyId",
    #           provisioned_throughput_override: {
    #             read_capacity_units: 1
    #           },
    #           on_demand_throughput_override: {
    #             max_read_request_units: 1
    #           },
    #           warm_throughput: {
    #             read_units_per_second: 1,
    #             write_units_per_second: 1,
    #             status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #           },
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName",
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1
    #               },
    #               on_demand_throughput_override: {
    #                 max_read_request_units: 1
    #               },
    #               warm_throughput: {
    #                 read_units_per_second: 1,
    #                 write_units_per_second: 1,
    #                 status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #               }
    #             }
    #           ],
    #           replica_inaccessible_date_time: Time.now,
    #           replica_table_class_summary: {
    #             table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #             last_update_date_time: Time.now
    #           }
    #         }
    #       ],
    #       global_table_witnesses: [
    #         {
    #           region_name: "RegionName",
    #           witness_status: "CREATING" # One of: ["CREATING", "DELETING", "ACTIVE"]
    #         }
    #       ],
    #       restore_summary: {
    #         source_backup_arn: "BackupArn",
    #         source_table_arn: "TableArn",
    #         restore_date_time: Time.now, # required
    #         restore_in_progress: false, # required
    #       },
    #       sse_description: {
    #         status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"],
    #         sse_type: "AES256" # One of: ["AES256", "KMS"],
    #         kms_master_key_arn: "KMSMasterKeyArn",
    #         inaccessible_encryption_date_time: Time.now
    #       },
    #       archival_summary: {
    #         archival_date_time: Time.now,
    #         archival_reason: "ArchivalReason",
    #         archival_backup_arn: "BackupArn"
    #       },
    #       table_class_summary: {
    #         table_class: "STANDARD" # One of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"],
    #         last_update_date_time: Time.now
    #       },
    #       deletion_protection_enabled: false,
    #       on_demand_throughput: {
    #         max_read_request_units: 1,
    #         max_write_request_units: 1
    #       },
    #       warm_throughput: {
    #         read_units_per_second: 1,
    #         write_units_per_second: 1,
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #       },
    #       multi_region_consistency: "EVENTUAL" # One of: ["EVENTUAL", "STRONG"]
    #     }
    #   }
    # @return [Types::UpdateTableOutput]
    def update_table(params = {}, options = {})
      request = build_request(:update_table, params)
      request.send_request(options)
    end

    # <p>Updates auto scaling settings on your global tables at once.</p>
    # @param [Hash, Types::UpdateTableReplicaAutoScalingInput] params
    # @option params [Array<Types::GlobalSecondaryIndexAutoScalingUpdate>] :global_secondary_index_updates
    #   <p>Represents the auto scaling settings of the global secondary indexes of the replica to
    #               be updated.</p>
    # @option params [String] :table_name
    #   <p>The name of the global table to be updated. You can also provide the Amazon Resource Name (ARN) of the
    #               table in this parameter.</p>
    # @option params [Types::AutoScalingSettingsUpdate] :provisioned_write_capacity_auto_scaling_update
    #   <p>Represents the auto scaling settings to be modified for a global table or global
    #               secondary index.</p>
    # @option params [Array<Types::ReplicaAutoScalingUpdate>] :replica_updates
    #   <p>Represents the auto scaling settings of replicas of the table that will be
    #               modified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     global_secondary_index_updates: [
    #       {
    #         index_name: "IndexName",
    #         provisioned_write_capacity_auto_scaling_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     table_name: "TableArn", # required
    #     provisioned_write_capacity_auto_scaling_update: {
    #       minimum_units: 1,
    #       maximum_units: 1,
    #       auto_scaling_disabled: false,
    #       auto_scaling_role_arn: "AutoScalingRoleArn",
    #       scaling_policy_update: {
    #         policy_name: "AutoScalingPolicyName",
    #         target_tracking_scaling_policy_configuration: { # required
    #           disable_scale_in: false,
    #           scale_in_cooldown: 1,
    #           scale_out_cooldown: 1,
    #           target_value: 1.0, # required
    #         }
    #       }
    #     },
    #     replica_updates: [
    #       {
    #         region_name: "RegionName", # required
    #         replica_global_secondary_index_updates: [
    #           {
    #             index_name: "IndexName",
    #             provisioned_read_capacity_auto_scaling_update: {
    #               minimum_units: 1,
    #               maximum_units: 1,
    #               auto_scaling_disabled: false,
    #               auto_scaling_role_arn: "AutoScalingRoleArn",
    #               scaling_policy_update: {
    #                 policy_name: "AutoScalingPolicyName",
    #                 target_tracking_scaling_policy_configuration: { # required
    #                   disable_scale_in: false,
    #                   scale_in_cooldown: 1,
    #                   scale_out_cooldown: 1,
    #                   target_value: 1.0, # required
    #                 }
    #               }
    #             }
    #           }
    #         ],
    #         replica_provisioned_read_capacity_auto_scaling_update: {
    #           minimum_units: 1,
    #           maximum_units: 1,
    #           auto_scaling_disabled: false,
    #           auto_scaling_role_arn: "AutoScalingRoleArn",
    #           scaling_policy_update: {
    #             policy_name: "AutoScalingPolicyName",
    #             target_tracking_scaling_policy_configuration: { # required
    #               disable_scale_in: false,
    #               scale_in_cooldown: 1,
    #               scale_out_cooldown: 1,
    #               target_value: 1.0, # required
    #             }
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_table_replica_auto_scaling(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_auto_scaling_description: {
    #       table_name: "TableName",
    #       table_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"],
    #       replicas: [
    #         {
    #           region_name: "RegionName",
    #           global_secondary_indexes: [
    #             {
    #               index_name: "IndexName",
    #               index_status: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"],
    #               provisioned_read_capacity_auto_scaling_settings: {
    #                 minimum_units: 1,
    #                 maximum_units: 1,
    #                 auto_scaling_disabled: false,
    #                 auto_scaling_role_arn: "String",
    #                 scaling_policies: [
    #                   {
    #                     policy_name: "AutoScalingPolicyName",
    #                     target_tracking_scaling_policy_configuration: {
    #                       disable_scale_in: false,
    #                       scale_in_cooldown: 1,
    #                       scale_out_cooldown: 1,
    #                       target_value: 1.0, # required
    #                     }
    #                   }
    #                 ]
    #               },
    #               provisioned_write_capacity_auto_scaling_settings: {
    #                 minimum_units: 1,
    #                 maximum_units: 1,
    #                 auto_scaling_disabled: false,
    #                 auto_scaling_role_arn: "String",
    #                 scaling_policies: [
    #                   {
    #                     policy_name: "AutoScalingPolicyName",
    #                     target_tracking_scaling_policy_configuration: {
    #                       disable_scale_in: false,
    #                       scale_in_cooldown: 1,
    #                       scale_out_cooldown: 1,
    #                       target_value: 1.0, # required
    #                     }
    #                   }
    #                 ]
    #               }
    #             }
    #           ],
    #           replica_provisioned_read_capacity_auto_scaling_settings: {
    #             minimum_units: 1,
    #             maximum_units: 1,
    #             auto_scaling_disabled: false,
    #             auto_scaling_role_arn: "String",
    #             scaling_policies: [
    #               {
    #                 policy_name: "AutoScalingPolicyName",
    #                 target_tracking_scaling_policy_configuration: {
    #                   disable_scale_in: false,
    #                   scale_in_cooldown: 1,
    #                   scale_out_cooldown: 1,
    #                   target_value: 1.0, # required
    #                 }
    #               }
    #             ]
    #           },
    #           replica_provisioned_write_capacity_auto_scaling_settings: {
    #             minimum_units: 1,
    #             maximum_units: 1,
    #             auto_scaling_disabled: false,
    #             auto_scaling_role_arn: "String",
    #             scaling_policies: [
    #               {
    #                 policy_name: "AutoScalingPolicyName",
    #                 target_tracking_scaling_policy_configuration: {
    #                   disable_scale_in: false,
    #                   scale_in_cooldown: 1,
    #                   scale_out_cooldown: 1,
    #                   target_value: 1.0, # required
    #                 }
    #               }
    #             ]
    #           },
    #           replica_status: "CREATING" # One of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED", "REPLICATION_NOT_AUTHORIZED"]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateTableReplicaAutoScalingOutput]
    def update_table_replica_auto_scaling(params = {}, options = {})
      request = build_request(:update_table_replica_auto_scaling, params)
      request.send_request(options)
    end

    # <p>The <code>UpdateTimeToLive</code> method enables or disables Time to Live (TTL) for
    #             the specified table. A successful <code>UpdateTimeToLive</code> call returns the current
    #                 <code>TimeToLiveSpecification</code>. It can take up to one hour for the change to
    #             fully process. Any additional <code>UpdateTimeToLive</code> calls for the same table
    #             during this one hour duration result in a <code>ValidationException</code>. </p>
    #          <p>TTL compares the current time in epoch time format to the time stored in the TTL
    #             attribute of an item. If the epoch time value stored in the attribute is less than the
    #             current time, the item is marked as expired and subsequently deleted.</p>
    #          <note>
    #             <p> The epoch time format is the number of seconds elapsed since 12:00:00 AM January
    #                 1, 1970 UTC. </p>
    #          </note>
    #          <p>DynamoDB deletes expired items on a best-effort basis to ensure availability of
    #             throughput for other data operations. </p>
    #          <important>
    #             <p>DynamoDB typically deletes expired items within two days of expiration. The exact
    #                 duration within which an item gets deleted after expiration is specific to the
    #                 nature of the workload. Items that have expired and not been deleted will still show
    #                 up in reads, queries, and scans.</p>
    #          </important>
    #          <p>As items are deleted, they are removed from any local secondary index and global
    #             secondary index immediately in the same eventually consistent way as a standard delete
    #             operation.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html">Time To Live</a> in the
    #             Amazon DynamoDB Developer Guide. </p>
    # @param [Hash, Types::UpdateTimeToLiveInput] params
    # @option params [String] :table_name
    #   <p>The name of the table to be configured. You can also provide the Amazon Resource Name (ARN) of the
    #               table in this parameter.</p>
    # @option params [Types::TimeToLiveSpecification] :time_to_live_specification
    #   <p>Represents the settings used to enable or disable Time to Live for the specified
    #               table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableArn", # required
    #     time_to_live_specification: { # required
    #       enabled: false, # required
    #       attribute_name: "TimeToLiveAttributeName", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_time_to_live(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     time_to_live_specification: {
    #       enabled: false, # required
    #       attribute_name: "TimeToLiveAttributeName", # required
    #     }
    #   }
    # @return [Types::UpdateTimeToLiveOutput]
    def update_time_to_live(params = {}, options = {})
      request = build_request(:update_time_to_live, params)
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
      context[:gem_name] = 'aws-sdk-dynamodb'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        table_exists: Waiters::TableExists,
        table_not_exists: Waiters::TableNotExists
      }
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
