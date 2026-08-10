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
require 'smithy-client/plugins/protocol'
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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:kinesisanalytics)

module Aws::KinesisAnalytics
  # An API client for Aws::KinesisAnalytics.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::KinesisAnalytics20150814
    @identifier = :kinesisanalytics

    add_plugin(::Aws::KinesisAnalytics::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::Protocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::KinesisAnalytics::EndpointProvider)
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
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
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

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Adds a CloudWatch log stream to monitor application configuration errors. For more
    #             information about using CloudWatch log streams with Amazon Kinesis Analytics
    #             applications, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon
    #                 CloudWatch Logs</a>.</p>
    # @param [Hash, Types::AddApplicationCloudWatchLoggingOptionRequest] params
    # @option params [String] :application_name
    #   <p>The Kinesis Analytics application name.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The version ID of the Kinesis Analytics application.</p>
    # @option params [Types::CloudWatchLoggingOption] :cloud_watch_logging_option
    #   <p>Provides the CloudWatch log stream Amazon Resource Name (ARN) and the IAM role ARN.
    #               Note: To write application messages to CloudWatch, the IAM role that is used must have
    #               the <code>PutLogEvents</code> policy action enabled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     cloud_watch_logging_option: { # required
    #       log_stream_arn: "LogStreamARN", # required
    #       role_arn: "RoleARN", # required
    #     }
    #   }
    #   options = {}
    #   response = client.add_application_cloud_watch_logging_option(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddApplicationCloudWatchLoggingOptionResponse]
    def add_application_cloud_watch_logging_option(params = {}, options = {})
      request = build_request(:add_application_cloud_watch_logging_option, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>
    #             Adds a streaming source to your Amazon Kinesis application. 
    #             For conceptual information, 
    #             see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>.
    #         </p>
    #         <p>You can add a streaming source either when you create an application or you can use 
    #             this operation to add a streaming source after you create an application. For more information, see 
    #            <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_CreateApplication.html">CreateApplication</a>.</p>
    #         <p>Any configuration update, including adding a streaming source using this operation,  
    #             results in a new version of the application. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation  
    #             to find the current application version.
    #         </p>
    #         <p>This operation requires permissions to perform the 
    #             <code>kinesisanalytics:AddApplicationInput</code> action.</p>
    # @param [Hash, Types::AddApplicationInputRequest] params
    # @option params [String] :application_name
    #   <p>Name of your existing Amazon Kinesis Analytics application to which you want to add the streaming source.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>Current version of your Amazon Kinesis Analytics application. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation 
    #               to find the current application version.</p>
    # @option params [Types::Input] :input
    #   <p>The <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_Input.html">Input</a> to add.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     input: { # required
    #       name_prefix: "InAppStreamName", # required
    #       input_processing_configuration: {
    #         input_lambda_processor: { # required
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         }
    #       },
    #       kinesis_streams_input: {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       },
    #       kinesis_firehose_input: {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
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
    #   {}
    # @return [Types::AddApplicationInputResponse]
    def add_application_input(params = {}, options = {})
      request = build_request(:add_application_input, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Adds an <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> to an application. An input processor preprocesses records on the input stream
    #             before the application's SQL code executes. Currently, the only input processor available is 
    #             <a href="https://docs.aws.amazon.com/lambda/">AWS Lambda</a>.</p>
    # @param [Hash, Types::AddApplicationInputProcessingConfigurationRequest] params
    # @option params [String] :application_name
    #   <p>Name of the application to which you want to add the input processing configuration.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>Version of the application to which you want to add the input processing configuration. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> 
    #               operation to get the current application version.  If the version specified is not the current version, the 
    #               <code>ConcurrentModificationException</code> is returned.</p>
    # @option params [String] :input_id
    #   <p>The ID of the input configuration to add the input processing configuration to. You
    #               can get a list of the input IDs for an application using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation.</p>
    # @option params [Types::InputProcessingConfiguration] :input_processing_configuration
    #   <p>The <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> to add to the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     input_id: "Id", # required
    #     input_processing_configuration: { # required
    #       input_lambda_processor: { # required
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.add_application_input_processing_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddApplicationInputProcessingConfigurationResponse]
    def add_application_input_processing_configuration(params = {}, options = {})
      request = build_request(:add_application_input_processing_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Adds an external destination to your Amazon Kinesis Analytics application.</p>
    #         <p>If you want Amazon Kinesis Analytics to deliver data from an in-application stream
    #             within your application to an external destination (such as an Amazon Kinesis stream, an
    #             Amazon Kinesis Firehose delivery stream, or an AWS Lambda function), you add the
    #             relevant configuration to your application using this operation. You can configure one
    #             or more outputs for your application. Each output configuration maps an in-application
    #             stream and an external destination.</p>
    #         <p> You can use one of the output configurations to deliver data from your
    #             in-application error stream to an external destination so that you can analyze the
    #             errors. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Understanding Application
    #                 Output (Destination)</a>. </p>
    #         <p> Any configuration update, including adding a streaming source using this
    #             operation, results in a new version of the application. You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to find the current application
    #             version.</p>
    #         <p>For the limits on the number of application inputs and outputs 
    #             you can configure, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>.</p>
    #         <p>This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action.</p>
    # @param [Hash, Types::AddApplicationOutputRequest] params
    # @option params [String] :application_name
    #   <p>Name of the application to which you want to add the output configuration.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>Version of the application to which you want to add the output configuration. You
    #               can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the current
    #               application version. If the version specified is not the current version, the
    #                   <code>ConcurrentModificationException</code> is returned. </p>
    # @option params [Types::Output] :output
    #   <p>An array of objects, each describing one output configuration. In the output
    #               configuration, you specify the name of an in-application stream, a destination (that is,
    #               an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an AWS Lambda
    #               function), and record the formation to use when writing to the destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     output: { # required
    #       name: "InAppStreamName", # required
    #       kinesis_streams_output: {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       },
    #       kinesis_firehose_output: {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
    #       },
    #       lambda_output: {
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
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
    #   {}
    # @return [Types::AddApplicationOutputResponse]
    def add_application_output(params = {}, options = {})
      request = build_request(:add_application_output, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Adds a reference data source to an existing application.</p> 
    #          <p>Amazon Kinesis Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in Amazon S3 object maps to columns in the resulting in-application table.</p>
    #         <p>
    #             For conceptual information, 
    #             see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>.
    #             For the limits on data sources you can add to your application, see 
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>.
    #         </p>
    #         <p>
    #             This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action.
    #         </p>
    # @param [Hash, Types::AddApplicationReferenceDataSourceRequest] params
    # @option params [String] :application_name
    #   <p>Name of an existing application.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>Version of the application for which you are adding the reference data source. 
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the current application version.
    #               If the version specified is not the current version, the 
    #               <code>ConcurrentModificationException</code> is returned.</p>
    # @option params [Types::ReferenceDataSource] :reference_data_source
    #   <p>The reference data source can be an object in your Amazon S3 bucket. Amazon Kinesis Analytics reads the object and copies the data into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting in-application table that is created. You must also provide an IAM role with the necessary permissions that Amazon Kinesis Analytics can assume to read the object from your S3 bucket on your behalf.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     reference_data_source: { # required
    #       table_name: "InAppTableName", # required
    #       s3_reference_data_source: {
    #         bucket_arn: "BucketARN", # required
    #         file_key: "FileKey", # required
    #         reference_role_arn: "RoleARN", # required
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
    #   {}
    # @return [Types::AddApplicationReferenceDataSourceResponse]
    def add_application_reference_data_source(params = {}, options = {})
      request = build_request(:add_application_reference_data_source, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         
    #         <p>
    #             Creates an Amazon Kinesis Analytics application. 
    #             You can configure each application with one streaming source as input,
    #             application code to process the input, and up to 
    #             three destinations where
    #             you want Amazon Kinesis Analytics to write the output data from your application.
    #             For an overview, see 
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html">How it Works</a>. 
    #         </p>
    #         <p>In the input configuration, you map the streaming source to an in-application stream, which you can think of as a constantly updating table. In the mapping, you must provide a schema for the in-application stream and map each data column in the in-application stream to a 
    #             data element in the streaming source.</p>
    #         
    #         <p>Your application code is one or more SQL statements that read input data, transform it, and generate output. Your application code can create one or more SQL artifacts like SQL streams or pumps.</p>
    #         <p>In the output configuration, you can configure the application to write data from in-application streams created in your applications to up to three destinations.</p>
    #         <p>
    #             To read data from your source stream or write data to destination streams, Amazon Kinesis Analytics 
    #             needs your permissions. You grant these permissions by creating IAM roles. This operation requires permissions to perform the 
    #             <code>kinesisanalytics:CreateApplication</code> action.
    #         </p>
    #         <p>
    #             For introductory exercises to create an Amazon Kinesis Analytics application, see 
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html">Getting Started</a>.
    #         </p>
    # @param [Hash, Types::CreateApplicationRequest] params
    # @option params [String] :application_name
    #   <p>Name of your Amazon Kinesis Analytics application (for example, <code>sample-app</code>).</p>
    # @option params [String] :application_description
    #   <p>Summary description of the application.</p>
    # @option params [Array<Types::Input>] :inputs
    #   <p>Use this parameter to configure the application input.</p>
    #           <p>You can configure your application to receive input from a single streaming source. In this configuration, you map this streaming source to an in-application stream that is created. Your application code can then query the in-application stream like a table (you can think of it as a constantly updating table).</p>
    #           <p>For the streaming source, you provide its Amazon Resource Name (ARN) and format of
    #               data on the stream (for example, JSON, CSV, etc.). You also must provide an IAM role
    #               that Amazon Kinesis Analytics can assume to read this stream on your behalf.</p>
    #           <p>To create the in-application stream, you need to specify a schema to transform your data into a schematized version used in SQL. In the schema, you provide the necessary mapping of the data elements in the streaming source to record columns in the in-app stream.</p>
    # @option params [Array<Types::Output>] :outputs
    #   <p>You can configure application output to write data from any of the in-application streams to up to three destinations.</p>
    #           <p>These destinations can be Amazon Kinesis streams, Amazon Kinesis Firehose delivery
    #               streams, AWS Lambda destinations, or any combination of the three.</p>
    #           <p>In the configuration, you specify the in-application stream name, the destination stream or Lambda function Amazon Resource Name (ARN), and the format to use when writing data. You must also provide an IAM role that Amazon Kinesis Analytics can assume to write to the 
    #               destination stream or Lambda function on your behalf.</p>
    #           <p>In the output configuration, you also provide the output stream or Lambda function ARN. For stream destinations, you provide the format
    #               of data in the stream (for example, JSON, CSV). You also must provide an IAM role that
    #               Amazon Kinesis Analytics can assume to write to the stream or Lambda function on your behalf.</p>
    # @option params [Array<Types::CloudWatchLoggingOption>] :cloud_watch_logging_options
    #   <p>Use this parameter to configure a CloudWatch log stream to monitor application
    #               configuration errors. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon
    #                   CloudWatch Logs</a>.</p>
    # @option params [String] :application_code
    #   <p>One or more SQL statements that read input data, transform it, and generate output.
    #               For example, you can write a SQL statement that reads data from one in-application
    #               stream, generates a running average of the number of advertisement clicks by vendor, and
    #               insert resulting rows in another in-application stream using pumps. For more information
    #               about the typical pattern, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html">Application
    #                   Code</a>. </p>
    #           
    #           <p>You can provide such series of SQL statements, 
    #               where output of one statement can be
    #               used as the input for the next statement. You store 
    #               intermediate results by creating in-application streams and pumps.</p>
    #           
    #           <p>Note that the application code must create the streams with names 
    #               specified in the <code>Outputs</code>. For example, 
    #               if your <code>Outputs</code> defines output streams named 
    #               <code>ExampleOutputStream1</code> and <code>ExampleOutputStream2</code>,
    #               then your application code must create these streams. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.
    #           For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using Tagging</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     application_description: "ApplicationDescription",
    #     inputs: [
    #       {
    #         name_prefix: "InAppStreamName", # required
    #         input_processing_configuration: {
    #           input_lambda_processor: { # required
    #             resource_arn: "ResourceARN", # required
    #             role_arn: "RoleARN", # required
    #           }
    #         },
    #         kinesis_streams_input: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         kinesis_firehose_input: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         input_parallelism: {
    #           count: 1
    #         },
    #         input_schema: { # required
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
    #     ],
    #     outputs: [
    #       {
    #         name: "InAppStreamName", # required
    #         kinesis_streams_output: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         kinesis_firehose_output: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         lambda_output: {
    #           resource_arn: "ResourceARN", # required
    #           role_arn: "RoleARN", # required
    #         },
    #         destination_schema: { # required
    #           record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #         }
    #       }
    #     ],
    #     cloud_watch_logging_options: [
    #       {
    #         log_stream_arn: "LogStreamARN", # required
    #         role_arn: "RoleARN", # required
    #       }
    #     ],
    #     application_code: "ApplicationCode",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_summary: { # required
    #       application_name: "ApplicationName", # required
    #       application_arn: "ResourceARN", # required
    #       application_status: "DELETING" # One of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING"], # required
    #     }
    #   }
    # @return [Types::CreateApplicationResponse]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Deletes the specified application. Amazon Kinesis Analytics halts application execution and deletes the application, including any application artifacts (such as in-application streams, reference table, and application code).</p>
    #         
    #         <p>This operation requires permissions to perform the <code>kinesisanalytics:DeleteApplication</code> action.</p>
    # @param [Hash, Types::DeleteApplicationRequest] params
    # @option params [String] :application_name
    #   <p>Name of the Amazon Kinesis Analytics application to delete.</p>
    # @option params [Time] :create_timestamp
    #   <p>
    #               You can use the <code>DescribeApplication</code> operation to get this value.
    #           </p>
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

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Deletes a CloudWatch log stream from an application. For more information about
    #             using CloudWatch log streams with Amazon Kinesis Analytics applications, see
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working with Amazon CloudWatch Logs</a>.</p>
    # @param [Hash, Types::DeleteApplicationCloudWatchLoggingOptionRequest] params
    # @option params [String] :application_name
    #   <p>The Kinesis Analytics application name.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The version ID of the Kinesis Analytics application.</p>
    # @option params [String] :cloud_watch_logging_option_id
    #   <p>The <code>CloudWatchLoggingOptionId</code> of the CloudWatch logging option to
    #               delete. You can get the <code>CloudWatchLoggingOptionId</code> by using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     cloud_watch_logging_option_id: "Id", # required
    #   }
    #   options = {}
    #   response = client.delete_application_cloud_watch_logging_option(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationCloudWatchLoggingOptionResponse]
    def delete_application_cloud_watch_logging_option(params = {}, options = {})
      request = build_request(:delete_application_cloud_watch_logging_option, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Deletes an <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> from an input.</p>
    # @param [Hash, Types::DeleteApplicationInputProcessingConfigurationRequest] params
    # @option params [String] :application_name
    #   <p>The Kinesis Analytics application name.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The version ID of the Kinesis Analytics application.</p>
    # @option params [String] :input_id
    #   <p>The ID of the input configuration from which to delete the input processing
    #               configuration. You can get a list of the input IDs for an application by using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation.</p>
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
    #   {}
    # @return [Types::DeleteApplicationInputProcessingConfigurationResponse]
    def delete_application_input_processing_configuration(params = {}, options = {})
      request = build_request(:delete_application_input_processing_configuration, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Deletes output destination configuration from your application configuration. Amazon Kinesis Analytics will no longer write data from the corresponding in-application stream to the external output destination.</p>
    #         <p>This operation requires permissions to perform the 
    #             <code>kinesisanalytics:DeleteApplicationOutput</code> action.</p>
    # @param [Hash, Types::DeleteApplicationOutputRequest] params
    # @option params [String] :application_name
    #   <p>Amazon Kinesis Analytics application name.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>Amazon Kinesis Analytics application version. 
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the current application version.
    #               If the version specified is not the current version, the 
    #               <code>ConcurrentModificationException</code> is returned.
    #           </p>
    # @option params [String] :output_id
    #   <p>The ID of the configuration to delete. 
    #               Each output configuration that is added to the application, either when the application is 
    #               created or later using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationOutput.html">AddApplicationOutput</a> operation, has a unique ID. 
    #               You need to provide the ID to uniquely identify the output configuration that you want to 
    #               delete from the application configuration. 
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the specific
    #               <code>OutputId</code>. 
    #           </p>
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
    #   {}
    # @return [Types::DeleteApplicationOutputResponse]
    def delete_application_output(params = {}, options = {})
      request = build_request(:delete_application_output, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Deletes a reference data source configuration from the specified application configuration.</p>
    #         <p>If the application is running, Amazon Kinesis Analytics immediately removes the in-application table 
    #             that you created using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html">AddApplicationReferenceDataSource</a> operation.  </p>
    #         
    #         <p>This operation requires permissions to perform the <code>kinesisanalytics.DeleteApplicationReferenceDataSource</code> 
    #         action.</p>
    # @param [Hash, Types::DeleteApplicationReferenceDataSourceRequest] params
    # @option params [String] :application_name
    #   <p>Name of an existing application.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>Version of the application.  
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the current application version.
    #               If the version specified 
    #               is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>
    # @option params [String] :reference_id
    #   <p>ID of the reference data source. When you add a reference data source to your 
    #               application using the 
    #               <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html">AddApplicationReferenceDataSource</a>, Amazon Kinesis Analytics assigns an ID. 
    #               You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get the reference ID.
    #           </p>
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
    #   {}
    # @return [Types::DeleteApplicationReferenceDataSourceResponse]
    def delete_application_reference_data_source(params = {}, options = {})
      request = build_request(:delete_application_reference_data_source, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Returns information about a specific Amazon Kinesis Analytics application.</p>
    #         <p>If you want to retrieve a list of all applications in your account,
    #             use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_ListApplications.html">ListApplications</a> operation.</p>
    #         <p>This operation requires permissions to perform the <code>kinesisanalytics:DescribeApplication</code> 
    #             action. You can use <code>DescribeApplication</code> to get the current application versionId, which you need to call other 
    #             operations such as <code>Update</code>.
    #         </p>
    # @param [Hash, Types::DescribeApplicationRequest] params
    # @option params [String] :application_name
    #   <p>Name of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #   }
    #   options = {}
    #   response = client.describe_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_detail: { # required
    #       application_name: "ApplicationName", # required
    #       application_description: "ApplicationDescription",
    #       application_arn: "ResourceARN", # required
    #       application_status: "DELETING" # One of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING"], # required
    #       create_timestamp: Time.now,
    #       last_update_timestamp: Time.now,
    #       input_descriptions: [
    #         {
    #           input_id: "Id",
    #           name_prefix: "InAppStreamName",
    #           in_app_stream_names: ["InAppStreamName"],
    #           input_processing_configuration_description: {
    #             input_lambda_processor_description: {
    #               resource_arn: "ResourceARN",
    #               role_arn: "RoleARN"
    #             }
    #           },
    #           kinesis_streams_input_description: {
    #             resource_arn: "ResourceARN",
    #             role_arn: "RoleARN"
    #           },
    #           kinesis_firehose_input_description: {
    #             resource_arn: "ResourceARN",
    #             role_arn: "RoleARN"
    #           },
    #           input_schema: {
    #             record_format: { # required
    #               record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #               mapping_parameters: {
    #                 json_mapping_parameters: {
    #                   record_row_path: "RecordRowPath", # required
    #                 },
    #                 csv_mapping_parameters: {
    #                   record_row_delimiter: "RecordRowDelimiter", # required
    #                   record_column_delimiter: "RecordColumnDelimiter", # required
    #                 }
    #               }
    #             },
    #             record_encoding: "RecordEncoding",
    #             record_columns: [ # required
    #               {
    #                 name: "RecordColumnName", # required
    #                 mapping: "RecordColumnMapping",
    #                 sql_type: "RecordColumnSqlType", # required
    #               }
    #             ]
    #           },
    #           input_parallelism: {
    #             count: 1
    #           },
    #           input_starting_position_configuration: {
    #             input_starting_position: "NOW" # One of: ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #           }
    #         }
    #       ],
    #       output_descriptions: [
    #         {
    #           output_id: "Id",
    #           name: "InAppStreamName",
    #           kinesis_streams_output_description: {
    #             resource_arn: "ResourceARN",
    #             role_arn: "RoleARN"
    #           },
    #           kinesis_firehose_output_description: {
    #             resource_arn: "ResourceARN",
    #             role_arn: "RoleARN"
    #           },
    #           lambda_output_description: {
    #             resource_arn: "ResourceARN",
    #             role_arn: "RoleARN"
    #           },
    #           destination_schema: {
    #             record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #           }
    #         }
    #       ],
    #       reference_data_source_descriptions: [
    #         {
    #           reference_id: "Id", # required
    #           table_name: "InAppTableName", # required
    #           s3_reference_data_source_description: { # required
    #             bucket_arn: "BucketARN", # required
    #             file_key: "FileKey", # required
    #             reference_role_arn: "RoleARN", # required
    #           },
    #           reference_schema: {
    #             record_format: { # required
    #               record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #               mapping_parameters: {
    #                 json_mapping_parameters: {
    #                   record_row_path: "RecordRowPath", # required
    #                 },
    #                 csv_mapping_parameters: {
    #                   record_row_delimiter: "RecordRowDelimiter", # required
    #                   record_column_delimiter: "RecordColumnDelimiter", # required
    #                 }
    #               }
    #             },
    #             record_encoding: "RecordEncoding",
    #             record_columns: [ # required
    #               {
    #                 name: "RecordColumnName", # required
    #                 mapping: "RecordColumnMapping",
    #                 sql_type: "RecordColumnSqlType", # required
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       cloud_watch_logging_option_descriptions: [
    #         {
    #           cloud_watch_logging_option_id: "Id",
    #           log_stream_arn: "LogStreamARN", # required
    #           role_arn: "RoleARN", # required
    #         }
    #       ],
    #       application_code: "ApplicationCode",
    #       application_version_id: 1, # required
    #     }
    #   }
    # @return [Types::DescribeApplicationResponse]
    def describe_application(params = {}, options = {})
      request = build_request(:describe_application, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Infers a schema by evaluating sample records on the specified streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream) or S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.</p>
    #         <p>
    #             You can use the inferred schema when configuring a streaming source
    #             for your application. For conceptual information, 
    #             see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>.
    #             Note that when you create an application using the Amazon Kinesis Analytics console, 
    #             the console uses this operation to infer a schema and show it in the console user interface.
    #         </p>
    #         <p>
    #             This operation requires permissions to perform the
    #             <code>kinesisanalytics:DiscoverInputSchema</code> action.
    #         </p>
    # @param [Hash, Types::DiscoverInputSchemaRequest] params
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the streaming source.</p>
    # @option params [String] :role_arn
    #   <p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.</p>
    # @option params [Types::InputStartingPositionConfiguration] :input_starting_position_configuration
    #   <p>Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.</p>
    # @option params [Types::S3Configuration] :s3_configuration
    #   <p>Specify this parameter to discover a schema from data in an Amazon S3
    #               object.</p>
    # @option params [Types::InputProcessingConfiguration] :input_processing_configuration
    #   <p>The <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a> to use to preprocess the records before discovering the schema of the records.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceARN",
    #     role_arn: "RoleARN",
    #     input_starting_position_configuration: {
    #       input_starting_position: "NOW" # One of: ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #     },
    #     s3_configuration: {
    #       role_arn: "RoleARN", # required
    #       bucket_arn: "BucketARN", # required
    #       file_key: "FileKey", # required
    #     },
    #     input_processing_configuration: {
    #       input_lambda_processor: { # required
    #         resource_arn: "ResourceARN", # required
    #         role_arn: "RoleARN", # required
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

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Returns a list of Amazon Kinesis Analytics applications in your account.
    #             For each application, the response includes the application name, 
    #             Amazon Resource Name (ARN), and status. 
    #             
    #             If the response returns the <code>HasMoreApplications</code> value as true,  
    #             you can send another request by adding the 
    #             <code>ExclusiveStartApplicationName</code> in the request body, and 
    #             set the value of this to the last application name from 
    #             the previous response. 
    #         </p>
    #         <p>If you want detailed information about a specific application, use 
    #             <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a>.</p>
    #         <p>This operation requires permissions to perform the 
    #             <code>kinesisanalytics:ListApplications</code> action.</p>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [Integer] :limit
    #   <p>Maximum number of applications to list.</p>
    # @option params [String] :exclusive_start_application_name
    #   <p>Name of the application to start the list with. When using pagination to retrieve the list, you don't need to specify this parameter in the first request. However, in subsequent requests, you add the last application name from the previous response to get the next page of applications.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     exclusive_start_application_name: "ApplicationName"
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
    #         application_status: "DELETING" # One of: ["DELETING", "STARTING", "STOPPING", "READY", "RUNNING", "UPDATING"], # required
    #       }
    #     ],
    #     has_more_applications: false, # required
    #   }
    # @return [Types::ListApplicationsResponse]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Retrieves the list of key-value tags assigned to the application. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using Tagging</a>.</p>
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

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Starts the specified Amazon Kinesis Analytics application. After creating an application, you must exclusively call this operation to start your application.</p>
    #         <p>After the application starts, it begins consuming the input data, processes it, and writes the output to the configured destination.</p>
    #         <p>
    #             The application status must be <code>READY</code> for you to start an application. You can 
    #             get the application status in the console or using the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation.</p>
    #         <p>After you start the application, you can stop the application from processing 
    #             the input by calling the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_StopApplication.html">StopApplication</a> operation.</p>
    #         <p>This operation requires permissions to perform the 
    #             <code>kinesisanalytics:StartApplication</code> action.</p>
    # @param [Hash, Types::StartApplicationRequest] params
    # @option params [String] :application_name
    #   <p>Name of the application.</p>
    # @option params [Array<Types::InputConfiguration>] :input_configurations
    #   <p>Identifies the specific input, by ID, that the application starts consuming. Amazon Kinesis Analytics starts reading the streaming source associated with the input. You can also specify where in the streaming source you want Amazon Kinesis Analytics to start reading.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     input_configurations: [ # required
    #       {
    #         id: "Id", # required
    #         input_starting_position_configuration: { # required
    #           input_starting_position: "NOW" # One of: ["NOW", "TRIM_HORIZON", "LAST_STOPPED_POINT"]
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartApplicationResponse]
    def start_application(params = {}, options = {})
      request = build_request(:start_application, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Stops the application from processing input data. You can stop
    #             an application only if it is in the running state. 
    #             You can use the <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to find the application state.
    #             After the application is stopped, 
    #             Amazon Kinesis Analytics stops reading data from the input, the 
    #             application stops processing data, and there is no output written to the destination. </p>
    #         <p>This operation requires permissions to perform the 
    #             <code>kinesisanalytics:StopApplication</code> action.</p>
    # @param [Hash, Types::StopApplicationRequest] params
    # @option params [String] :application_name
    #   <p>Name of the running application to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #   }
    #   options = {}
    #   response = client.stop_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopApplicationResponse]
    def stop_application(params = {}, options = {})
      request = build_request(:stop_application, params)
      request.send_request(options)
    end

    # <p>Adds one or more key-value tags to a Kinesis Analytics application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.
    #       For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using Tagging</a>.</p>
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

    # <p>Removes one or more tags from a Kinesis Analytics application. For more information, see <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using Tagging</a>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the Kinesis Analytics application from which to remove the tags.</p>
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

    # <note>
    #             <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href="/kinesisanalytics/latest/apiv2/Welcome.html">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p>
    #          </note> 
    #         <p>Updates an existing Amazon Kinesis Analytics application. Using this API, 
    #             you can update application code, input configuration, and 
    #             output configuration. </p>
    #         <p>Note that Amazon Kinesis Analytics updates the <code>CurrentApplicationVersionId</code> 
    #             each time you update your application. </p>
    #         <p>This operation requires permission for the 
    #             <code>kinesisanalytics:UpdateApplication</code> action.</p>
    # @param [Hash, Types::UpdateApplicationRequest] params
    # @option params [String] :application_name
    #   <p>Name of the Amazon Kinesis Analytics application to update.</p>
    # @option params [Integer] :current_application_version_id
    #   <p>The current application version ID. You can use the 
    #               <a href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html">DescribeApplication</a> operation to get this value.</p>
    # @option params [Types::ApplicationUpdate] :application_update
    #   <p>Describes application updates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_name: "ApplicationName", # required
    #     current_application_version_id: 1, # required
    #     application_update: { # required
    #       input_updates: [
    #         {
    #           input_id: "Id", # required
    #           name_prefix_update: "InAppStreamName",
    #           input_processing_configuration_update: {
    #             input_lambda_processor_update: { # required
    #               resource_arn_update: "ResourceARN",
    #               role_arn_update: "RoleARN"
    #             }
    #           },
    #           kinesis_streams_input_update: {
    #             resource_arn_update: "ResourceARN",
    #             role_arn_update: "RoleARN"
    #           },
    #           kinesis_firehose_input_update: {
    #             resource_arn_update: "ResourceARN",
    #             role_arn_update: "RoleARN"
    #           },
    #           input_schema_update: {
    #             record_format_update: {
    #               record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #               mapping_parameters: {
    #                 json_mapping_parameters: {
    #                   record_row_path: "RecordRowPath", # required
    #                 },
    #                 csv_mapping_parameters: {
    #                   record_row_delimiter: "RecordRowDelimiter", # required
    #                   record_column_delimiter: "RecordColumnDelimiter", # required
    #                 }
    #               }
    #             },
    #             record_encoding_update: "RecordEncoding",
    #             record_column_updates: [
    #               {
    #                 name: "RecordColumnName", # required
    #                 mapping: "RecordColumnMapping",
    #                 sql_type: "RecordColumnSqlType", # required
    #               }
    #             ]
    #           },
    #           input_parallelism_update: {
    #             count_update: 1
    #           }
    #         }
    #       ],
    #       application_code_update: "ApplicationCode",
    #       output_updates: [
    #         {
    #           output_id: "Id", # required
    #           name_update: "InAppStreamName",
    #           kinesis_streams_output_update: {
    #             resource_arn_update: "ResourceARN",
    #             role_arn_update: "RoleARN"
    #           },
    #           kinesis_firehose_output_update: {
    #             resource_arn_update: "ResourceARN",
    #             role_arn_update: "RoleARN"
    #           },
    #           lambda_output_update: {
    #             resource_arn_update: "ResourceARN",
    #             role_arn_update: "RoleARN"
    #           },
    #           destination_schema_update: {
    #             record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #           }
    #         }
    #       ],
    #       reference_data_source_updates: [
    #         {
    #           reference_id: "Id", # required
    #           table_name_update: "InAppTableName",
    #           s3_reference_data_source_update: {
    #             bucket_arn_update: "BucketARN",
    #             file_key_update: "FileKey",
    #             reference_role_arn_update: "RoleARN"
    #           },
    #           reference_schema_update: {
    #             record_format: { # required
    #               record_format_type: "JSON" # One of: ["JSON", "CSV"], # required
    #               mapping_parameters: {
    #                 json_mapping_parameters: {
    #                   record_row_path: "RecordRowPath", # required
    #                 },
    #                 csv_mapping_parameters: {
    #                   record_row_delimiter: "RecordRowDelimiter", # required
    #                   record_column_delimiter: "RecordColumnDelimiter", # required
    #                 }
    #               }
    #             },
    #             record_encoding: "RecordEncoding",
    #             record_columns: [ # required
    #               {
    #                 name: "RecordColumnName", # required
    #                 mapping: "RecordColumnMapping",
    #                 sql_type: "RecordColumnSqlType", # required
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       cloud_watch_logging_option_updates: [
    #         {
    #           cloud_watch_logging_option_id: "Id", # required
    #           log_stream_arn_update: "LogStreamARN",
    #           role_arn_update: "RoleARN"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateApplicationResponse]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
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
      context[:gem_name] = 'aws-sdk-kinesisanalytics'
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

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
