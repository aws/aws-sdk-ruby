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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::TimestreamWrite
  # An API client for Aws::TimestreamWrite.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Timestream20181101

    add_plugin(::Aws::TimestreamWrite::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::TimestreamWrite::EndpointProvider)
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

    # <p>Creates a new Timestream batch load task. A batch load task processes data from
    #          a CSV source in an S3 location and writes to a Timestream table. A mapping from
    #          source to target is defined in a batch load task. Errors and events are written to a report
    #          at an S3 location. For the report, if the KMS key is not specified, the
    #          report will be encrypted with an S3 managed key when <code>SSE_S3</code> is the option.
    #          Otherwise an error is thrown. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed
    #             keys</a>. <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>. For
    #          details, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-batch-load.html">code
    #             sample</a>.</p>
    # @param [Hash, Types::CreateBatchLoadTaskRequest] params
    # @option params [String] :client_token
    #   <p></p>
    # @option params [Types::DataModelConfiguration] :data_model_configuration
    #   <p></p>
    # @option params [Types::DataSourceConfiguration] :data_source_configuration
    #   <p>Defines configuration details about the data source for a batch load task.</p>
    # @option params [Types::ReportConfiguration] :report_configuration
    #   <p>Report configuration for a batch load task. This contains details about where error
    #            reports are stored.</p>
    # @option params [String] :target_database_name
    #   <p>Target Timestream database for a batch load task.</p>
    # @option params [String] :target_table_name
    #   <p>Target Timestream table for a batch load task.</p>
    # @option params [Integer] :record_version
    #   <p></p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientRequestToken",
    #     data_model_configuration: {
    #       data_model: {
    #         time_column: "StringValue256",
    #         time_unit: "MILLISECONDS" # One of: ["MILLISECONDS", "SECONDS", "MICROSECONDS", "NANOSECONDS"],
    #         dimension_mappings: [ # required
    #           {
    #             source_column: "SchemaName",
    #             destination_column: "SchemaName"
    #           }
    #         ],
    #         multi_measure_mappings: {
    #           target_multi_measure_name: "SchemaName",
    #           multi_measure_attribute_mappings: [ # required
    #             {
    #               source_column: "SchemaName", # required
    #               target_multi_measure_attribute_name: "SchemaName",
    #               measure_value_type: "DOUBLE" # One of: ["DOUBLE", "BIGINT", "BOOLEAN", "VARCHAR", "TIMESTAMP"]
    #             }
    #           ]
    #         },
    #         mixed_measure_mappings: [
    #           {
    #             measure_name: "SchemaName",
    #             source_column: "SchemaName",
    #             target_measure_name: "SchemaName",
    #             measure_value_type: "DOUBLE" # One of: ["DOUBLE", "BIGINT", "VARCHAR", "BOOLEAN", "TIMESTAMP", "MULTI"], # required
    #             multi_measure_attribute_mappings: [
    #               {
    #                 source_column: "SchemaName", # required
    #                 target_multi_measure_attribute_name: "SchemaName",
    #                 measure_value_type: "DOUBLE" # One of: ["DOUBLE", "BIGINT", "BOOLEAN", "VARCHAR", "TIMESTAMP"]
    #               }
    #             ]
    #           }
    #         ],
    #         measure_name_column: "StringValue256"
    #       },
    #       data_model_s3_configuration: {
    #         bucket_name: "S3BucketName",
    #         object_key: "S3ObjectKey"
    #       }
    #     },
    #     data_source_configuration: { # required
    #       data_source_s3_configuration: { # required
    #         bucket_name: "S3BucketName", # required
    #         object_key_prefix: "S3ObjectKey"
    #       },
    #       csv_configuration: {
    #         column_separator: "StringValue1",
    #         escape_char: "StringValue1",
    #         quote_char: "StringValue1",
    #         null_value: "StringValue256",
    #         trim_white_space: false
    #       },
    #       data_format: "CSV" # One of: ["CSV"], # required
    #     },
    #     report_configuration: { # required
    #       report_s3_configuration: {
    #         bucket_name: "S3BucketName", # required
    #         object_key_prefix: "S3ObjectKeyPrefix",
    #         encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #         kms_key_id: "StringValue2048"
    #       }
    #     },
    #     target_database_name: "ResourceCreateAPIName", # required
    #     target_table_name: "ResourceCreateAPIName", # required
    #     record_version: 1
    #   }
    #   options = {}
    #   response = client.create_batch_load_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "BatchLoadTaskId", # required
    #   }
    # @return [Types::CreateBatchLoadTaskResponse]
    def create_batch_load_task(params = {}, options = {})
      request = build_request(:create_batch_load_task, params)
      request.send_request(options)
    end

    # <p>Creates a new Timestream database. If the KMS key is not
    #          specified, the database will be encrypted with a Timestream managed KMS key located in your account. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed keys</a>. <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>. For
    #          details, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-db.html">code sample</a>.
    #       </p>
    # @param [Hash, Types::CreateDatabaseRequest] params
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    # @option params [String] :kms_key_id
    #   <p>The KMS key for the database. If the KMS key is not
    #            specified, the database will be encrypted with a Timestream managed KMS key located in your account. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed keys</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p> A list of key-value pairs to label the table. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     database_name: "ResourceCreateAPIName", # required
    #     kms_key_id: "StringValue2048",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database: {
    #       arn: "String",
    #       database_name: "ResourceName",
    #       table_count: 1,
    #       kms_key_id: "StringValue2048",
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::CreateDatabaseResponse]
    def create_database(params = {}, options = {})
      request = build_request(:create_database, params)
      request.send_request(options)
    end

    # <p>Adds a new table to an existing database in your account. In an Amazon Web Services account, table names must be at least unique within each Region if they are in the same
    #          database. You might have identical table names in the same Region if the tables are in
    #          separate databases. While creating the table, you must specify the table name, database
    #          name, and the retention properties. <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>. See
    #             <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.create-table.html">code
    #             sample</a> for details. </p>
    # @param [Hash, Types::CreateTableRequest] params
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    # @option params [String] :table_name
    #   <p>The name of the Timestream table.</p>
    # @option params [Types::RetentionProperties] :retention_properties
    #   <p>The duration for which your time-series data must be stored in the memory store and the
    #            magnetic store.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p> A list of key-value pairs to label the table. </p>
    # @option params [Types::MagneticStoreWriteProperties] :magnetic_store_write_properties
    #   <p>Contains properties to set on the table when enabling magnetic store writes.</p>
    # @option params [Types::Schema] :schema
    #   <p> The schema of the table. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     database_name: "ResourceCreateAPIName", # required
    #     table_name: "ResourceCreateAPIName", # required
    #     retention_properties: {
    #       memory_store_retention_period_in_hours: 1, # required
    #       magnetic_store_retention_period_in_days: 1, # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     magnetic_store_write_properties: {
    #       enable_magnetic_store_writes: false, # required
    #       magnetic_store_rejected_data_location: {
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           object_key_prefix: "S3ObjectKeyPrefix",
    #           encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #           kms_key_id: "StringValue2048"
    #         }
    #       }
    #     },
    #     schema: {
    #       composite_partition_key: [
    #         {
    #           type: "DIMENSION" # One of: ["DIMENSION", "MEASURE"], # required
    #           name: "SchemaName",
    #           enforcement_in_record: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.create_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table: {
    #       arn: "String",
    #       table_name: "ResourceName",
    #       database_name: "ResourceName",
    #       table_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "RESTORING"],
    #       retention_properties: {
    #         memory_store_retention_period_in_hours: 1, # required
    #         magnetic_store_retention_period_in_days: 1, # required
    #       },
    #       creation_time: Time.now,
    #       last_updated_time: Time.now,
    #       magnetic_store_write_properties: {
    #         enable_magnetic_store_writes: false, # required
    #         magnetic_store_rejected_data_location: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName",
    #             object_key_prefix: "S3ObjectKeyPrefix",
    #             encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #             kms_key_id: "StringValue2048"
    #           }
    #         }
    #       },
    #       schema: {
    #         composite_partition_key: [
    #           {
    #             type: "DIMENSION" # One of: ["DIMENSION", "MEASURE"], # required
    #             name: "SchemaName",
    #             enforcement_in_record: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::CreateTableResponse]
    def create_table(params = {}, options = {})
      request = build_request(:create_table, params)
      request.send_request(options)
    end

    # <p>Deletes a given Timestream database. <i>This is an irreversible
    #             operation. After a database is deleted, the time-series data from its tables cannot be
    #             recovered.</i>
    #          </p>
    #          <note>
    #             <p>All tables in the database must be deleted first, or a ValidationException error will
    #             be thrown. </p>
    #             <p>Due to the nature of distributed retries, the operation can return either success or
    #             a ResourceNotFoundException. Clients should consider them equivalent.</p>
    #          </note>
    #          <p>See <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-db.html">code sample</a>
    #          for details.</p>
    # @param [Hash, Types::DeleteDatabaseRequest] params
    # @option params [String] :database_name
    #   <p>The name of the Timestream database to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     database_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_database(params = {}, options = {})
      request = build_request(:delete_database, params)
      request.send_request(options)
    end

    # <p>Deletes a given Timestream table. This is an irreversible operation. After a
    #             Timestream database table is deleted, the time-series data stored in the table
    #          cannot be recovered. </p>
    #          <note>
    #             <p>Due to the nature of distributed retries, the operation can return either success or
    #             a ResourceNotFoundException. Clients should consider them equivalent.</p>
    #          </note>
    #          <p>See <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.delete-table.html">code
    #             sample</a> for details.</p>
    # @param [Hash, Types::DeleteTableRequest] params
    # @option params [String] :database_name
    #   <p>The name of the database where the Timestream database is to be deleted.</p>
    # @option params [String] :table_name
    #   <p>The name of the Timestream table to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     database_name: "ResourceName", # required
    #     table_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_table(params = {}, options = {})
      request = build_request(:delete_table, params)
      request.send_request(options)
    end

    # <p>Returns information about the batch load task, including configurations, mappings,
    #          progress, and other details. <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>. See
    #             <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-batch-load.html">code
    #             sample</a> for details.</p>
    # @param [Hash, Types::DescribeBatchLoadTaskRequest] params
    # @option params [String] :task_id
    #   <p>The ID of the batch load task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "BatchLoadTaskId", # required
    #   }
    #   options = {}
    #   response = client.describe_batch_load_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_load_task_description: { # required
    #       task_id: "BatchLoadTaskId",
    #       error_message: "StringValue2048",
    #       data_source_configuration: {
    #         data_source_s3_configuration: { # required
    #           bucket_name: "S3BucketName", # required
    #           object_key_prefix: "S3ObjectKey"
    #         },
    #         csv_configuration: {
    #           column_separator: "StringValue1",
    #           escape_char: "StringValue1",
    #           quote_char: "StringValue1",
    #           null_value: "StringValue256",
    #           trim_white_space: false
    #         },
    #         data_format: "CSV" # One of: ["CSV"], # required
    #       },
    #       progress_report: {
    #         records_processed: 1,
    #         records_ingested: 1,
    #         parse_failures: 1,
    #         record_ingestion_failures: 1,
    #         file_failures: 1,
    #         bytes_metered: 1
    #       },
    #       report_configuration: {
    #         report_s3_configuration: {
    #           bucket_name: "S3BucketName", # required
    #           object_key_prefix: "S3ObjectKeyPrefix",
    #           encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #           kms_key_id: "StringValue2048"
    #         }
    #       },
    #       data_model_configuration: {
    #         data_model: {
    #           time_column: "StringValue256",
    #           time_unit: "MILLISECONDS" # One of: ["MILLISECONDS", "SECONDS", "MICROSECONDS", "NANOSECONDS"],
    #           dimension_mappings: [ # required
    #             {
    #               source_column: "SchemaName",
    #               destination_column: "SchemaName"
    #             }
    #           ],
    #           multi_measure_mappings: {
    #             target_multi_measure_name: "SchemaName",
    #             multi_measure_attribute_mappings: [ # required
    #               {
    #                 source_column: "SchemaName", # required
    #                 target_multi_measure_attribute_name: "SchemaName",
    #                 measure_value_type: "DOUBLE" # One of: ["DOUBLE", "BIGINT", "BOOLEAN", "VARCHAR", "TIMESTAMP"]
    #               }
    #             ]
    #           },
    #           mixed_measure_mappings: [
    #             {
    #               measure_name: "SchemaName",
    #               source_column: "SchemaName",
    #               target_measure_name: "SchemaName",
    #               measure_value_type: "DOUBLE" # One of: ["DOUBLE", "BIGINT", "VARCHAR", "BOOLEAN", "TIMESTAMP", "MULTI"], # required
    #               multi_measure_attribute_mappings: [
    #                 {
    #                   source_column: "SchemaName", # required
    #                   target_multi_measure_attribute_name: "SchemaName",
    #                   measure_value_type: "DOUBLE" # One of: ["DOUBLE", "BIGINT", "BOOLEAN", "VARCHAR", "TIMESTAMP"]
    #                 }
    #               ]
    #             }
    #           ],
    #           measure_name_column: "StringValue256"
    #         },
    #         data_model_s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           object_key: "S3ObjectKey"
    #         }
    #       },
    #       target_database_name: "ResourceName",
    #       target_table_name: "ResourceName",
    #       task_status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "FAILED", "SUCCEEDED", "PROGRESS_STOPPED", "PENDING_RESUME"],
    #       record_version: 1,
    #       creation_time: Time.now,
    #       last_updated_time: Time.now,
    #       resumable_until: Time.now
    #     }
    #   }
    # @return [Types::DescribeBatchLoadTaskResponse]
    def describe_batch_load_task(params = {}, options = {})
      request = build_request(:describe_batch_load_task, params)
      request.send_request(options)
    end

    # <p>Returns information about the database, including the database name, time that the
    #          database was created, and the total number of tables found within the database. <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service
    #             quotas apply</a>. See <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-db.html">code sample</a>
    #          for details.</p>
    # @param [Hash, Types::DescribeDatabaseRequest] params
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     database_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database: {
    #       arn: "String",
    #       database_name: "ResourceName",
    #       table_count: 1,
    #       kms_key_id: "StringValue2048",
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeDatabaseResponse]
    def describe_database(params = {}, options = {})
      request = build_request(:describe_database, params)
      request.send_request(options)
    end

    # <p>Returns a list of available endpoints to make Timestream API calls against.
    #          This API operation is available through both the Write and Query APIs.</p>
    #          <p>Because the Timestream SDKs are designed to transparently work with the
    #          service’s architecture, including the management and mapping of the service endpoints,
    #             <i>we don't recommend that you use this API operation unless</i>:</p>
    #          <ul>
    #             <li>
    #                <p>You are using <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints">VPC endpoints (Amazon Web Services PrivateLink) with Timestream</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Your application uses a programming language that does not yet have SDK
    #                support</p>
    #             </li>
    #             <li>
    #                <p>You require better control over the client-side implementation</p>
    #             </li>
    #          </ul>
    #          <p>For detailed information on how and when to use and implement DescribeEndpoints, see
    #             <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery">The
    #             Endpoint Discovery Pattern</a>.</p>
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

    # <p>Returns information about the table, including the table name, database name, retention
    #          duration of the memory store and the magnetic store. <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>. See
    #             <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.describe-table.html">code
    #             sample</a> for details. </p>
    # @param [Hash, Types::DescribeTableRequest] params
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    # @option params [String] :table_name
    #   <p>The name of the Timestream table.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     database_name: "ResourceName", # required
    #     table_name: "ResourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table: {
    #       arn: "String",
    #       table_name: "ResourceName",
    #       database_name: "ResourceName",
    #       table_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "RESTORING"],
    #       retention_properties: {
    #         memory_store_retention_period_in_hours: 1, # required
    #         magnetic_store_retention_period_in_days: 1, # required
    #       },
    #       creation_time: Time.now,
    #       last_updated_time: Time.now,
    #       magnetic_store_write_properties: {
    #         enable_magnetic_store_writes: false, # required
    #         magnetic_store_rejected_data_location: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName",
    #             object_key_prefix: "S3ObjectKeyPrefix",
    #             encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #             kms_key_id: "StringValue2048"
    #           }
    #         }
    #       },
    #       schema: {
    #         composite_partition_key: [
    #           {
    #             type: "DIMENSION" # One of: ["DIMENSION", "MEASURE"], # required
    #             name: "SchemaName",
    #             enforcement_in_record: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DescribeTableResponse]
    def describe_table(params = {}, options = {})
      request = build_request(:describe_table, params)
      request.send_request(options)
    end

    # <p>Provides a list of batch load tasks, along with the name, status, when the task is
    #          resumable until, and other details. See <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-batch-load-tasks.html">code
    #             sample</a> for details.</p>
    # @param [Hash, Types::ListBatchLoadTasksRequest] params
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating. This is the NextToken from a previously
    #            truncated response.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of items to return in the output. If the total number of items
    #            available is more than the value specified, a NextToken is provided in the output. To
    #            resume pagination, provide the NextToken value as argument of a subsequent API
    #            invocation.</p>
    # @option params [String] :task_status
    #   <p>Status of the batch load task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     task_status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "FAILED", "SUCCEEDED", "PROGRESS_STOPPED", "PENDING_RESUME"]
    #   }
    #   options = {}
    #   response = client.list_batch_load_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     batch_load_tasks: [
    #       {
    #         task_id: "BatchLoadTaskId",
    #         task_status: "CREATED" # One of: ["CREATED", "IN_PROGRESS", "FAILED", "SUCCEEDED", "PROGRESS_STOPPED", "PENDING_RESUME"],
    #         database_name: "ResourceName",
    #         table_name: "ResourceName",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         resumable_until: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListBatchLoadTasksResponse]
    def list_batch_load_tasks(params = {}, options = {})
      request = build_request(:list_batch_load_tasks, params)
      request.send_request(options)
    end

    # <p>Returns a list of your Timestream databases. <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>. See
    #             <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-db.html">code sample</a> for
    #          details. </p>
    # @param [Hash, Types::ListDatabasesRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a
    #            subsequent API invocation.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of items to return in the output. If the total number of items
    #            available is more than the value specified, a NextToken is provided in the output. To
    #            resume pagination, provide the NextToken value as argument of a subsequent API
    #            invocation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_databases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     databases: [
    #       {
    #         arn: "String",
    #         database_name: "ResourceName",
    #         table_count: 1,
    #         kms_key_id: "StringValue2048",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDatabasesResponse]
    def list_databases(params = {}, options = {})
      request = build_request(:list_databases, params)
      request.send_request(options)
    end

    # <p>Provides a list of tables, along with the name, status, and retention properties of each
    #          table. See <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.list-table.html">code sample</a>
    #          for details. </p>
    # @param [Hash, Types::ListTablesRequest] params
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    # @option params [String] :next_token
    #   <p>The pagination token. To resume pagination, provide the NextToken value as argument of a
    #            subsequent API invocation.</p>
    # @option params [Integer] :max_results
    #   <p>The total number of items to return in the output. If the total number of items
    #            available is more than the value specified, a NextToken is provided in the output. To
    #            resume pagination, provide the NextToken value as argument of a subsequent API
    #            invocation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     database_name: "ResourceName",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tables: [
    #       {
    #         arn: "String",
    #         table_name: "ResourceName",
    #         database_name: "ResourceName",
    #         table_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "RESTORING"],
    #         retention_properties: {
    #           memory_store_retention_period_in_hours: 1, # required
    #           magnetic_store_retention_period_in_days: 1, # required
    #         },
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         magnetic_store_write_properties: {
    #           enable_magnetic_store_writes: false, # required
    #           magnetic_store_rejected_data_location: {
    #             s3_configuration: {
    #               bucket_name: "S3BucketName",
    #               object_key_prefix: "S3ObjectKeyPrefix",
    #               encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #               kms_key_id: "StringValue2048"
    #             }
    #           }
    #         },
    #         schema: {
    #           composite_partition_key: [
    #             {
    #               type: "DIMENSION" # One of: ["DIMENSION", "MEASURE"], # required
    #               name: "SchemaName",
    #               enforcement_in_record: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL"]
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTablesResponse]
    def list_tables(params = {}, options = {})
      request = build_request(:list_tables, params)
      request.send_request(options)
    end

    # <p> Lists all tags on a Timestream resource. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Timestream resource with tags to be listed. This value is an Amazon
    #            Resource Name (ARN). </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>
    #       </p>
    # @param [Hash, Types::ResumeBatchLoadTaskRequest] params
    # @option params [String] :task_id
    #   <p>The ID of the batch load task to resume.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "BatchLoadTaskId", # required
    #   }
    #   options = {}
    #   response = client.resume_batch_load_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ResumeBatchLoadTaskResponse]
    def resume_batch_load_task(params = {}, options = {})
      request = build_request(:resume_batch_load_task, params)
      request.send_request(options)
    end

    # <p> Associates a set of tags with a Timestream resource. You can then activate
    #          these user-defined tags so that they appear on the Billing and Cost Management console for
    #          cost allocation tracking. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> Identifies the Timestream resource to which tags should be added. This value
    #            is an Amazon Resource Name (ARN). </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p> The tags to be assigned to the Timestream resource. </p>
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

    # <p> Removes the association of tags from a Timestream resource. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p> The Timestream resource that the tags will be removed from. This value is an
    #            Amazon Resource Name (ARN). </p>
    # @option params [Array<String>] :tag_keys
    #   <p> A list of tags keys. Existing tags of the resource whose keys are members of this list
    #            will be removed from the Timestream resource. </p>
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

    # <p> Modifies the KMS key for an existing database. While updating the
    #          database, you must specify the database name and the identifier of the new KMS key to be used (<code>KmsKeyId</code>). If there are any concurrent
    #             <code>UpdateDatabase</code> requests, first writer wins. </p>
    #          <p>See <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-db.html">code sample</a>
    #          for details.</p>
    # @param [Hash, Types::UpdateDatabaseRequest] params
    # @option params [String] :database_name
    #   <p> The name of the database. </p>
    # @option params [String] :kms_key_id
    #   <p> The identifier of the new KMS key (<code>KmsKeyId</code>) to be used to
    #            encrypt the data stored in the database. If the <code>KmsKeyId</code> currently registered
    #            with the database is the same as the <code>KmsKeyId</code> in the request, there will not
    #            be any update. </p>
    #            <p>You can specify the <code>KmsKeyId</code> using any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN:
    #                     <code>arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias name: <code>alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Alias ARN:
    #                  <code>arn:aws:kms:us-east-1:111122223333:alias/ExampleAlias</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     database_name: "ResourceName", # required
    #     kms_key_id: "StringValue2048", # required
    #   }
    #   options = {}
    #   response = client.update_database(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     database: {
    #       arn: "String",
    #       database_name: "ResourceName",
    #       table_count: 1,
    #       kms_key_id: "StringValue2048",
    #       creation_time: Time.now,
    #       last_updated_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateDatabaseResponse]
    def update_database(params = {}, options = {})
      request = build_request(:update_database, params)
      request.send_request(options)
    end

    # <p>Modifies the retention duration of the memory store and magnetic store for your Timestream table. Note that the change in retention duration takes effect immediately.
    #          For example, if the retention period of the memory store was initially set to 2 hours and
    #          then changed to 24 hours, the memory store will be capable of holding 24 hours of data, but
    #          will be populated with 24 hours of data 22 hours after this change was made. Timestream does not retrieve data from the magnetic store to populate the memory store. </p>
    #          <p>See <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.update-table.html">code
    #             sample</a> for details.</p>
    # @param [Hash, Types::UpdateTableRequest] params
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    # @option params [String] :table_name
    #   <p>The name of the Timestream table.</p>
    # @option params [Types::RetentionProperties] :retention_properties
    #   <p>The retention duration of the memory store and the magnetic store.</p>
    # @option params [Types::MagneticStoreWriteProperties] :magnetic_store_write_properties
    #   <p>Contains properties to set on the table when enabling magnetic store writes.</p>
    # @option params [Types::Schema] :schema
    #   <p> The schema of the table. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     database_name: "ResourceName", # required
    #     table_name: "ResourceName", # required
    #     retention_properties: {
    #       memory_store_retention_period_in_hours: 1, # required
    #       magnetic_store_retention_period_in_days: 1, # required
    #     },
    #     magnetic_store_write_properties: {
    #       enable_magnetic_store_writes: false, # required
    #       magnetic_store_rejected_data_location: {
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           object_key_prefix: "S3ObjectKeyPrefix",
    #           encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #           kms_key_id: "StringValue2048"
    #         }
    #       }
    #     },
    #     schema: {
    #       composite_partition_key: [
    #         {
    #           type: "DIMENSION" # One of: ["DIMENSION", "MEASURE"], # required
    #           name: "SchemaName",
    #           enforcement_in_record: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL"]
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table: {
    #       arn: "String",
    #       table_name: "ResourceName",
    #       database_name: "ResourceName",
    #       table_status: "ACTIVE" # One of: ["ACTIVE", "DELETING", "RESTORING"],
    #       retention_properties: {
    #         memory_store_retention_period_in_hours: 1, # required
    #         magnetic_store_retention_period_in_days: 1, # required
    #       },
    #       creation_time: Time.now,
    #       last_updated_time: Time.now,
    #       magnetic_store_write_properties: {
    #         enable_magnetic_store_writes: false, # required
    #         magnetic_store_rejected_data_location: {
    #           s3_configuration: {
    #             bucket_name: "S3BucketName",
    #             object_key_prefix: "S3ObjectKeyPrefix",
    #             encryption_option: "SSE_S3" # One of: ["SSE_S3", "SSE_KMS"],
    #             kms_key_id: "StringValue2048"
    #           }
    #         }
    #       },
    #       schema: {
    #         composite_partition_key: [
    #           {
    #             type: "DIMENSION" # One of: ["DIMENSION", "MEASURE"], # required
    #             name: "SchemaName",
    #             enforcement_in_record: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdateTableResponse]
    def update_table(params = {}, options = {})
      request = build_request(:update_table, params)
      request.send_request(options)
    end

    # <p>Enables you to write your time-series data into Timestream. You can specify a
    #          single data point or a batch of data points to be inserted into the system. Timestream offers you a flexible schema that auto detects the column names and data
    #          types for your Timestream tables based on the dimension names and data types of
    #          the data points you specify when invoking writes into the database. </p>
    #          <p>Timestream supports eventual consistency read semantics. This means that when
    #          you query data immediately after writing a batch of data into Timestream, the
    #          query results might not reflect the results of a recently completed write operation. The
    #          results may also include some stale data. If you repeat the query request after a short
    #          time, the results should return the latest data. <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html">Service quotas apply</a>. </p>
    #          <p>See <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.write.html">code sample</a> for
    #          details.</p>
    #          <p>
    #             <b>Upserts</b>
    #          </p>
    #          <p>You can use the <code>Version</code> parameter in a <code>WriteRecords</code> request to
    #          update data points. Timestream tracks a version number with each record.
    #             <code>Version</code> defaults to <code>1</code> when it's not specified for the record
    #          in the request. Timestream updates an existing record’s measure value along with
    #          its <code>Version</code> when it receives a write request with a higher
    #             <code>Version</code> number for that record. When it receives an update request where
    #          the measure value is the same as that of the existing record, Timestream still
    #          updates <code>Version</code>, if it is greater than the existing value of
    #             <code>Version</code>. You can update a data point as many times as desired, as long as
    #          the value of <code>Version</code> continuously increases. </p>
    #          <p> For example, suppose you write a new record without indicating <code>Version</code> in
    #          the request. Timestream stores this record, and set <code>Version</code> to
    #             <code>1</code>. Now, suppose you try to update this record with a
    #             <code>WriteRecords</code> request of the same record with a different measure value but,
    #          like before, do not provide <code>Version</code>. In this case, Timestream will
    #          reject this update with a <code>RejectedRecordsException</code> since the updated record’s
    #          version is not greater than the existing value of Version. </p>
    #          <p>However, if you were to resend the update request with <code>Version</code> set to
    #             <code>2</code>, Timestream would then succeed in updating the record’s value,
    #          and the <code>Version</code> would be set to <code>2</code>. Next, suppose you sent a
    #             <code>WriteRecords</code> request with this same record and an identical measure value,
    #          but with <code>Version</code> set to <code>3</code>. In this case, Timestream
    #          would only update <code>Version</code> to <code>3</code>. Any further updates would need to
    #          send a version number greater than <code>3</code>, or the update requests would receive a
    #             <code>RejectedRecordsException</code>. </p>
    # @param [Hash, Types::WriteRecordsRequest] params
    # @option params [String] :database_name
    #   <p>The name of the Timestream database.</p>
    # @option params [String] :table_name
    #   <p>The name of the Timestream table.</p>
    # @option params [Types::Record] :common_attributes
    #   <p>A record that contains the common measure, dimension, time, and version attributes
    #            shared across all the records in the request. The measure and dimension attributes
    #            specified will be merged with the measure and dimension attributes in the records object
    #            when the data is written into Timestream. Dimensions may not overlap, or a
    #               <code>ValidationException</code> will be thrown. In other words, a record must contain
    #            dimensions with unique names. </p>
    # @option params [Array<Types::Record>] :records
    #   <p>An array of records that contain the unique measure, dimension, time, and version
    #            attributes for each time-series data point. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     database_name: "ResourceName", # required
    #     table_name: "ResourceName", # required
    #     common_attributes: {
    #       dimensions: [
    #         {
    #           name: "SchemaName", # required
    #           value: "SchemaValue", # required
    #           dimension_value_type: "VARCHAR" # One of: ["VARCHAR"]
    #         }
    #       ],
    #       measure_name: "SchemaName",
    #       measure_value: "StringValue2048",
    #       measure_value_type: "DOUBLE" # One of: ["DOUBLE", "BIGINT", "VARCHAR", "BOOLEAN", "TIMESTAMP", "MULTI"],
    #       time: "StringValue256",
    #       time_unit: "MILLISECONDS" # One of: ["MILLISECONDS", "SECONDS", "MICROSECONDS", "NANOSECONDS"],
    #       version: 1,
    #       measure_values: [
    #         {
    #           name: "SchemaName", # required
    #           value: "StringValue2048", # required
    #           type: "DOUBLE" # One of: ["DOUBLE", "BIGINT", "VARCHAR", "BOOLEAN", "TIMESTAMP", "MULTI"], # required
    #         }
    #       ]
    #     },
    #     records: [ # required
    #       {
    #         dimensions: [
    #           {
    #             name: "SchemaName", # required
    #             value: "SchemaValue", # required
    #             dimension_value_type: "VARCHAR" # One of: ["VARCHAR"]
    #           }
    #         ],
    #         measure_name: "SchemaName",
    #         measure_value: "StringValue2048",
    #         measure_value_type: "DOUBLE" # One of: ["DOUBLE", "BIGINT", "VARCHAR", "BOOLEAN", "TIMESTAMP", "MULTI"],
    #         time: "StringValue256",
    #         time_unit: "MILLISECONDS" # One of: ["MILLISECONDS", "SECONDS", "MICROSECONDS", "NANOSECONDS"],
    #         version: 1,
    #         measure_values: [
    #           {
    #             name: "SchemaName", # required
    #             value: "StringValue2048", # required
    #             type: "DOUBLE" # One of: ["DOUBLE", "BIGINT", "VARCHAR", "BOOLEAN", "TIMESTAMP", "MULTI"], # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.write_records(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     records_ingested: {
    #       total: 1,
    #       memory_store: 1,
    #       magnetic_store: 1
    #     }
    #   }
    # @return [Types::WriteRecordsResponse]
    def write_records(params = {}, options = {})
      request = build_request(:write_records, params)
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
      context[:gem_name] = 'aws-sdk-timestreamwrite'
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
