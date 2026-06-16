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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:bcmdataexports)

module Aws::BCMDataExports
  # An API client for Aws::BCMDataExports.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSBillingAndCostManagementDataExports
    @identifier = :bcmdataexports

    add_plugin(::Aws::BCMDataExports::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::BCMDataExports::EndpointProvider)
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

    # <p>Creates a data export and specifies the data query, the delivery preference, and any
    #       optional resource tags.</p>
    #          <p>A <code>DataQuery</code> consists of both a <code>QueryStatement</code> and
    #         <code>TableConfigurations</code>.</p>
    #          <p>The <code>QueryStatement</code> is an SQL statement. Data Exports only supports a limited
    #       subset of the SQL syntax. For more information on the SQL syntax that is supported, see <a href="https://docs.aws.amazon.com/cur/latest/userguide/de-data-query.html">Data query</a>. To
    #       view the available tables and columns, see the <a href="https://docs.aws.amazon.com/cur/latest/userguide/de-table-dictionary.html">Data Exports table
    #         dictionary</a>.</p>
    #          <p>The <code>TableConfigurations</code> is a collection of specified
    #         <code>TableProperties</code> for the table being queried in the <code>QueryStatement</code>.
    #       TableProperties are additional configurations you can provide to change the data and schema of
    #       a table. Each table can have different TableProperties. However, tables are not required to
    #       have any TableProperties. Each table property has a default value that it assumes if not
    #       specified. For more information on table configurations, see <a href="https://docs.aws.amazon.com/cur/latest/userguide/de-data-query.html">Data query</a>. To
    #       view the table properties available for each table, see the <a href="https://docs.aws.amazon.com/cur/latest/userguide/de-table-dictionary.html">Data Exports table
    #         dictionary</a> or use the <code>ListTables</code> API to get a response of all tables
    #       and their available properties.</p>
    # @param [Hash, Types::CreateExportRequest] params
    # @option params [Types::Export] :export
    #   <p>The details of the export, including data query, name, description, and destination
    #         configuration.</p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>An optional list of tags to associate with the specified export. Each tag consists of a
    #         key and a value, and each key must be unique for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export: { # required
    #       export_arn: "Arn",
    #       name: "ExportName", # required
    #       description: "GenericString",
    #       data_query: { # required
    #         query_statement: "QueryStatement", # required
    #         table_configurations: {
    #           "TableName" => {
    #             "TableProperty" => "GenericString"
    #           }
    #         }
    #       },
    #       destination_configurations: { # required
    #         s3_destination: { # required
    #           s3_bucket: "GenericString", # required
    #           s3_prefix: "GenericString", # required
    #           s3_region: "GenericString", # required
    #           s3_output_configurations: { # required
    #             output_type: "CUSTOM" # One of: ["CUSTOM"], # required
    #             format: "TEXT_OR_CSV" # One of: ["TEXT_OR_CSV", "PARQUET"], # required
    #             compression: "GZIP" # One of: ["GZIP", "PARQUET"], # required
    #             overwrite: "CREATE_NEW_REPORT" # One of: ["CREATE_NEW_REPORT", "OVERWRITE_REPORT"], # required
    #           }
    #         }
    #       },
    #       refresh_cadence: { # required
    #         frequency: "SYNCHRONOUS" # One of: ["SYNCHRONOUS"], # required
    #       }
    #     },
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_arn: "Arn"
    #   }
    # @return [Types::CreateExportResponse]
    def create_export(params = {}, options = {})
      request = build_request(:create_export, params)
      request.send_request(options)
    end

    # <p>Deletes an existing data export.</p>
    # @param [Hash, Types::DeleteExportRequest] params
    # @option params [String] :export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.delete_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_arn: "Arn"
    #   }
    # @return [Types::DeleteExportResponse]
    def delete_export(params = {}, options = {})
      request = build_request(:delete_export, params)
      request.send_request(options)
    end

    # <p>Exports data based on the source data update.</p>
    # @param [Hash, Types::GetExecutionRequest] params
    # @option params [String] :export_arn
    #   <p>The Amazon Resource Name (ARN) of the Export object that generated this specific
    #         execution.</p>
    # @option params [String] :execution_id
    #   <p>The ID for this specific execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_arn: "Arn", # required
    #     execution_id: "GenericString", # required
    #   }
    #   options = {}
    #   response = client.get_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_id: "GenericString",
    #     export: {
    #       export_arn: "Arn",
    #       name: "ExportName", # required
    #       description: "GenericString",
    #       data_query: { # required
    #         query_statement: "QueryStatement", # required
    #         table_configurations: {
    #           "TableName" => {
    #             "TableProperty" => "GenericString"
    #           }
    #         }
    #       },
    #       destination_configurations: { # required
    #         s3_destination: { # required
    #           s3_bucket: "GenericString", # required
    #           s3_prefix: "GenericString", # required
    #           s3_region: "GenericString", # required
    #           s3_output_configurations: { # required
    #             output_type: "CUSTOM" # One of: ["CUSTOM"], # required
    #             format: "TEXT_OR_CSV" # One of: ["TEXT_OR_CSV", "PARQUET"], # required
    #             compression: "GZIP" # One of: ["GZIP", "PARQUET"], # required
    #             overwrite: "CREATE_NEW_REPORT" # One of: ["CREATE_NEW_REPORT", "OVERWRITE_REPORT"], # required
    #           }
    #         }
    #       },
    #       refresh_cadence: { # required
    #         frequency: "SYNCHRONOUS" # One of: ["SYNCHRONOUS"], # required
    #       }
    #     },
    #     execution_status: {
    #       status_code: "INITIATION_IN_PROCESS" # One of: ["INITIATION_IN_PROCESS", "QUERY_QUEUED", "QUERY_IN_PROCESS", "QUERY_FAILURE", "DELIVERY_IN_PROCESS", "DELIVERY_SUCCESS", "DELIVERY_FAILURE"],
    #       status_reason: "INSUFFICIENT_PERMISSION" # One of: ["INSUFFICIENT_PERMISSION", "BILL_OWNER_CHANGED", "INTERNAL_FAILURE"],
    #       created_at: Time.now,
    #       completed_at: Time.now,
    #       last_updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetExecutionResponse]
    def get_execution(params = {}, options = {})
      request = build_request(:get_execution, params)
      request.send_request(options)
    end

    # <p>Views the definition of an existing data export.</p>
    # @param [Hash, Types::GetExportRequest] params
    # @option params [String] :export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.get_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export: {
    #       export_arn: "Arn",
    #       name: "ExportName", # required
    #       description: "GenericString",
    #       data_query: { # required
    #         query_statement: "QueryStatement", # required
    #         table_configurations: {
    #           "TableName" => {
    #             "TableProperty" => "GenericString"
    #           }
    #         }
    #       },
    #       destination_configurations: { # required
    #         s3_destination: { # required
    #           s3_bucket: "GenericString", # required
    #           s3_prefix: "GenericString", # required
    #           s3_region: "GenericString", # required
    #           s3_output_configurations: { # required
    #             output_type: "CUSTOM" # One of: ["CUSTOM"], # required
    #             format: "TEXT_OR_CSV" # One of: ["TEXT_OR_CSV", "PARQUET"], # required
    #             compression: "GZIP" # One of: ["GZIP", "PARQUET"], # required
    #             overwrite: "CREATE_NEW_REPORT" # One of: ["CREATE_NEW_REPORT", "OVERWRITE_REPORT"], # required
    #           }
    #         }
    #       },
    #       refresh_cadence: { # required
    #         frequency: "SYNCHRONOUS" # One of: ["SYNCHRONOUS"], # required
    #       }
    #     },
    #     export_status: {
    #       status_code: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #       status_reason: "INSUFFICIENT_PERMISSION" # One of: ["INSUFFICIENT_PERMISSION", "BILL_OWNER_CHANGED", "INTERNAL_FAILURE"],
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       last_refreshed_at: Time.now
    #     }
    #   }
    # @return [Types::GetExportResponse]
    def get_export(params = {}, options = {})
      request = build_request(:get_export, params)
      request.send_request(options)
    end

    # <p>Returns the metadata for the specified table and table properties. This includes the list
    #       of columns in the table schema, their data types, and column descriptions.</p>
    # @param [Hash, Types::GetTableRequest] params
    # @option params [String] :table_name
    #   <p>The name of the table.</p>
    # @option params [Hash<String, String>] :table_properties
    #   <p>TableProperties are additional configurations you can provide to change the data and
    #         schema of a table. Each table can have different TableProperties. Tables are not required to
    #         have any TableProperties. Each table property has a default value that it assumes if not
    #         specified.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     table_name: "TableName", # required
    #     table_properties: {
    #       "TableProperty" => "GenericString"
    #     }
    #   }
    #   options = {}
    #   response = client.get_table(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     table_name: "TableName",
    #     description: "GenericString",
    #     table_properties: {
    #       "TableProperty" => "GenericString"
    #     },
    #     schema: [
    #       {
    #         name: "GenericString",
    #         type: "GenericString",
    #         description: "GenericString"
    #       }
    #     ]
    #   }
    # @return [Types::GetTableResponse]
    def get_table(params = {}, options = {})
      request = build_request(:get_table, params)
      request.send_request(options)
    end

    # <p>Lists the historical executions for the export.</p>
    # @param [Hash, Types::ListExecutionsRequest] params
    # @option params [String] :export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that are returned for the request.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.list_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     executions: [
    #       {
    #         execution_id: "GenericString", # required
    #         execution_status: { # required
    #           status_code: "INITIATION_IN_PROCESS" # One of: ["INITIATION_IN_PROCESS", "QUERY_QUEUED", "QUERY_IN_PROCESS", "QUERY_FAILURE", "DELIVERY_IN_PROCESS", "DELIVERY_SUCCESS", "DELIVERY_FAILURE"],
    #           status_reason: "INSUFFICIENT_PERMISSION" # One of: ["INSUFFICIENT_PERMISSION", "BILL_OWNER_CHANGED", "INTERNAL_FAILURE"],
    #           created_at: Time.now,
    #           completed_at: Time.now,
    #           last_updated_at: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListExecutionsResponse]
    def list_executions(params = {}, options = {})
      request = build_request(:list_executions, params)
      request.send_request(options)
    end

    # <p>Lists all data export definitions.</p>
    # @param [Hash, Types::ListExportsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that are returned for the request.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.list_exports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     exports: [
    #       {
    #         export_arn: "Arn", # required
    #         export_name: "ExportName", # required
    #         export_status: { # required
    #           status_code: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY"],
    #           status_reason: "INSUFFICIENT_PERMISSION" # One of: ["INSUFFICIENT_PERMISSION", "BILL_OWNER_CHANGED", "INTERNAL_FAILURE"],
    #           created_at: Time.now,
    #           last_updated_at: Time.now,
    #           last_refreshed_at: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListExportsResponse]
    def list_exports(params = {}, options = {})
      request = build_request(:list_exports, params)
      request.send_request(options)
    end

    # <p>Lists all available tables in data exports.</p>
    # @param [Hash, Types::ListTablesRequest] params
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that are returned for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextPageToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tables: [
    #       {
    #         table_name: "TableName",
    #         description: "GenericString",
    #         table_properties: [
    #           {
    #             name: "GenericString",
    #             valid_values: ["GenericString"],
    #             default_value: "GenericString",
    #             description: "GenericString"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListTablesResponse]
    def list_tables(params = {}, options = {})
      request = build_request(:list_tables, params)
      request.send_request(options)
    end

    # <p>List tags associated with an existing data export.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The unique identifier for the resource.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that are returned for the request.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     max_results: 1,
    #     next_token: "NextPageToken"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       }
    #     ],
    #     next_token: "NextPageToken"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds tags for an existing data export definition.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The unique identifier for the resource.</p>
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   <p>The tags to associate with the resource. Each tag consists of a key and a value, and each
    #         key must be unique for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     resource_tags: [ # required
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
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

    # <p>Deletes tags associated with an existing data export definition.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The unique identifier for the resource.</p>
    # @option params [Array<String>] :resource_tag_keys
    #   <p>The tag keys that are associated with the resource ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     resource_tag_keys: ["ResourceTagKey"], # required
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

    # <p>Updates an existing data export by overwriting all export parameters. All export
    #       parameters must be provided in the UpdateExport request.</p>
    # @param [Hash, Types::UpdateExportRequest] params
    # @option params [String] :export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    # @option params [Types::Export] :export
    #   <p>The name and query details for the export.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_arn: "Arn", # required
    #     export: { # required
    #       export_arn: "Arn",
    #       name: "ExportName", # required
    #       description: "GenericString",
    #       data_query: { # required
    #         query_statement: "QueryStatement", # required
    #         table_configurations: {
    #           "TableName" => {
    #             "TableProperty" => "GenericString"
    #           }
    #         }
    #       },
    #       destination_configurations: { # required
    #         s3_destination: { # required
    #           s3_bucket: "GenericString", # required
    #           s3_prefix: "GenericString", # required
    #           s3_region: "GenericString", # required
    #           s3_output_configurations: { # required
    #             output_type: "CUSTOM" # One of: ["CUSTOM"], # required
    #             format: "TEXT_OR_CSV" # One of: ["TEXT_OR_CSV", "PARQUET"], # required
    #             compression: "GZIP" # One of: ["GZIP", "PARQUET"], # required
    #             overwrite: "CREATE_NEW_REPORT" # One of: ["CREATE_NEW_REPORT", "OVERWRITE_REPORT"], # required
    #           }
    #         }
    #       },
    #       refresh_cadence: { # required
    #         frequency: "SYNCHRONOUS" # One of: ["SYNCHRONOUS"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     export_arn: "Arn"
    #   }
    # @return [Types::UpdateExportResponse]
    def update_export(params = {}, options = {})
      request = build_request(:update_export, params)
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
      context[:gem_name] = 'aws-sdk-bcmdataexports'
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
