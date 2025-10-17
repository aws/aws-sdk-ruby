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

module Aws::TimestreamQuery
  # An API client for Aws::TimestreamQuery.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Timestream20181101

    add_plugin(::Aws::TimestreamQuery::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::TimestreamQuery::EndpointProvider)
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

    # <p> Cancels a query that has been issued. Cancellation is provided only if the query has
    #             not completed running before the cancellation request was issued. Because cancellation
    #             is an idempotent operation, subsequent cancellation requests will return a
    #                 <code>CancellationMessage</code>, indicating that the query has already been
    #             canceled. See <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.cancel-query.html">code
    #                 sample</a> for details. </p>
    # @param [Hash, Types::CancelQueryRequest] params
    # @option params [String] :query_id
    #   <p> The ID of the query that needs to be cancelled. <code>QueryID</code> is returned as
    #               part of the query result. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "QueryId", # required
    #   }
    #   options = {}
    #   response = client.cancel_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cancellation_message: "String"
    #   }
    # @return [Types::CancelQueryResponse]
    def cancel_query(params = {}, options = {})
      request = build_request(:cancel_query, params)
      request.send_request(options)
    end

    # <p> Create a scheduled query that will be run on your behalf at the configured schedule.
    #             Timestream assumes the execution role provided as part of the
    #                 <code>ScheduledQueryExecutionRoleArn</code> parameter to run the query. You can use
    #             the <code>NotificationConfiguration</code> parameter to configure notification for your
    #             scheduled query operations.</p>
    # @param [Hash, Types::CreateScheduledQueryRequest] params
    # @option params [String] :name
    #   <p>Name of the scheduled query.</p>
    # @option params [String] :query_string
    #   <p>The query string to run. Parameter names can be specified in the query string
    #                   <code>@</code> character followed by an identifier. The named Parameter
    #                   <code>@scheduled_runtime</code> is reserved and can be used in the query to get the
    #               time at which the query is scheduled to run.</p>
    #            <p>The timestamp calculated according to the ScheduleConfiguration parameter, will be the
    #               value of <code>@scheduled_runtime</code> paramater for each query run. For example,
    #               consider an instance of a scheduled query executing on 2021-12-01 00:00:00. For this
    #               instance, the <code>@scheduled_runtime</code> parameter is initialized to the timestamp
    #               2021-12-01 00:00:00 when invoking the query.</p>
    # @option params [Types::ScheduleConfiguration] :schedule_configuration
    #   <p>The schedule configuration for the query.</p>
    # @option params [Types::NotificationConfiguration] :notification_configuration
    #   <p>Notification configuration for the scheduled query. A notification is sent by
    #               Timestream when a query run finishes, when the state is updated or when you delete it.
    #           </p>
    # @option params [Types::TargetConfiguration] :target_configuration
    #   <p>Configuration used for writing the result of a query.</p>
    # @option params [String] :client_token
    #   <p>Using a ClientToken makes the call to CreateScheduledQuery idempotent, in other words,
    #               making the same request repeatedly will produce the same result. Making multiple
    #               identical CreateScheduledQuery requests has the same effect as making a single request. </p>
    #            <ul>
    #               <li>
    #                  <p> If CreateScheduledQuery is called without a <code>ClientToken</code>, the
    #                       Query SDK generates a <code>ClientToken</code> on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p> After 8 hours, any request with the same <code>ClientToken</code> is treated
    #                       as a new request. </p>
    #               </li>
    #            </ul>
    # @option params [String] :scheduled_query_execution_role_arn
    #   <p>The ARN for the IAM role that Timestream will assume when running the scheduled query.
    #           </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs to label the scheduled query.</p>
    # @option params [String] :kms_key_id
    #   <p>The Amazon KMS key used to encrypt the scheduled query resource, at-rest. If the
    #               Amazon KMS key is not specified, the scheduled query resource will be encrypted with a
    #               Timestream owned Amazon KMS key. To specify a KMS key, use the key ID, key ARN, alias
    #               name, or alias ARN. When using an alias name, prefix the name with
    #                   <i>alias/</i>
    #            </p>
    #            <p>If ErrorReportConfiguration uses <code>SSE_KMS</code> as encryption type, the same
    #               KmsKeyId is used to encrypt the error report at rest.</p>
    # @option params [Types::ErrorReportConfiguration] :error_report_configuration
    #   <p>Configuration for error reporting. Error reports will be generated when a problem is
    #               encountered when writing the query results. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ScheduledQueryName", # required
    #     query_string: "QueryString", # required
    #     schedule_configuration: { # required
    #       schedule_expression: "ScheduleExpression", # required
    #     },
    #     notification_configuration: { # required
    #       sns_configuration: { # required
    #         topic_arn: "AmazonResourceName", # required
    #       }
    #     },
    #     target_configuration: {
    #       timestream_configuration: { # required
    #         database_name: "ResourceName", # required
    #         table_name: "ResourceName", # required
    #         time_column: "SchemaName", # required
    #         dimension_mappings: [ # required
    #           {
    #             name: "SchemaName", # required
    #             dimension_value_type: "VARCHAR" # One of: ["VARCHAR"], # required
    #           }
    #         ],
    #         multi_measure_mappings: {
    #           target_multi_measure_name: "SchemaName",
    #           multi_measure_attribute_mappings: [ # required
    #             {
    #               source_column: "SchemaName", # required
    #               target_multi_measure_attribute_name: "SchemaName",
    #               measure_value_type: "BIGINT" # One of: ["BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "TIMESTAMP"], # required
    #             }
    #           ]
    #         },
    #         mixed_measure_mappings: [
    #           {
    #             measure_name: "SchemaName",
    #             source_column: "SchemaName",
    #             target_measure_name: "SchemaName",
    #             measure_value_type: "BIGINT" # One of: ["BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "MULTI"], # required
    #             multi_measure_attribute_mappings: [
    #               {
    #                 source_column: "SchemaName", # required
    #                 target_multi_measure_attribute_name: "SchemaName",
    #                 measure_value_type: "BIGINT" # One of: ["BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "TIMESTAMP"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         measure_name_column: "SchemaName"
    #       }
    #     },
    #     client_token: "ClientToken",
    #     scheduled_query_execution_role_arn: "AmazonResourceName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     kms_key_id: "StringValue2048",
    #     error_report_configuration: { # required
    #       s3_configuration: { # required
    #         bucket_name: "S3BucketName", # required
    #         object_key_prefix: "S3ObjectKeyPrefix",
    #         encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_scheduled_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "AmazonResourceName", # required
    #   }
    # @return [Types::CreateScheduledQueryResponse]
    def create_scheduled_query(params = {}, options = {})
      request = build_request(:create_scheduled_query, params)
      request.send_request(options)
    end

    # <p>Deletes a given scheduled query. This is an irreversible operation. </p>
    # @param [Hash, Types::DeleteScheduledQueryRequest] params
    # @option params [String] :scheduled_query_arn
    #   <p>The ARN of the scheduled query. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_query_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_scheduled_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_scheduled_query(params = {}, options = {})
      request = build_request(:delete_scheduled_query, params)
      request.send_request(options)
    end

    # <p>Describes the settings for your account that include the query pricing model and the configured maximum TCUs the service can use for your query workload.</p>
    #          <p>You're charged only for the duration of compute units used for your workloads.</p>
    # @param [Hash, Types::DescribeAccountSettingsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     max_query_tcu: 1,
    #     query_pricing_model: "BYTES_SCANNED" # One of: ["BYTES_SCANNED", "COMPUTE_UNITS"],
    #     query_compute: {
    #       compute_mode: "ON_DEMAND" # One of: ["ON_DEMAND", "PROVISIONED"],
    #       provisioned_capacity: {
    #         active_query_tcu: 1,
    #         notification_configuration: {
    #           sns_configuration: {
    #             topic_arn: "AmazonResourceName", # required
    #           },
    #           role_arn: "AmazonResourceName", # required
    #         },
    #         last_update: {
    #           target_query_tcu: 1,
    #           status: "PENDING" # One of: ["PENDING", "FAILED", "SUCCEEDED"],
    #           status_message: "String"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeAccountSettingsResponse]
    def describe_account_settings(params = {}, options = {})
      request = build_request(:describe_account_settings, params)
      request.send_request(options)
    end

    # <p>DescribeEndpoints returns a list of available endpoints to make Timestream
    #             API calls against. This API is available through both Write and Query.</p>
    #          <p>Because the Timestream SDKs are designed to transparently work with the
    #             service’s architecture, including the management and mapping of the service endpoints,
    #                 <i>it is not recommended that you use this API unless</i>:</p>
    #          <ul>
    #             <li>
    #                <p>You are using <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints">VPC endpoints (Amazon Web Services PrivateLink) with Timestream
    #                     </a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Your application uses a programming language that does not yet have SDK
    #                     support</p>
    #             </li>
    #             <li>
    #                <p>You require better control over the client-side implementation</p>
    #             </li>
    #          </ul>
    #          <p>For detailed information on how and when to use and implement DescribeEndpoints, see
    #                 <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery">The Endpoint Discovery Pattern</a>.</p>
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

    # <p>Provides detailed information about a scheduled query.</p>
    # @param [Hash, Types::DescribeScheduledQueryRequest] params
    # @option params [String] :scheduled_query_arn
    #   <p>The ARN of the scheduled query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_query_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_scheduled_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_query: { # required
    #       arn: "AmazonResourceName", # required
    #       name: "ScheduledQueryName", # required
    #       query_string: "QueryString", # required
    #       creation_time: Time.now,
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       previous_invocation_time: Time.now,
    #       next_invocation_time: Time.now,
    #       schedule_configuration: { # required
    #         schedule_expression: "ScheduleExpression", # required
    #       },
    #       notification_configuration: { # required
    #         sns_configuration: { # required
    #           topic_arn: "AmazonResourceName", # required
    #         }
    #       },
    #       target_configuration: {
    #         timestream_configuration: { # required
    #           database_name: "ResourceName", # required
    #           table_name: "ResourceName", # required
    #           time_column: "SchemaName", # required
    #           dimension_mappings: [ # required
    #             {
    #               name: "SchemaName", # required
    #               dimension_value_type: "VARCHAR" # One of: ["VARCHAR"], # required
    #             }
    #           ],
    #           multi_measure_mappings: {
    #             target_multi_measure_name: "SchemaName",
    #             multi_measure_attribute_mappings: [ # required
    #               {
    #                 source_column: "SchemaName", # required
    #                 target_multi_measure_attribute_name: "SchemaName",
    #                 measure_value_type: "BIGINT" # One of: ["BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "TIMESTAMP"], # required
    #               }
    #             ]
    #           },
    #           mixed_measure_mappings: [
    #             {
    #               measure_name: "SchemaName",
    #               source_column: "SchemaName",
    #               target_measure_name: "SchemaName",
    #               measure_value_type: "BIGINT" # One of: ["BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "MULTI"], # required
    #               multi_measure_attribute_mappings: [
    #                 {
    #                   source_column: "SchemaName", # required
    #                   target_multi_measure_attribute_name: "SchemaName",
    #                   measure_value_type: "BIGINT" # One of: ["BIGINT", "BOOLEAN", "DOUBLE", "VARCHAR", "TIMESTAMP"], # required
    #                 }
    #               ]
    #             }
    #           ],
    #           measure_name_column: "SchemaName"
    #         }
    #       },
    #       scheduled_query_execution_role_arn: "AmazonResourceName",
    #       kms_key_id: "StringValue2048",
    #       error_report_configuration: {
    #         s3_configuration: { # required
    #           bucket_name: "S3BucketName", # required
    #           object_key_prefix: "S3ObjectKeyPrefix",
    #           encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"]
    #         }
    #       },
    #       last_run_summary: {
    #         invocation_time: Time.now,
    #         trigger_time: Time.now,
    #         run_status: "AUTO_TRIGGER_SUCCESS" # One of: ["AUTO_TRIGGER_SUCCESS", "AUTO_TRIGGER_FAILURE", "MANUAL_TRIGGER_SUCCESS", "MANUAL_TRIGGER_FAILURE"],
    #         execution_stats: {
    #           execution_time_in_millis: 1,
    #           data_writes: 1,
    #           bytes_metered: 1,
    #           cumulative_bytes_scanned: 1,
    #           records_ingested: 1,
    #           query_result_rows: 1
    #         },
    #         query_insights_response: {
    #           query_spatial_coverage: {
    #             max: {
    #               value: 1.0,
    #               table_arn: "AmazonResourceName",
    #               partition_key: ["PartitionKey"]
    #             }
    #           },
    #           query_temporal_range: {
    #             max: {
    #               value: 1,
    #               table_arn: "AmazonResourceName"
    #             }
    #           },
    #           query_table_count: 1,
    #           output_rows: 1,
    #           output_bytes: 1
    #         },
    #         error_report_location: {
    #           s3_report_location: {
    #             bucket_name: "S3BucketName",
    #             object_key: "S3ObjectKey"
    #           }
    #         },
    #         failure_reason: "ErrorMessage"
    #       },
    #       recently_failed_runs: [
    #         {
    #           invocation_time: Time.now,
    #           trigger_time: Time.now,
    #           run_status: "AUTO_TRIGGER_SUCCESS" # One of: ["AUTO_TRIGGER_SUCCESS", "AUTO_TRIGGER_FAILURE", "MANUAL_TRIGGER_SUCCESS", "MANUAL_TRIGGER_FAILURE"],
    #           execution_stats: {
    #             execution_time_in_millis: 1,
    #             data_writes: 1,
    #             bytes_metered: 1,
    #             cumulative_bytes_scanned: 1,
    #             records_ingested: 1,
    #             query_result_rows: 1
    #           },
    #           query_insights_response: {
    #             query_spatial_coverage: {
    #               max: {
    #                 value: 1.0,
    #                 table_arn: "AmazonResourceName",
    #                 partition_key: ["PartitionKey"]
    #               }
    #             },
    #             query_temporal_range: {
    #               max: {
    #                 value: 1,
    #                 table_arn: "AmazonResourceName"
    #               }
    #             },
    #             query_table_count: 1,
    #             output_rows: 1,
    #             output_bytes: 1
    #           },
    #           error_report_location: {
    #             s3_report_location: {
    #               bucket_name: "S3BucketName",
    #               object_key: "S3ObjectKey"
    #             }
    #           },
    #           failure_reason: "ErrorMessage"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeScheduledQueryResponse]
    def describe_scheduled_query(params = {}, options = {})
      request = build_request(:describe_scheduled_query, params)
      request.send_request(options)
    end

    # <p> You can use this API to run a scheduled query manually. </p>
    #          <p>If you enabled <code>QueryInsights</code>, this API also returns insights and metrics related to the query that you executed as part of an Amazon SNS notification. <code>QueryInsights</code> helps with performance tuning of your query. For more information about <code>QueryInsights</code>, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/using-query-insights.html">Using query insights to optimize queries in Amazon Timestream</a>.</p>
    # @param [Hash, Types::ExecuteScheduledQueryRequest] params
    # @option params [String] :scheduled_query_arn
    #   <p>ARN of the scheduled query.</p>
    # @option params [Time] :invocation_time
    #   <p>The timestamp in UTC. Query will be run as if it was invoked at this timestamp.
    #           </p>
    # @option params [String] :client_token
    #   <p>Not used. </p>
    # @option params [Types::ScheduledQueryInsights] :query_insights
    #   <p>Encapsulates settings for enabling <code>QueryInsights</code>.</p>
    #            <p>Enabling <code>QueryInsights</code> returns insights and metrics as a part of the Amazon SNS notification for the query that you executed. You can use <code>QueryInsights</code> to tune your query performance and cost.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_query_arn: "AmazonResourceName", # required
    #     invocation_time: Time.now, # required
    #     client_token: "ClientToken",
    #     query_insights: {
    #       mode: "ENABLED_WITH_RATE_CONTROL" # One of: ["ENABLED_WITH_RATE_CONTROL", "DISABLED"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.execute_scheduled_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def execute_scheduled_query(params = {}, options = {})
      request = build_request(:execute_scheduled_query, params)
      request.send_request(options)
    end

    # <p>Gets a list of all scheduled queries in the caller's Amazon account and Region.
    #                 <code>ListScheduledQueries</code> is eventually consistent. </p>
    # @param [Hash, Types::ListScheduledQueriesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return in the output. If the total number of items
    #               available is more than the value specified, a <code>NextToken</code> is provided in the
    #               output. To resume pagination, provide the <code>NextToken</code> value as the argument
    #               to the subsequent call to <code>ListScheduledQueriesRequest</code>.</p>
    # @option params [String] :next_token
    #   <p> A pagination token to resume pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextScheduledQueriesResultsToken"
    #   }
    #   options = {}
    #   response = client.list_scheduled_queries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scheduled_queries: [ # required
    #       {
    #         arn: "AmazonResourceName", # required
    #         name: "ScheduledQueryName", # required
    #         creation_time: Time.now,
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         previous_invocation_time: Time.now,
    #         next_invocation_time: Time.now,
    #         error_report_configuration: {
    #           s3_configuration: { # required
    #             bucket_name: "S3BucketName", # required
    #             object_key_prefix: "S3ObjectKeyPrefix",
    #             encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"]
    #           }
    #         },
    #         target_destination: {
    #           timestream_destination: {
    #             database_name: "ResourceName",
    #             table_name: "ResourceName"
    #           }
    #         },
    #         last_run_status: "AUTO_TRIGGER_SUCCESS" # One of: ["AUTO_TRIGGER_SUCCESS", "AUTO_TRIGGER_FAILURE", "MANUAL_TRIGGER_SUCCESS", "MANUAL_TRIGGER_FAILURE"]
    #       }
    #     ],
    #     next_token: "NextScheduledQueriesResultsToken"
    #   }
    # @return [Types::ListScheduledQueriesResponse]
    def list_scheduled_queries(params = {}, options = {})
      request = build_request(:list_scheduled_queries, params)
      request.send_request(options)
    end

    # <p>List all tags on a Timestream query resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Timestream resource with tags to be listed. This value is an Amazon Resource Name
    #               (ARN).</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of tags to return.</p>
    # @option params [String] :next_token
    #   <p>A pagination token to resume pagination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     max_results: 1,
    #     next_token: "NextTagsForResourceResultsToken"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     next_token: "NextTagsForResourceResultsToken"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>A synchronous operation that allows you to submit a query with parameters to be stored
    #             by Timestream for later running. Timestream only supports using this operation with
    #                 <code>ValidateOnly</code> set to <code>true</code>. </p>
    # @param [Hash, Types::PrepareQueryRequest] params
    # @option params [String] :query_string
    #   <p>The Timestream query string that you want to use as a prepared statement. Parameter
    #               names can be specified in the query string <code>@</code> character followed by an
    #               identifier. </p>
    # @option params [Boolean] :validate_only
    #   <p>By setting this value to <code>true</code>, Timestream will only validate that the
    #               query string is a valid Timestream query, and not store the prepared query for later
    #               use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_string: "QueryString", # required
    #     validate_only: false
    #   }
    #   options = {}
    #   response = client.prepare_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_string: "QueryString", # required
    #     columns: [ # required
    #       {
    #         name: "String",
    #         type: {
    #           scalar_type: "VARCHAR" # One of: ["VARCHAR", "BOOLEAN", "BIGINT", "DOUBLE", "TIMESTAMP", "DATE", "TIME", "INTERVAL_DAY_TO_SECOND", "INTERVAL_YEAR_TO_MONTH", "UNKNOWN", "INTEGER"],
    #           array_column_info: {
    #             name: "String",
    #             type: { # required
    #               # recursive Type
    #             }
    #           },
    #           time_series_measure_value_column_info: {
    #             name: "String",
    #             type: { # required
    #               # recursive Type
    #             }
    #           },
    #           row_column_info: [
    #             {
    #               name: "String",
    #               type: { # required
    #                 # recursive Type
    #               }
    #             }
    #           ]
    #         },
    #         database_name: "ResourceName",
    #         table_name: "ResourceName",
    #         aliased: false
    #       }
    #     ],
    #     parameters: [ # required
    #       {
    #         name: "String", # required
    #         type: { # required
    #           scalar_type: "VARCHAR" # One of: ["VARCHAR", "BOOLEAN", "BIGINT", "DOUBLE", "TIMESTAMP", "DATE", "TIME", "INTERVAL_DAY_TO_SECOND", "INTERVAL_YEAR_TO_MONTH", "UNKNOWN", "INTEGER"],
    #           array_column_info: {
    #             name: "String",
    #             type: { # required
    #               # recursive Type
    #             }
    #           },
    #           time_series_measure_value_column_info: {
    #             name: "String",
    #             type: { # required
    #               # recursive Type
    #             }
    #           },
    #           row_column_info: [
    #             {
    #               name: "String",
    #               type: { # required
    #                 # recursive Type
    #               }
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::PrepareQueryResponse]
    def prepare_query(params = {}, options = {})
      request = build_request(:prepare_query, params)
      request.send_request(options)
    end

    # <p>
    #             <code>Query</code> is a synchronous operation that enables you to run a query against
    #             your Amazon Timestream data.</p>
    #          <p>If you enabled <code>QueryInsights</code>, this API also returns insights and metrics related to the query that you executed. <code>QueryInsights</code> helps with performance tuning of your query. For more information about <code>QueryInsights</code>, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/using-query-insights.html">Using query insights to optimize queries in Amazon Timestream</a>.</p>
    #          <note>
    #             <p>The maximum number of <code>Query</code> API requests you're allowed to make with <code>QueryInsights</code> enabled is 1 query per second (QPS). If you exceed this query rate, it might result in throttling.</p>
    #          </note>
    #          <p>
    #             <code>Query</code> will time out after 60 seconds.
    #             You must update the default timeout in the SDK to support a timeout of 60 seconds. See
    #             the <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.run-query.html">code
    #                 sample</a> for details. </p>
    #          <p>Your query request will fail in the following cases:</p>
    #          <ul>
    #             <li>
    #                <p> If you submit a <code>Query</code> request with the same client token outside
    #                     of the 5-minute idempotency window. </p>
    #             </li>
    #             <li>
    #                <p> If you submit a <code>Query</code> request with the same client token, but
    #                     change other parameters, within the 5-minute idempotency window. </p>
    #             </li>
    #             <li>
    #                <p> If the size of the row (including the query metadata) exceeds 1 MB, then the
    #                     query will fail with the following error message: </p>
    #                <p>
    #                   <code>Query aborted as max page response size has been exceeded by the output
    #                         result row</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p> If the IAM principal of the query initiator and the result reader are not the
    #                     same and/or the query initiator and the result reader do not have the same query
    #                     string in the query requests, the query will fail with an <code>Invalid
    #                         pagination token</code> error. </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::QueryRequest] params
    # @option params [String] :query_string
    #   <p> The query to be run by Timestream. </p>
    # @option params [String] :client_token
    #   <p> Unique, case-sensitive string of up to 64 ASCII characters specified when a
    #                   <code>Query</code> request is made. Providing a <code>ClientToken</code> makes the
    #               call to <code>Query</code>
    #               <i>idempotent</i>. This means that running the same query repeatedly will
    #               produce the same result. In other words, making multiple identical <code>Query</code>
    #               requests has the same effect as making a single request. When using
    #                   <code>ClientToken</code> in a query, note the following: </p>
    #            <ul>
    #               <li>
    #                  <p> If the Query API is instantiated without a <code>ClientToken</code>, the
    #                       Query SDK generates a <code>ClientToken</code> on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>If the <code>Query</code> invocation only contains the
    #                           <code>ClientToken</code> but does not include a <code>NextToken</code>, that
    #                       invocation of <code>Query</code> is assumed to be a new query run.</p>
    #               </li>
    #               <li>
    #                  <p>If the invocation contains <code>NextToken</code>, that particular invocation
    #                       is assumed to be a subsequent invocation of a prior call to the Query API, and a
    #                       result set is returned.</p>
    #               </li>
    #               <li>
    #                  <p> After 4 hours, any request with the same <code>ClientToken</code> is treated
    #                       as a new request. </p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p> A pagination token used to return a set of results. When the <code>Query</code> API
    #               is invoked using <code>NextToken</code>, that particular invocation is assumed to be a
    #               subsequent invocation of a prior call to <code>Query</code>, and a result set is
    #               returned. However, if the <code>Query</code> invocation only contains the
    #                   <code>ClientToken</code>, that invocation of <code>Query</code> is assumed to be a
    #               new query run. </p>
    #            <p>Note the following when using NextToken in a query:</p>
    #            <ul>
    #               <li>
    #                  <p>A pagination token can be used for up to five <code>Query</code> invocations,
    #                       OR for a duration of up to 1 hour – whichever comes first.</p>
    #               </li>
    #               <li>
    #                  <p>Using the same <code>NextToken</code> will return the same set of records. To
    #                       keep paginating through the result set, you must to use the most recent
    #                           <code>nextToken</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Suppose a <code>Query</code> invocation returns two <code>NextToken</code>
    #                       values, <code>TokenA</code> and <code>TokenB</code>. If <code>TokenB</code> is
    #                       used in a subsequent <code>Query</code> invocation, then <code>TokenA</code> is
    #                       invalidated and cannot be reused.</p>
    #               </li>
    #               <li>
    #                  <p>To request a previous result set from a query after pagination has begun, you
    #                       must re-invoke the Query API.</p>
    #               </li>
    #               <li>
    #                  <p>The latest <code>NextToken</code> should be used to paginate until
    #                           <code>null</code> is returned, at which point a new <code>NextToken</code>
    #                       should be used.</p>
    #               </li>
    #               <li>
    #                  <p> If the IAM principal of the query initiator and the result reader are not the
    #                       same and/or the query initiator and the result reader do not have the same query
    #                       string in the query requests, the query will fail with an <code>Invalid
    #                           pagination token</code> error. </p>
    #               </li>
    #            </ul>
    # @option params [Integer] :max_rows
    #   <p> The total number of rows to be returned in the <code>Query</code> output. The initial
    #               run of <code>Query</code> with a <code>MaxRows</code> value specified will return the
    #               result set of the query in two cases: </p>
    #            <ul>
    #               <li>
    #                  <p>The size of the result is less than <code>1MB</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The number of rows in the result set is less than the value of
    #                           <code>maxRows</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Otherwise, the initial invocation of <code>Query</code> only returns a
    #                   <code>NextToken</code>, which can then be used in subsequent calls to fetch the
    #               result set. To resume pagination, provide the <code>NextToken</code> value in the
    #               subsequent command.</p>
    #            <p>If the row size is large (e.g. a row has many columns), Timestream may return
    #               fewer rows to keep the response size from exceeding the 1 MB limit. If
    #                   <code>MaxRows</code> is not provided, Timestream will send the necessary
    #               number of rows to meet the 1 MB limit.</p>
    # @option params [Types::QueryInsights] :query_insights
    #   <p>Encapsulates settings for enabling <code>QueryInsights</code>.</p>
    #            <p>Enabling <code>QueryInsights</code> returns insights and metrics in addition to query results for the query that you executed. You can use <code>QueryInsights</code> to tune your query performance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_string: "QueryString", # required
    #     client_token: "ClientRequestToken",
    #     next_token: "PaginationToken",
    #     max_rows: 1,
    #     query_insights: {
    #       mode: "ENABLED_WITH_RATE_CONTROL" # One of: ["ENABLED_WITH_RATE_CONTROL", "DISABLED"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "QueryId", # required
    #     next_token: "PaginationToken",
    #     rows: [ # required
    #       {
    #         data: [ # required
    #           {
    #             scalar_value: "ScalarValue",
    #             time_series_value: [
    #               {
    #                 time: "Timestamp", # required
    #                 value: { # required
    #                   # recursive Datum
    #                 }
    #               }
    #             ],
    #             array_value: {
    #               # recursive DatumList
    #             },
    #             row_value: {
    #               # recursive Row
    #             },
    #             null_value: false
    #           }
    #         ]
    #       }
    #     ],
    #     column_info: [ # required
    #       {
    #         name: "String",
    #         type: { # required
    #           scalar_type: "VARCHAR" # One of: ["VARCHAR", "BOOLEAN", "BIGINT", "DOUBLE", "TIMESTAMP", "DATE", "TIME", "INTERVAL_DAY_TO_SECOND", "INTERVAL_YEAR_TO_MONTH", "UNKNOWN", "INTEGER"],
    #           array_column_info: {
    #             # recursive ColumnInfo
    #           },
    #           time_series_measure_value_column_info: {
    #             # recursive ColumnInfo
    #           },
    #           row_column_info: {
    #             # recursive ColumnInfoList
    #           }
    #         }
    #       }
    #     ],
    #     query_status: {
    #       progress_percentage: 1.0,
    #       cumulative_bytes_scanned: 1,
    #       cumulative_bytes_metered: 1
    #     },
    #     query_insights_response: {
    #       query_spatial_coverage: {
    #         max: {
    #           value: 1.0,
    #           table_arn: "AmazonResourceName",
    #           partition_key: ["PartitionKey"]
    #         }
    #       },
    #       query_temporal_range: {
    #         max: {
    #           value: 1,
    #           table_arn: "AmazonResourceName"
    #         }
    #       },
    #       query_table_count: 1,
    #       output_rows: 1,
    #       output_bytes: 1,
    #       unload_partition_count: 1,
    #       unload_written_rows: 1,
    #       unload_written_bytes: 1
    #     }
    #   }
    # @return [Types::QueryResponse]
    def query(params = {}, options = {})
      request = build_request(:query, params)
      request.send_request(options)
    end

    # <p>Associate a set of tags with a Timestream resource. You can then activate these
    #             user-defined tags so that they appear on the Billing and Cost Management console for
    #             cost allocation tracking. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>Identifies the Timestream resource to which tags should be added. This value is an
    #               Amazon Resource Name (ARN).</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the Timestream resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the association of tags from a Timestream query resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Timestream resource that the tags will be removed from. This value is an Amazon
    #               Resource Name (ARN). </p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tags keys. Existing tags of the resource whose keys are members of this list
    #               will be removed from the Timestream resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Transitions your account to use TCUs for query pricing and modifies the maximum query compute units that you've configured. If you reduce the value of <code>MaxQueryTCU</code> to a desired configuration, the new value can take up to 24 hours to be effective.</p>
    #          <note>
    #             <p>After you've transitioned your account to use TCUs for query pricing, you can't transition to using bytes scanned for query pricing.</p>
    #          </note>
    # @param [Hash, Types::UpdateAccountSettingsRequest] params
    # @option params [Integer] :max_query_tcu
    #   <p>The maximum number of compute units the service will use at any point in time to serve your queries. To run queries, you must set a minimum capacity of 4 TCU. You can set the maximum number of TCU in multiples of 4, for example, 4, 8, 16, 32, and so on. The maximum value supported for <code>MaxQueryTCU</code> is 1000. To request an increase to this soft limit, contact Amazon Web Services Support. For information about the default quota for maxQueryTCU, see Default quotas. This configuration is applicable only for on-demand usage of Timestream Compute Units (TCUs).</p>
    #            <p>The maximum value supported for <code>MaxQueryTCU</code> is 1000. To request an increase to this soft limit, contact Amazon Web Services Support. For information about the default quota for <code>maxQueryTCU</code>, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.default">Default quotas</a>.</p>
    # @option params [String] :query_pricing_model
    #   <p>The pricing model for queries in an account.</p>
    #            <note>
    #               <p>The <code>QueryPricingModel</code> parameter is used by several Timestream operations; however, the <code>UpdateAccountSettings</code> API operation doesn't recognize any values other than <code>COMPUTE_UNITS</code>.</p>
    #            </note>
    # @option params [Types::QueryComputeRequest] :query_compute
    #   <p>Modifies the query compute settings configured in your account, including the query pricing model and provisioned Timestream Compute Units (TCUs) in your account.</p>
    #            <note>
    #               <p>This API is idempotent, meaning that making the same request multiple times will have the same effect as making the request once.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_query_tcu: 1,
    #     query_pricing_model: "BYTES_SCANNED" # One of: ["BYTES_SCANNED", "COMPUTE_UNITS"],
    #     query_compute: {
    #       compute_mode: "ON_DEMAND" # One of: ["ON_DEMAND", "PROVISIONED"],
    #       provisioned_capacity: {
    #         target_query_tcu: 1, # required
    #         notification_configuration: {
    #           sns_configuration: {
    #             topic_arn: "AmazonResourceName", # required
    #           },
    #           role_arn: "AmazonResourceName", # required
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     max_query_tcu: 1,
    #     query_pricing_model: "BYTES_SCANNED" # One of: ["BYTES_SCANNED", "COMPUTE_UNITS"],
    #     query_compute: {
    #       compute_mode: "ON_DEMAND" # One of: ["ON_DEMAND", "PROVISIONED"],
    #       provisioned_capacity: {
    #         active_query_tcu: 1,
    #         notification_configuration: {
    #           sns_configuration: {
    #             topic_arn: "AmazonResourceName", # required
    #           },
    #           role_arn: "AmazonResourceName", # required
    #         },
    #         last_update: {
    #           target_query_tcu: 1,
    #           status: "PENDING" # One of: ["PENDING", "FAILED", "SUCCEEDED"],
    #           status_message: "String"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateAccountSettingsResponse]
    def update_account_settings(params = {}, options = {})
      request = build_request(:update_account_settings, params)
      request.send_request(options)
    end

    # <p>Update a scheduled query.</p>
    # @param [Hash, Types::UpdateScheduledQueryRequest] params
    # @option params [String] :scheduled_query_arn
    #   <p>ARN of the scheuled query.</p>
    # @option params [String] :state
    #   <p>State of the scheduled query. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     scheduled_query_arn: "AmazonResourceName", # required
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #   }
    #   options = {}
    #   response = client.update_scheduled_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_scheduled_query(params = {}, options = {})
      request = build_request(:update_scheduled_query, params)
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
      context[:gem_name] = 'aws-sdk-timestreamquery'
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
