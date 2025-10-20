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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:datapipeline)

module Aws::DataPipeline
  # An API client for Aws::DataPipeline.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::DataPipeline
    @identifier = :datapipeline

    add_plugin(::Aws::DataPipeline::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DataPipeline::EndpointProvider)
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

    # <p>Validates the specified pipeline and starts processing pipeline tasks. If the pipeline does not pass validation, 
    #            activation fails.</p>
    #         <p>If you need to pause the pipeline to investigate an issue with a component, such as a data source or script, 
    #            call <a>DeactivatePipeline</a>.</p>
    #         <p>To activate a finished pipeline, modify the end date for the pipeline and then activate it.</p>
    #         <examples>
    #             <request>
    #                 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.ActivatePipeline
    # Content-Length: 39
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"pipelineId": "df-06372391ZG65EXAMPLE"}
    # 
    #             </request>
    #             <response>
    #                 
    # HTTP/1.1 200 
    # x-amzn-RequestId: ee19d5bf-074e-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 2
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {}
    #                 
    #             </response>
    #         </examples>
    # @param [Hash, Types::ActivatePipelineInput] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    # @option params [Array<Types::ParameterValue>] :parameter_values
    #   <p>A list of parameter values to pass to the pipeline at activation.</p>
    # @option params [Time] :start_timestamp
    #   <p>The date and time to resume the pipeline. By default, the pipeline resumes from the last completed execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "id", # required
    #     parameter_values: [
    #       {
    #         id: "fieldNameString", # required
    #         string_value: "fieldStringValue", # required
    #       }
    #     ],
    #     start_timestamp: Time.now
    #   }
    #   options = {}
    #   response = client.activate_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ActivatePipelineOutput]
    def activate_pipeline(params = {}, options = {})
      request = build_request(:activate_pipeline, params)
      request.send_request(options)
    end

    # <p>Adds or modifies tags for the specified pipeline.</p>
    # @param [Hash, Types::AddTagsInput] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add, as key/value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "id", # required
    #     tags: [ # required
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddTagsOutput]
    def add_tags(params = {}, options = {})
      request = build_request(:add_tags, params)
      request.send_request(options)
    end

    # <p>Creates a new, empty pipeline. Use <a>PutPipelineDefinition</a> to populate the pipeline.</p> 
    #         
    #         <examples>
    #             <request>
    # 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.CreatePipeline
    # Content-Length: 91
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"name": "myPipeline",
    #  "uniqueId": "123456789",
    #  "description": "This is my first pipeline"}
    #  
    #             </request>
    #             
    #             <response>
    #                 
    # HTTP/1.1 200 
    # x-amzn-RequestId: b16911ce-0774-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 40
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"pipelineId": "df-06372391ZG65EXAMPLE"}
    #          
    #             </response>
    #         </examples>
    # @param [Hash, Types::CreatePipelineInput] params
    # @option params [String] :name
    #   <p>The name for the pipeline. You can use the same name for multiple pipelines associated with your AWS account, 
    #               because AWS Data Pipeline assigns each pipeline a unique pipeline identifier.</p>
    # @option params [String] :unique_id
    #   <p>A unique identifier. This identifier is not the same as the pipeline identifier assigned by AWS Data Pipeline. 
    #               You are responsible for defining the format and ensuring the uniqueness of this identifier. You use this 
    #               parameter to ensure idempotency during repeated calls to <code>CreatePipeline</code>. For example, if the 
    #               first call to <code>CreatePipeline</code> does not succeed, you can pass in the same unique identifier and 
    #               pipeline name combination on a subsequent call to <code>CreatePipeline</code>. <code>CreatePipeline</code> 
    #               ensures that if a pipeline already exists with the same name and unique identifier, a new pipeline is not 
    #               created. Instead, you'll receive the pipeline identifier from the previous attempt. The uniqueness of the 
    #               name and unique identifier combination is scoped to the AWS account or IAM user credentials.</p>
    # @option params [String] :description
    #   <p>The description for the pipeline.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to associate with the pipeline at creation. Tags let you control access to pipelines. 
    #               For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> 
    #               in the <i>AWS Data Pipeline Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "id", # required
    #     unique_id: "id", # required
    #     description: "string",
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_id: "id", # required
    #   }
    # @return [Types::CreatePipelineOutput]
    def create_pipeline(params = {}, options = {})
      request = build_request(:create_pipeline, params)
      request.send_request(options)
    end

    # <p>Deactivates the specified running pipeline. The pipeline is set to the <code>DEACTIVATING</code>
    #           state until the deactivation process completes.</p>
    #         <p>To resume a deactivated pipeline, use <a>ActivatePipeline</a>. By default, the pipeline resumes from the last completed execution.
    #           Optionally, you can specify the date and time to resume the pipeline.</p>
    # @param [Hash, Types::DeactivatePipelineInput] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    # @option params [Boolean] :cancel_active
    #   <p>Indicates whether to cancel any running objects. The default is true, 
    #             which sets the state of any running objects to <code>CANCELED</code>.
    #             If this value is false, the pipeline is deactivated after all 
    #             running objects finish.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "id", # required
    #     cancel_active: false
    #   }
    #   options = {}
    #   response = client.deactivate_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeactivatePipelineOutput]
    def deactivate_pipeline(params = {}, options = {})
      request = build_request(:deactivate_pipeline, params)
      request.send_request(options)
    end

    # <p>Deletes a pipeline, its pipeline definition, and its run history.  
    #            AWS Data Pipeline attempts to cancel instances associated with the pipeline that are currently being processed by task runners.</p>
    #         <p>Deleting a pipeline cannot be undone. You cannot query or restore a deleted pipeline. 
    #             To temporarily pause a pipeline instead of deleting it, call <a>SetStatus</a> with the status set to <code>PAUSE</code> on individual components. 
    #             Components that are paused by <a>SetStatus</a> can be resumed.</p>
    # 
    #         <examples>
    #             <request>
    # 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.DeletePipeline
    # Content-Length: 50
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"pipelineId": "df-06372391ZG65EXAMPLE"}
    # 
    #             </request>
    #             
    #             <response>
    #                  
    # x-amzn-RequestId: b7a88c81-0754-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 0
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # Unexpected response: 200, OK, undefined
    #         
    #             </response>
    #         </examples>
    # @param [Hash, Types::DeletePipelineInput] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "id", # required
    #   }
    #   options = {}
    #   response = client.delete_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_pipeline(params = {}, options = {})
      request = build_request(:delete_pipeline, params)
      request.send_request(options)
    end

    # <p>Gets the object definitions for a set of objects associated with the pipeline. Object definitions are composed of 
    #             a set of fields that define the properties of the object.</p>
    #         
    #         <examples>
    #             <request>
    # 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.DescribeObjects
    # Content-Length: 98
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"pipelineId": "df-06372391ZG65EXAMPLE",
    #  "objectIds": 
    #   ["Schedule"],
    #  "evaluateExpressions": true}
    # 
    #             </request>
    #             
    #             <response>
    # 
    # x-amzn-RequestId: 4c18ea5d-0777-11e2-8a14-21bb8a1f50ef
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 1488
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"hasMoreResults": false, 
    #  "pipelineObjects": 
    #   [
    #     {"fields": 
    #       [
    #         {"key": "startDateTime", 
    #          "stringValue": "2012-12-12T00:00:00"}, 
    #         {"key": "parent", 
    #          "refValue": "Default"}, 
    #         {"key": "@sphere", 
    #          "stringValue": "COMPONENT"}, 
    #         {"key": "type", 
    #          "stringValue": "Schedule"}, 
    #         {"key": "period", 
    #          "stringValue": "1 hour"}, 
    #         {"key": "endDateTime", 
    #          "stringValue": "2012-12-21T18:00:00"}, 
    #         {"key": "@version", 
    #          "stringValue": "1"}, 
    #         {"key": "@status", 
    #          "stringValue": "PENDING"}, 
    #         {"key": "@pipelineId", 
    #          "stringValue": "df-06372391ZG65EXAMPLE"}
    #       ], 
    #      "id": "Schedule", 
    #      "name": "Schedule"}
    #   ]
    # }
    #          
    #             </response>
    #         </examples>
    # @param [Hash, Types::DescribeObjectsInput] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline that contains the object definitions.</p>
    # @option params [Array<String>] :object_ids
    #   <p>The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to <code>DescribeObjects</code>.</p>
    # @option params [Boolean] :evaluate_expressions
    #   <p>Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.</p>
    # @option params [String] :marker
    #   <p>The starting point for the results to be returned. For the first call, this value should be empty. 
    #              As long as there are more results, continue to call <code>DescribeObjects</code> with
    #              the marker value from the previous call to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "id", # required
    #     object_ids: ["id"], # required
    #     evaluate_expressions: false,
    #     marker: "string"
    #   }
    #   options = {}
    #   response = client.describe_objects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_objects: [ # required
    #       {
    #         id: "id", # required
    #         name: "id", # required
    #         fields: [ # required
    #           {
    #             key: "fieldNameString", # required
    #             string_value: "fieldStringValue",
    #             ref_value: "fieldNameString"
    #           }
    #         ]
    #       }
    #     ],
    #     marker: "string",
    #     has_more_results: false
    #   }
    # @return [Types::DescribeObjectsOutput]
    def describe_objects(params = {}, options = {})
      request = build_request(:describe_objects, params)
      request.send_request(options)
    end

    # <p>Retrieves metadata about one or more pipelines. The information retrieved includes the name of the pipeline, the pipeline identifier, 
    #             its current state, and the user account that owns the pipeline. Using account credentials, you can retrieve metadata about pipelines 
    #             that you or your IAM users have created. If you are using an IAM user account, you can retrieve metadata about only those pipelines 
    #             for which you have read permissions.</p>
    #         <p>To retrieve the full pipeline definition instead of metadata about the pipeline, call <a>GetPipelineDefinition</a>.</p>
    # 
    #         <examples>
    #             <request>
    # 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.DescribePipelines
    # Content-Length: 70
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"pipelineIds": 
    #   ["df-08785951KAKJEXAMPLE"]
    # }
    # 
    #             </request>
    # 
    #             <response>
    #              
    # x-amzn-RequestId: 02870eb7-0736-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 767
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"pipelineDescriptionList": 
    #   [
    #     {"description": "This is my first pipeline", 
    #      "fields": 
    #       [
    #         {"key": "@pipelineState", 
    #          "stringValue": "SCHEDULED"}, 
    #         {"key": "description", 
    #          "stringValue": "This is my first pipeline"}, 
    #         {"key": "name", 
    #          "stringValue": "myPipeline"}, 
    #         {"key": "@creationTime", 
    #          "stringValue": "2012-12-13T01:24:06"}, 
    #         {"key": "@id", 
    #          "stringValue": "df-0937003356ZJEXAMPLE"}, 
    #         {"key": "@sphere", 
    #          "stringValue": "PIPELINE"}, 
    #         {"key": "@version", 
    #          "stringValue": "1"}, 
    #         {"key": "@userId", 
    #          "stringValue": "924374875933"}, 
    #         {"key": "@accountId", 
    #          "stringValue": "924374875933"}, 
    #         {"key": "uniqueId", 
    #          "stringValue": "1234567890"}
    #       ], 
    #      "name": "myPipeline", 
    #      "pipelineId": "df-0937003356ZJEXAMPLE"}
    #   ]
    # }
    # </response>
    #         </examples>
    # @param [Hash, Types::DescribePipelinesInput] params
    # @option params [Array<String>] :pipeline_ids
    #   <p>The IDs of the pipelines to describe. You can pass as many as 25 identifiers in a single call. 
    #               To obtain pipeline IDs, call <a>ListPipelines</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_ids: ["id"], # required
    #   }
    #   options = {}
    #   response = client.describe_pipelines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_description_list: [ # required
    #       {
    #         pipeline_id: "id", # required
    #         name: "id", # required
    #         fields: [ # required
    #           {
    #             key: "fieldNameString", # required
    #             string_value: "fieldStringValue",
    #             ref_value: "fieldNameString"
    #           }
    #         ],
    #         description: "string",
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribePipelinesOutput]
    def describe_pipelines(params = {}, options = {})
      request = build_request(:describe_pipelines, params)
      request.send_request(options)
    end

    # <p>Task runners call <code>EvaluateExpression</code> to evaluate a string in the context of the specified object. 
    #             For example, a task runner can evaluate SQL queries stored in Amazon S3.</p>
    #         
    #         <examples>
    #             <request>
    #                 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.DescribePipelines
    # Content-Length: 164
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"pipelineId": "df-08785951KAKJEXAMPLE",
    #         "objectId": "Schedule",
    #         "expression": "Transform started at #{startDateTime} and finished at #{endDateTime}"}
    # 
    #             </request>
    #             
    #             
    #             <response>
    #                  
    # x-amzn-RequestId: 02870eb7-0736-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 103
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"evaluatedExpression": "Transform started at 2012-12-12T00:00:00 and finished at 2012-12-21T18:00:00"}
    # </response>
    #         </examples>
    # @param [Hash, Types::EvaluateExpressionInput] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    # @option params [String] :object_id
    #   <p>The ID of the object.</p>
    # @option params [String] :expression
    #   <p>The expression to evaluate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "id", # required
    #     object_id: "id", # required
    #     expression: "longString", # required
    #   }
    #   options = {}
    #   response = client.evaluate_expression(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     evaluated_expression: "longString", # required
    #   }
    # @return [Types::EvaluateExpressionOutput]
    def evaluate_expression(params = {}, options = {})
      request = build_request(:evaluate_expression, params)
      request.send_request(options)
    end

    # <p>Gets the definition of the specified pipeline. You can call <code>GetPipelineDefinition</code> to retrieve 
    #             the pipeline definition that you provided using <a>PutPipelineDefinition</a>.</p>
    # 
    #         <examples>
    #             <request>
    # 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.GetPipelineDefinition
    # Content-Length: 40
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # 
    # {"pipelineId": "df-06372391ZG65EXAMPLE"}
    # 
    #             </request>
    #             <response>
    #                 
    # x-amzn-RequestId: e28309e5-0776-11e2-8a14-21bb8a1f50ef
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 890
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"pipelineObjects": 
    #   [
    #     {"fields": 
    #       [
    #         {"key": "workerGroup", 
    #          "stringValue": "workerGroup"}
    #       ], 
    #      "id": "Default", 
    #      "name": "Default"}, 
    #     {"fields": 
    #       [
    #         {"key": "startDateTime", 
    #          "stringValue": "2012-09-25T17:00:00"}, 
    #         {"key": "type", 
    #          "stringValue": "Schedule"}, 
    #         {"key": "period", 
    #          "stringValue": "1 hour"}, 
    #         {"key": "endDateTime", 
    #          "stringValue": "2012-09-25T18:00:00"}
    #       ], 
    #      "id": "Schedule", 
    #      "name": "Schedule"}, 
    #     {"fields": 
    #       [
    #         {"key": "schedule", 
    #          "refValue": "Schedule"}, 
    #         {"key": "command", 
    #          "stringValue": "echo hello"}, 
    #         {"key": "parent", 
    #          "refValue": "Default"}, 
    #         {"key": "type", 
    #          "stringValue": "ShellCommandActivity"}
    #       ], 
    #      "id": "SayHello", 
    #      "name": "SayHello"}
    #   ]
    # }
    # 
    #             </response>
    #         </examples>
    # @param [Hash, Types::GetPipelineDefinitionInput] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    # @option params [String] :version
    #   <p>The version of the pipeline definition to retrieve. Set this parameter to <code>latest</code> (default) 
    #               to use the last definition saved to the pipeline or <code>active</code> to use the last definition  
    #               that was activated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "id", # required
    #     version: "string"
    #   }
    #   options = {}
    #   response = client.get_pipeline_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_objects: [
    #       {
    #         id: "id", # required
    #         name: "id", # required
    #         fields: [ # required
    #           {
    #             key: "fieldNameString", # required
    #             string_value: "fieldStringValue",
    #             ref_value: "fieldNameString"
    #           }
    #         ]
    #       }
    #     ],
    #     parameter_objects: [
    #       {
    #         id: "fieldNameString", # required
    #         attributes: [ # required
    #           {
    #             key: "attributeNameString", # required
    #             string_value: "attributeValueString", # required
    #           }
    #         ]
    #       }
    #     ],
    #     parameter_values: [
    #       {
    #         id: "fieldNameString", # required
    #         string_value: "fieldStringValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetPipelineDefinitionOutput]
    def get_pipeline_definition(params = {}, options = {})
      request = build_request(:get_pipeline_definition, params)
      request.send_request(options)
    end

    # <p>Lists the pipeline identifiers for all active pipelines that you have permission to access.</p> 
    #         
    #         <examples>
    #             <request>
    #                 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.ListPipelines
    # Content-Length: 14
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {}</request>
    #             
    #             <response>
    #                 
    # Status:
    # x-amzn-RequestId: b3104dc5-0734-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 39
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"PipelineIdList": 
    #   [
    #     {"id": "df-08785951KAKJEXAMPLE",
    #      "name": "MyPipeline"}, 
    #     {"id": "df-08662578ISYEXAMPLE", 
    #      "name": "MySecondPipeline"}
    #   ]
    # }</response>
    #         </examples>
    # @param [Hash, Types::ListPipelinesInput] params
    # @option params [String] :marker
    #   <p>The starting point for the results to be returned. For the first call, this value should be empty. 
    #              As long as there are more results, continue to call <code>ListPipelines</code> with
    #              the marker value from the previous call to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "string"
    #   }
    #   options = {}
    #   response = client.list_pipelines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_id_list: [ # required
    #       {
    #         id: "id",
    #         name: "id"
    #       }
    #     ],
    #     marker: "string",
    #     has_more_results: false
    #   }
    # @return [Types::ListPipelinesOutput]
    def list_pipelines(params = {}, options = {})
      request = build_request(:list_pipelines, params)
      request.send_request(options)
    end

    # <p>Task runners call <code>PollForTask</code> to receive a task to perform from AWS Data Pipeline. The task runner specifies which tasks it can perform 
    #             by setting a value for the <code>workerGroup</code> parameter. The task returned can come from any of the pipelines that 
    #             match the <code>workerGroup</code> value passed in by the task runner and that was launched using the IAM user credentials 
    #             specified by the task runner.</p>
    #         <p>If tasks are ready in the work queue, <code>PollForTask</code> returns a response immediately. If no tasks are available in the queue, 
    #             <code>PollForTask</code> uses long-polling and holds on to a poll connection for up to a 90 seconds, during which time the first newly 
    #             scheduled task is handed to the task runner. To accomodate this, set the socket timeout in your task runner to 90 seconds. The task 
    #             runner should not call <code>PollForTask</code> again on the same <code>workerGroup</code> until it receives a response, and this can take up to 90 seconds.
    #         </p>
    # 
    #         <examples>
    #             <request>
    # 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.PollForTask
    # Content-Length: 59
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"workerGroup": "MyworkerGroup",
    #  "hostname": "example.com"}
    # 
    #             </request>
    #             
    #             <response>
    #  
    # x-amzn-RequestId: 41c713d2-0775-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 39
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"taskObject": 
    #   {"attemptId": "@SayHello_2012-12-12T00:00:00_Attempt=1", 
    #    "objects": 
    #     {"@SayHello_2012-12-12T00:00:00_Attempt=1": 
    #       {"fields": 
    #         [
    #           {"key": "@componentParent", 
    #            "refValue": "SayHello"}, 
    #           {"key": "@scheduledStartTime", 
    #            "stringValue": "2012-12-12T00:00:00"}, 
    #           {"key": "parent", 
    #            "refValue": "SayHello"}, 
    #           {"key": "@sphere", 
    #            "stringValue": "ATTEMPT"}, 
    #           {"key": "workerGroup", 
    #            "stringValue": "workerGroup"}, 
    #           {"key": "@instanceParent", 
    #            "refValue": "@SayHello_2012-12-12T00:00:00"}, 
    #           {"key": "type", 
    #            "stringValue": "ShellCommandActivity"}, 
    #           {"key": "@status", 
    #            "stringValue": "WAITING_FOR_RUNNER"}, 
    #           {"key": "@version", 
    #            "stringValue": "1"}, 
    #           {"key": "schedule", 
    #            "refValue": "Schedule"}, 
    #           {"key": "@actualStartTime", 
    #            "stringValue": "2012-12-13T01:40:50"}, 
    #           {"key": "command", 
    #            "stringValue": "echo hello"}, 
    #           {"key": "@scheduledEndTime", 
    #            "stringValue": "2012-12-12T01:00:00"}, 
    #           {"key": "@activeInstances", 
    #            "refValue": "@SayHello_2012-12-12T00:00:00"}, 
    #           {"key": "@pipelineId", 
    #            "stringValue": "df-0937003356ZJEXAMPLE"}
    #         ], 
    #        "id": "@SayHello_2012-12-12T00:00:00_Attempt=1", 
    #        "name": "@SayHello_2012-12-12T00:00:00_Attempt=1"}
    #     }, 
    #    "pipelineId": "df-0937003356ZJEXAMPLE", 
    #    "taskId": "2xaM4wRs5zOsIH+g9U3oVHfAgAlbSqU6XduncB0HhZ3xMnmvfePZPn4dIbYXHyWyRK+cU15MqDHwdrvftx/4wv+sNS4w34vJfv7QA9aOoOazW28l1GYSb2ZRR0N0paiQp+d1MhSKo10hOTWOsVK5S5Lnx9Qm6omFgXHyIvZRIvTlrQMpr1xuUrflyGOfbFOGpOLpvPE172MYdqpZKnbSS4TcuqgQKSWV2833fEubI57DPOP7ghWa2TcYeSIv4pdLYG53fTuwfbnbdc98g2LNUQzSVhSnt7BoqyNwht2aQ6b/UHg9A80+KVpuXuqmz3m1MXwHFgxjdmuesXNOrrlGpeLCcRWD+aGo0RN1NqhQRzNAig8V4GlaPTQzMsRCljKqvrIyAoP3Tt2XEGsHkkQo12rEX8Z90957XX2qKRwhruwYzqGkSLWjINoLdAxUJdpRXRc5DJTrBd3D5mdzn7kY1l7NEh4kFHJDt3Cx4Z3Mk8MYCACyCk/CEyy9DwuPi66cLz0NBcgbCM5LKjTBOwo1m+am+pvM1kSposE9FPP1+RFGb8k6jQBTJx3TRz1yKilnGXQTZ5xvdOFpJrklIT0OXP1MG3+auM9FlJA+1dX90QoNJE5z7axmK//MOGXUdkqFe2kiDkorqjxwDvc0Js9pVKfKvAmW8YqUbmI9l0ERpWCXXnLVHNmPWz3jaPY+OBAmuJWDmxB/Z8p94aEDg4BVXQ7LvsKQ3DLYhaB7yJ390CJT+i0mm+EBqY60V6YikPSWDFrYQ/NPi2b1DgE19mX8zHqw8qprIl4yh1Ckx2Iige4En/N5ktOoIxnASxAw/TzcE2skxdw5KlHDF+UTj71m16CR/dIaKlXijlfNlNzUBo/bNSadCQn3G5NoO501wPKI:XO50TgDNyo8EXAMPLE/g==:1"}
    # }
    #          
    #             </response>
    #         </examples>
    # @param [Hash, Types::PollForTaskInput] params
    # @option params [String] :worker_group
    #   <p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. 
    #               You can only specify a single value for <code>workerGroup</code> in the call to <code>PollForTask</code>. There are no wildcard values permitted in 
    #               <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>
    # @option params [String] :hostname
    #   <p>The public DNS name of the calling task runner.</p>
    # @option params [Types::InstanceIdentity] :instance_identity
    #   <p>Identity information for the EC2 instance that is hosting the task runner. You can get this value from the instance using <code>http://169.254.169.254/latest/meta-data/instance-id</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     worker_group: "string", # required
    #     hostname: "id",
    #     instance_identity: {
    #       document: "string",
    #       signature: "string"
    #     }
    #   }
    #   options = {}
    #   response = client.poll_for_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_object: {
    #       task_id: "taskId",
    #       pipeline_id: "id",
    #       attempt_id: "id",
    #       objects: {
    #         "id" => {
    #           id: "id", # required
    #           name: "id", # required
    #           fields: [ # required
    #             {
    #               key: "fieldNameString", # required
    #               string_value: "fieldStringValue",
    #               ref_value: "fieldNameString"
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::PollForTaskOutput]
    def poll_for_task(params = {}, options = {})
      request = build_request(:poll_for_task, params)
      request.send_request(options)
    end

    # <p>Adds tasks, schedules, and preconditions to the specified pipeline. You can use <code>PutPipelineDefinition</code> to populate a new pipeline.</p>
    #         <p>
    #             <code>PutPipelineDefinition</code> also validates the configuration as it adds it to the pipeline. Changes to the pipeline are saved unless one 
    #             of the following three validation errors exists in the pipeline.
    #         </p>
    #         <ol>
    #             <li>An object is missing a name or identifier field.</li>
    #             <li>A string or reference field is empty.</li>
    #             <li>The number of objects in the pipeline exceeds the maximum allowed objects.</li>
    #             <li>The pipeline is in a FINISHED state.</li>
    #         </ol>
    #         <p>
    #             Pipeline object definitions are passed to the <code>PutPipelineDefinition</code> action and returned by the <a>GetPipelineDefinition</a> action. 
    #         </p>
    #         <examples>
    #             <example>
    #                 <name>Example 1</name>
    #                 <description>
    #                     This example sets an valid pipeline configuration and returns success.
    #                 </description>
    #             <request>
    #                 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.PutPipelineDefinition
    # Content-Length: 914
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"pipelineId": "df-0937003356ZJEXAMPLE",
    #  "pipelineObjects": 
    #   [
    #    {"id": "Default",
    #      "name": "Default",
    #      "fields": 
    #       [
    #         {"key": "workerGroup", 
    #          "stringValue": "workerGroup"}
    #       ]
    #     }, 
    #     {"id": "Schedule",
    #      "name": "Schedule",
    #      "fields": 
    #       [
    #        {"key": "startDateTime", 
    #          "stringValue": "2012-12-12T00:00:00"}, 
    #         {"key": "type", 
    #          "stringValue": "Schedule"}, 
    #         {"key": "period", 
    #          "stringValue": "1 hour"}, 
    #         {"key": "endDateTime", 
    #          "stringValue": "2012-12-21T18:00:00"}
    #       ]
    #     },
    #     {"id": "SayHello",
    #      "name": "SayHello",
    #      "fields": 
    #       [
    #         {"key": "type", 
    #          "stringValue": "ShellCommandActivity"},
    #         {"key": "command", 
    #          "stringValue": "echo hello"},
    #         {"key": "parent", 
    #          "refValue": "Default"},
    #         {"key": "schedule", 
    #          "refValue": "Schedule"}
    #       ]
    #     }
    #   ]
    # }
    #                 
    #             </request>
    #             <response>
    #                 
    # HTTP/1.1 200 
    # x-amzn-RequestId: f74afc14-0754-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 18
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"errored": false}
    # 
    #                 
    #             </response>
    #             </example>
    #             <example>
    #                 <name>Example 2</name>
    #                 <description>
    #                     This example sets an invalid pipeline configuration (the value for <code>workerGroup</code> is an empty string) and returns an error message.
    #                 </description>
    #                 <request>
    #                     
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.PutPipelineDefinition
    # Content-Length: 903
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"pipelineId": "df-06372391ZG65EXAMPLE",
    #  "pipelineObjects": 
    #   [
    #     {"id": "Default",
    #      "name": "Default",
    #      "fields": 
    #       [
    #         {"key": "workerGroup", 
    #          "stringValue": ""}
    #       ]
    #     }, 
    #     {"id": "Schedule",
    #      "name": "Schedule",
    #      "fields": 
    #       [
    #        {"key": "startDateTime", 
    #          "stringValue": "2012-09-25T17:00:00"}, 
    #         {"key": "type", 
    #          "stringValue": "Schedule"}, 
    #         {"key": "period", 
    #          "stringValue": "1 hour"}, 
    #         {"key": "endDateTime", 
    #          "stringValue": "2012-09-25T18:00:00"}
    #       ]
    #     },
    #     {"id": "SayHello",
    #      "name": "SayHello",
    #      "fields": 
    #       [
    #         {"key": "type", 
    #          "stringValue": "ShellCommandActivity"},
    #         {"key": "command", 
    #          "stringValue": "echo hello"},
    #         {"key": "parent", 
    #          "refValue": "Default"},
    #         {"key": "schedule", 
    #          "refValue": "Schedule"}
    #  
    #       ]
    #     }
    #   ]
    # }
    #                                     
    #                 </request>
    #                 <response>
    #                     
    # HTTP/1.1 200 
    # x-amzn-RequestId: f74afc14-0754-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 18
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"__type": "com.amazon.setl.webservice#InvalidRequestException", 
    #  "message": "Pipeline definition has errors: Could not save the pipeline definition due to FATAL errors: [com.amazon.setl.webservice.ValidationError@108d7ea9] Please call Validate to validate your pipeline"}
    # 
    #                 
    #                 </response>
    #             </example>
    #         </examples>
    # @param [Hash, Types::PutPipelineDefinitionInput] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    # @option params [Array<Types::PipelineObject>] :pipeline_objects
    #   <p>The objects that define the pipeline. These objects overwrite the existing pipeline definition.</p>
    # @option params [Array<Types::ParameterObject>] :parameter_objects
    #   <p>The parameter objects used with the pipeline.</p>
    # @option params [Array<Types::ParameterValue>] :parameter_values
    #   <p>The parameter values used with the pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "id", # required
    #     pipeline_objects: [ # required
    #       {
    #         id: "id", # required
    #         name: "id", # required
    #         fields: [ # required
    #           {
    #             key: "fieldNameString", # required
    #             string_value: "fieldStringValue",
    #             ref_value: "fieldNameString"
    #           }
    #         ]
    #       }
    #     ],
    #     parameter_objects: [
    #       {
    #         id: "fieldNameString", # required
    #         attributes: [ # required
    #           {
    #             key: "attributeNameString", # required
    #             string_value: "attributeValueString", # required
    #           }
    #         ]
    #       }
    #     ],
    #     parameter_values: [
    #       {
    #         id: "fieldNameString", # required
    #         string_value: "fieldStringValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_pipeline_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     validation_errors: [
    #       {
    #         id: "id",
    #         errors: ["validationMessage"]
    #       }
    #     ],
    #     validation_warnings: [
    #       {
    #         id: "id",
    #         warnings: ["validationMessage"]
    #       }
    #     ],
    #     errored: false, # required
    #   }
    # @return [Types::PutPipelineDefinitionOutput]
    def put_pipeline_definition(params = {}, options = {})
      request = build_request(:put_pipeline_definition, params)
      request.send_request(options)
    end

    # <p>Queries the specified pipeline for the names of objects that match the specified set of conditions.</p>
    #         
    #         <examples>
    #             <request>
    # 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.QueryObjects
    # Content-Length: 123
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"pipelineId": "df-06372391ZG65EXAMPLE",
    #  "query": 
    #   {"selectors": 
    #     [
    #     ]
    #   },
    #  "sphere": "INSTANCE",
    #  "marker": "",
    #  "limit": 10}
    # 
    #             </request>
    #             
    #            
    #             <response>
    # 
    # x-amzn-RequestId: 14d704c1-0775-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 72
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"hasMoreResults": false, 
    #  "ids": 
    #   ["@SayHello_1_2012-09-25T17:00:00"]
    # }
    #          </response>
    #         </examples>
    # @param [Hash, Types::QueryObjectsInput] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    # @option params [Types::Query] :query
    #   <p>The query that defines the objects to be returned. The <code>Query</code> object can contain a maximum of ten selectors. 
    #               The conditions in the query are limited to top-level String fields in the object. 
    #               These filters can be applied to components, instances, and attempts.</p>
    # @option params [String] :sphere
    #   <p>Indicates whether the query applies to components or instances. The possible values are:	
    #               <code>COMPONENT</code>, <code>INSTANCE</code>, and <code>ATTEMPT</code>.</p>
    # @option params [String] :marker
    #   <p>The starting point for the results to be returned. For the first call, this value should be empty. 
    #              As long as there are more results, continue to call <code>QueryObjects</code> with
    #              the marker value from the previous call to retrieve the next set of results.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of object names that <code>QueryObjects</code> will return in a single call. The default value is 100. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "id", # required
    #     query: {
    #       selectors: [
    #         {
    #           field_name: "string",
    #           operator: {
    #             type: "EQ" # One of: ["EQ", "REF_EQ", "LE", "GE", "BETWEEN"],
    #             values: ["string"]
    #           }
    #         }
    #       ]
    #     },
    #     sphere: "string", # required
    #     marker: "string",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.query_objects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["id"],
    #     marker: "string",
    #     has_more_results: false
    #   }
    # @return [Types::QueryObjectsOutput]
    def query_objects(params = {}, options = {})
      request = build_request(:query_objects, params)
      request.send_request(options)
    end

    # <p>Removes existing tags from the specified pipeline.</p>
    # @param [Hash, Types::RemoveTagsInput] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "id", # required
    #     tag_keys: ["string"], # required
    #   }
    #   options = {}
    #   response = client.remove_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveTagsOutput]
    def remove_tags(params = {}, options = {})
      request = build_request(:remove_tags, params)
      request.send_request(options)
    end

    # <p>Task runners call <code>ReportTaskProgress</code> when assigned a task to acknowledge that it has the task. If the web service does not 
    #             receive this acknowledgement within 2 minutes, it assigns the task in a subsequent <a>PollForTask</a> call. After this initial acknowledgement, 
    #             the task runner only needs to report progress every 15 minutes to maintain its ownership of the task. You can change this reporting time 
    #             from 15 minutes by specifying a <code>reportProgressTimeout</code> field in your pipeline.</p>
    #         <p>If a task runner does not report its status after 5 minutes, AWS Data Pipeline assumes that the task runner is unable to process the task 
    #             and reassigns the task in a subsequent response to <a>PollForTask</a>. Task runners should call <code>ReportTaskProgress</code> every 60 seconds.</p>
    #         <examples>
    #             <request>
    # 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.ReportTaskProgress
    # Content-Length: 832
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"taskId": "aaGgHT4LuH0T0Y0oLrJRjas5qH0d8cDPADxqq3tn+zCWGELkCdV2JprLreXm1oxeP5EFZHFLJ69kjSsLYE0iYHYBYVGBrB+E/pYq7ANEEeGJFnSBMRiXZVA+8UJ3OzcInvXeinqBmBaKwii7hnnKb/AXjXiNTXyxgydX1KAyg1AxkwBYG4cfPYMZbuEbQJFJvv5C/2+GVXz1w94nKYTeUeepwUOFOuRLS6JVtZoYwpF56E+Yfk1IcGpFOvCZ01B4Bkuu7x3J+MD/j6kJgZLAgbCJQtI3eiW3kdGmX0p0I2BdY1ZsX6b4UiSvM3OMj6NEHJCJL4E0ZfitnhCoe24Kvjo6C2hFbZq+ei/HPgSXBQMSagkr4vS9c0ChzxH2+LNYvec6bY4kymkaZI1dvOzmpa0FcnGf5AjSK4GpsViZ/ujz6zxFv81qBXzjF0/4M1775rjV1VUdyKaixiA/sJiACNezqZqETidp8d24BDPRhGsj6pBCrnelqGFrk/gXEXUsJ+xwMifRC8UVwiKekpAvHUywVk7Ku4jH/n3i2VoLRP6FXwpUbelu34iiZ9czpXyLtyPKwxa87dlrnRVURwkcVjOt2Mcrcaqe+cbWHvNRhyrPkkdfSF3ac8/wfgVbXvLEB2k9mKc67aD9rvdc1PKX09Tk8BKklsMTpZ3TRCd4NzQlJKigMe8Jat9+1tKj4Ole5ZzW6uyTu2s2iFjEV8KXu4MaiRJyNKCdKeGhhZWY37Qk4NBK4Ppgu+C6Y41dpfOh288SLDEVx0/UySlqOEdhba7c6BiPp5r3hKj3mk9lFy5OYp1aoGLeeFmjXveTnPdf2gkWqXXg7AUbJ7jEs1F0lKZQg4szep2gcKyAJXgvXLfJJHcha8Lfb/Ee7wYmyOcAaRpDBoFNSbtoVXar46teIrpho+ZDvynUXvU0grHWGOk=:wn3SgymHZM99bEXAMPLE",
    #  "fields": 
    #   [
    #     {"key": "percentComplete",
    #      "stringValue": "50"}
    #   ]
    # }
    # 
    #             </request>
    #             
    #             <response>
    # 
    # x-amzn-RequestId: 640bd023-0775-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 18
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"canceled": false}
    #          
    # </response>
    #         </examples>
    # @param [Hash, Types::ReportTaskProgressInput] params
    # @option params [String] :task_id
    #   <p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>
    # @option params [Array<Types::Field>] :fields
    #   <p>Key-value pairs that define the properties of the ReportTaskProgressInput object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "taskId", # required
    #     fields: [
    #       {
    #         key: "fieldNameString", # required
    #         string_value: "fieldStringValue",
    #         ref_value: "fieldNameString"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.report_task_progress(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     canceled: false, # required
    #   }
    # @return [Types::ReportTaskProgressOutput]
    def report_task_progress(params = {}, options = {})
      request = build_request(:report_task_progress, params)
      request.send_request(options)
    end

    # <p>Task runners call <code>ReportTaskRunnerHeartbeat</code> every 15 minutes to indicate that they are operational. 
    #             If the AWS Data Pipeline Task Runner is launched on a resource managed by AWS Data Pipeline, the web service can use 
    #             this call to detect when the task runner application has failed and restart a new instance.</p>
    #         
    #         <examples>
    #             <request>           
    # 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.ReportTaskRunnerHeartbeat
    # Content-Length: 84
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"taskrunnerId": "1234567890",
    #  "workerGroup": "wg-12345",
    #  "hostname": "example.com"}
    # 
    #             </request>
    #             
    #             <response>
    # 
    # Status:
    # x-amzn-RequestId: b3104dc5-0734-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 20
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"terminate": false}
    #          
    #             </response>
    #         </examples>
    # @param [Hash, Types::ReportTaskRunnerHeartbeatInput] params
    # @option params [String] :taskrunner_id
    #   <p>The ID of the task runner. This value should be unique across your AWS account. In the case of AWS Data Pipeline Task Runner 
    #               launched on a resource managed by AWS Data Pipeline, the web service provides a unique identifier when it launches the application. 
    #               If you have written a custom task runner, you should assign a unique identifier for the task runner.</p>
    # @option params [String] :worker_group
    #   <p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. 
    #               You can only specify a single value for <code>workerGroup</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string 
    #               must be an exact, case-sensitive, match.</p>
    # @option params [String] :hostname
    #   <p>The public DNS name of the task runner.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     taskrunner_id: "id", # required
    #     worker_group: "string",
    #     hostname: "id"
    #   }
    #   options = {}
    #   response = client.report_task_runner_heartbeat(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     terminate: false, # required
    #   }
    # @return [Types::ReportTaskRunnerHeartbeatOutput]
    def report_task_runner_heartbeat(params = {}, options = {})
      request = build_request(:report_task_runner_heartbeat, params)
      request.send_request(options)
    end

    # <p>Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline. 
    #             This update might not occur immediately, but is eventually consistent. The status that can be set depends on the type of object (for example, DataNode or Activity). 
    #             You cannot perform this operation on <code>FINISHED</code> pipelines and attempting to do so returns <code>InvalidRequestException</code>.</p>
    #         
    #         <examples>
    #             <request>
    # 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.SetStatus
    # Content-Length: 100
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"pipelineId": "df-0634701J7KEXAMPLE", 
    #  "objectIds": 
    #   ["o-08600941GHJWMBR9E2"], 
    #  "status": "pause"}
    # 
    #             </request>
    #             
    #             <response>
    # 
    # x-amzn-RequestId: e83b8ab7-076a-11e2-af6f-6bc7a6be60d9
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 0
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # Unexpected response: 200, OK, undefined
    #         
    #             </response>
    #         </examples>
    # @param [Hash, Types::SetStatusInput] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline that contains the objects.</p>
    # @option params [Array<String>] :object_ids
    #   <p>The IDs of the objects. The corresponding objects can be either physical or components, but not a mix of both types.</p>
    # @option params [String] :status
    #   <p>The status to be set on all the objects specified in <code>objectIds</code>. For components, use <code>PAUSE</code> or <code>RESUME</code>. 
    #               For instances, use <code>TRY_CANCEL</code>, <code>RERUN</code>, or <code>MARK_FINISHED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "id", # required
    #     object_ids: ["id"], # required
    #     status: "string", # required
    #   }
    #   options = {}
    #   response = client.set_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_status(params = {}, options = {})
      request = build_request(:set_status, params)
      request.send_request(options)
    end

    # <p>Task runners call <code>SetTaskStatus</code> to notify AWS Data Pipeline that a task is completed and provide information about the final status. 
    #             A task runner makes this call regardless of whether the task was sucessful. A task runner does not need to call <code>SetTaskStatus</code> for 
    #             tasks that are canceled by the web service during a call to <a>ReportTaskProgress</a>.</p>
    #         
    #         <examples>
    #             <request>
    # 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.SetTaskStatus
    # Content-Length: 847
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"taskId": "aaGgHT4LuH0T0Y0oLrJRjas5qH0d8cDPADxqq3tn+zCWGELkCdV2JprLreXm1oxeP5EFZHFLJ69kjSsLYE0iYHYBYVGBrB+E/pYq7ANEEeGJFnSBMRiXZVA+8UJ3OzcInvXeinqBmBaKwii7hnnKb/AXjXiNTXyxgydX1KAyg1AxkwBYG4cfPYMZbuEbQJFJvv5C/2+GVXz1w94nKYTeUeepwUOFOuRLS6JVtZoYwpF56E+Yfk1IcGpFOvCZ01B4Bkuu7x3J+MD/j6kJgZLAgbCJQtI3eiW3kdGmX0p0I2BdY1ZsX6b4UiSvM3OMj6NEHJCJL4E0ZfitnhCoe24Kvjo6C2hFbZq+ei/HPgSXBQMSagkr4vS9c0ChzxH2+LNYvec6bY4kymkaZI1dvOzmpa0FcnGf5AjSK4GpsViZ/ujz6zxFv81qBXzjF0/4M1775rjV1VUdyKaixiA/sJiACNezqZqETidp8d24BDPRhGsj6pBCrnelqGFrk/gXEXUsJ+xwMifRC8UVwiKekpAvHUywVk7Ku4jH/n3i2VoLRP6FXwpUbelu34iiZ9czpXyLtyPKwxa87dlrnRVURwkcVjOt2Mcrcaqe+cbWHvNRhyrPkkdfSF3ac8/wfgVbXvLEB2k9mKc67aD9rvdc1PKX09Tk8BKklsMTpZ3TRCd4NzQlJKigMe8Jat9+1tKj4Ole5ZzW6uyTu2s2iFjEV8KXu4MaiRJyNKCdKeGhhZWY37Qk4NBK4Ppgu+C6Y41dpfOh288SLDEVx0/UySlqOEdhba7c6BiPp5r3hKj3mk9lFy5OYp1aoGLeeFmjXveTnPdf2gkWqXXg7AUbJ7jEs1F0lKZQg4szep2gcKyAJXgvXLfJJHcha8Lfb/Ee7wYmyOcAaRpDBoFNSbtoVXar46teIrpho+ZDvynUXvU0grHWGOk=:wn3SgymHZM99bEXAMPLE",
    #  "taskStatus": "FINISHED"}
    #  
    #             </request>
    #             
    #             <response>
    # 
    # x-amzn-RequestId: 8c8deb53-0788-11e2-af9c-6bc7a6be6qr8 
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 0
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {}
    #          
    #             </response>
    #         </examples>
    # @param [Hash, Types::SetTaskStatusInput] params
    # @option params [String] :task_id
    #   <p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>
    # @option params [String] :task_status
    #   <p>If <code>FINISHED</code>, the task successfully completed. If <code>FAILED</code>, the task ended unsuccessfully. Preconditions use false.</p>
    # @option params [String] :error_id
    #   <p>If an error occurred during the task, this value specifies the error code. This value is set on the physical attempt object. 
    #               It is used to display error information to the user. It should not start with string "Service_" which is reserved by the system.</p>
    # @option params [String] :error_message
    #   <p>If an error occurred during the task, this value specifies a text description of the error. This value is set on the physical attempt object. 
    #               It is used to display error information to the user. The web service does not parse this value.</p>
    # @option params [String] :error_stack_trace
    #   <p>If an error occurred during the task, this value specifies the stack trace associated with the error. This value is set on the physical attempt object. 
    #               It is used to display error information to the user. The web service does not parse this value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     task_id: "taskId", # required
    #     task_status: "FINISHED" # One of: ["FINISHED", "FAILED", "FALSE"], # required
    #     error_id: "string",
    #     error_message: "errorMessage",
    #     error_stack_trace: "string"
    #   }
    #   options = {}
    #   response = client.set_task_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetTaskStatusOutput]
    def set_task_status(params = {}, options = {})
      request = build_request(:set_task_status, params)
      request.send_request(options)
    end

    # <p>Validates the specified pipeline definition to ensure that it is well formed and can be run without error.</p>
    # 
    #         <examples>
    #             <example>
    #                 <name>Example 1</name>
    #                 <description>
    #                     This example sets an valid pipeline configuration and returns success.
    #                 </description>
    #             <request>
    #                 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.ValidatePipelineDefinition
    # Content-Length: 936
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"pipelineId": "df-06372391ZG65EXAMPLE",
    #  "pipelineObjects": 
    #   [
    #     {"id": "Default",
    #      "name": "Default",
    #      "fields": 
    #       [
    #         {"key": "workerGroup", 
    #          "stringValue": "MyworkerGroup"}
    #       ]
    #     }, 
    #     {"id": "Schedule",
    #      "name": "Schedule",
    #      "fields": 
    #       [
    #        {"key": "startDateTime", 
    #          "stringValue": "2012-09-25T17:00:00"}, 
    #         {"key": "type", 
    #          "stringValue": "Schedule"}, 
    #         {"key": "period", 
    #          "stringValue": "1 hour"}, 
    #         {"key": "endDateTime", 
    #          "stringValue": "2012-09-25T18:00:00"}
    #       ]
    #     },
    #     {"id": "SayHello",
    #      "name": "SayHello",
    #      "fields": 
    #       [
    #         {"key": "type", 
    #          "stringValue": "ShellCommandActivity"},
    #         {"key": "command", 
    #          "stringValue": "echo hello"},
    #         {"key": "parent", 
    #          "refValue": "Default"},
    #         {"key": "schedule", 
    #          "refValue": "Schedule"}
    #  
    #       ]
    #     }
    #   ]
    # }
    #                 
    #             </request>
    #             <response>
    #                 
    # x-amzn-RequestId: 92c9f347-0776-11e2-8a14-21bb8a1f50ef
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 18
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"errored": false}
    #                 
    #             </response>
    #             </example>
    #             <example>
    #              <name>Example 2</name>
    #             <description>
    #                 This example sets an invalid pipeline configuration and returns the associated set of validation errors.
    #             </description>
    #             
    #             <request>
    #                 
    # POST / HTTP/1.1
    # Content-Type: application/x-amz-json-1.1
    # X-Amz-Target: DataPipeline.ValidatePipelineDefinition
    # Content-Length: 903
    # Host: datapipeline.us-east-1.amazonaws.com
    # X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT
    # Authorization: AuthParams
    # 
    # {"pipelineId": "df-06372391ZG65EXAMPLE",
    #  "pipelineObjects": 
    #   [
    #     {"id": "Default",
    #      "name": "Default",
    #      "fields": 
    #       [
    #         {"key": "workerGroup", 
    #          "stringValue": "MyworkerGroup"}
    #       ]
    #     }, 
    #     {"id": "Schedule",
    #      "name": "Schedule",
    #      "fields": 
    #       [
    #        {"key": "startDateTime", 
    #          "stringValue": "bad-time"}, 
    #         {"key": "type", 
    #          "stringValue": "Schedule"}, 
    #         {"key": "period", 
    #          "stringValue": "1 hour"}, 
    #         {"key": "endDateTime", 
    #          "stringValue": "2012-09-25T18:00:00"}
    #       ]
    #     },
    #     {"id": "SayHello",
    #      "name": "SayHello",
    #      "fields": 
    #       [
    #         {"key": "type", 
    #          "stringValue": "ShellCommandActivity"},
    #         {"key": "command", 
    #          "stringValue": "echo hello"},
    #         {"key": "parent", 
    #          "refValue": "Default"},
    #         {"key": "schedule", 
    #          "refValue": "Schedule"}
    #  
    #       ]
    #     }
    #   ]
    # }
    #                 
    #             </request>
    #             <response>
    #                 
    # x-amzn-RequestId: 496a1f5a-0e6a-11e2-a61c-bd6312c92ddd
    # Content-Type: application/x-amz-json-1.1
    # Content-Length: 278
    # Date: Mon, 12 Nov 2012 17:50:53 GMT
    # 
    # {"errored": true, 
    #  "validationErrors": 
    #   [
    #     {"errors": 
    #       ["INVALID_FIELD_VALUE:  'startDateTime' value must be a literal datetime value."], 
    #      "id": "Schedule"}
    #   ]
    # }
    #                 
    #             </response>
    #                 </example>
    #         </examples>
    # @param [Hash, Types::ValidatePipelineDefinitionInput] params
    # @option params [String] :pipeline_id
    #   <p>The ID of the pipeline.</p>
    # @option params [Array<Types::PipelineObject>] :pipeline_objects
    #   <p>The objects that define the pipeline changes to validate against the pipeline.</p>
    # @option params [Array<Types::ParameterObject>] :parameter_objects
    #   <p>The parameter objects used with the pipeline.</p>
    # @option params [Array<Types::ParameterValue>] :parameter_values
    #   <p>The parameter values used with the pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_id: "id", # required
    #     pipeline_objects: [ # required
    #       {
    #         id: "id", # required
    #         name: "id", # required
    #         fields: [ # required
    #           {
    #             key: "fieldNameString", # required
    #             string_value: "fieldStringValue",
    #             ref_value: "fieldNameString"
    #           }
    #         ]
    #       }
    #     ],
    #     parameter_objects: [
    #       {
    #         id: "fieldNameString", # required
    #         attributes: [ # required
    #           {
    #             key: "attributeNameString", # required
    #             string_value: "attributeValueString", # required
    #           }
    #         ]
    #       }
    #     ],
    #     parameter_values: [
    #       {
    #         id: "fieldNameString", # required
    #         string_value: "fieldStringValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.validate_pipeline_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     validation_errors: [
    #       {
    #         id: "id",
    #         errors: ["validationMessage"]
    #       }
    #     ],
    #     validation_warnings: [
    #       {
    #         id: "id",
    #         warnings: ["validationMessage"]
    #       }
    #     ],
    #     errored: false, # required
    #   }
    # @return [Types::ValidatePipelineDefinitionOutput]
    def validate_pipeline_definition(params = {}, options = {})
      request = build_request(:validate_pipeline_definition, params)
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
      context[:gem_name] = 'aws-sdk-datapipeline'
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
