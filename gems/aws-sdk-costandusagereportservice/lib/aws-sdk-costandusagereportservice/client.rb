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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:costandusagereportservice)

module Aws::CostandUsageReportService
  # An API client for Aws::CostandUsageReportService.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSOrigamiServiceGatewayService
    @identifier = :costandusagereportservice

    add_plugin(::Aws::CostandUsageReportService::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CostandUsageReportService::EndpointProvider)
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

    # <p>Deletes the specified report. Any tags associated with the report are also
    #       deleted.</p>
    # @param [Hash, Types::DeleteReportDefinitionRequest] params
    # @option params [String] :report_name
    #   <p>The name of the report that you want to delete. The name must be unique, is case sensitive, and can't include spaces.</p>
    # @example To delete the AWS Cost and Usage report named ExampleReport.
    #   # The following example deletes the AWS Cost and Usage report named ExampleReport.
    #   params = {
    #     report_name: "ExampleReport"
    #   }
    #   options = {}
    #   response = client.delete_report_definition(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     report_name: "ReportName", # required
    #   }
    #   options = {}
    #   response = client.delete_report_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_message: "DeleteResponseMessage"
    #   }
    # @return [Types::DeleteReportDefinitionResponse]
    def delete_report_definition(params = {}, options = {})
      request = build_request(:delete_report_definition, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Web Services Cost and Usage Report available to this account.</p>
    # @param [Hash, Types::DescribeReportDefinitionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that Amazon Web Services returns for the operation.</p>
    # @option params [String] :next_token
    #   <p>A generic string.</p>
    # @example To list the AWS Cost and Usage reports for the account.
    #   # The following example lists the AWS Cost and Usage reports for the account.
    #   params = {
    #     max_results: 5
    #   }
    #   options = {}
    #   response = client.describe_report_definitions(params, options)
    #   response.to_h #=>
    #   {
    #     report_definitions: [
    #       {
    #         additional_artifacts: [
    #           QUICKSIGHT
    #         ],
    #         additional_schema_elements: [
    #           RESOURCES
    #         ],
    #         compression: GZIP,
    #         format: textORcsv,
    #         report_name: "ExampleReport",
    #         s3_bucket: "example-s3-bucket",
    #         s3_prefix: "exampleprefix",
    #         s3_region: us-east-1,
    #         time_unit: HOURLY
    #       },
    #       {
    #         additional_artifacts: [
    #           QUICKSIGHT
    #         ],
    #         additional_schema_elements: [
    #           RESOURCES
    #         ],
    #         compression: GZIP,
    #         format: textORcsv,
    #         report_name: "ExampleReport2",
    #         s3_bucket: "example-s3-bucket",
    #         s3_prefix: "exampleprefix",
    #         s3_region: us-east-1,
    #         time_unit: HOURLY
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "GenericString"
    #   }
    #   options = {}
    #   response = client.describe_report_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     report_definitions: [
    #       {
    #         report_name: "ReportName", # required
    #         time_unit: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"], # required
    #         format: "textORcsv" # One of: ["textORcsv", "Parquet"], # required
    #         compression: "ZIP" # One of: ["ZIP", "GZIP", "Parquet"], # required
    #         additional_schema_elements: ["RESOURCES" # One of: ["RESOURCES", "SPLIT_COST_ALLOCATION_DATA", "MANUAL_DISCOUNT_COMPATIBILITY"]], # required
    #         s3_bucket: "S3Bucket", # required
    #         s3_prefix: "S3Prefix", # required
    #         s3_region: "af-south-1" # One of: ["af-south-1", "ap-east-1", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ca-central-1", "eu-central-1", "eu-central-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-north-1", "eu-south-1", "eu-south-2", "me-central-1", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2", "cn-north-1", "cn-northwest-1"], # required
    #         additional_artifacts: ["REDSHIFT" # One of: ["REDSHIFT", "QUICKSIGHT", "ATHENA"]],
    #         refresh_closed_reports: false,
    #         report_versioning: "CREATE_NEW_REPORT" # One of: ["CREATE_NEW_REPORT", "OVERWRITE_REPORT"],
    #         billing_view_arn: "BillingViewArn",
    #         report_status: {
    #           last_delivery: "LastDelivery",
    #           last_status: "SUCCESS" # One of: ["SUCCESS", "ERROR_PERMISSIONS", "ERROR_NO_BUCKET"]
    #         }
    #       }
    #     ],
    #     next_token: "GenericString"
    #   }
    # @return [Types::DescribeReportDefinitionsResponse]
    def describe_report_definitions(params = {}, options = {})
      request = build_request(:describe_report_definitions, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with the specified report definition.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :report_name
    #   <p>The report name of the report definition that tags are to be returned for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_name: "ReportName", # required
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

    # <p>Allows you to programmatically update your report preferences.</p>
    # @param [Hash, Types::ModifyReportDefinitionRequest] params
    # @option params [String] :report_name
    #   <p>The name of the report that you want to create. The name must be unique,
    #           is case sensitive, and can't include spaces. </p>
    # @option params [Types::ReportDefinition] :report_definition
    #   <p>The definition of Amazon Web Services Cost and Usage Report. You can specify the report name, 
    #            time unit, report format, compression format, S3 bucket, additional artifacts, and schema 
    #            elements in the definition.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_name: "ReportName", # required
    #     report_definition: { # required
    #       report_name: "ReportName", # required
    #       time_unit: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"], # required
    #       format: "textORcsv" # One of: ["textORcsv", "Parquet"], # required
    #       compression: "ZIP" # One of: ["ZIP", "GZIP", "Parquet"], # required
    #       additional_schema_elements: ["RESOURCES" # One of: ["RESOURCES", "SPLIT_COST_ALLOCATION_DATA", "MANUAL_DISCOUNT_COMPATIBILITY"]], # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3Prefix", # required
    #       s3_region: "af-south-1" # One of: ["af-south-1", "ap-east-1", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ca-central-1", "eu-central-1", "eu-central-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-north-1", "eu-south-1", "eu-south-2", "me-central-1", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2", "cn-north-1", "cn-northwest-1"], # required
    #       additional_artifacts: ["REDSHIFT" # One of: ["REDSHIFT", "QUICKSIGHT", "ATHENA"]],
    #       refresh_closed_reports: false,
    #       report_versioning: "CREATE_NEW_REPORT" # One of: ["CREATE_NEW_REPORT", "OVERWRITE_REPORT"],
    #       billing_view_arn: "BillingViewArn",
    #       report_status: {
    #         last_delivery: "LastDelivery",
    #         last_status: "SUCCESS" # One of: ["SUCCESS", "ERROR_PERMISSIONS", "ERROR_NO_BUCKET"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.modify_report_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ModifyReportDefinitionResponse]
    def modify_report_definition(params = {}, options = {})
      request = build_request(:modify_report_definition, params)
      request.send_request(options)
    end

    # <p>Creates a new report using the description that you provide.</p>
    # @param [Hash, Types::PutReportDefinitionRequest] params
    # @option params [Types::ReportDefinition] :report_definition
    #   <p>Represents the output of the PutReportDefinition operation. The content consists of the detailed 
    #         metadata and data file information. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the report definition resource.</p>
    # @example To create a report named ExampleReport.
    #   # The following example creates a AWS Cost and Usage report named ExampleReport.
    #   params = {
    #     report_definition: {
    #       report_name: "ExampleReport",
    #       time_unit: DAILY,
    #       format: textORcsv,
    #       compression: ZIP,
    #       additional_schema_elements: [
    #         RESOURCES
    #       ],
    #       s3_bucket: "example-s3-bucket",
    #       s3_prefix: "exampleprefix",
    #       s3_region: us-east-1,
    #       additional_artifacts: [
    #         REDSHIFT,
    #         QUICKSIGHT
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.put_report_definition(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     report_definition: { # required
    #       report_name: "ReportName", # required
    #       time_unit: "HOURLY" # One of: ["HOURLY", "DAILY", "MONTHLY"], # required
    #       format: "textORcsv" # One of: ["textORcsv", "Parquet"], # required
    #       compression: "ZIP" # One of: ["ZIP", "GZIP", "Parquet"], # required
    #       additional_schema_elements: ["RESOURCES" # One of: ["RESOURCES", "SPLIT_COST_ALLOCATION_DATA", "MANUAL_DISCOUNT_COMPATIBILITY"]], # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3Prefix", # required
    #       s3_region: "af-south-1" # One of: ["af-south-1", "ap-east-1", "ap-south-1", "ap-south-2", "ap-southeast-1", "ap-southeast-2", "ap-southeast-3", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ca-central-1", "eu-central-1", "eu-central-2", "eu-west-1", "eu-west-2", "eu-west-3", "eu-north-1", "eu-south-1", "eu-south-2", "me-central-1", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2", "cn-north-1", "cn-northwest-1"], # required
    #       additional_artifacts: ["REDSHIFT" # One of: ["REDSHIFT", "QUICKSIGHT", "ATHENA"]],
    #       refresh_closed_reports: false,
    #       report_versioning: "CREATE_NEW_REPORT" # One of: ["CREATE_NEW_REPORT", "OVERWRITE_REPORT"],
    #       billing_view_arn: "BillingViewArn",
    #       report_status: {
    #         last_delivery: "LastDelivery",
    #         last_status: "SUCCESS" # One of: ["SUCCESS", "ERROR_PERMISSIONS", "ERROR_NO_BUCKET"]
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_report_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutReportDefinitionResponse]
    def put_report_definition(params = {}, options = {})
      request = build_request(:put_report_definition, params)
      request.send_request(options)
    end

    # <p>Associates a set of tags with a report definition.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :report_name
    #   <p>The report name of the report definition that tags are to be associated with.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the report definition resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_name: "ReportName", # required
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

    # <p>Disassociates a set of tags from a report definition.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :report_name
    #   <p>The report name of the report definition that tags are to be disassociated
    #         from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tags to be disassociated from the report definition resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     report_name: "ReportName", # required
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
      context[:gem_name] = 'aws-sdk-costandusagereportservice'
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
