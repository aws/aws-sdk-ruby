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

module Aws::KinesisAnalyticsV2
  # An API client for Aws::KinesisAnalyticsV2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::KinesisAnalytics20180523

    add_plugin(::Aws::KinesisAnalyticsV2::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::KinesisAnalyticsV2::EndpointProvider)
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

    # <p>Adds an Amazon CloudWatch log stream to monitor application configuration errors.</p>
    # @param [Hash, Types::AddApplicationCloudWatchLoggingOptionRequest] params
    # @option params [String] :application_name
    #   <p>The Kinesis Data Analytics application name.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The version ID of the SQL-based Kinesis Data Analytics application. You must provide the
    #           <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>.You can
    #         retrieve the application version ID using <a>DescribeApplication</a>. For better
    #         concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    # @option params [Types::CloudWatchLoggingOption] :cloud_watch_logging_option
    #   <p>Provides the Amazon CloudWatch log stream Amazon Resource Name (ARN). </p>
    # @option params [String] :conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must
    #         provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You
    #         get the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the
    #           <code>ConditionalToken</code> parameter instead of
    #         <code>CurrentApplicationVersionId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1,
    #     cloud_watch_logging_option: { # required
    #       log_stream_arn: "LogStreamARN", # required
    #     },
    #     conditional_token: "ConditionalToken"
    #   }
    #   options = {}
    #   response = client.add_application_cloud_watch_logging_option(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ResourceARN",
    #     application_version_id: 1,
    #     cloud_watch_logging_option_descriptions: [
    #       {
    #         cloud_watch_logging_option_id: "Id",
    #         log_stream_arn: "LogStreamARN", # required
    #         role_arn: "RoleARN"
    #       }
    #     ],
    #     operation_id: "OperationId"
    #   }
    # @return [Types::AddApplicationCloudWatchLoggingOptionResponse]
    def add_application_cloud_watch_logging_option(params = {}, options = {})
      request = build_request(:add_application_cloud_watch_logging_option, params)
      request.send_request(options)
    end

    # <p>
    #       Adds a streaming source to your SQL-based Kinesis Data Analytics application. 
    #     </p>
    #          <p>You can add a streaming source when you create an application, or you can use this
    #       operation to add a streaming source after you create an application. For more information, see
    #         <a>CreateApplication</a>.</p>
    #          <p>Any configuration update, including adding a streaming source using this operation,  
    #       results in a new version of the application. You can use the <a>DescribeApplication</a> operation  
    #       to find the current application version.
    #     </p>
    # @param [Hash, Types::AddApplicationInputRequest] params
    # @option params [String] :application_name
    #   <p>The name of your existing application to which you want to add the streaming
    #         source.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The current version of your application. 
    #           You must provide the <code>ApplicationVersionID</code> or the <code>ConditionalToken</code>.You can use the <a>DescribeApplication</a> operation to find the current application version.</p>
    # @option params [Types::Input] :input
    #   <p>The <a>Input</a> to add.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     input: { # required
    #       name_prefix: "InAppStreamName", # required
    #       input_processing_configuration: {
    #         input_lambda_processor: { # required
    #           resource_arn: "ResourceARN", # required
    #         }
    #       },
    #       kinesis_streams_input: {
    #         resource_arn: "ResourceARN", # required
    #       },
    #       kinesis_firehose_input: {
    #         resource_arn: "ResourceARN", # required
    #       },
    #       input_parallelism: {
    #         count: 1
    #       },
    #       input_schema: { # required
    #         record_format: { # required
    #           record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #           mapping_parameters: {
    #             json_mapping_parameters: {
    #               record_row_path: "RecordRowPath", # required
    #             },
    #             csv_mapping_parameters: {
    #               record_row_delimiter: "RecordRowDelimiter", # required
    #               record_column_delimiter: "RecordColumnDelimiter", # required
    #             }
    #           }
    #         },
    #         record_encoding: "RecordEncoding",
    #         record_columns: [ # required
    #           {
    #             name: "RecordColumnName", # required
    #             mapping: "RecordColumnMapping",
    #             sql_type: "RecordColumnSqlType", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.add_application_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ResourceARN",
    #     application_version_id: 1,
    #     input_descriptions: [
    #       {
    #         input_id: "Id",
    #         name_prefix: "InAppStreamName",
    #         in_app_stream_names: ["InAppStreamName"],
    #         input_processing_configuration_description: {
    #           input_lambda_processor_description: {
    #             resource_arn: "ResourceARN", # required
    #             role_arn: "RoleARN"
    #           }
    #         },
    #         kinesis_streams_input_description: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN"
    #         },
    #         kinesis_firehose_input_description: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN"
    #         },
    #         input_schema: {
    #           record_format: { # required
    #             record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #             mapping_parameters: {
    #               json_mapping_parameters: {
    #                 record_row_path: "RecordRowPath", # required
    #               },
    #               csv_mapping_parameters: {
    #                 record_row_delimiter: "RecordRowDelimiter", # required
    #                 record_column_delimiter: "RecordColumnDelimiter", # required
    #               }
    #             }
    #           },
    #           record_encoding: "RecordEncoding",
    #           record_columns: [ # required
    #             {
    #               name: "RecordColumnName", # required
    #               mapping: "RecordColumnMapping",
    #               sql_type: "RecordColumnSqlType", # required
    #             }
    #           ]
    #         },
    #         input_parallelism: {
    #           count: 1
    #         },
    #         input_starting_position_configuration: {
    #           input_starting_position: "NOW" # One of: ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::AddApplicationInputResponse]
    def add_application_input(params = {}, options = {})
      request = build_request(:add_application_input, params)
      request.send_request(options)
    end

    # <p>Adds an <a>InputProcessingConfiguration</a> to a SQL-based Kinesis Data Analytics application. An input processor pre-processes records 
    #       on the input stream before the
    #       application's SQL code executes. Currently, the only input processor available is <a href="https://docs.aws.amazon.com/lambda/">Amazon Lambda</a>.</p>
    # @param [Hash, Types::AddApplicationInputProcessingConfigurationRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application to which you want to add the input processing
    #         configuration.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The version of the application to which you want to add the input processing
    #         configuration. You can use the <a>DescribeApplication</a> operation to get the
    #         current application version. If the version specified is not the current version, the
    #           <code>ConcurrentModificationException</code> is returned.</p>
    # @option params [String] :input_id
    #   <p>The ID of the input configuration to add the input processing configuration to. You
    #         can get a list of the input IDs for an application using the <a>DescribeApplication</a> operation.</p>
    # @option params [Types::InputProcessingConfiguration] :input_processing_configuration
    #   <p>The <a>InputProcessingConfiguration</a> to add to the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     input_id: "Id", # required
    #     input_processing_configuration: { # required
    #       input_lambda_processor: { # required
    #         resource_arn: "ResourceARN", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.add_application_input_processing_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ResourceARN",
    #     application_version_id: 1,
    #     input_id: "Id",
    #     input_processing_configuration_description: {
    #       input_lambda_processor_description: {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN"
    #       }
    #     }
    #   }
    # @return [Types::AddApplicationInputProcessingConfigurationResponse]
    def add_application_input_processing_configuration(params = {}, options = {})
      request = build_request(:add_application_input_processing_configuration, params)
      request.send_request(options)
    end

    # <p>Adds an external destination to your SQL-based Kinesis Data Analytics application.</p>
    #          <p>If you want Kinesis Data Analytics to deliver data from an in-application stream within
    #       your application to an external destination (such as an Kinesis data stream, a Kinesis Data
    #       Firehose delivery stream, or an Amazon Lambda function), you add the relevant configuration to
    #       your application using this operation. You can configure one or more outputs for your
    #       application. Each output configuration maps an in-application stream and an external
    #       destination.</p>
    #          <p> You can use one of the output configurations to deliver data from your
    #       in-application error stream to an external destination so that you can analyze the
    #       errors.  </p>
    #          <p> Any configuration update, including adding a streaming source using this
    #       operation, results in a new version of the application. You can use the <a>DescribeApplication</a> operation to find the current application
    #       version.</p>
    # @param [Hash, Types::AddApplicationOutputRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application to which you want to add the output configuration.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The version of the application to which you want to add the output configuration. You can
    #         use the <a>DescribeApplication</a> operation to get the current application
    #         version. If the version specified is not the current version, the
    #           <code>ConcurrentModificationException</code> is returned. </p>
    # @option params [Types::Output] :output
    #   <p>An array of objects, each describing one output configuration. In the output
    #         configuration, you specify the name of an in-application stream, a destination (that is, a
    #         Kinesis data stream, a Kinesis Data Firehose delivery stream, or an Amazon Lambda function), and
    #         record the formation to use when writing to the destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     output: { # required
    #       name: "InAppStreamName", # required
    #       kinesis_streams_output: {
    #         resource_arn: "ResourceARN", # required
    #       },
    #       kinesis_firehose_output: {
    #         resource_arn: "ResourceARN", # required
    #       },
    #       lambda_output: {
    #         resource_arn: "ResourceARN", # required
    #       },
    #       destination_schema: { # required
    #         record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.add_application_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ResourceARN",
    #     application_version_id: 1,
    #     output_descriptions: [
    #       {
    #         output_id: "Id",
    #         name: "InAppStreamName",
    #         kinesis_streams_output_description: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN"
    #         },
    #         kinesis_firehose_output_description: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN"
    #         },
    #         lambda_output_description: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN"
    #         },
    #         destination_schema: {
    #           record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::AddApplicationOutputResponse]
    def add_application_output(params = {}, options = {})
      request = build_request(:add_application_output, params)
      request.send_request(options)
    end

    # <p>Adds a reference data source to an existing SQL-based Kinesis Data Analytics application.</p>
    #          <p>Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and creates an
    #       in-application table within your application. In the request, you provide the source (S3
    #       bucket name and object key name), name of the in-application table to create, and the
    #       necessary mapping information that describes how data in an Amazon S3 object maps to columns
    #       in the resulting in-application table.</p>
    # @param [Hash, Types::AddApplicationReferenceDataSourceRequest] params
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The version of the application for which you are adding the reference data source. 
    #           You can
    #         use the <a>DescribeApplication</a> operation to get the current application
    #         version. If the version specified is not the current version, the
    #           <code>ConcurrentModificationException</code> is returned.</p>
    # @option params [Types::ReferenceDataSource] :reference_data_source
    #   <p>The reference data source can be an object in your Amazon S3 bucket. Kinesis Data Analytics reads the object and copies the data
    #         into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting 
    #         in-application table that is 
    #         created. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     reference_data_source: { # required
    #       table_name: "InAppTableName", # required
    #       s3_reference_data_source: {
    #         bucket_arn: "BucketARN",
    #         file_key: "FileKey"
    #       },
    #       reference_schema: { # required
    #         record_format: { # required
    #           record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #           mapping_parameters: {
    #             json_mapping_parameters: {
    #               record_row_path: "RecordRowPath", # required
    #             },
    #             csv_mapping_parameters: {
    #               record_row_delimiter: "RecordRowDelimiter", # required
    #               record_column_delimiter: "RecordColumnDelimiter", # required
    #             }
    #           }
    #         },
    #         record_encoding: "RecordEncoding",
    #         record_columns: [ # required
    #           {
    #             name: "RecordColumnName", # required
    #             mapping: "RecordColumnMapping",
    #             sql_type: "RecordColumnSqlType", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.add_application_reference_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ResourceARN",
    #     application_version_id: 1,
    #     reference_data_source_descriptions: [
    #       {
    #         reference_id: "Id", # required
    #         table_name: "InAppTableName", # required
    #         s3_reference_data_source_description: { # required
    #           bucket_arn: "BucketARN", # required
    #           file_key: "FileKey", # required
    #           reference_role_arn: "RoleARN"
    #         },
    #         reference_schema: {
    #           record_format: { # required
    #             record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #             mapping_parameters: {
    #               json_mapping_parameters: {
    #                 record_row_path: "RecordRowPath", # required
    #               },
    #               csv_mapping_parameters: {
    #                 record_row_delimiter: "RecordRowDelimiter", # required
    #                 record_column_delimiter: "RecordColumnDelimiter", # required
    #               }
    #             }
    #           },
    #           record_encoding: "RecordEncoding",
    #           record_columns: [ # required
    #             {
    #               name: "RecordColumnName", # required
    #               mapping: "RecordColumnMapping",
    #               sql_type: "RecordColumnSqlType", # required
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::AddApplicationReferenceDataSourceResponse]
    def add_application_reference_data_source(params = {}, options = {})
      request = build_request(:add_application_reference_data_source, params)
      request.send_request(options)
    end

    # <p>Adds a Virtual Private Cloud (VPC) configuration to the application. Applications can use VPCs to store 
    #         and access resources securely.</p>
    #          <p>Note the following about VPC configurations for Managed Service for Apache Flink applications:</p>
    #          <ul>
    #             <li>
    #                <p>VPC configurations are not supported for SQL applications.</p>
    #             </li>
    #             <li>
    #                <p>When a VPC is added to a Managed Service for Apache Flink application, the application can no longer be accessed from the 
    #            Internet directly. To enable Internet access to the application, add an Internet gateway to your VPC.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::AddApplicationVpcConfigurationRequest] params
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The version of the application to which you want to add the VPC configuration. You must
    #         provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You
    #         can use the <a>DescribeApplication</a> operation to get the current application
    #         version. If the version specified is not the current version, the
    #           <code>ConcurrentModificationException</code> is returned. For better concurrency support,
    #         use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   <p>Description of the VPC to add to the application.</p>
    # @option params [String] :conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must
    #         provide the <code>ApplicationVersionID</code> or the <code>ConditionalToken</code>. You get
    #         the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the
    #           <code>ConditionalToken</code> parameter instead of
    #         <code>CurrentApplicationVersionId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1,
    #     vpc_configuration: { # required
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     conditional_token: "ConditionalToken"
    #   }
    #   options = {}
    #   response = client.add_application_vpc_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ResourceARN",
    #     application_version_id: 1,
    #     vpc_configuration_description: {
    #       vpc_configuration_id: "Id", # required
    #       vpc_id: "VpcId", # required
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     operation_id: "OperationId"
    #   }
    # @return [Types::AddApplicationVpcConfigurationResponse]
    def add_application_vpc_configuration(params = {}, options = {})
      request = build_request(:add_application_vpc_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a Managed Service for Apache Flink application. For information about creating a
    #           Managed Service for Apache Flink application, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html">Creating an
    #         Application</a>.</p>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :application_name
    #   <p>The name of your application (for example, <code>sample-app</code>).</p>
    # @option params [String] :application_description
    #   <p>A summary description of the application.</p>
    # @option params [String] :runtime_environment
    #   <p>The runtime environment for the application.</p>
    # @option params [String] :service_execution_role
    #   <p>The IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose
    #         delivery streams, Amazon S3 objects, and other external resources.</p>
    # @option params [Types::ApplicationConfiguration] :application_configuration
    #   <p>Use this parameter to configure the application.</p>
    # @option params [Array<Types::CloudWatchLoggingOption>] :cloud_watch_logging_options
    #   <p>Use this parameter to configure an Amazon CloudWatch log stream to monitor application
    #         configuration errors.
    #         </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an 
    #           application. Note that the maximum number of application tags includes system tags. The maximum number of 
    #           user-defined application tags is 50.
    #           For more information, see 
    #           <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using Tagging</a>.</p>
    # @option params [String] :application_mode
    #   <p>Use the <code>STREAMING</code> mode to create a Managed Service for Apache Flink application. To create a Managed Service for Apache Flink Studio notebook, use the 
    #       <code>INTERACTIVE</code> mode.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     application_description: "ApplicationDescription",
    #     runtime_environment: "SQL-1_0" # One of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0", "FLINK-1_15", "ZEPPELIN-FLINK-3_0", "FLINK-1_18", "FLINK-1_19", "FLINK-1_20"], # required
    #     service_execution_role: "RoleARN", # required
    #     application_configuration: {
    #       sql_application_configuration: {
    #         inputs: [
    #           {
    #             name_prefix: "InAppStreamName", # required
    #             input_processing_configuration: {
    #               input_lambda_processor: { # required
    #                 resource_arn: "ResourceARN", # required
    #               }
    #             },
    #             kinesis_streams_input: {
    #               resource_arn: "ResourceARN", # required
    #             },
    #             kinesis_firehose_input: {
    #               resource_arn: "ResourceARN", # required
    #             },
    #             input_parallelism: {
    #               count: 1
    #             },
    #             input_schema: { # required
    #               record_format: { # required
    #                 record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: "RecordRowPath", # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: "RecordRowDelimiter", # required
    #                     record_column_delimiter: "RecordColumnDelimiter", # required
    #                   }
    #                 }
    #               },
    #               record_encoding: "RecordEncoding",
    #               record_columns: [ # required
    #                 {
    #                   name: "RecordColumnName", # required
    #                   mapping: "RecordColumnMapping",
    #                   sql_type: "RecordColumnSqlType", # required
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         outputs: [
    #           {
    #             name: "InAppStreamName", # required
    #             kinesis_streams_output: {
    #               resource_arn: "ResourceARN", # required
    #             },
    #             kinesis_firehose_output: {
    #               resource_arn: "ResourceARN", # required
    #             },
    #             lambda_output: {
    #               resource_arn: "ResourceARN", # required
    #             },
    #             destination_schema: { # required
    #               record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #             }
    #           }
    #         ],
    #         reference_data_sources: [
    #           {
    #             table_name: "InAppTableName", # required
    #             s3_reference_data_source: {
    #               bucket_arn: "BucketARN",
    #               file_key: "FileKey"
    #             },
    #             reference_schema: { # required
    #               record_format: { # required
    #                 record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: "RecordRowPath", # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: "RecordRowDelimiter", # required
    #                     record_column_delimiter: "RecordColumnDelimiter", # required
    #                   }
    #                 }
    #               },
    #               record_encoding: "RecordEncoding",
    #               record_columns: [ # required
    #                 {
    #                   name: "RecordColumnName", # required
    #                   mapping: "RecordColumnMapping",
    #                   sql_type: "RecordColumnSqlType", # required
    #                 }
    #               ]
    #             }
    #           }
    #         ]
    #       },
    #       flink_application_configuration: {
    #         checkpoint_configuration: {
    #           configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"], # required
    #           checkpointing_enabled: false,
    #           checkpoint_interval: 1,
    #           min_pause_between_checkpoints: 1
    #         },
    #         monitoring_configuration: {
    #           configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"], # required
    #           metrics_level: "APPLICATION" # One of: ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"],
    #           log_level: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #         },
    #         parallelism_configuration: {
    #           configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"], # required
    #           parallelism: 1,
    #           parallelism_per_kpu: 1,
    #           auto_scaling_enabled: false
    #         }
    #       },
    #       environment_properties: {
    #         property_groups: [ # required
    #           {
    #             property_group_id: "Id", # required
    #             property_map: { # required
    #               "PropertyKey" => "PropertyValue"
    #             }
    #           }
    #         ]
    #       },
    #       application_code_configuration: {
    #         code_content: {
    #           text_content: "TextContent",
    #           zip_file_content: "data",
    #           s3_content_location: {
    #             bucket_arn: "BucketARN", # required
    #             file_key: "FileKey", # required
    #             object_version: "ObjectVersion"
    #           }
    #         },
    #         code_content_type: "PLAINTEXT" # One of: ["PLAINTEXT", "ZIPFILE"], # required
    #       },
    #       application_snapshot_configuration: {
    #         snapshots_enabled: false, # required
    #       },
    #       application_system_rollback_configuration: {
    #         rollback_enabled: false, # required
    #       },
    #       vpc_configurations: [
    #         {
    #           subnet_ids: ["SubnetId"], # required
    #           security_group_ids: ["SecurityGroupId"], # required
    #         }
    #       ],
    #       zeppelin_application_configuration: {
    #         monitoring_configuration: {
    #           log_level: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"], # required
    #         },
    #         catalog_configuration: {
    #           glue_data_catalog_configuration: { # required
    #             database_arn: "DatabaseARN", # required
    #           }
    #         },
    #         deploy_as_application_configuration: {
    #           s3_content_location: { # required
    #             bucket_arn: "BucketARN", # required
    #             base_path: "BasePath"
    #           }
    #         },
    #         custom_artifacts_configuration: [
    #           {
    #             artifact_type: "UDF" # One of: ["UDF", "DEPENDENCY_JAR"], # required
    #             s3_content_location: {
    #               bucket_arn: "BucketARN", # required
    #               file_key: "FileKey", # required
    #               object_version: "ObjectVersion"
    #             },
    #             maven_reference: {
    #               group_id: "MavenGroupId", # required
    #               artifact_id: "MavenArtifactId", # required
    #               version: "MavenVersion", # required
    #             }
    #           }
    #         ]
    #       },
    #       application_encryption_configuration: {
    #         key_id: "KeyId",
    #         key_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #       }
    #     },
    #     cloud_watch_logging_options: [
    #       {
    #         log_stream_arn: "LogStreamARN", # required
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ],
    #     application_mode: "STREAMING" # One of: ["STREAMING", "INTERACTIVE"]
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_detail: { # required
    #       application_arn: "ResourceARN", # required
    #       application_description: "ApplicationDescription",
    #       application_name: "ApplicationName", # required
    #       runtime_environment: "SQL-1_0" # One of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0", "FLINK-1_15", "ZEPPELIN-FLINK-3_0", "FLINK-1_18", "FLINK-1_19", "FLINK-1_20"], # required
    #       service_execution_role: "RoleARN",
    #       application_status: "DELETING" # One of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"], # required
    #       application_version_id: 1, # required
    #       create_timestamp: Time.now,
    #       last_update_timestamp: Time.now,
    #       application_configuration_description: {
    #         sql_application_configuration_description: {
    #           input_descriptions: [
    #             {
    #               input_id: "Id",
    #               name_prefix: "InAppStreamName",
    #               in_app_stream_names: ["InAppStreamName"],
    #               input_processing_configuration_description: {
    #                 input_lambda_processor_description: {
    #                   resource_arn: "ResourceARN", # required
    #                   role_arn: "RoleARN"
    #                 }
    #               },
    #               kinesis_streams_input_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               kinesis_firehose_input_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               input_schema: {
    #                 record_format: { # required
    #                   record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                   mapping_parameters: {
    #                     json_mapping_parameters: {
    #                       record_row_path: "RecordRowPath", # required
    #                     },
    #                     csv_mapping_parameters: {
    #                       record_row_delimiter: "RecordRowDelimiter", # required
    #                       record_column_delimiter: "RecordColumnDelimiter", # required
    #                     }
    #                   }
    #                 },
    #                 record_encoding: "RecordEncoding",
    #                 record_columns: [ # required
    #                   {
    #                     name: "RecordColumnName", # required
    #                     mapping: "RecordColumnMapping",
    #                     sql_type: "RecordColumnSqlType", # required
    #                   }
    #                 ]
    #               },
    #               input_parallelism: {
    #                 count: 1
    #               },
    #               input_starting_position_configuration: {
    #                 input_starting_position: "NOW" # One of: ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #               }
    #             }
    #           ],
    #           output_descriptions: [
    #             {
    #               output_id: "Id",
    #               name: "InAppStreamName",
    #               kinesis_streams_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               kinesis_firehose_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               lambda_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               destination_schema: {
    #                 record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #               }
    #             }
    #           ],
    #           reference_data_source_descriptions: [
    #             {
    #               reference_id: "Id", # required
    #               table_name: "InAppTableName", # required
    #               s3_reference_data_source_description: { # required
    #                 bucket_arn: "BucketARN", # required
    #                 file_key: "FileKey", # required
    #                 reference_role_arn: "RoleARN"
    #               },
    #               reference_schema: {
    #                 record_format: { # required
    #                   record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                   mapping_parameters: {
    #                     json_mapping_parameters: {
    #                       record_row_path: "RecordRowPath", # required
    #                     },
    #                     csv_mapping_parameters: {
    #                       record_row_delimiter: "RecordRowDelimiter", # required
    #                       record_column_delimiter: "RecordColumnDelimiter", # required
    #                     }
    #                   }
    #                 },
    #                 record_encoding: "RecordEncoding",
    #                 record_columns: [ # required
    #                   {
    #                     name: "RecordColumnName", # required
    #                     mapping: "RecordColumnMapping",
    #                     sql_type: "RecordColumnSqlType", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         },
    #         application_code_configuration_description: {
    #           code_content_type: "PLAINTEXT" # One of: ["PLAINTEXT", "ZIPFILE"], # required
    #           code_content_description: {
    #             text_content: "TextContent",
    #             code_md5: "CodeMD5",
    #             code_size: 1,
    #             s3_application_code_location_description: {
    #               bucket_arn: "BucketARN", # required
    #               file_key: "FileKey", # required
    #               object_version: "ObjectVersion"
    #             }
    #           }
    #         },
    #         run_configuration_description: {
    #           application_restore_configuration_description: {
    #             application_restore_type: "SKIP_RESTORE_FROM_SNAPSHOT" # One of: ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"], # required
    #             snapshot_name: "SnapshotName"
    #           },
    #           flink_run_configuration_description: {
    #             allow_non_restored_state: false
    #           }
    #         },
    #         flink_application_configuration_description: {
    #           checkpoint_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             checkpointing_enabled: false,
    #             checkpoint_interval: 1,
    #             min_pause_between_checkpoints: 1
    #           },
    #           monitoring_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             metrics_level: "APPLICATION" # One of: ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"],
    #             log_level: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #           },
    #           parallelism_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             parallelism: 1,
    #             parallelism_per_kpu: 1,
    #             current_parallelism: 1,
    #             auto_scaling_enabled: false
    #           },
    #           job_plan_description: "JobPlanDescription"
    #         },
    #         environment_property_descriptions: {
    #           property_group_descriptions: [
    #             {
    #               property_group_id: "Id", # required
    #               property_map: { # required
    #                 "PropertyKey" => "PropertyValue"
    #               }
    #             }
    #           ]
    #         },
    #         application_snapshot_configuration_description: {
    #           snapshots_enabled: false, # required
    #         },
    #         application_system_rollback_configuration_description: {
    #           rollback_enabled: false, # required
    #         },
    #         vpc_configuration_descriptions: [
    #           {
    #             vpc_configuration_id: "Id", # required
    #             vpc_id: "VpcId", # required
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"], # required
    #           }
    #         ],
    #         zeppelin_application_configuration_description: {
    #           monitoring_configuration_description: { # required
    #             log_level: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #           },
    #           catalog_configuration_description: {
    #             glue_data_catalog_configuration_description: { # required
    #               database_arn: "DatabaseARN", # required
    #             }
    #           },
    #           deploy_as_application_configuration_description: {
    #             s3_content_location_description: { # required
    #               bucket_arn: "BucketARN", # required
    #               base_path: "BasePath"
    #             }
    #           },
    #           custom_artifacts_configuration_description: [
    #             {
    #               artifact_type: "UDF" # One of: ["UDF", "DEPENDENCY_JAR"],
    #               s3_content_location_description: {
    #                 bucket_arn: "BucketARN", # required
    #                 file_key: "FileKey", # required
    #                 object_version: "ObjectVersion"
    #               },
    #               maven_reference_description: {
    #                 group_id: "MavenGroupId", # required
    #                 artifact_id: "MavenArtifactId", # required
    #                 version: "MavenVersion", # required
    #               }
    #             }
    #           ]
    #         },
    #         application_encryption_configuration_description: {
    #           key_id: "KeyId",
    #           key_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #         }
    #       },
    #       cloud_watch_logging_option_descriptions: [
    #         {
    #           cloud_watch_logging_option_id: "Id",
    #           log_stream_arn: "LogStreamARN", # required
    #           role_arn: "RoleARN"
    #         }
    #       ],
    #       application_maintenance_configuration_description: {
    #         application_maintenance_window_start_time: "ApplicationMaintenanceWindowStartTime", # required
    #         application_maintenance_window_end_time: "ApplicationMaintenanceWindowEndTime", # required
    #       },
    #       application_version_updated_from: 1,
    #       application_version_rolled_back_from: 1,
    #       application_version_create_timestamp: Time.now,
    #       conditional_token: "ConditionalToken",
    #       application_version_rolled_back_to: 1,
    #       application_mode: "STREAMING" # One of: ["STREAMING", "INTERACTIVE"]
    #     }
    #   }
    # @return [Types::CreateApplicationResponse]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Creates and returns a URL that you can use to connect to 
    #             an application's extension.</p>
    #          <p>The IAM role or user used to call this API defines the permissions to access the
    #       extension. After the presigned URL is created, no additional permission is required to access
    #       this URL. IAM authorization policies for this API are also enforced for every HTTP request
    #       that attempts to connect to the extension. </p>
    #          <p>You    control the amount of time that the URL will be valid using the <code>SessionExpirationDurationInSeconds</code>
    #         parameter. If you do not provide this parameter, the returned URL is valid for twelve hours.</p>
    #          <note>
    #             <p>The URL that you get from a call to CreateApplicationPresignedUrl must be used within 3 minutes
    #             to be valid. 
    #             If you first try to use the URL after the 3-minute limit expires, the service returns an HTTP 403 Forbidden error.</p>
    #          </note>
    # @param [Hash, Types::CreateApplicationPresignedUrlRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    # @option params [String] :url_type
    #   <p>The type of the extension for which to create and return a URL. Currently, the only valid
    #               extension URL type is <code>FLINK_DASHBOARD_URL</code>. </p>
    # @option params [Integer] :session_expiration_duration_in_seconds
    #   <p>The duration in seconds for which the returned URL will be valid.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     url_type: "FLINK_DASHBOARD_URL" # One of: ["FLINK_DASHBOARD_URL", "ZEPPELIN_UI_URL"], # required
    #     session_expiration_duration_in_seconds: 1
    #   }
    #   options = {}
    #   response = client.create_application_presigned_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorized_url: "AuthorizedUrl"
    #   }
    # @return [Types::CreateApplicationPresignedUrlResponse]
    def create_application_presigned_url(params = {}, options = {})
      request = build_request(:create_application_presigned_url, params)
      request.send_request(options)
    end

    # <p>Creates a snapshot of the application's state data.</p>
    # @param [Hash, Types::CreateApplicationSnapshotRequest] params
    # @option params [String] :application_name
    #   <p>The name of an existing application</p>
    # @option params [String] :snapshot_name
    #   <p>An identifier for the application snapshot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     snapshot_name: "SnapshotName", # required
    #   }
    #   options = {}
    #   response = client.create_application_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateApplicationSnapshotResponse]
    def create_application_snapshot(params = {}, options = {})
      request = build_request(:create_application_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes the specified application. Managed Service for Apache Flink halts application execution and deletes the application.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application to delete.</p>
    # @option params [Time] :create_timestamp
    #   <p>Use the <code>DescribeApplication</code> operation to get this value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     create_timestamp: Time.now, # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationResponse]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon CloudWatch log stream from an SQL-based Kinesis Data Analytics application. </p>
    # @param [Hash, Types::DeleteApplicationCloudWatchLoggingOptionRequest] params
    # @option params [String] :application_name
    #   <p>The application name.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The version ID of the application. You must provide the
    #           <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You can
    #         retrieve the application version ID using <a>DescribeApplication</a>. For better
    #         concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    # @option params [String] :cloud_watch_logging_option_id
    #   <p>The <code>CloudWatchLoggingOptionId</code> of the Amazon CloudWatch logging option to
    #            delete. You can get the <code>CloudWatchLoggingOptionId</code> by using the <a>DescribeApplication</a> operation. </p>
    # @option params [String] :conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must provide
    #         the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You get the
    #         application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1,
    #     cloud_watch_logging_option_id: "Id", # required
    #     conditional_token: "ConditionalToken"
    #   }
    #   options = {}
    #   response = client.delete_application_cloud_watch_logging_option(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ResourceARN",
    #     application_version_id: 1,
    #     cloud_watch_logging_option_descriptions: [
    #       {
    #         cloud_watch_logging_option_id: "Id",
    #         log_stream_arn: "LogStreamARN", # required
    #         role_arn: "RoleARN"
    #       }
    #     ],
    #     operation_id: "OperationId"
    #   }
    # @return [Types::DeleteApplicationCloudWatchLoggingOptionResponse]
    def delete_application_cloud_watch_logging_option(params = {}, options = {})
      request = build_request(:delete_application_cloud_watch_logging_option, params)
      request.send_request(options)
    end

    # <p>Deletes an <a>InputProcessingConfiguration</a> from an input.</p>
    # @param [Hash, Types::DeleteApplicationInputProcessingConfigurationRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The application version. 
    #         You can use the <a>DescribeApplication</a> operation to get the current application version.
    #         If the version specified is not the current version, the 
    #         <code>ConcurrentModificationException</code> is returned.
    #       </p>
    # @option params [String] :input_id
    #   <p>The ID of the input configuration from which to delete the input processing
    #         configuration. You can get a list of the input IDs for an application by using the <a>DescribeApplication</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     input_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_application_input_processing_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ResourceARN",
    #     application_version_id: 1
    #   }
    # @return [Types::DeleteApplicationInputProcessingConfigurationResponse]
    def delete_application_input_processing_configuration(params = {}, options = {})
      request = build_request(:delete_application_input_processing_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the output destination configuration from your SQL-based Kinesis Data Analytics application's configuration. 
    #       Kinesis Data Analytics will no longer write data from
    #       the corresponding in-application stream to the external output destination.</p>
    # @param [Hash, Types::DeleteApplicationOutputRequest] params
    # @option params [String] :application_name
    #   <p>The application name.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The application version. 
    #         You can use the <a>DescribeApplication</a> operation to get the current application version.
    #         If the version specified is not the current version, the 
    #         <code>ConcurrentModificationException</code> is returned.
    #       </p>
    # @option params [String] :output_id
    #   <p>The ID of the configuration to delete. Each output configuration that is added to the
    #         application (either when the application is created or later) using the <a>AddApplicationOutput</a> operation has a unique ID. You need to provide the ID to
    #         uniquely identify the output configuration that you want to delete from the application
    #         configuration. You can use the <a>DescribeApplication</a> operation to get the
    #         specific <code>OutputId</code>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     output_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_application_output(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ResourceARN",
    #     application_version_id: 1
    #   }
    # @return [Types::DeleteApplicationOutputResponse]
    def delete_application_output(params = {}, options = {})
      request = build_request(:delete_application_output, params)
      request.send_request(options)
    end

    # <p>Deletes a reference data source configuration from the specified SQL-based Kinesis Data Analytics application's configuration.</p>
    #          <p>If the application is running, Kinesis Data Analytics immediately removes the in-application table
    #       that you created using the <a>AddApplicationReferenceDataSource</a> operation.  </p>
    # @param [Hash, Types::DeleteApplicationReferenceDataSourceRequest] params
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The current application version.  
    #         You can use the <a>DescribeApplication</a> operation to get the current application version.
    #         If the version specified 
    #         is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>
    # @option params [String] :reference_id
    #   <p>The ID of the reference data source. When you add a reference data source to your
    #         application using the <a>AddApplicationReferenceDataSource</a>, Kinesis Data Analytics assigns an ID.
    #         You can use the <a>DescribeApplication</a> operation to
    #         get the reference ID. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     reference_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_application_reference_data_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ResourceARN",
    #     application_version_id: 1
    #   }
    # @return [Types::DeleteApplicationReferenceDataSourceResponse]
    def delete_application_reference_data_source(params = {}, options = {})
      request = build_request(:delete_application_reference_data_source, params)
      request.send_request(options)
    end

    # <p>Deletes a snapshot of application state.</p>
    # @param [Hash, Types::DeleteApplicationSnapshotRequest] params
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    # @option params [String] :snapshot_name
    #   <p>The identifier for the snapshot delete.</p>
    # @option params [Time] :snapshot_creation_timestamp
    #   <p>The creation timestamp of the application snapshot to delete. You can retrieve this value 
    #         using 
    #         or .</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     snapshot_name: "SnapshotName", # required
    #     snapshot_creation_timestamp: Time.now, # required
    #   }
    #   options = {}
    #   response = client.delete_application_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationSnapshotResponse]
    def delete_application_snapshot(params = {}, options = {})
      request = build_request(:delete_application_snapshot, params)
      request.send_request(options)
    end

    # <p>Removes a VPC configuration from a Managed Service for Apache Flink application.</p>
    # @param [Hash, Types::DeleteApplicationVpcConfigurationRequest] params
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The current application version ID. You must provide the
    #           <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You can
    #         retrieve the application version ID using <a>DescribeApplication</a>. For better
    #         concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    # @option params [String] :vpc_configuration_id
    #   <p>The ID of the VPC configuration to delete.</p>
    # @option params [String] :conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must provide
    #         the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You get the
    #         application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1,
    #     vpc_configuration_id: "Id", # required
    #     conditional_token: "ConditionalToken"
    #   }
    #   options = {}
    #   response = client.delete_application_vpc_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ResourceARN",
    #     application_version_id: 1,
    #     operation_id: "OperationId"
    #   }
    # @return [Types::DeleteApplicationVpcConfigurationResponse]
    def delete_application_vpc_configuration(params = {}, options = {})
      request = build_request(:delete_application_vpc_configuration, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific Managed Service for Apache Flink application.</p>
    #          <p>If you want to retrieve a list of all applications in your account,
    #       use the <a>ListApplications</a> operation.</p>
    # @param [Hash, Types::DescribeApplicationRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    # @option params [Boolean] :include_additional_details
    #   <p>Displays verbose information about a Managed Service for Apache Flink application, including the application's job plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     include_additional_details: false
    #   }
    #   options = {}
    #   response = client.describe_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_detail: { # required
    #       application_arn: "ResourceARN", # required
    #       application_description: "ApplicationDescription",
    #       application_name: "ApplicationName", # required
    #       runtime_environment: "SQL-1_0" # One of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0", "FLINK-1_15", "ZEPPELIN-FLINK-3_0", "FLINK-1_18", "FLINK-1_19", "FLINK-1_20"], # required
    #       service_execution_role: "RoleARN",
    #       application_status: "DELETING" # One of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"], # required
    #       application_version_id: 1, # required
    #       create_timestamp: Time.now,
    #       last_update_timestamp: Time.now,
    #       application_configuration_description: {
    #         sql_application_configuration_description: {
    #           input_descriptions: [
    #             {
    #               input_id: "Id",
    #               name_prefix: "InAppStreamName",
    #               in_app_stream_names: ["InAppStreamName"],
    #               input_processing_configuration_description: {
    #                 input_lambda_processor_description: {
    #                   resource_arn: "ResourceARN", # required
    #                   role_arn: "RoleARN"
    #                 }
    #               },
    #               kinesis_streams_input_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               kinesis_firehose_input_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               input_schema: {
    #                 record_format: { # required
    #                   record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                   mapping_parameters: {
    #                     json_mapping_parameters: {
    #                       record_row_path: "RecordRowPath", # required
    #                     },
    #                     csv_mapping_parameters: {
    #                       record_row_delimiter: "RecordRowDelimiter", # required
    #                       record_column_delimiter: "RecordColumnDelimiter", # required
    #                     }
    #                   }
    #                 },
    #                 record_encoding: "RecordEncoding",
    #                 record_columns: [ # required
    #                   {
    #                     name: "RecordColumnName", # required
    #                     mapping: "RecordColumnMapping",
    #                     sql_type: "RecordColumnSqlType", # required
    #                   }
    #                 ]
    #               },
    #               input_parallelism: {
    #                 count: 1
    #               },
    #               input_starting_position_configuration: {
    #                 input_starting_position: "NOW" # One of: ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #               }
    #             }
    #           ],
    #           output_descriptions: [
    #             {
    #               output_id: "Id",
    #               name: "InAppStreamName",
    #               kinesis_streams_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               kinesis_firehose_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               lambda_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               destination_schema: {
    #                 record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #               }
    #             }
    #           ],
    #           reference_data_source_descriptions: [
    #             {
    #               reference_id: "Id", # required
    #               table_name: "InAppTableName", # required
    #               s3_reference_data_source_description: { # required
    #                 bucket_arn: "BucketARN", # required
    #                 file_key: "FileKey", # required
    #                 reference_role_arn: "RoleARN"
    #               },
    #               reference_schema: {
    #                 record_format: { # required
    #                   record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                   mapping_parameters: {
    #                     json_mapping_parameters: {
    #                       record_row_path: "RecordRowPath", # required
    #                     },
    #                     csv_mapping_parameters: {
    #                       record_row_delimiter: "RecordRowDelimiter", # required
    #                       record_column_delimiter: "RecordColumnDelimiter", # required
    #                     }
    #                   }
    #                 },
    #                 record_encoding: "RecordEncoding",
    #                 record_columns: [ # required
    #                   {
    #                     name: "RecordColumnName", # required
    #                     mapping: "RecordColumnMapping",
    #                     sql_type: "RecordColumnSqlType", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         },
    #         application_code_configuration_description: {
    #           code_content_type: "PLAINTEXT" # One of: ["PLAINTEXT", "ZIPFILE"], # required
    #           code_content_description: {
    #             text_content: "TextContent",
    #             code_md5: "CodeMD5",
    #             code_size: 1,
    #             s3_application_code_location_description: {
    #               bucket_arn: "BucketARN", # required
    #               file_key: "FileKey", # required
    #               object_version: "ObjectVersion"
    #             }
    #           }
    #         },
    #         run_configuration_description: {
    #           application_restore_configuration_description: {
    #             application_restore_type: "SKIP_RESTORE_FROM_SNAPSHOT" # One of: ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"], # required
    #             snapshot_name: "SnapshotName"
    #           },
    #           flink_run_configuration_description: {
    #             allow_non_restored_state: false
    #           }
    #         },
    #         flink_application_configuration_description: {
    #           checkpoint_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             checkpointing_enabled: false,
    #             checkpoint_interval: 1,
    #             min_pause_between_checkpoints: 1
    #           },
    #           monitoring_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             metrics_level: "APPLICATION" # One of: ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"],
    #             log_level: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #           },
    #           parallelism_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             parallelism: 1,
    #             parallelism_per_kpu: 1,
    #             current_parallelism: 1,
    #             auto_scaling_enabled: false
    #           },
    #           job_plan_description: "JobPlanDescription"
    #         },
    #         environment_property_descriptions: {
    #           property_group_descriptions: [
    #             {
    #               property_group_id: "Id", # required
    #               property_map: { # required
    #                 "PropertyKey" => "PropertyValue"
    #               }
    #             }
    #           ]
    #         },
    #         application_snapshot_configuration_description: {
    #           snapshots_enabled: false, # required
    #         },
    #         application_system_rollback_configuration_description: {
    #           rollback_enabled: false, # required
    #         },
    #         vpc_configuration_descriptions: [
    #           {
    #             vpc_configuration_id: "Id", # required
    #             vpc_id: "VpcId", # required
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"], # required
    #           }
    #         ],
    #         zeppelin_application_configuration_description: {
    #           monitoring_configuration_description: { # required
    #             log_level: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #           },
    #           catalog_configuration_description: {
    #             glue_data_catalog_configuration_description: { # required
    #               database_arn: "DatabaseARN", # required
    #             }
    #           },
    #           deploy_as_application_configuration_description: {
    #             s3_content_location_description: { # required
    #               bucket_arn: "BucketARN", # required
    #               base_path: "BasePath"
    #             }
    #           },
    #           custom_artifacts_configuration_description: [
    #             {
    #               artifact_type: "UDF" # One of: ["UDF", "DEPENDENCY_JAR"],
    #               s3_content_location_description: {
    #                 bucket_arn: "BucketARN", # required
    #                 file_key: "FileKey", # required
    #                 object_version: "ObjectVersion"
    #               },
    #               maven_reference_description: {
    #                 group_id: "MavenGroupId", # required
    #                 artifact_id: "MavenArtifactId", # required
    #                 version: "MavenVersion", # required
    #               }
    #             }
    #           ]
    #         },
    #         application_encryption_configuration_description: {
    #           key_id: "KeyId",
    #           key_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #         }
    #       },
    #       cloud_watch_logging_option_descriptions: [
    #         {
    #           cloud_watch_logging_option_id: "Id",
    #           log_stream_arn: "LogStreamARN", # required
    #           role_arn: "RoleARN"
    #         }
    #       ],
    #       application_maintenance_configuration_description: {
    #         application_maintenance_window_start_time: "ApplicationMaintenanceWindowStartTime", # required
    #         application_maintenance_window_end_time: "ApplicationMaintenanceWindowEndTime", # required
    #       },
    #       application_version_updated_from: 1,
    #       application_version_rolled_back_from: 1,
    #       application_version_create_timestamp: Time.now,
    #       conditional_token: "ConditionalToken",
    #       application_version_rolled_back_to: 1,
    #       application_mode: "STREAMING" # One of: ["STREAMING", "INTERACTIVE"]
    #     }
    #   }
    # @return [Types::DescribeApplicationResponse]
    def describe_application(params = {}, options = {})
      request = build_request(:describe_application, params)
      request.send_request(options)
    end

    # <p>Provides a detailed description of a specified application operation. To see a list of all the operations of an application, invoke the <a>ListApplicationOperations</a> operation.</p>
    #          <note>
    #             <p>This operation is supported only for Managed Service for Apache Flink.</p>
    #          </note>
    # @param [Hash, Types::DescribeApplicationOperationRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    # @option params [String] :operation_id
    #   <p>The operation ID of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     operation_id: "OperationId", # required
    #   }
    #   options = {}
    #   response = client.describe_application_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_operation_info_details: {
    #       operation: "Operation", # required
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #       operation_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELLED", "SUCCESSFUL", "FAILED"], # required
    #       application_version_change_details: {
    #         application_version_updated_from: 1, # required
    #         application_version_updated_to: 1, # required
    #       },
    #       operation_failure_details: {
    #         rollback_operation_id: "OperationId",
    #         error_info: {
    #           error_string: "ErrorString"
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeApplicationOperationResponse]
    def describe_application_operation(params = {}, options = {})
      request = build_request(:describe_application_operation, params)
      request.send_request(options)
    end

    # <p>Returns information about a snapshot of application state data.</p>
    # @param [Hash, Types::DescribeApplicationSnapshotRequest] params
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    # @option params [String] :snapshot_name
    #   <p>The identifier of an application snapshot. You can retrieve this value using 
    #         .</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     snapshot_name: "SnapshotName", # required
    #   }
    #   options = {}
    #   response = client.describe_application_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_details: { # required
    #       snapshot_name: "SnapshotName", # required
    #       snapshot_status: "CREATING" # One of: ["CREATING", "READY", "DELETING", "FAILED"], # required
    #       application_version_id: 1, # required
    #       snapshot_creation_timestamp: Time.now,
    #       runtime_environment: "SQL-1_0" # One of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0", "FLINK-1_15", "ZEPPELIN-FLINK-3_0", "FLINK-1_18", "FLINK-1_19", "FLINK-1_20"],
    #       application_encryption_configuration_description: {
    #         key_id: "KeyId",
    #         key_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeApplicationSnapshotResponse]
    def describe_application_snapshot(params = {}, options = {})
      request = build_request(:describe_application_snapshot, params)
      request.send_request(options)
    end

    # <p>Provides a detailed description of a specified version of the application. To see a list of all the versions of an application, invoke the <a>ListApplicationVersions</a> operation.</p>
    #          <note>
    #             <p>This operation is supported only for Managed Service for Apache Flink.</p>
    #          </note>
    # @param [Hash, Types::DescribeApplicationVersionRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application for which you want to get the version description.</p>
    # @option params [Integer] :application_version_id
    #   <p>The ID of the application version for which you want to get the description.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     application_version_id: 1, # required
    #   }
    #   options = {}
    #   response = client.describe_application_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_version_detail: {
    #       application_arn: "ResourceARN", # required
    #       application_description: "ApplicationDescription",
    #       application_name: "ApplicationName", # required
    #       runtime_environment: "SQL-1_0" # One of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0", "FLINK-1_15", "ZEPPELIN-FLINK-3_0", "FLINK-1_18", "FLINK-1_19", "FLINK-1_20"], # required
    #       service_execution_role: "RoleARN",
    #       application_status: "DELETING" # One of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"], # required
    #       application_version_id: 1, # required
    #       create_timestamp: Time.now,
    #       last_update_timestamp: Time.now,
    #       application_configuration_description: {
    #         sql_application_configuration_description: {
    #           input_descriptions: [
    #             {
    #               input_id: "Id",
    #               name_prefix: "InAppStreamName",
    #               in_app_stream_names: ["InAppStreamName"],
    #               input_processing_configuration_description: {
    #                 input_lambda_processor_description: {
    #                   resource_arn: "ResourceARN", # required
    #                   role_arn: "RoleARN"
    #                 }
    #               },
    #               kinesis_streams_input_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               kinesis_firehose_input_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               input_schema: {
    #                 record_format: { # required
    #                   record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                   mapping_parameters: {
    #                     json_mapping_parameters: {
    #                       record_row_path: "RecordRowPath", # required
    #                     },
    #                     csv_mapping_parameters: {
    #                       record_row_delimiter: "RecordRowDelimiter", # required
    #                       record_column_delimiter: "RecordColumnDelimiter", # required
    #                     }
    #                   }
    #                 },
    #                 record_encoding: "RecordEncoding",
    #                 record_columns: [ # required
    #                   {
    #                     name: "RecordColumnName", # required
    #                     mapping: "RecordColumnMapping",
    #                     sql_type: "RecordColumnSqlType", # required
    #                   }
    #                 ]
    #               },
    #               input_parallelism: {
    #                 count: 1
    #               },
    #               input_starting_position_configuration: {
    #                 input_starting_position: "NOW" # One of: ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #               }
    #             }
    #           ],
    #           output_descriptions: [
    #             {
    #               output_id: "Id",
    #               name: "InAppStreamName",
    #               kinesis_streams_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               kinesis_firehose_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               lambda_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               destination_schema: {
    #                 record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #               }
    #             }
    #           ],
    #           reference_data_source_descriptions: [
    #             {
    #               reference_id: "Id", # required
    #               table_name: "InAppTableName", # required
    #               s3_reference_data_source_description: { # required
    #                 bucket_arn: "BucketARN", # required
    #                 file_key: "FileKey", # required
    #                 reference_role_arn: "RoleARN"
    #               },
    #               reference_schema: {
    #                 record_format: { # required
    #                   record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                   mapping_parameters: {
    #                     json_mapping_parameters: {
    #                       record_row_path: "RecordRowPath", # required
    #                     },
    #                     csv_mapping_parameters: {
    #                       record_row_delimiter: "RecordRowDelimiter", # required
    #                       record_column_delimiter: "RecordColumnDelimiter", # required
    #                     }
    #                   }
    #                 },
    #                 record_encoding: "RecordEncoding",
    #                 record_columns: [ # required
    #                   {
    #                     name: "RecordColumnName", # required
    #                     mapping: "RecordColumnMapping",
    #                     sql_type: "RecordColumnSqlType", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         },
    #         application_code_configuration_description: {
    #           code_content_type: "PLAINTEXT" # One of: ["PLAINTEXT", "ZIPFILE"], # required
    #           code_content_description: {
    #             text_content: "TextContent",
    #             code_md5: "CodeMD5",
    #             code_size: 1,
    #             s3_application_code_location_description: {
    #               bucket_arn: "BucketARN", # required
    #               file_key: "FileKey", # required
    #               object_version: "ObjectVersion"
    #             }
    #           }
    #         },
    #         run_configuration_description: {
    #           application_restore_configuration_description: {
    #             application_restore_type: "SKIP_RESTORE_FROM_SNAPSHOT" # One of: ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"], # required
    #             snapshot_name: "SnapshotName"
    #           },
    #           flink_run_configuration_description: {
    #             allow_non_restored_state: false
    #           }
    #         },
    #         flink_application_configuration_description: {
    #           checkpoint_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             checkpointing_enabled: false,
    #             checkpoint_interval: 1,
    #             min_pause_between_checkpoints: 1
    #           },
    #           monitoring_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             metrics_level: "APPLICATION" # One of: ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"],
    #             log_level: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #           },
    #           parallelism_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             parallelism: 1,
    #             parallelism_per_kpu: 1,
    #             current_parallelism: 1,
    #             auto_scaling_enabled: false
    #           },
    #           job_plan_description: "JobPlanDescription"
    #         },
    #         environment_property_descriptions: {
    #           property_group_descriptions: [
    #             {
    #               property_group_id: "Id", # required
    #               property_map: { # required
    #                 "PropertyKey" => "PropertyValue"
    #               }
    #             }
    #           ]
    #         },
    #         application_snapshot_configuration_description: {
    #           snapshots_enabled: false, # required
    #         },
    #         application_system_rollback_configuration_description: {
    #           rollback_enabled: false, # required
    #         },
    #         vpc_configuration_descriptions: [
    #           {
    #             vpc_configuration_id: "Id", # required
    #             vpc_id: "VpcId", # required
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"], # required
    #           }
    #         ],
    #         zeppelin_application_configuration_description: {
    #           monitoring_configuration_description: { # required
    #             log_level: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #           },
    #           catalog_configuration_description: {
    #             glue_data_catalog_configuration_description: { # required
    #               database_arn: "DatabaseARN", # required
    #             }
    #           },
    #           deploy_as_application_configuration_description: {
    #             s3_content_location_description: { # required
    #               bucket_arn: "BucketARN", # required
    #               base_path: "BasePath"
    #             }
    #           },
    #           custom_artifacts_configuration_description: [
    #             {
    #               artifact_type: "UDF" # One of: ["UDF", "DEPENDENCY_JAR"],
    #               s3_content_location_description: {
    #                 bucket_arn: "BucketARN", # required
    #                 file_key: "FileKey", # required
    #                 object_version: "ObjectVersion"
    #               },
    #               maven_reference_description: {
    #                 group_id: "MavenGroupId", # required
    #                 artifact_id: "MavenArtifactId", # required
    #                 version: "MavenVersion", # required
    #               }
    #             }
    #           ]
    #         },
    #         application_encryption_configuration_description: {
    #           key_id: "KeyId",
    #           key_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #         }
    #       },
    #       cloud_watch_logging_option_descriptions: [
    #         {
    #           cloud_watch_logging_option_id: "Id",
    #           log_stream_arn: "LogStreamARN", # required
    #           role_arn: "RoleARN"
    #         }
    #       ],
    #       application_maintenance_configuration_description: {
    #         application_maintenance_window_start_time: "ApplicationMaintenanceWindowStartTime", # required
    #         application_maintenance_window_end_time: "ApplicationMaintenanceWindowEndTime", # required
    #       },
    #       application_version_updated_from: 1,
    #       application_version_rolled_back_from: 1,
    #       application_version_create_timestamp: Time.now,
    #       conditional_token: "ConditionalToken",
    #       application_version_rolled_back_to: 1,
    #       application_mode: "STREAMING" # One of: ["STREAMING", "INTERACTIVE"]
    #     }
    #   }
    # @return [Types::DescribeApplicationVersionResponse]
    def describe_application_version(params = {}, options = {})
      request = build_request(:describe_application_version, params)
      request.send_request(options)
    end

    # <p>Infers a schema for a SQL-based Kinesis Data Analytics application by evaluating
    #       sample records on the specified streaming source (Kinesis data stream or Kinesis Data Firehose
    #       delivery stream) or Amazon S3 object. In the response, the operation returns the inferred
    #       schema and also the sample records that the operation used to infer the schema.</p>
    #          <p> You can use the inferred schema when configuring a streaming source for your application.
    #       When you create an application using the Kinesis Data Analytics console, the console uses this
    #       operation to infer a schema and show it in the console user interface. </p>
    # @param [Hash, Types::DiscoverInputSchemaRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the streaming source.</p>
    # @option params [String] :service_execution_role
    #   <p>The ARN of the role that is used to access the streaming source.</p>
    # @option params [Types::InputStartingPositionConfiguration] :input_starting_position_configuration
    #   <p>The point at which you want Kinesis Data Analytics to start reading records from the
    #         specified streaming source for discovery purposes.</p>
    # @option params [Types::S3Configuration] :s3_configuration
    #   <p>Specify this parameter to discover a schema from data in an Amazon S3
    #         object.</p>
    # @option params [Types::InputProcessingConfiguration] :input_processing_configuration
    #   <p>The <a>InputProcessingConfiguration</a> to use to preprocess the records 
    #         before discovering the schema of the records.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN",
    #     service_execution_role: "RoleARN", # required
    #     input_starting_position_configuration: {
    #       input_starting_position: "NOW" # One of: ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #     },
    #     s3_configuration: {
    #       bucket_arn: "BucketARN", # required
    #       file_key: "FileKey", # required
    #     },
    #     input_processing_configuration: {
    #       input_lambda_processor: { # required
    #         resource_arn: "ResourceARN", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.discover_input_schema(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     input_schema: {
    #       record_format: { # required
    #         record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #         mapping_parameters: {
    #           json_mapping_parameters: {
    #             record_row_path: "RecordRowPath", # required
    #           },
    #           csv_mapping_parameters: {
    #             record_row_delimiter: "RecordRowDelimiter", # required
    #             record_column_delimiter: "RecordColumnDelimiter", # required
    #           }
    #         }
    #       },
    #       record_encoding: "RecordEncoding",
    #       record_columns: [ # required
    #         {
    #           name: "RecordColumnName", # required
    #           mapping: "RecordColumnMapping",
    #           sql_type: "RecordColumnSqlType", # required
    #         }
    #       ]
    #     },
    #     parsed_input_records: [
    #       ["ParsedInputRecordField"]
    #     ],
    #     processed_input_records: ["ProcessedInputRecord"],
    #     raw_input_records: ["RawInputRecord"]
    #   }
    # @return [Types::DiscoverInputSchemaResponse]
    def discover_input_schema(params = {}, options = {})
      request = build_request(:discover_input_schema, params)
      request.send_request(options)
    end

    # <p>Lists all the operations performed for the specified application such as UpdateApplication, StartApplication etc.
    #       The response also includes a summary of the operation.</p>
    #          <p>To get the complete description of a specific operation, invoke the <a>DescribeApplicationOperation</a> operation.</p>
    #          <note>
    #             <p>This operation is supported only for Managed Service for Apache Flink.</p>
    #          </note>
    # @param [Hash, Types::ListApplicationOperationsRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    # @option params [Integer] :limit
    #   <p>The limit on the number of records to be returned in the response.</p>
    # @option params [String] :next_token
    #   <p>A pagination token that can be used in a subsequent request.</p>
    # @option params [String] :operation
    #   <p>The type of operation that is performed on an application.</p>
    # @option params [String] :operation_status
    #   <p>The status of the operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     limit: 1,
    #     next_token: "NextToken",
    #     operation: "Operation",
    #     operation_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELLED", "SUCCESSFUL", "FAILED"]
    #   }
    #   options = {}
    #   response = client.list_application_operations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_operation_info_list: [
    #       {
    #         operation: "Operation",
    #         operation_id: "OperationId",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         operation_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELLED", "SUCCESSFUL", "FAILED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationOperationsResponse]
    def list_application_operations(params = {}, options = {})
      request = build_request(:list_application_operations, params)
      request.send_request(options)
    end

    # <p>Lists information about the current application snapshots.</p>
    # @param [Hash, Types::ListApplicationSnapshotsRequest] params
    # @option params [String] :application_name
    #   <p>The name of an existing application.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of application snapshots to list.</p>
    # @option params [String] :next_token
    #   <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more 
    #         output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should 
    #         continue from. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_application_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot_summaries: [
    #       {
    #         snapshot_name: "SnapshotName", # required
    #         snapshot_status: "CREATING" # One of: ["CREATING", "READY", "DELETING", "FAILED"], # required
    #         application_version_id: 1, # required
    #         snapshot_creation_timestamp: Time.now,
    #         runtime_environment: "SQL-1_0" # One of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0", "FLINK-1_15", "ZEPPELIN-FLINK-3_0", "FLINK-1_18", "FLINK-1_19", "FLINK-1_20"],
    #         application_encryption_configuration_description: {
    #           key_id: "KeyId",
    #           key_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationSnapshotsResponse]
    def list_application_snapshots(params = {}, options = {})
      request = build_request(:list_application_snapshots, params)
      request.send_request(options)
    end

    # <p>Lists all the versions for the specified application, including versions that were rolled back. The response also includes a summary of the configuration 
    #       associated with each version.</p>
    #          <p>To get the complete description of a specific application version, invoke the <a>DescribeApplicationVersion</a> operation.</p>
    #          <note>
    #             <p>This operation is supported only for Managed Service for Apache Flink.</p>
    #          </note>
    # @param [Hash, Types::ListApplicationVersionsRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application for which you want to list all versions.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of versions to list in this invocation of the operation.</p>
    # @option params [String] :next_token
    #   <p>If a previous invocation of this operation returned a pagination token, pass it into this value to retrieve the next set of results. For more information about pagination, see 
    #         <a href="https://docs.aws.amazon.com/cli/latest/userguide/pagination.html">Using the Amazon Command Line Interface's Pagination Options</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     limit: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_application_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_version_summaries: [
    #       {
    #         application_version_id: 1, # required
    #         application_status: "DELETING" # One of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationVersionsResponse]
    def list_application_versions(params = {}, options = {})
      request = build_request(:list_application_versions, params)
      request.send_request(options)
    end

    # <p>Returns a list of Managed Service for Apache Flink applications in your account. For each
    #       application, the response includes the application name, Amazon Resource Name (ARN), and
    #       status. </p>
    #          <p>If you want detailed information about a specific application, use 
    #       <a>DescribeApplication</a>.</p>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [Integer] :limit
    #   <p>The maximum number of applications to list.</p>
    # @option params [String] :next_token
    #   <p>If a previous command returned a pagination token, 
    #         pass it into this value to retrieve the next set of results.
    #         For more information about pagination, see 
    #         <a href="https://docs.aws.amazon.com/cli/latest/userguide/pagination.html">Using the Amazon Command Line Interface's Pagination Options</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     next_token: "ApplicationName"
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_summaries: [ # required
    #       {
    #         application_name: "ApplicationName", # required
    #         application_arn: "ResourceARN", # required
    #         application_status: "DELETING" # One of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"], # required
    #         application_version_id: 1, # required
    #         runtime_environment: "SQL-1_0" # One of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0", "FLINK-1_15", "ZEPPELIN-FLINK-3_0", "FLINK-1_18", "FLINK-1_19", "FLINK-1_20"], # required
    #         application_mode: "STREAMING" # One of: ["STREAMING", "INTERACTIVE"]
    #       }
    #     ],
    #     next_token: "ApplicationName"
    #   }
    # @return [Types::ListApplicationsResponse]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of key-value tags assigned to the application. For more information, see 
    #         <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using Tagging</a>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the application for which to retrieve tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "KinesisAnalyticsARN", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Reverts the application to the previous running version. You can roll back an
    #       application if you suspect it is stuck in a transient status or in the running status. </p>
    #          <p>You can roll back an application only if it is in the <code>UPDATING</code>,
    #         <code>AUTOSCALING</code>, or  <code>RUNNING</code> statuses.</p>
    #          <p>When you rollback an application, it loads state data from the last successful snapshot.
    #         If the application has no snapshots, Managed Service for Apache Flink rejects the rollback request.</p>
    # @param [Hash, Types::RollbackApplicationRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The current application version ID. You can retrieve the application version ID using 
    #               <a>DescribeApplication</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #   }
    #   options = {}
    #   response = client.rollback_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_detail: { # required
    #       application_arn: "ResourceARN", # required
    #       application_description: "ApplicationDescription",
    #       application_name: "ApplicationName", # required
    #       runtime_environment: "SQL-1_0" # One of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0", "FLINK-1_15", "ZEPPELIN-FLINK-3_0", "FLINK-1_18", "FLINK-1_19", "FLINK-1_20"], # required
    #       service_execution_role: "RoleARN",
    #       application_status: "DELETING" # One of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"], # required
    #       application_version_id: 1, # required
    #       create_timestamp: Time.now,
    #       last_update_timestamp: Time.now,
    #       application_configuration_description: {
    #         sql_application_configuration_description: {
    #           input_descriptions: [
    #             {
    #               input_id: "Id",
    #               name_prefix: "InAppStreamName",
    #               in_app_stream_names: ["InAppStreamName"],
    #               input_processing_configuration_description: {
    #                 input_lambda_processor_description: {
    #                   resource_arn: "ResourceARN", # required
    #                   role_arn: "RoleARN"
    #                 }
    #               },
    #               kinesis_streams_input_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               kinesis_firehose_input_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               input_schema: {
    #                 record_format: { # required
    #                   record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                   mapping_parameters: {
    #                     json_mapping_parameters: {
    #                       record_row_path: "RecordRowPath", # required
    #                     },
    #                     csv_mapping_parameters: {
    #                       record_row_delimiter: "RecordRowDelimiter", # required
    #                       record_column_delimiter: "RecordColumnDelimiter", # required
    #                     }
    #                   }
    #                 },
    #                 record_encoding: "RecordEncoding",
    #                 record_columns: [ # required
    #                   {
    #                     name: "RecordColumnName", # required
    #                     mapping: "RecordColumnMapping",
    #                     sql_type: "RecordColumnSqlType", # required
    #                   }
    #                 ]
    #               },
    #               input_parallelism: {
    #                 count: 1
    #               },
    #               input_starting_position_configuration: {
    #                 input_starting_position: "NOW" # One of: ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #               }
    #             }
    #           ],
    #           output_descriptions: [
    #             {
    #               output_id: "Id",
    #               name: "InAppStreamName",
    #               kinesis_streams_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               kinesis_firehose_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               lambda_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               destination_schema: {
    #                 record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #               }
    #             }
    #           ],
    #           reference_data_source_descriptions: [
    #             {
    #               reference_id: "Id", # required
    #               table_name: "InAppTableName", # required
    #               s3_reference_data_source_description: { # required
    #                 bucket_arn: "BucketARN", # required
    #                 file_key: "FileKey", # required
    #                 reference_role_arn: "RoleARN"
    #               },
    #               reference_schema: {
    #                 record_format: { # required
    #                   record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                   mapping_parameters: {
    #                     json_mapping_parameters: {
    #                       record_row_path: "RecordRowPath", # required
    #                     },
    #                     csv_mapping_parameters: {
    #                       record_row_delimiter: "RecordRowDelimiter", # required
    #                       record_column_delimiter: "RecordColumnDelimiter", # required
    #                     }
    #                   }
    #                 },
    #                 record_encoding: "RecordEncoding",
    #                 record_columns: [ # required
    #                   {
    #                     name: "RecordColumnName", # required
    #                     mapping: "RecordColumnMapping",
    #                     sql_type: "RecordColumnSqlType", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         },
    #         application_code_configuration_description: {
    #           code_content_type: "PLAINTEXT" # One of: ["PLAINTEXT", "ZIPFILE"], # required
    #           code_content_description: {
    #             text_content: "TextContent",
    #             code_md5: "CodeMD5",
    #             code_size: 1,
    #             s3_application_code_location_description: {
    #               bucket_arn: "BucketARN", # required
    #               file_key: "FileKey", # required
    #               object_version: "ObjectVersion"
    #             }
    #           }
    #         },
    #         run_configuration_description: {
    #           application_restore_configuration_description: {
    #             application_restore_type: "SKIP_RESTORE_FROM_SNAPSHOT" # One of: ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"], # required
    #             snapshot_name: "SnapshotName"
    #           },
    #           flink_run_configuration_description: {
    #             allow_non_restored_state: false
    #           }
    #         },
    #         flink_application_configuration_description: {
    #           checkpoint_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             checkpointing_enabled: false,
    #             checkpoint_interval: 1,
    #             min_pause_between_checkpoints: 1
    #           },
    #           monitoring_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             metrics_level: "APPLICATION" # One of: ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"],
    #             log_level: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #           },
    #           parallelism_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             parallelism: 1,
    #             parallelism_per_kpu: 1,
    #             current_parallelism: 1,
    #             auto_scaling_enabled: false
    #           },
    #           job_plan_description: "JobPlanDescription"
    #         },
    #         environment_property_descriptions: {
    #           property_group_descriptions: [
    #             {
    #               property_group_id: "Id", # required
    #               property_map: { # required
    #                 "PropertyKey" => "PropertyValue"
    #               }
    #             }
    #           ]
    #         },
    #         application_snapshot_configuration_description: {
    #           snapshots_enabled: false, # required
    #         },
    #         application_system_rollback_configuration_description: {
    #           rollback_enabled: false, # required
    #         },
    #         vpc_configuration_descriptions: [
    #           {
    #             vpc_configuration_id: "Id", # required
    #             vpc_id: "VpcId", # required
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"], # required
    #           }
    #         ],
    #         zeppelin_application_configuration_description: {
    #           monitoring_configuration_description: { # required
    #             log_level: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #           },
    #           catalog_configuration_description: {
    #             glue_data_catalog_configuration_description: { # required
    #               database_arn: "DatabaseARN", # required
    #             }
    #           },
    #           deploy_as_application_configuration_description: {
    #             s3_content_location_description: { # required
    #               bucket_arn: "BucketARN", # required
    #               base_path: "BasePath"
    #             }
    #           },
    #           custom_artifacts_configuration_description: [
    #             {
    #               artifact_type: "UDF" # One of: ["UDF", "DEPENDENCY_JAR"],
    #               s3_content_location_description: {
    #                 bucket_arn: "BucketARN", # required
    #                 file_key: "FileKey", # required
    #                 object_version: "ObjectVersion"
    #               },
    #               maven_reference_description: {
    #                 group_id: "MavenGroupId", # required
    #                 artifact_id: "MavenArtifactId", # required
    #                 version: "MavenVersion", # required
    #               }
    #             }
    #           ]
    #         },
    #         application_encryption_configuration_description: {
    #           key_id: "KeyId",
    #           key_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #         }
    #       },
    #       cloud_watch_logging_option_descriptions: [
    #         {
    #           cloud_watch_logging_option_id: "Id",
    #           log_stream_arn: "LogStreamARN", # required
    #           role_arn: "RoleARN"
    #         }
    #       ],
    #       application_maintenance_configuration_description: {
    #         application_maintenance_window_start_time: "ApplicationMaintenanceWindowStartTime", # required
    #         application_maintenance_window_end_time: "ApplicationMaintenanceWindowEndTime", # required
    #       },
    #       application_version_updated_from: 1,
    #       application_version_rolled_back_from: 1,
    #       application_version_create_timestamp: Time.now,
    #       conditional_token: "ConditionalToken",
    #       application_version_rolled_back_to: 1,
    #       application_mode: "STREAMING" # One of: ["STREAMING", "INTERACTIVE"]
    #     },
    #     operation_id: "OperationId"
    #   }
    # @return [Types::RollbackApplicationResponse]
    def rollback_application(params = {}, options = {})
      request = build_request(:rollback_application, params)
      request.send_request(options)
    end

    # <p>Starts the specified Managed Service for Apache Flink application. After creating an application, you must exclusively call this operation to 
    #       start your application.</p>
    # @param [Hash, Types::StartApplicationRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    # @option params [Types::RunConfiguration] :run_configuration
    #   <p>Identifies the run configuration (start parameters) of a Managed Service for Apache Flink application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     run_configuration: {
    #       flink_run_configuration: {
    #         allow_non_restored_state: false
    #       },
    #       sql_run_configurations: [
    #         {
    #           input_id: "Id", # required
    #           input_starting_position_configuration: { # required
    #             input_starting_position: "NOW" # One of: ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #           }
    #         }
    #       ],
    #       application_restore_configuration: {
    #         application_restore_type: "SKIP_RESTORE_FROM_SNAPSHOT" # One of: ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"], # required
    #         snapshot_name: "SnapshotName"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::StartApplicationResponse]
    def start_application(params = {}, options = {})
      request = build_request(:start_application, params)
      request.send_request(options)
    end

    # <p>Stops the application from processing data. You can stop
    #       an application only if it is in the running status, unless you set the <code>Force</code> 
    #         parameter to <code>true</code>.</p>
    #          <p>You can use the <a>DescribeApplication</a> operation to find the application status.
    #        </p>
    #          <p>Managed Service for Apache Flink takes a snapshot when the application is stopped, unless <code>Force</code> is set 
    #           to <code>true</code>.</p>
    # @param [Hash, Types::StopApplicationRequest] params
    # @option params [String] :application_name
    #   <p>The name of the running application to stop.</p>
    # @option params [Boolean] :force
    #   <p>Set to <code>true</code> to force the application to stop. If you set <code>Force</code>
    #             to <code>true</code>, Managed Service for Apache Flink stops the application without taking a snapshot. 
    #         </p>
    #            <note>
    #               <p>Force-stopping your application may lead to data loss or duplication.
    #                 To prevent data loss or duplicate processing of data during application restarts, 
    #                 we recommend you to take frequent snapshots of your application.</p>
    #            </note>
    #            <p>You can only force stop a Managed Service for Apache Flink application. You can't force stop a SQL-based Kinesis Data Analytics application.</p>
    #            <p>The application must be in the
    #             <code>STARTING</code>, <code>UPDATING</code>, <code>STOPPING</code>, <code>AUTOSCALING</code>, or
    #             <code>RUNNING</code> status. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.stop_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId"
    #   }
    # @return [Types::StopApplicationResponse]
    def stop_application(params = {}, options = {})
      request = build_request(:stop_application, params)
      request.send_request(options)
    end

    # <p>Adds one or more key-value tags to a Managed Service for Apache Flink application. Note that the maximum number of application 
    #         tags includes system tags. The maximum number of user-defined application tags is 50.
    #       For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using Tagging</a>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the application to assign the tags.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The key-value tags to assign to the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "KinesisAnalyticsARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
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

    # <p>Removes one or more tags from a Managed Service for Apache Flink application. For more information, see 
    #         <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html">Using Tagging</a>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the Managed Service for Apache Flink application from which to remove the tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of keys of tags to remove from the specified application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "KinesisAnalyticsARN", # required
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

    # <p>Updates an existing Managed Service for Apache Flink application. Using this operation, you
    #       can update application code, input configuration, and output configuration. </p>
    #          <p>Managed Service for Apache Flink updates the <code>ApplicationVersionId</code> each time you update
    #       your application. </p>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application to update.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The current application version ID. You must provide the
    #           <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>.You can
    #         retrieve the application version ID using <a>DescribeApplication</a>. For better
    #         concurrency support, use the <code>ConditionalToken</code> parameter instead of
    #           <code>CurrentApplicationVersionId</code>.</p>
    # @option params [Types::ApplicationConfigurationUpdate] :application_configuration_update
    #   <p>Describes application configuration updates.</p>
    # @option params [String] :service_execution_role_update
    #   <p>Describes updates to the service execution role.</p>
    # @option params [Types::RunConfigurationUpdate] :run_configuration_update
    #   <p>Describes updates to the application's starting parameters.</p>
    # @option params [Array<Types::CloudWatchLoggingOptionUpdate>] :cloud_watch_logging_option_updates
    #   <p>Describes application Amazon CloudWatch logging option updates. You can only update
    #         existing CloudWatch logging options with this action. To add a new CloudWatch logging option,
    #         use <a>AddApplicationCloudWatchLoggingOption</a>.</p>
    # @option params [String] :conditional_token
    #   <p>A value you use to implement strong concurrency for application updates. You must
    #         provide the <code>CurrentApplicationVersionId</code> or the <code>ConditionalToken</code>. You
    #         get the application's current <code>ConditionalToken</code> using <a>DescribeApplication</a>. For better concurrency support, use the
    #           <code>ConditionalToken</code> parameter instead of
    #         <code>CurrentApplicationVersionId</code>.</p>
    # @option params [String] :runtime_environment_update
    #   <p>Updates the Managed Service for Apache Flink runtime environment used to run your code. To avoid issues you must:</p>
    #            <ul>
    #               <li>
    #                  <p>Ensure your new jar and dependencies are compatible with the new runtime selected.</p>
    #               </li>
    #               <li>
    #                  <p>Ensure your new code's state is compatible with the snapshot from which your application will start</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1,
    #     application_configuration_update: {
    #       sql_application_configuration_update: {
    #         input_updates: [
    #           {
    #             input_id: "Id", # required
    #             name_prefix_update: "InAppStreamName",
    #             input_processing_configuration_update: {
    #               input_lambda_processor_update: { # required
    #                 resource_arn_update: "ResourceARN", # required
    #               }
    #             },
    #             kinesis_streams_input_update: {
    #               resource_arn_update: "ResourceARN", # required
    #             },
    #             kinesis_firehose_input_update: {
    #               resource_arn_update: "ResourceARN", # required
    #             },
    #             input_schema_update: {
    #               record_format_update: {
    #                 record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: "RecordRowPath", # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: "RecordRowDelimiter", # required
    #                     record_column_delimiter: "RecordColumnDelimiter", # required
    #                   }
    #                 }
    #               },
    #               record_encoding_update: "RecordEncoding",
    #               record_column_updates: [
    #                 {
    #                   name: "RecordColumnName", # required
    #                   mapping: "RecordColumnMapping",
    #                   sql_type: "RecordColumnSqlType", # required
    #                 }
    #               ]
    #             },
    #             input_parallelism_update: {
    #               count_update: 1, # required
    #             }
    #           }
    #         ],
    #         output_updates: [
    #           {
    #             output_id: "Id", # required
    #             name_update: "InAppStreamName",
    #             kinesis_streams_output_update: {
    #               resource_arn_update: "ResourceARN", # required
    #             },
    #             kinesis_firehose_output_update: {
    #               resource_arn_update: "ResourceARN", # required
    #             },
    #             lambda_output_update: {
    #               resource_arn_update: "ResourceARN", # required
    #             },
    #             destination_schema_update: {
    #               record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #             }
    #           }
    #         ],
    #         reference_data_source_updates: [
    #           {
    #             reference_id: "Id", # required
    #             table_name_update: "InAppTableName",
    #             s3_reference_data_source_update: {
    #               bucket_arn_update: "BucketARN",
    #               file_key_update: "FileKey"
    #             },
    #             reference_schema_update: {
    #               record_format: { # required
    #                 record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                 mapping_parameters: {
    #                   json_mapping_parameters: {
    #                     record_row_path: "RecordRowPath", # required
    #                   },
    #                   csv_mapping_parameters: {
    #                     record_row_delimiter: "RecordRowDelimiter", # required
    #                     record_column_delimiter: "RecordColumnDelimiter", # required
    #                   }
    #                 }
    #               },
    #               record_encoding: "RecordEncoding",
    #               record_columns: [ # required
    #                 {
    #                   name: "RecordColumnName", # required
    #                   mapping: "RecordColumnMapping",
    #                   sql_type: "RecordColumnSqlType", # required
    #                 }
    #               ]
    #             }
    #           }
    #         ]
    #       },
    #       application_code_configuration_update: {
    #         code_content_type_update: "PLAINTEXT" # One of: ["PLAINTEXT", "ZIPFILE"],
    #         code_content_update: {
    #           text_content_update: "TextContent",
    #           zip_file_content_update: "data",
    #           s3_content_location_update: {
    #             bucket_arn_update: "BucketARN",
    #             file_key_update: "FileKey",
    #             object_version_update: "ObjectVersion"
    #           }
    #         }
    #       },
    #       flink_application_configuration_update: {
    #         checkpoint_configuration_update: {
    #           configuration_type_update: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #           checkpointing_enabled_update: false,
    #           checkpoint_interval_update: 1,
    #           min_pause_between_checkpoints_update: 1
    #         },
    #         monitoring_configuration_update: {
    #           configuration_type_update: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #           metrics_level_update: "APPLICATION" # One of: ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"],
    #           log_level_update: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #         },
    #         parallelism_configuration_update: {
    #           configuration_type_update: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #           parallelism_update: 1,
    #           parallelism_per_kpu_update: 1,
    #           auto_scaling_enabled_update: false
    #         }
    #       },
    #       environment_property_updates: {
    #         property_groups: [ # required
    #           {
    #             property_group_id: "Id", # required
    #             property_map: { # required
    #               "PropertyKey" => "PropertyValue"
    #             }
    #           }
    #         ]
    #       },
    #       application_snapshot_configuration_update: {
    #         snapshots_enabled_update: false, # required
    #       },
    #       application_system_rollback_configuration_update: {
    #         rollback_enabled_update: false, # required
    #       },
    #       vpc_configuration_updates: [
    #         {
    #           vpc_configuration_id: "Id", # required
    #           subnet_id_updates: ["SubnetId"],
    #           security_group_id_updates: ["SecurityGroupId"]
    #         }
    #       ],
    #       zeppelin_application_configuration_update: {
    #         monitoring_configuration_update: {
    #           log_level_update: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"], # required
    #         },
    #         catalog_configuration_update: {
    #           glue_data_catalog_configuration_update: { # required
    #             database_arn_update: "DatabaseARN", # required
    #           }
    #         },
    #         deploy_as_application_configuration_update: {
    #           s3_content_location_update: {
    #             bucket_arn_update: "BucketARN",
    #             base_path_update: "BasePath"
    #           }
    #         },
    #         custom_artifacts_configuration_update: [
    #           {
    #             artifact_type: "UDF" # One of: ["UDF", "DEPENDENCY_JAR"], # required
    #             s3_content_location: {
    #               bucket_arn: "BucketARN", # required
    #               file_key: "FileKey", # required
    #               object_version: "ObjectVersion"
    #             },
    #             maven_reference: {
    #               group_id: "MavenGroupId", # required
    #               artifact_id: "MavenArtifactId", # required
    #               version: "MavenVersion", # required
    #             }
    #           }
    #         ]
    #       },
    #       application_encryption_configuration_update: {
    #         key_id_update: "KeyId",
    #         key_type_update: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #       }
    #     },
    #     service_execution_role_update: "RoleARN",
    #     run_configuration_update: {
    #       flink_run_configuration: {
    #         allow_non_restored_state: false
    #       },
    #       application_restore_configuration: {
    #         application_restore_type: "SKIP_RESTORE_FROM_SNAPSHOT" # One of: ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"], # required
    #         snapshot_name: "SnapshotName"
    #       }
    #     },
    #     cloud_watch_logging_option_updates: [
    #       {
    #         cloud_watch_logging_option_id: "Id", # required
    #         log_stream_arn_update: "LogStreamARN"
    #       }
    #     ],
    #     conditional_token: "ConditionalToken",
    #     runtime_environment_update: "SQL-1_0" # One of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0", "FLINK-1_15", "ZEPPELIN-FLINK-3_0", "FLINK-1_18", "FLINK-1_19", "FLINK-1_20"]
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_detail: { # required
    #       application_arn: "ResourceARN", # required
    #       application_description: "ApplicationDescription",
    #       application_name: "ApplicationName", # required
    #       runtime_environment: "SQL-1_0" # One of: ["SQL-1_0", "FLINK-1_6", "FLINK-1_8", "ZEPPELIN-FLINK-1_0", "FLINK-1_11", "FLINK-1_13", "ZEPPELIN-FLINK-2_0", "FLINK-1_15", "ZEPPELIN-FLINK-3_0", "FLINK-1_18", "FLINK-1_19", "FLINK-1_20"], # required
    #       service_execution_role: "RoleARN",
    #       application_status: "DELETING" # One of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING", "AUTOSCALING", "FORCE_STOPPING", "ROLLING_BACK", "MAINTENANCE", "ROLLED_BACK"], # required
    #       application_version_id: 1, # required
    #       create_timestamp: Time.now,
    #       last_update_timestamp: Time.now,
    #       application_configuration_description: {
    #         sql_application_configuration_description: {
    #           input_descriptions: [
    #             {
    #               input_id: "Id",
    #               name_prefix: "InAppStreamName",
    #               in_app_stream_names: ["InAppStreamName"],
    #               input_processing_configuration_description: {
    #                 input_lambda_processor_description: {
    #                   resource_arn: "ResourceARN", # required
    #                   role_arn: "RoleARN"
    #                 }
    #               },
    #               kinesis_streams_input_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               kinesis_firehose_input_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               input_schema: {
    #                 record_format: { # required
    #                   record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                   mapping_parameters: {
    #                     json_mapping_parameters: {
    #                       record_row_path: "RecordRowPath", # required
    #                     },
    #                     csv_mapping_parameters: {
    #                       record_row_delimiter: "RecordRowDelimiter", # required
    #                       record_column_delimiter: "RecordColumnDelimiter", # required
    #                     }
    #                   }
    #                 },
    #                 record_encoding: "RecordEncoding",
    #                 record_columns: [ # required
    #                   {
    #                     name: "RecordColumnName", # required
    #                     mapping: "RecordColumnMapping",
    #                     sql_type: "RecordColumnSqlType", # required
    #                   }
    #                 ]
    #               },
    #               input_parallelism: {
    #                 count: 1
    #               },
    #               input_starting_position_configuration: {
    #                 input_starting_position: "NOW" # One of: ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #               }
    #             }
    #           ],
    #           output_descriptions: [
    #             {
    #               output_id: "Id",
    #               name: "InAppStreamName",
    #               kinesis_streams_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               kinesis_firehose_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               lambda_output_description: {
    #                 resource_arn: "ResourceARN", # required
    #                 role_arn: "RoleARN"
    #               },
    #               destination_schema: {
    #                 record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #               }
    #             }
    #           ],
    #           reference_data_source_descriptions: [
    #             {
    #               reference_id: "Id", # required
    #               table_name: "InAppTableName", # required
    #               s3_reference_data_source_description: { # required
    #                 bucket_arn: "BucketARN", # required
    #                 file_key: "FileKey", # required
    #                 reference_role_arn: "RoleARN"
    #               },
    #               reference_schema: {
    #                 record_format: { # required
    #                   record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #                   mapping_parameters: {
    #                     json_mapping_parameters: {
    #                       record_row_path: "RecordRowPath", # required
    #                     },
    #                     csv_mapping_parameters: {
    #                       record_row_delimiter: "RecordRowDelimiter", # required
    #                       record_column_delimiter: "RecordColumnDelimiter", # required
    #                     }
    #                   }
    #                 },
    #                 record_encoding: "RecordEncoding",
    #                 record_columns: [ # required
    #                   {
    #                     name: "RecordColumnName", # required
    #                     mapping: "RecordColumnMapping",
    #                     sql_type: "RecordColumnSqlType", # required
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         },
    #         application_code_configuration_description: {
    #           code_content_type: "PLAINTEXT" # One of: ["PLAINTEXT", "ZIPFILE"], # required
    #           code_content_description: {
    #             text_content: "TextContent",
    #             code_md5: "CodeMD5",
    #             code_size: 1,
    #             s3_application_code_location_description: {
    #               bucket_arn: "BucketARN", # required
    #               file_key: "FileKey", # required
    #               object_version: "ObjectVersion"
    #             }
    #           }
    #         },
    #         run_configuration_description: {
    #           application_restore_configuration_description: {
    #             application_restore_type: "SKIP_RESTORE_FROM_SNAPSHOT" # One of: ["SKIP_RESTORE_FROM_SNAPSHOT", "RESTORE_FROM_LATEST_SNAPSHOT", "RESTORE_FROM_CUSTOM_SNAPSHOT"], # required
    #             snapshot_name: "SnapshotName"
    #           },
    #           flink_run_configuration_description: {
    #             allow_non_restored_state: false
    #           }
    #         },
    #         flink_application_configuration_description: {
    #           checkpoint_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             checkpointing_enabled: false,
    #             checkpoint_interval: 1,
    #             min_pause_between_checkpoints: 1
    #           },
    #           monitoring_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             metrics_level: "APPLICATION" # One of: ["APPLICATION", "TASK", "OPERATOR", "PARALLELISM"],
    #             log_level: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #           },
    #           parallelism_configuration_description: {
    #             configuration_type: "DEFAULT" # One of: ["DEFAULT", "CUSTOM"],
    #             parallelism: 1,
    #             parallelism_per_kpu: 1,
    #             current_parallelism: 1,
    #             auto_scaling_enabled: false
    #           },
    #           job_plan_description: "JobPlanDescription"
    #         },
    #         environment_property_descriptions: {
    #           property_group_descriptions: [
    #             {
    #               property_group_id: "Id", # required
    #               property_map: { # required
    #                 "PropertyKey" => "PropertyValue"
    #               }
    #             }
    #           ]
    #         },
    #         application_snapshot_configuration_description: {
    #           snapshots_enabled: false, # required
    #         },
    #         application_system_rollback_configuration_description: {
    #           rollback_enabled: false, # required
    #         },
    #         vpc_configuration_descriptions: [
    #           {
    #             vpc_configuration_id: "Id", # required
    #             vpc_id: "VpcId", # required
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"], # required
    #           }
    #         ],
    #         zeppelin_application_configuration_description: {
    #           monitoring_configuration_description: { # required
    #             log_level: "INFO" # One of: ["INFO", "WARN", "ERROR", "DEBUG"]
    #           },
    #           catalog_configuration_description: {
    #             glue_data_catalog_configuration_description: { # required
    #               database_arn: "DatabaseARN", # required
    #             }
    #           },
    #           deploy_as_application_configuration_description: {
    #             s3_content_location_description: { # required
    #               bucket_arn: "BucketARN", # required
    #               base_path: "BasePath"
    #             }
    #           },
    #           custom_artifacts_configuration_description: [
    #             {
    #               artifact_type: "UDF" # One of: ["UDF", "DEPENDENCY_JAR"],
    #               s3_content_location_description: {
    #                 bucket_arn: "BucketARN", # required
    #                 file_key: "FileKey", # required
    #                 object_version: "ObjectVersion"
    #               },
    #               maven_reference_description: {
    #                 group_id: "MavenGroupId", # required
    #                 artifact_id: "MavenArtifactId", # required
    #                 version: "MavenVersion", # required
    #               }
    #             }
    #           ]
    #         },
    #         application_encryption_configuration_description: {
    #           key_id: "KeyId",
    #           key_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #         }
    #       },
    #       cloud_watch_logging_option_descriptions: [
    #         {
    #           cloud_watch_logging_option_id: "Id",
    #           log_stream_arn: "LogStreamARN", # required
    #           role_arn: "RoleARN"
    #         }
    #       ],
    #       application_maintenance_configuration_description: {
    #         application_maintenance_window_start_time: "ApplicationMaintenanceWindowStartTime", # required
    #         application_maintenance_window_end_time: "ApplicationMaintenanceWindowEndTime", # required
    #       },
    #       application_version_updated_from: 1,
    #       application_version_rolled_back_from: 1,
    #       application_version_create_timestamp: Time.now,
    #       conditional_token: "ConditionalToken",
    #       application_version_rolled_back_to: 1,
    #       application_mode: "STREAMING" # One of: ["STREAMING", "INTERACTIVE"]
    #     },
    #     operation_id: "OperationId"
    #   }
    # @return [Types::UpdateApplicationResponse]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Updates the maintenance configuration of the Managed Service for Apache Flink application. </p>
    #          <p>You can invoke this operation on an application that is in one of the two following
    #       states: <code>READY</code> or <code>RUNNING</code>. If you invoke it when the application is
    #       in a state other than these two states, it throws a <code>ResourceInUseException</code>. The
    #       service makes use of the updated configuration the next time it schedules maintenance for the
    #       application. If you invoke this operation after the service schedules maintenance, the service
    #       will apply the configuration update the next time it schedules maintenance for the
    #       application. This means that you might not see the maintenance configuration update applied to
    #       the maintenance process that follows a successful invocation of this operation, but to the
    #       following maintenance process instead.</p>
    #          <p>To see the current maintenance configuration of your application, invoke the
    #       <a>DescribeApplication</a> operation.</p>
    #          <p>For information about application maintenance, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/java/maintenance.html">Managed Service for Apache Flink for Apache Flink Maintenance</a>.</p>
    #          <note>
    #             <p>This operation is supported only for Managed Service for Apache Flink.</p>
    #          </note>
    # @param [Hash, Types::UpdateApplicationMaintenanceConfigurationRequest] params
    # @option params [String] :application_name
    #   <p>The name of the application for which you want to update the maintenance configuration.</p>
    # @option params [Types::ApplicationMaintenanceConfigurationUpdate] :application_maintenance_configuration_update
    #   <p>Describes the application maintenance configuration update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     application_maintenance_configuration_update: { # required
    #       application_maintenance_window_start_time_update: "ApplicationMaintenanceWindowStartTime", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_application_maintenance_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "ResourceARN",
    #     application_maintenance_configuration_description: {
    #       application_maintenance_window_start_time: "ApplicationMaintenanceWindowStartTime", # required
    #       application_maintenance_window_end_time: "ApplicationMaintenanceWindowEndTime", # required
    #     }
    #   }
    # @return [Types::UpdateApplicationMaintenanceConfigurationResponse]
    def update_application_maintenance_configuration(params = {}, options = {})
      request = build_request(:update_application_maintenance_configuration, params)
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
      context[:gem_name] = 'aws-sdk-kinesisanalyticsv2'
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
