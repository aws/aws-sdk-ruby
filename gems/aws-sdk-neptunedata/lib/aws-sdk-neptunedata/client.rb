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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:neptunedata)

module Aws::Neptunedata
  # An API client for Aws::Neptunedata.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonNeptuneDataplane
    @identifier = :neptunedata

    add_plugin(::Aws::Neptunedata::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Neptunedata::EndpointProvider)
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

    # <p>Cancels a Gremlin query. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status-cancel.html">Gremlin query cancellation</a> for more information.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelquery">neptune-db:CancelQuery</a> IAM action in that cluster.</p>
    # @param [Hash, Types::CancelGremlinQueryInput] params
    # @option params [String] :query_id
    #   <p>The unique identifier that identifies the query to be canceled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.cancel_gremlin_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String"
    #   }
    # @return [Types::CancelGremlinQueryOutput]
    def cancel_gremlin_query(params = {}, options = {})
      request = build_request(:cancel_gremlin_query, params)
      request.send_request(options)
    end

    # <p>Cancels a specified load job. This is an HTTP <code>DELETE</code> request. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/load-api-reference-status.htm">Neptune Loader Get-Status API</a> for more information.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelloaderjob">neptune-db:CancelLoaderJob</a> IAM action in that cluster..</p>
    # @param [Hash, Types::CancelLoaderJobInput] params
    # @option params [String] :load_id
    #   <p>The ID of the load job to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_id: "String", # required
    #   }
    #   options = {}
    #   response = client.cancel_loader_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String"
    #   }
    # @return [Types::CancelLoaderJobOutput]
    def cancel_loader_job(params = {}, options = {})
      request = build_request(:cancel_loader_job, params)
      request.send_request(options)
    end

    # <p>Cancels a Neptune ML data processing job. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html">The <code>dataprocessing</code> command</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmldataprocessingjob">neptune-db:CancelMLDataProcessingJob</a> IAM action in that cluster.</p>
    # @param [Hash, Types::CancelMLDataProcessingJobInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the data-processing job.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @option params [Boolean] :clean
    #   <p>If set to <code>TRUE</code>, this flag specifies that all Neptune ML S3 artifacts should be deleted when the job is stopped. The default is <code>FALSE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #     neptune_iam_role_arn: "String",
    #     clean: false
    #   }
    #   options = {}
    #   response = client.cancel_ml_data_processing_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String"
    #   }
    # @return [Types::CancelMLDataProcessingJobOutput]
    def cancel_ml_data_processing_job(params = {}, options = {})
      request = build_request(:cancel_ml_data_processing_job, params)
      request.send_request(options)
    end

    # <p>Cancels a Neptune ML model training job. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html">Model training using the <code>modeltraining</code> command</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmlmodeltrainingjob">neptune-db:CancelMLModelTrainingJob</a> IAM action in that cluster.</p>
    # @param [Hash, Types::CancelMLModelTrainingJobInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the model-training job to be canceled.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @option params [Boolean] :clean
    #   <p>If set to <code>TRUE</code>, this flag specifies that all Amazon S3 artifacts should be deleted when the job is stopped. The default is <code>FALSE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #     neptune_iam_role_arn: "String",
    #     clean: false
    #   }
    #   options = {}
    #   response = client.cancel_ml_model_training_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String"
    #   }
    # @return [Types::CancelMLModelTrainingJobOutput]
    def cancel_ml_model_training_job(params = {}, options = {})
      request = build_request(:cancel_ml_model_training_job, params)
      request.send_request(options)
    end

    # <p>Cancels a specified model transform job. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html">Use a trained model to generate new model artifacts</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmlmodeltransformjob">neptune-db:CancelMLModelTransformJob</a> IAM action in that cluster.</p>
    # @param [Hash, Types::CancelMLModelTransformJobInput] params
    # @option params [String] :id
    #   <p>The unique ID of the model transform job to be canceled.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @option params [Boolean] :clean
    #   <p>If this flag is set to <code>TRUE</code>, all Neptune ML S3 artifacts should be deleted when the job is stopped. The default is <code>FALSE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #     neptune_iam_role_arn: "String",
    #     clean: false
    #   }
    #   options = {}
    #   response = client.cancel_ml_model_transform_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String"
    #   }
    # @return [Types::CancelMLModelTransformJobOutput]
    def cancel_ml_model_transform_job(params = {}, options = {})
      request = build_request(:cancel_ml_model_transform_job, params)
      request.send_request(options)
    end

    # <p>Cancels a specified openCypher query. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-status.html">Neptune openCypher status endpoint</a> for more information.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelquery">neptune-db:CancelQuery</a> IAM action in that cluster.</p>
    # @param [Hash, Types::CancelOpenCypherQueryInput] params
    # @option params [String] :query_id
    #   <p>The unique ID of the openCypher query to cancel.</p>
    # @option params [Boolean] :silent
    #   <p>If set to <code>TRUE</code>, causes the cancelation of the openCypher query to happen silently.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "String", # required
    #     silent: false
    #   }
    #   options = {}
    #   response = client.cancel_open_cypher_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String",
    #     payload: false
    #   }
    # @return [Types::CancelOpenCypherQueryOutput]
    def cancel_open_cypher_query(params = {}, options = {})
      request = build_request(:cancel_open_cypher_query, params)
      request.send_request(options)
    end

    # <p>Creates a new Neptune ML inference endpoint that lets you query one specific model that the model-training process constructed. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html">Managing inference endpoints using the endpoints command</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#createmlendpoint">neptune-db:CreateMLEndpoint</a> IAM action in that cluster.</p>
    # @param [Hash, Types::CreateMLEndpointInput] params
    # @option params [String] :id
    #   <p>A unique identifier for the new inference endpoint. The default is an autogenerated timestamped name.</p>
    # @option params [String] :ml_model_training_job_id
    #   <p>The job Id of the completed model-training job that has created the model that the inference endpoint will point to. You must supply either the <code>mlModelTrainingJobId</code> or the <code>mlModelTransformJobId</code>.</p>
    # @option params [String] :ml_model_transform_job_id
    #   <p>The job Id of the completed model-transform job. You must supply either the <code>mlModelTrainingJobId</code> or the <code>mlModelTransformJobId</code>.</p>
    # @option params [Boolean] :update
    #   <p>If set to <code>true</code>, <code>update</code> indicates that this is an update request. The default is <code>false</code>. You must supply either the <code>mlModelTrainingJobId</code> or the <code>mlModelTransformJobId</code>.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role providing Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will be thrown.</p>
    # @option params [String] :model_name
    #   <p>Model type for training. By default the Neptune ML model is automatically based on the <code>modelType</code> used in data processing, but you can specify a different model type here. The default is <code>rgcn</code> for heterogeneous graphs and <code>kge</code> for knowledge graphs. The only valid value for heterogeneous graphs is <code>rgcn</code>. Valid values for knowledge graphs are: <code>kge</code>, <code>transe</code>, <code>distmult</code>, and <code>rotate</code>.</p>
    # @option params [String] :instance_type
    #   <p>The type of Neptune ML instance to use for online servicing. The default is <code>ml.m5.xlarge</code>. Choosing the ML instance for an inference endpoint depends on the task type, the graph size, and your budget.</p>
    # @option params [Integer] :instance_count
    #   <p>The minimum number of Amazon EC2 instances to deploy to an endpoint for prediction. The default is 1</p>
    # @option params [String] :volume_encryption_kms_key
    #   <p>The Amazon Key Management Service (Amazon KMS) key that SageMaker uses to encrypt data on the storage volume attached to the ML compute instances that run the training job. The default is None.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String",
    #     ml_model_training_job_id: "String",
    #     ml_model_transform_job_id: "String",
    #     update: false,
    #     neptune_iam_role_arn: "String",
    #     model_name: "String",
    #     instance_type: "String",
    #     instance_count: 1,
    #     volume_encryption_kms_key: "String"
    #   }
    #   options = {}
    #   response = client.create_ml_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     arn: "String",
    #     creation_time_in_millis: 1
    #   }
    # @return [Types::CreateMLEndpointOutput]
    def create_ml_endpoint(params = {}, options = {})
      request = build_request(:create_ml_endpoint, params)
      request.send_request(options)
    end

    # <p>Cancels the creation of a Neptune ML inference endpoint. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html">Managing inference endpoints using the endpoints command</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletemlendpoint">neptune-db:DeleteMLEndpoint</a> IAM action in that cluster.</p>
    # @param [Hash, Types::DeleteMLEndpointInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the inference endpoint.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role providing Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will be thrown.</p>
    # @option params [Boolean] :clean
    #   <p>If this flag is set to <code>TRUE</code>, all Neptune ML S3 artifacts should be deleted when the job is stopped. The default is <code>FALSE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #     neptune_iam_role_arn: "String",
    #     clean: false
    #   }
    #   options = {}
    #   response = client.delete_ml_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String"
    #   }
    # @return [Types::DeleteMLEndpointOutput]
    def delete_ml_endpoint(params = {}, options = {})
      request = build_request(:delete_ml_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes statistics for Gremlin and openCypher (property graph) data.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletestatistics">neptune-db:DeleteStatistics</a> IAM action in that cluster.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_propertygraph_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1,
    #     status: "String",
    #     payload: {
    #       active: false,
    #       statistics_id: "String"
    #     }
    #   }
    # @return [Types::DeletePropertygraphStatisticsOutput]
    def delete_propertygraph_statistics(params = {}, options = {})
      request = build_request(:delete_propertygraph_statistics, params)
      request.send_request(options)
    end

    # <p>Deletes SPARQL statistics</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletestatistics">neptune-db:DeleteStatistics</a> IAM action in that cluster.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_sparql_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1,
    #     status: "String",
    #     payload: {
    #       active: false,
    #       statistics_id: "String"
    #     }
    #   }
    # @return [Types::DeleteSparqlStatisticsOutput]
    def delete_sparql_statistics(params = {}, options = {})
      request = build_request(:delete_sparql_statistics, params)
      request.send_request(options)
    end

    # <p>The fast reset REST API lets you reset a Neptune graph quicky and easily, removing all of its data.</p> <p>Neptune fast reset is a two-step process. First you call <code>ExecuteFastReset</code> with <code>action</code> set to <code>initiateDatabaseReset</code>. This returns a UUID token which you then include when calling <code>ExecuteFastReset</code> again with <code>action</code> set to <code>performDatabaseReset</code>. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-fast-reset.html">Empty an Amazon Neptune DB cluster using the fast reset API</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#resetdatabase">neptune-db:ResetDatabase</a> IAM action in that cluster.</p>
    # @param [Hash, Types::ExecuteFastResetInput] params
    # @option params [String] :action
    #   <p>The fast reset action. One of the following values:</p> <ul> <li> <p> <b> <code>initiateDatabaseReset</code> </b>   –   This action generates a unique token needed to actually perform the fast reset.</p> </li> <li> <p> <b> <code>performDatabaseReset</code> </b>   –   This action uses the token generated by the <code>initiateDatabaseReset</code> action to actually perform the fast reset.</p> <p/> </li> </ul>
    # @option params [String] :token
    #   <p>The fast-reset token to initiate the reset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     action: "initiateDatabaseReset" # One of: ["initiateDatabaseReset", "performDatabaseReset"], # required
    #     token: "String"
    #   }
    #   options = {}
    #   response = client.execute_fast_reset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #     payload: {
    #       token: "String"
    #     }
    #   }
    # @return [Types::ExecuteFastResetOutput]
    def execute_fast_reset(params = {}, options = {})
      request = build_request(:execute_fast_reset, params)
      request.send_request(options)
    end

    # <p>Executes a Gremlin Explain query.</p> <p>Amazon Neptune has added a Gremlin feature named <code>explain</code> that provides is a self-service tool for understanding the execution approach being taken by the Neptune engine for the query. You invoke it by adding an <code>explain</code> parameter to an HTTP call that submits a Gremlin query.</p> <p>The explain feature provides information about the logical structure of query execution plans. You can use this information to identify potential evaluation and execution bottlenecks and to tune your query, as explained in <a href="https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-traversal-tuning.html">Tuning Gremlin queries</a>. You can also use query hints to improve query execution plans.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows one of the following IAM actions in that cluster, depending on the query:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery">neptune-db:ReadDataViaQuery</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery">neptune-db:WriteDataViaQuery</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery">neptune-db:DeleteDataViaQuery</a> </p> </li> </ul> <p>Note that the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys">neptune-db:QueryLanguage:Gremlin</a> IAM condition key can be used in the policy document to restrict the use of Gremlin queries (see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html">Condition keys available in Neptune IAM data-access policy statements</a>).</p>
    # @param [Hash, Types::ExecuteGremlinExplainQueryInput] params
    # @option params [String] :gremlin_query
    #   <p>The Gremlin explain query string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gremlin_query: "String", # required
    #   }
    #   options = {}
    #   response = client.execute_gremlin_explain_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     output: "data"
    #   }
    # @return [Types::ExecuteGremlinExplainQueryOutput]
    def execute_gremlin_explain_query(params = {}, options = {})
      request = build_request(:execute_gremlin_explain_query, params)
      request.send_request(options)
    end

    # <p>Executes a Gremlin Profile query, which runs a specified traversal, collects various metrics about the run, and produces a profile report as output. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html">Gremlin profile API in Neptune</a> for details.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery">neptune-db:ReadDataViaQuery</a> IAM action in that cluster.</p> <p>Note that the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys">neptune-db:QueryLanguage:Gremlin</a> IAM condition key can be used in the policy document to restrict the use of Gremlin queries (see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html">Condition keys available in Neptune IAM data-access policy statements</a>).</p>
    # @param [Hash, Types::ExecuteGremlinProfileQueryInput] params
    # @option params [String] :gremlin_query
    #   <p>The Gremlin query string to profile.</p>
    # @option params [Boolean] :results
    #   <p>If this flag is set to <code>TRUE</code>, the query results are gathered and displayed as part of the profile report. If <code>FALSE</code>, only the result count is displayed.</p>
    # @option params [Integer] :chop
    #   <p>If non-zero, causes the results string to be truncated at that number of characters. If set to zero, the string contains all the results.</p>
    # @option params [String] :serializer
    #   <p>If non-null, the gathered results are returned in a serialized response message in the format specified by this parameter. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html">Gremlin profile API in Neptune</a> for more information.</p>
    # @option params [Boolean] :index_ops
    #   <p>If this flag is set to <code>TRUE</code>, the results include a detailed report of all index operations that took place during query execution and serialization.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gremlin_query: "String", # required
    #     results: false,
    #     chop: 1,
    #     serializer: "String",
    #     index_ops: false
    #   }
    #   options = {}
    #   response = client.execute_gremlin_profile_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     output: "data"
    #   }
    # @return [Types::ExecuteGremlinProfileQueryOutput]
    def execute_gremlin_profile_query(params = {}, options = {})
      request = build_request(:execute_gremlin_profile_query, params)
      request.send_request(options)
    end

    # <p>This commands executes a Gremlin query. Amazon Neptune is compatible with Apache TinkerPop3 and Gremlin, so you can use the Gremlin traversal language to query the graph, as described under <a href="https://tinkerpop.apache.org/docs/current/reference/#graph">The Graph</a> in the Apache TinkerPop3 documentation. More details can also be found in <a href="https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin.html">Accessing a Neptune graph with Gremlin</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that enables one of the following IAM actions in that cluster, depending on the query:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery">neptune-db:ReadDataViaQuery</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery">neptune-db:WriteDataViaQuery</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery">neptune-db:DeleteDataViaQuery</a> </p> </li> </ul> <p>Note that the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys">neptune-db:QueryLanguage:Gremlin</a> IAM condition key can be used in the policy document to restrict the use of Gremlin queries (see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html">Condition keys available in Neptune IAM data-access policy statements</a>).</p>
    # @param [Hash, Types::ExecuteGremlinQueryInput] params
    # @option params [String] :gremlin_query
    #   <p>Using this API, you can run Gremlin queries in string format much as you can using the HTTP endpoint. The interface is compatible with whatever Gremlin version your DB cluster is using (see the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin-client.html#best-practices-gremlin-java-latest">Tinkerpop client section</a> to determine which Gremlin releases your engine version supports).</p>
    # @option params [String] :serializer
    #   <p>If non-null, the query results are returned in a serialized response message in the format specified by this parameter. See the <a href="https://tinkerpop.apache.org/docs/current/reference/#_graphson">GraphSON</a> section in the TinkerPop documentation for a list of the formats that are currently supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     gremlin_query: "String", # required
    #     serializer: "String"
    #   }
    #   options = {}
    #   response = client.execute_gremlin_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     request_id: "String",
    #     status: {
    #       message: "String",
    #       code: 1,
    #       attributes: ""null""
    #     },
    #     result: ""null"",
    #     meta: ""null""
    #   }
    # @return [Types::ExecuteGremlinQueryOutput]
    def execute_gremlin_query(params = {}, options = {})
      request = build_request(:execute_gremlin_query, params)
      request.send_request(options)
    end

    # <p>Executes an openCypher <code>explain</code> request. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-explain.html">The openCypher explain feature</a> for more information.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery">neptune-db:ReadDataViaQuery</a> IAM action in that cluster.</p> <p>Note that the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys">neptune-db:QueryLanguage:OpenCypher</a> IAM condition key can be used in the policy document to restrict the use of openCypher queries (see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html">Condition keys available in Neptune IAM data-access policy statements</a>).</p>
    # @param [Hash, Types::ExecuteOpenCypherExplainQueryInput] params
    # @option params [String] :open_cypher_query
    #   <p>The openCypher query string.</p>
    # @option params [String] :parameters
    #   <p>The openCypher query parameters.</p>
    # @option params [String] :explain_mode
    #   <p>The openCypher <code>explain</code> mode. Can be one of: <code>static</code>, <code>dynamic</code>, or <code>details</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     open_cypher_query: "String", # required
    #     parameters: "String",
    #     explain_mode: "static" # One of: ["static", "dynamic", "details"], # required
    #   }
    #   options = {}
    #   response = client.execute_open_cypher_explain_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: "data", # required
    #   }
    # @return [Types::ExecuteOpenCypherExplainQueryOutput]
    def execute_open_cypher_explain_query(params = {}, options = {})
      request = build_request(:execute_open_cypher_explain_query, params)
      request.send_request(options)
    end

    # <p>Executes an openCypher query. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher.html">Accessing the Neptune Graph with openCypher</a> for more information.</p> <p>Neptune supports building graph applications using openCypher, which is currently one of the most popular query languages among developers working with graph databases. Developers, business analysts, and data scientists like openCypher's declarative, SQL-inspired syntax because it provides a familiar structure in which to querying property graphs.</p> <p>The openCypher language was originally developed by Neo4j, then open-sourced in 2015 and contributed to the <a href="https://opencypher.org/">openCypher project</a> under an Apache 2 open-source license.</p> <p>Note that when invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows one of the following IAM actions in that cluster, depending on the query:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery">neptune-db:ReadDataViaQuery</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery">neptune-db:WriteDataViaQuery</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery">neptune-db:DeleteDataViaQuery</a> </p> </li> </ul> <p>Note also that the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys">neptune-db:QueryLanguage:OpenCypher</a> IAM condition key can be used in the policy document to restrict the use of openCypher queries (see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html">Condition keys available in Neptune IAM data-access policy statements</a>).</p>
    # @param [Hash, Types::ExecuteOpenCypherQueryInput] params
    # @option params [String] :open_cypher_query
    #   <p>The openCypher query string to be executed.</p>
    # @option params [String] :parameters
    #   <p>The openCypher query parameters for query execution. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/opencypher-parameterized-queries.html">Examples of openCypher parameterized queries</a> for more information.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     open_cypher_query: "String", # required
    #     parameters: "String"
    #   }
    #   options = {}
    #   response = client.execute_open_cypher_query(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: ""null"", # required
    #   }
    # @return [Types::ExecuteOpenCypherQueryOutput]
    def execute_open_cypher_query(params = {}, options = {})
      request = build_request(:execute_open_cypher_query, params)
      request.send_request(options)
    end

    # <p>Retrieves the status of the graph database on the host.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getenginestatus">neptune-db:GetEngineStatus</a> IAM action in that cluster.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_engine_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String",
    #     start_time: "String",
    #     db_engine_version: "String",
    #     role: "String",
    #     dfe_query_engine: "String",
    #     gremlin: {
    #       version: "String", # required
    #     },
    #     sparql: {
    #       version: "String", # required
    #     },
    #     opencypher: {
    #       version: "String", # required
    #     },
    #     lab_mode: {
    #       "String" => "String"
    #     },
    #     rolling_back_trx_count: 1,
    #     rolling_back_trx_earliest_start_time: "String",
    #     features: {
    #       "String" => ""null""
    #     },
    #     settings: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetEngineStatusOutput]
    def get_engine_status(params = {}, options = {})
      request = build_request(:get_engine_status, params)
      request.send_request(options)
    end

    # <p>Gets the status of a specified Gremlin query.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus">neptune-db:GetQueryStatus</a> IAM action in that cluster.</p> <p>Note that the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys">neptune-db:QueryLanguage:Gremlin</a> IAM condition key can be used in the policy document to restrict the use of Gremlin queries (see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html">Condition keys available in Neptune IAM data-access policy statements</a>).</p>
    # @param [Hash, Types::GetGremlinQueryStatusInput] params
    # @option params [String] :query_id
    #   <p>The unique identifier that identifies the Gremlin query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_gremlin_query_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "String",
    #     query_string: "String",
    #     query_eval_stats: {
    #       waited: 1,
    #       elapsed: 1,
    #       cancelled: false,
    #       subqueries: ""null""
    #     }
    #   }
    # @return [Types::GetGremlinQueryStatusOutput]
    def get_gremlin_query_status(params = {}, options = {})
      request = build_request(:get_gremlin_query_status, params)
      request.send_request(options)
    end

    # <p>Gets status information about a specified load job. Neptune keeps track of the most recent 1,024 bulk load jobs, and stores the last 10,000 error details per job.</p> <p>See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/load-api-reference-status.htm">Neptune Loader Get-Status API</a> for more information.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getloaderjobstatus">neptune-db:GetLoaderJobStatus</a> IAM action in that cluster..</p>
    # @param [Hash, Types::GetLoaderJobStatusInput] params
    # @option params [String] :load_id
    #   <p>The load ID of the load job to get the status of.</p>
    # @option params [Boolean] :details
    #   <p>Flag indicating whether or not to include details beyond the overall status (<code>TRUE</code> or <code>FALSE</code>; the default is <code>FALSE</code>).</p>
    # @option params [Boolean] :errors
    #   <p>Flag indicating whether or not to include a list of errors encountered (<code>TRUE</code> or <code>FALSE</code>; the default is <code>FALSE</code>).</p> <p>The list of errors is paged. The <code>page</code> and <code>errorsPerPage</code> parameters allow you to page through all the errors.</p>
    # @option params [Integer] :page
    #   <p>The error page number (a positive integer; the default is <code>1</code>). Only valid when the <code>errors</code> parameter is set to <code>TRUE</code>.</p>
    # @option params [Integer] :errors_per_page
    #   <p>The number of errors returned in each page (a positive integer; the default is <code>10</code>). Only valid when the <code>errors</code> parameter set to <code>TRUE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     load_id: "String", # required
    #     details: false,
    #     errors: false,
    #     page: 1,
    #     errors_per_page: 1
    #   }
    #   options = {}
    #   response = client.get_loader_job_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #     payload: ""null"", # required
    #   }
    # @return [Types::GetLoaderJobStatusOutput]
    def get_loader_job_status(params = {}, options = {})
      request = build_request(:get_loader_job_status, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specified data processing job. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html">The <code>dataprocessing</code> command</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmldataprocessingjobstatus">neptune-db:neptune-db:GetMLDataProcessingJobStatus</a> IAM action in that cluster.</p>
    # @param [Hash, Types::GetMLDataProcessingJobInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the data-processing job to be retrieved.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #     neptune_iam_role_arn: "String"
    #   }
    #   options = {}
    #   response = client.get_ml_data_processing_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String",
    #     id: "String",
    #     processing_job: {
    #       name: "String",
    #       arn: "String",
    #       status: "String",
    #       output_location: "String",
    #       failure_reason: "String",
    #       cloudwatch_log_url: "String"
    #     }
    #   }
    # @return [Types::GetMLDataProcessingJobOutput]
    def get_ml_data_processing_job(params = {}, options = {})
      request = build_request(:get_ml_data_processing_job, params)
      request.send_request(options)
    end

    # <p>Retrieves details about an inference endpoint. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html">Managing inference endpoints using the endpoints command</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlendpointstatus">neptune-db:GetMLEndpointStatus</a> IAM action in that cluster.</p>
    # @param [Hash, Types::GetMLEndpointInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the inference endpoint.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #     neptune_iam_role_arn: "String"
    #   }
    #   options = {}
    #   response = client.get_ml_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String",
    #     id: "String",
    #     endpoint: {
    #       name: "String",
    #       arn: "String",
    #       status: "String",
    #       output_location: "String",
    #       failure_reason: "String",
    #       cloudwatch_log_url: "String"
    #     },
    #     endpoint_config: {
    #       name: "String",
    #       arn: "String"
    #     }
    #   }
    # @return [Types::GetMLEndpointOutput]
    def get_ml_endpoint(params = {}, options = {})
      request = build_request(:get_ml_endpoint, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a Neptune ML model training job. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html">Model training using the <code>modeltraining</code> command</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlmodeltrainingjobstatus">neptune-db:GetMLModelTrainingJobStatus</a> IAM action in that cluster.</p>
    # @param [Hash, Types::GetMLModelTrainingJobInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the model-training job to retrieve.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #     neptune_iam_role_arn: "String"
    #   }
    #   options = {}
    #   response = client.get_ml_model_training_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String",
    #     id: "String",
    #     processing_job: {
    #       name: "String",
    #       arn: "String",
    #       status: "String",
    #       output_location: "String",
    #       failure_reason: "String",
    #       cloudwatch_log_url: "String"
    #     },
    #     hpo_job: {
    #       name: "String",
    #       arn: "String",
    #       status: "String",
    #       output_location: "String",
    #       failure_reason: "String",
    #       cloudwatch_log_url: "String"
    #     },
    #     model_transform_job: {
    #       name: "String",
    #       arn: "String",
    #       status: "String",
    #       output_location: "String",
    #       failure_reason: "String",
    #       cloudwatch_log_url: "String"
    #     },
    #     ml_models: [
    #       {
    #         name: "String",
    #         arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetMLModelTrainingJobOutput]
    def get_ml_model_training_job(params = {}, options = {})
      request = build_request(:get_ml_model_training_job, params)
      request.send_request(options)
    end

    # <p>Gets information about a specified model transform job. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html">Use a trained model to generate new model artifacts</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlmodeltransformjobstatus">neptune-db:GetMLModelTransformJobStatus</a> IAM action in that cluster.</p>
    # @param [Hash, Types::GetMLModelTransformJobInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the model-transform job to be reetrieved.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String", # required
    #     neptune_iam_role_arn: "String"
    #   }
    #   options = {}
    #   response = client.get_ml_model_transform_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String",
    #     id: "String",
    #     base_processing_job: {
    #       name: "String",
    #       arn: "String",
    #       status: "String",
    #       output_location: "String",
    #       failure_reason: "String",
    #       cloudwatch_log_url: "String"
    #     },
    #     remote_model_transform_job: {
    #       name: "String",
    #       arn: "String",
    #       status: "String",
    #       output_location: "String",
    #       failure_reason: "String",
    #       cloudwatch_log_url: "String"
    #     },
    #     models: [
    #       {
    #         name: "String",
    #         arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetMLModelTransformJobOutput]
    def get_ml_model_transform_job(params = {}, options = {})
      request = build_request(:get_ml_model_transform_job, params)
      request.send_request(options)
    end

    # <p>Retrieves the status of a specified openCypher query.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus">neptune-db:GetQueryStatus</a> IAM action in that cluster.</p> <p>Note that the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys">neptune-db:QueryLanguage:OpenCypher</a> IAM condition key can be used in the policy document to restrict the use of openCypher queries (see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html">Condition keys available in Neptune IAM data-access policy statements</a>).</p>
    # @param [Hash, Types::GetOpenCypherQueryStatusInput] params
    # @option params [String] :query_id
    #   <p>The unique ID of the openCypher query for which to retrieve the query status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     query_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_open_cypher_query_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     query_id: "String",
    #     query_string: "String",
    #     query_eval_stats: {
    #       waited: 1,
    #       elapsed: 1,
    #       cancelled: false,
    #       subqueries: ""null""
    #     }
    #   }
    # @return [Types::GetOpenCypherQueryStatusOutput]
    def get_open_cypher_query_status(params = {}, options = {})
      request = build_request(:get_open_cypher_query_status, params)
      request.send_request(options)
    end

    # <p>Gets property graph statistics (Gremlin and openCypher).</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstatisticsstatus">neptune-db:GetStatisticsStatus</a> IAM action in that cluster.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_propertygraph_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #     payload: { # required
    #       auto_compute: false,
    #       active: false,
    #       statistics_id: "String",
    #       date: Time.now,
    #       note: "String",
    #       signature_info: {
    #         signature_count: 1,
    #         instance_count: 1,
    #         predicate_count: 1
    #       }
    #     }
    #   }
    # @return [Types::GetPropertygraphStatisticsOutput]
    def get_propertygraph_statistics(params = {}, options = {})
      request = build_request(:get_propertygraph_statistics, params)
      request.send_request(options)
    end

    # <p>Gets a stream for a property graph.</p> <p>With the Neptune Streams feature, you can generate a complete sequence of change-log entries that record every change made to your graph data as it happens. <code>GetPropertygraphStream</code> lets you collect these change-log entries for a property graph.</p> <p>The Neptune streams feature needs to be enabled on your Neptune DBcluster. To enable streams, set the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/parameters.html#parameters-db-cluster-parameters-neptune_streams">neptune_streams</a> DB cluster parameter to <code>1</code>.</p> <p>See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/streams.html">Capturing graph changes in real time using Neptune streams</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstreamrecords">neptune-db:GetStreamRecords</a> IAM action in that cluster.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that enables one of the following IAM actions, depending on the query:</p> <p>Note that you can restrict property-graph queries using the following IAM context keys:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys">neptune-db:QueryLanguage:Gremlin</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys">neptune-db:QueryLanguage:OpenCypher</a> </p> </li> </ul> <p>See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html">Condition keys available in Neptune IAM data-access policy statements</a>).</p>
    # @param [Hash, Types::GetPropertygraphStreamInput] params
    # @option params [Integer] :limit
    #   <p>Specifies the maximum number of records to return. There is also a size limit of 10 MB on the response that can't be modified and that takes precedence over the number of records specified in the <code>limit</code> parameter. The response does include a threshold-breaching record if the 10 MB limit was reached.</p> <p>The range for <code>limit</code> is 1 to 100,000, with a default of 10.</p>
    # @option params [String] :iterator_type
    #   <p>Can be one of:</p> <ul> <li> <p> <code>AT_SEQUENCE_NUMBER</code>   –   Indicates that reading should start from the event sequence number specified jointly by the <code>commitNum</code> and <code>opNum</code> parameters.</p> </li> <li> <p> <code>AFTER_SEQUENCE_NUMBER</code>   –   Indicates that reading should start right after the event sequence number specified jointly by the <code>commitNum</code> and <code>opNum</code> parameters.</p> </li> <li> <p> <code>TRIM_HORIZON</code>   –   Indicates that reading should start at the last untrimmed record in the system, which is the oldest unexpired (not yet deleted) record in the change-log stream.</p> </li> <li> <p> <code>LATEST</code>   –   Indicates that reading should start at the most recent record in the system, which is the latest unexpired (not yet deleted) record in the change-log stream.</p> </li> </ul>
    # @option params [Integer] :commit_num
    #   <p>The commit number of the starting record to read from the change-log stream. This parameter is required when <code>iteratorType</code> is<code>AT_SEQUENCE_NUMBER</code> or <code>AFTER_SEQUENCE_NUMBER</code>, and ignored when <code>iteratorType</code> is <code>TRIM_HORIZON</code> or <code>LATEST</code>.</p>
    # @option params [Integer] :op_num
    #   <p>The operation sequence number within the specified commit to start reading from in the change-log stream data. The default is <code>1</code>.</p>
    # @option params [String] :encoding
    #   <p>If set to TRUE, Neptune compresses the response using gzip encoding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     iterator_type: "AT_SEQUENCE_NUMBER" # One of: ["AT_SEQUENCE_NUMBER", "AFTER_SEQUENCE_NUMBER", "TRIM_HORIZON", "LATEST"],
    #     commit_num: 1,
    #     op_num: 1,
    #     encoding: "gzip" # One of: ["gzip"]
    #   }
    #   options = {}
    #   response = client.get_propertygraph_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     last_event_id: { # required
    #       "String" => "String"
    #     },
    #     last_trx_timestamp_in_millis: 1, # required
    #     format: "String", # required
    #     records: [ # required
    #       {
    #         commit_timestamp_in_millis: 1, # required
    #         event_id: { # required
    #           "String" => "String"
    #         },
    #         data: { # required
    #           id: "String", # required
    #           type: "String", # required
    #           key: "String", # required
    #           value: ""null"", # required
    #           from: "String",
    #           to: "String"
    #         },
    #         op: "String", # required
    #         is_last_op: false
    #       }
    #     ],
    #     total_records: 1, # required
    #   }
    # @return [Types::GetPropertygraphStreamOutput]
    def get_propertygraph_stream(params = {}, options = {})
      request = build_request(:get_propertygraph_stream, params)
      request.send_request(options)
    end

    # <p>Gets a graph summary for a property graph.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getgraphsummary">neptune-db:GetGraphSummary</a> IAM action in that cluster.</p>
    # @param [Hash, Types::GetPropertygraphSummaryInput] params
    # @option params [String] :mode
    #   <p>Mode can take one of two values: <code>BASIC</code> (the default), and <code>DETAILED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mode: "basic" # One of: ["basic", "detailed"]
    #   }
    #   options = {}
    #   response = client.get_propertygraph_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1,
    #     payload: {
    #       version: "String",
    #       last_statistics_computation_time: Time.now,
    #       graph_summary: {
    #         num_nodes: 1,
    #         num_edges: 1,
    #         num_node_labels: 1,
    #         num_edge_labels: 1,
    #         node_labels: ["String"],
    #         edge_labels: ["String"],
    #         num_node_properties: 1,
    #         num_edge_properties: 1,
    #         node_properties: [
    #           {
    #             "String" => 1
    #           }
    #         ],
    #         edge_properties: [
    #           {
    #             "String" => 1
    #           }
    #         ],
    #         total_node_property_values: 1,
    #         total_edge_property_values: 1,
    #         node_structures: [
    #           {
    #             count: 1,
    #             node_properties: ["String"],
    #             distinct_outgoing_edge_labels: ["String"]
    #           }
    #         ],
    #         edge_structures: [
    #           {
    #             count: 1,
    #             edge_properties: ["String"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetPropertygraphSummaryOutput]
    def get_propertygraph_summary(params = {}, options = {})
      request = build_request(:get_propertygraph_summary, params)
      request.send_request(options)
    end

    # <p>Gets a graph summary for an RDF graph.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getgraphsummary">neptune-db:GetGraphSummary</a> IAM action in that cluster.</p>
    # @param [Hash, Types::GetRDFGraphSummaryInput] params
    # @option params [String] :mode
    #   <p>Mode can take one of two values: <code>BASIC</code> (the default), and <code>DETAILED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mode: "basic" # One of: ["basic", "detailed"]
    #   }
    #   options = {}
    #   response = client.get_rdf_graph_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status_code: 1,
    #     payload: {
    #       version: "String",
    #       last_statistics_computation_time: Time.now,
    #       graph_summary: {
    #         num_distinct_subjects: 1,
    #         num_distinct_predicates: 1,
    #         num_quads: 1,
    #         num_classes: 1,
    #         classes: ["String"],
    #         predicates: [
    #           {
    #             "String" => 1
    #           }
    #         ],
    #         subject_structures: [
    #           {
    #             count: 1,
    #             predicates: ["String"]
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::GetRDFGraphSummaryOutput]
    def get_rdf_graph_summary(params = {}, options = {})
      request = build_request(:get_rdf_graph_summary, params)
      request.send_request(options)
    end

    # <p>Gets RDF statistics (SPARQL).</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_sparql_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #     payload: { # required
    #       auto_compute: false,
    #       active: false,
    #       statistics_id: "String",
    #       date: Time.now,
    #       note: "String",
    #       signature_info: {
    #         signature_count: 1,
    #         instance_count: 1,
    #         predicate_count: 1
    #       }
    #     }
    #   }
    # @return [Types::GetSparqlStatisticsOutput]
    def get_sparql_statistics(params = {}, options = {})
      request = build_request(:get_sparql_statistics, params)
      request.send_request(options)
    end

    # <p>Gets a stream for an RDF graph.</p> <p>With the Neptune Streams feature, you can generate a complete sequence of change-log entries that record every change made to your graph data as it happens. <code>GetSparqlStream</code> lets you collect these change-log entries for an RDF graph.</p> <p>The Neptune streams feature needs to be enabled on your Neptune DBcluster. To enable streams, set the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/parameters.html#parameters-db-cluster-parameters-neptune_streams">neptune_streams</a> DB cluster parameter to <code>1</code>.</p> <p>See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/streams.html">Capturing graph changes in real time using Neptune streams</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstreamrecords">neptune-db:GetStreamRecords</a> IAM action in that cluster.</p> <p>Note that the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys">neptune-db:QueryLanguage:Sparql</a> IAM condition key can be used in the policy document to restrict the use of SPARQL queries (see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html">Condition keys available in Neptune IAM data-access policy statements</a>).</p>
    # @param [Hash, Types::GetSparqlStreamInput] params
    # @option params [Integer] :limit
    #   <p>Specifies the maximum number of records to return. There is also a size limit of 10 MB on the response that can't be modified and that takes precedence over the number of records specified in the <code>limit</code> parameter. The response does include a threshold-breaching record if the 10 MB limit was reached.</p> <p>The range for <code>limit</code> is 1 to 100,000, with a default of 10.</p>
    # @option params [String] :iterator_type
    #   <p>Can be one of:</p> <ul> <li> <p> <code>AT_SEQUENCE_NUMBER</code>   –   Indicates that reading should start from the event sequence number specified jointly by the <code>commitNum</code> and <code>opNum</code> parameters.</p> </li> <li> <p> <code>AFTER_SEQUENCE_NUMBER</code>   –   Indicates that reading should start right after the event sequence number specified jointly by the <code>commitNum</code> and <code>opNum</code> parameters.</p> </li> <li> <p> <code>TRIM_HORIZON</code>   –   Indicates that reading should start at the last untrimmed record in the system, which is the oldest unexpired (not yet deleted) record in the change-log stream.</p> </li> <li> <p> <code>LATEST</code>   –   Indicates that reading should start at the most recent record in the system, which is the latest unexpired (not yet deleted) record in the change-log stream.</p> </li> </ul>
    # @option params [Integer] :commit_num
    #   <p>The commit number of the starting record to read from the change-log stream. This parameter is required when <code>iteratorType</code> is<code>AT_SEQUENCE_NUMBER</code> or <code>AFTER_SEQUENCE_NUMBER</code>, and ignored when <code>iteratorType</code> is <code>TRIM_HORIZON</code> or <code>LATEST</code>.</p>
    # @option params [Integer] :op_num
    #   <p>The operation sequence number within the specified commit to start reading from in the change-log stream data. The default is <code>1</code>.</p>
    # @option params [String] :encoding
    #   <p>If set to TRUE, Neptune compresses the response using gzip encoding.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     iterator_type: "AT_SEQUENCE_NUMBER" # One of: ["AT_SEQUENCE_NUMBER", "AFTER_SEQUENCE_NUMBER", "TRIM_HORIZON", "LATEST"],
    #     commit_num: 1,
    #     op_num: 1,
    #     encoding: "gzip" # One of: ["gzip"]
    #   }
    #   options = {}
    #   response = client.get_sparql_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     last_event_id: { # required
    #       "String" => "String"
    #     },
    #     last_trx_timestamp_in_millis: 1, # required
    #     format: "String", # required
    #     records: [ # required
    #       {
    #         commit_timestamp_in_millis: 1, # required
    #         event_id: { # required
    #           "String" => "String"
    #         },
    #         data: { # required
    #           stmt: "String", # required
    #         },
    #         op: "String", # required
    #         is_last_op: false
    #       }
    #     ],
    #     total_records: 1, # required
    #   }
    # @return [Types::GetSparqlStreamOutput]
    def get_sparql_stream(params = {}, options = {})
      request = build_request(:get_sparql_stream, params)
      request.send_request(options)
    end

    # <p>Lists active Gremlin queries. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status.html">Gremlin query status API</a> for details about the output.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus">neptune-db:GetQueryStatus</a> IAM action in that cluster.</p> <p>Note that the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys">neptune-db:QueryLanguage:Gremlin</a> IAM condition key can be used in the policy document to restrict the use of Gremlin queries (see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html">Condition keys available in Neptune IAM data-access policy statements</a>).</p>
    # @param [Hash, Types::ListGremlinQueriesInput] params
    # @option params [Boolean] :include_waiting
    #   <p>If set to <code>TRUE</code>, the list returned includes waiting queries. The default is <code>FALSE</code>;</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     include_waiting: false
    #   }
    #   options = {}
    #   response = client.list_gremlin_queries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accepted_query_count: 1,
    #     running_query_count: 1,
    #     queries: [
    #       {
    #         query_id: "String",
    #         query_string: "String",
    #         query_eval_stats: {
    #           waited: 1,
    #           elapsed: 1,
    #           cancelled: false,
    #           subqueries: ""null""
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListGremlinQueriesOutput]
    def list_gremlin_queries(params = {}, options = {})
      request = build_request(:list_gremlin_queries, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of the <code>loadIds</code> for all active loader jobs.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listloaderjobs">neptune-db:ListLoaderJobs</a> IAM action in that cluster..</p>
    # @param [Hash, Types::ListLoaderJobsInput] params
    # @option params [Integer] :limit
    #   <p>The number of load IDs to list. Must be a positive integer greater than zero and not more than <code>100</code> (which is the default).</p>
    # @option params [Boolean] :include_queued_loads
    #   <p>An optional parameter that can be used to exclude the load IDs of queued load requests when requesting a list of load IDs by setting the parameter to <code>FALSE</code>. The default value is <code>TRUE</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     limit: 1,
    #     include_queued_loads: false
    #   }
    #   options = {}
    #   response = client.list_loader_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #     payload: { # required
    #       load_ids: ["String"]
    #     }
    #   }
    # @return [Types::ListLoaderJobsOutput]
    def list_loader_jobs(params = {}, options = {})
      request = build_request(:list_loader_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of Neptune ML data processing jobs. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html#machine-learning-api-dataprocessing-list-jobs">Listing active data-processing jobs using the Neptune ML dataprocessing command</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmldataprocessingjobs">neptune-db:ListMLDataProcessingJobs</a> IAM action in that cluster.</p>
    # @param [Hash, Types::ListMLDataProcessingJobsInput] params
    # @option params [Integer] :max_items
    #   <p>The maximum number of items to return (from 1 to 1024; the default is 10).</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_items: 1,
    #     neptune_iam_role_arn: "String"
    #   }
    #   options = {}
    #   response = client.list_ml_data_processing_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["String"]
    #   }
    # @return [Types::ListMLDataProcessingJobsOutput]
    def list_ml_data_processing_jobs(params = {}, options = {})
      request = build_request(:list_ml_data_processing_jobs, params)
      request.send_request(options)
    end

    # <p>Lists existing inference endpoints. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html">Managing inference endpoints using the endpoints command</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmlendpoints">neptune-db:ListMLEndpoints</a> IAM action in that cluster.</p>
    # @param [Hash, Types::ListMLEndpointsInput] params
    # @option params [Integer] :max_items
    #   <p>The maximum number of items to return (from 1 to 1024; the default is 10.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_items: 1,
    #     neptune_iam_role_arn: "String"
    #   }
    #   options = {}
    #   response = client.list_ml_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["String"]
    #   }
    # @return [Types::ListMLEndpointsOutput]
    def list_ml_endpoints(params = {}, options = {})
      request = build_request(:list_ml_endpoints, params)
      request.send_request(options)
    end

    # <p>Lists Neptune ML model-training jobs. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html">Model training using the <code>modeltraining</code> command</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#neptune-db:listmlmodeltrainingjobs">neptune-db:neptune-db:ListMLModelTrainingJobs</a> IAM action in that cluster.</p>
    # @param [Hash, Types::ListMLModelTrainingJobsInput] params
    # @option params [Integer] :max_items
    #   <p>The maximum number of items to return (from 1 to 1024; the default is 10).</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_items: 1,
    #     neptune_iam_role_arn: "String"
    #   }
    #   options = {}
    #   response = client.list_ml_model_training_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["String"]
    #   }
    # @return [Types::ListMLModelTrainingJobsOutput]
    def list_ml_model_training_jobs(params = {}, options = {})
      request = build_request(:list_ml_model_training_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of model transform job IDs. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html">Use a trained model to generate new model artifacts</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmlmodeltransformjobs">neptune-db:ListMLModelTransformJobs</a> IAM action in that cluster.</p>
    # @param [Hash, Types::ListMLModelTransformJobsInput] params
    # @option params [Integer] :max_items
    #   <p>The maximum number of items to return (from 1 to 1024; the default is 10).</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_items: 1,
    #     neptune_iam_role_arn: "String"
    #   }
    #   options = {}
    #   response = client.list_ml_model_transform_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ids: ["String"]
    #   }
    # @return [Types::ListMLModelTransformJobsOutput]
    def list_ml_model_transform_jobs(params = {}, options = {})
      request = build_request(:list_ml_model_transform_jobs, params)
      request.send_request(options)
    end

    # <p>Lists active openCypher queries. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-status.html">Neptune openCypher status endpoint</a> for more information.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus">neptune-db:GetQueryStatus</a> IAM action in that cluster.</p> <p>Note that the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys">neptune-db:QueryLanguage:OpenCypher</a> IAM condition key can be used in the policy document to restrict the use of openCypher queries (see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html">Condition keys available in Neptune IAM data-access policy statements</a>).</p>
    # @param [Hash, Types::ListOpenCypherQueriesInput] params
    # @option params [Boolean] :include_waiting
    #   <p> When set to <code>TRUE</code> and other parameters are not present, causes status information to be returned for waiting queries as well as for running queries.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     include_waiting: false
    #   }
    #   options = {}
    #   response = client.list_open_cypher_queries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     accepted_query_count: 1,
    #     running_query_count: 1,
    #     queries: [
    #       {
    #         query_id: "String",
    #         query_string: "String",
    #         query_eval_stats: {
    #           waited: 1,
    #           elapsed: 1,
    #           cancelled: false,
    #           subqueries: ""null""
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListOpenCypherQueriesOutput]
    def list_open_cypher_queries(params = {}, options = {})
      request = build_request(:list_open_cypher_queries, params)
      request.send_request(options)
    end

    # <p>Manages the generation and use of property graph statistics.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#managestatistics">neptune-db:ManageStatistics</a> IAM action in that cluster.</p>
    # @param [Hash, Types::ManagePropertygraphStatisticsInput] params
    # @option params [String] :mode
    #   <p>The statistics generation mode. One of: <code>DISABLE_AUTOCOMPUTE</code>, <code>ENABLE_AUTOCOMPUTE</code>, or <code>REFRESH</code>, the last of which manually triggers DFE statistics generation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mode: "disableAutoCompute" # One of: ["disableAutoCompute", "enableAutoCompute", "refresh"]
    #   }
    #   options = {}
    #   response = client.manage_propertygraph_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #     payload: {
    #       statistics_id: "String"
    #     }
    #   }
    # @return [Types::ManagePropertygraphStatisticsOutput]
    def manage_propertygraph_statistics(params = {}, options = {})
      request = build_request(:manage_propertygraph_statistics, params)
      request.send_request(options)
    end

    # <p>Manages the generation and use of RDF graph statistics.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#managestatistics">neptune-db:ManageStatistics</a> IAM action in that cluster.</p>
    # @param [Hash, Types::ManageSparqlStatisticsInput] params
    # @option params [String] :mode
    #   <p>The statistics generation mode. One of: <code>DISABLE_AUTOCOMPUTE</code>, <code>ENABLE_AUTOCOMPUTE</code>, or <code>REFRESH</code>, the last of which manually triggers DFE statistics generation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     mode: "disableAutoCompute" # One of: ["disableAutoCompute", "enableAutoCompute", "refresh"]
    #   }
    #   options = {}
    #   response = client.manage_sparql_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #     payload: {
    #       statistics_id: "String"
    #     }
    #   }
    # @return [Types::ManageSparqlStatisticsOutput]
    def manage_sparql_statistics(params = {}, options = {})
      request = build_request(:manage_sparql_statistics, params)
      request.send_request(options)
    end

    # <p>Starts a Neptune bulk loader job to load data from an Amazon S3 bucket into a Neptune DB instance. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load.html">Using the Amazon Neptune Bulk Loader to Ingest Data</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startloaderjob">neptune-db:StartLoaderJob</a> IAM action in that cluster.</p>
    # @param [Hash, Types::StartLoaderJobInput] params
    # @option params [String] :source
    #   <p>The <code>source</code> parameter accepts an S3 URI that identifies a single file, multiple files, a folder, or multiple folders. Neptune loads every data file in any folder that is specified.</p> <p>The URI can be in any of the following formats.</p> <ul> <li> <p> <code>s3://(bucket_name)/(object-key-name)</code> </p> </li> <li> <p> <code>https://s3.amazonaws.com/(bucket_name)/(object-key-name)</code> </p> </li> <li> <p> <code>https://s3.us-east-1.amazonaws.com/(bucket_name)/(object-key-name)</code> </p> </li> </ul> <p>The <code>object-key-name</code> element of the URI is equivalent to the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html#API_ListObjects_RequestParameters">prefix</a> parameter in an S3 <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html">ListObjects</a> API call. It identifies all the objects in the specified S3 bucket whose names begin with that prefix. That can be a single file or folder, or multiple files and/or folders.</p> <p>The specified folder or folders can contain multiple vertex files and multiple edge files.</p>
    # @option params [String] :format
    #   <p>The format of the data. For more information about data formats for the Neptune <code>Loader</code> command, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format.html">Load Data Formats</a>.</p> <p class="title"> <b>Allowed values</b> </p> <ul> <li> <p> <b> <code>csv</code> </b> for the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html">Gremlin CSV data format</a>.</p> </li> <li> <p> <b> <code>opencypher</code> </b> for the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html">openCypher CSV data format</a>.</p> </li> <li> <p> <b> <code>ntriples</code> </b> for the <a href="https://www.w3.org/TR/n-triples/">N-Triples RDF data format</a>.</p> </li> <li> <p> <b> <code>nquads</code> </b> for the <a href="https://www.w3.org/TR/n-quads/">N-Quads RDF data format</a>.</p> </li> <li> <p> <b> <code>rdfxml</code> </b> for the <a href="https://www.w3.org/TR/rdf-syntax-grammar/">RDF\XML RDF data format</a>.</p> </li> <li> <p> <b> <code>turtle</code> </b> for the <a href="https://www.w3.org/TR/turtle/">Turtle RDF data format</a>.</p> </li> </ul>
    # @option params [String] :s3_bucket_region
    #   <p>The Amazon region of the S3 bucket. This must match the Amazon Region of the DB cluster.</p>
    # @option params [String] :iam_role_arn
    #   <p>The Amazon Resource Name (ARN) for an IAM role to be assumed by the Neptune DB instance for access to the S3 bucket. The IAM role ARN provided here should be attached to the DB cluster (see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-IAM-add-role-cluster.html">Adding the IAM Role to an Amazon Neptune Cluster</a>.</p>
    # @option params [String] :mode
    #   <p>The load job mode.</p> <p> <i>Allowed values</i>: <code>RESUME</code>, <code>NEW</code>, <code>AUTO</code>.</p> <p> <i>Default value</i>: <code>AUTO</code>.</p> <p class="title"> <b/> </p> <ul> <li> <p> <code>RESUME</code>   –   In RESUME mode, the loader looks for a previous load from this source, and if it finds one, resumes that load job. If no previous load job is found, the loader stops.</p> <p>The loader avoids reloading files that were successfully loaded in a previous job. It only tries to process failed files. If you dropped previously loaded data from your Neptune cluster, that data is not reloaded in this mode. If a previous load job loaded all files from the same source successfully, nothing is reloaded, and the loader returns success.</p> </li> <li> <p> <code>NEW</code>   –   In NEW mode, the creates a new load request regardless of any previous loads. You can use this mode to reload all the data from a source after dropping previously loaded data from your Neptune cluster, or to load new data available at the same source.</p> </li> <li> <p> <code>AUTO</code>   –   In AUTO mode, the loader looks for a previous load job from the same source, and if it finds one, resumes that job, just as in <code>RESUME</code> mode.</p> <p>If the loader doesn't find a previous load job from the same source, it loads all data from the source, just as in <code>NEW</code> mode.</p> </li> </ul>
    # @option params [Boolean] :fail_on_error
    #   <p> <b> <code>failOnError</code> </b>   –   A flag to toggle a complete stop on an error.</p> <p> <i>Allowed values</i>: <code>"TRUE"</code>, <code>"FALSE"</code>.</p> <p> <i>Default value</i>: <code>"TRUE"</code>.</p> <p>When this parameter is set to <code>"FALSE"</code>, the loader tries to load all the data in the location specified, skipping any entries with errors.</p> <p>When this parameter is set to <code>"TRUE"</code>, the loader stops as soon as it encounters an error. Data loaded up to that point persists.</p>
    # @option params [String] :parallelism
    #   <p>The optional <code>parallelism</code> parameter can be set to reduce the number of threads used by the bulk load process.</p> <p> <i>Allowed values</i>:</p> <ul> <li> <p> <code>LOW</code> –   The number of threads used is the number of available vCPUs divided by 8.</p> </li> <li> <p> <code>MEDIUM</code> –   The number of threads used is the number of available vCPUs divided by 2.</p> </li> <li> <p> <code>HIGH</code> –   The number of threads used is the same as the number of available vCPUs.</p> </li> <li> <p> <code>OVERSUBSCRIBE</code> –   The number of threads used is the number of available vCPUs multiplied by 2. If this value is used, the bulk loader takes up all available resources.</p> <p>This does not mean, however, that the <code>OVERSUBSCRIBE</code> setting results in 100% CPU utilization. Because the load operation is I/O bound, the highest CPU utilization to expect is in the 60% to 70% range.</p> </li> </ul> <p> <i>Default value</i>: <code>HIGH</code> </p> <p>The <code>parallelism</code> setting can sometimes result in a deadlock between threads when loading openCypher data. When this happens, Neptune returns the <code>LOAD_DATA_DEADLOCK</code> error. You can generally fix the issue by setting <code>parallelism</code> to a lower setting and retrying the load command.</p>
    # @option params [Hash<String, String>] :parser_configuration
    #   <p> <b> <code>parserConfiguration</code> </b>   –   An optional object with additional parser configuration values. Each of the child parameters is also optional:</p> <p class="title"> <b/> </p> <ul> <li> <p> <b> <code>namedGraphUri</code> </b>   –   The default graph for all RDF formats when no graph is specified (for non-quads formats and NQUAD entries with no graph).</p> <p>The default is <code>https://aws.amazon.com/neptune/vocab/v01/DefaultNamedGraph</code>.</p> </li> <li> <p> <b> <code>baseUri</code> </b>   –   The base URI for RDF/XML and Turtle formats.</p> <p>The default is <code>https://aws.amazon.com/neptune/default</code>.</p> </li> <li> <p> <b> <code>allowEmptyStrings</code> </b>   –   Gremlin users need to be able to pass empty string values("") as node and edge properties when loading CSV data. If <code>allowEmptyStrings</code> is set to <code>false</code> (the default), such empty strings are treated as nulls and are not loaded.</p> <p>If <code>allowEmptyStrings</code> is set to <code>true</code>, the loader treats empty strings as valid property values and loads them accordingly.</p> </li> </ul>
    # @option params [Boolean] :update_single_cardinality_properties
    #   <p> <code>updateSingleCardinalityProperties</code> is an optional parameter that controls how the bulk loader treats a new value for single-cardinality vertex or edge properties. This is not supported for loading openCypher data.</p> <p> <i>Allowed values</i>: <code>"TRUE"</code>, <code>"FALSE"</code>.</p> <p> <i>Default value</i>: <code>"FALSE"</code>.</p> <p>By default, or when <code>updateSingleCardinalityProperties</code> is explicitly set to <code>"FALSE"</code>, the loader treats a new value as an error, because it violates single cardinality.</p> <p>When <code>updateSingleCardinalityProperties</code> is set to <code>"TRUE"</code>, on the other hand, the bulk loader replaces the existing value with the new one. If multiple edge or single-cardinality vertex property values are provided in the source file(s) being loaded, the final value at the end of the bulk load could be any one of those new values. The loader only guarantees that the existing value has been replaced by one of the new ones.</p>
    # @option params [Boolean] :queue_request
    #   <p>This is an optional flag parameter that indicates whether the load request can be queued up or not. </p> <p>You don't have to wait for one load job to complete before issuing the next one, because Neptune can queue up as many as 64 jobs at a time, provided that their <code>queueRequest</code> parameters are all set to <code>"TRUE"</code>. The queue order of the jobs will be first-in-first-out (FIFO).</p> <p>If the <code>queueRequest</code> parameter is omitted or set to <code>"FALSE"</code>, the load request will fail if another load job is already running.</p> <p> <i>Allowed values</i>: <code>"TRUE"</code>, <code>"FALSE"</code>.</p> <p> <i>Default value</i>: <code>"FALSE"</code>.</p>
    # @option params [Array<String>] :dependencies
    #   <p>This is an optional parameter that can make a queued load request contingent on the successful completion of one or more previous jobs in the queue.</p> <p>Neptune can queue up as many as 64 load requests at a time, if their <code>queueRequest</code> parameters are set to <code>"TRUE"</code>. The <code>dependencies</code> parameter lets you make execution of such a queued request dependent on the successful completion of one or more specified previous requests in the queue.</p> <p>For example, if load <code>Job-A</code> and <code>Job-B</code> are independent of each other, but load <code>Job-C</code> needs <code>Job-A</code> and <code>Job-B</code> to be finished before it begins, proceed as follows:</p> <ol> <li> <p>Submit <code>load-job-A</code> and <code>load-job-B</code> one after another in any order, and save their load-ids.</p> </li> <li> <p>Submit <code>load-job-C</code> with the load-ids of the two jobs in its <code>dependencies</code> field:</p> </li> </ol> <p>Because of the <code>dependencies</code> parameter, the bulk loader will not start <code>Job-C</code> until <code>Job-A</code> and <code>Job-B</code> have completed successfully. If either one of them fails, Job-C will not be executed, and its status will be set to <code>LOAD_FAILED_BECAUSE_DEPENDENCY_NOT_SATISFIED</code>.</p> <p>You can set up multiple levels of dependency in this way, so that the failure of one job will cause all requests that are directly or indirectly dependent on it to be cancelled.</p>
    # @option params [Boolean] :user_provided_edge_ids
    #   <p>This parameter is required only when loading openCypher data that contains relationship IDs. It must be included and set to <code>True</code> when openCypher relationship IDs are explicitly provided in the load data (recommended).</p> <p>When <code>userProvidedEdgeIds</code> is absent or set to <code>True</code>, an <code>:ID</code> column must be present in every relationship file in the load.</p> <p>When <code>userProvidedEdgeIds</code> is present and set to <code>False</code>, relationship files in the load <b>must not</b> contain an <code>:ID</code> column. Instead, the Neptune loader automatically generates an ID for each relationship.</p> <p>It's useful to provide relationship IDs explicitly so that the loader can resume loading after error in the CSV data have been fixed, without having to reload any relationships that have already been loaded. If relationship IDs have not been explicitly assigned, the loader cannot resume a failed load if any relationship file has had to be corrected, and must instead reload all the relationships.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source: "String", # required
    #     format: "csv" # One of: ["csv", "opencypher", "ntriples", "nquads", "rdfxml", "turtle"], # required
    #     s3_bucket_region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-1", "us-west-2", "ca-central-1", "sa-east-1", "eu-north-1", "eu-west-1", "eu-west-2", "eu-west-3", "eu-central-1", "me-south-1", "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-southeast-1", "ap-southeast-2", "ap-south-1", "cn-north-1", "cn-northwest-1", "us-gov-west-1", "us-gov-east-1", "ca-west-1", "eu-south-2", "il-central-1", "me-central-1", "ap-northeast-3", "ap-southeast-3", "ap-southeast-4", "ap-southeast-5", "ap-southeast-7", "mx-central-1", "ap-east-2", "ap-south-2", "eu-central-2"], # required
    #     iam_role_arn: "String", # required
    #     mode: "RESUME" # One of: ["RESUME", "NEW", "AUTO"],
    #     fail_on_error: false,
    #     parallelism: "LOW" # One of: ["LOW", "MEDIUM", "HIGH", "OVERSUBSCRIBE"],
    #     parser_configuration: {
    #       "String" => "String"
    #     },
    #     update_single_cardinality_properties: false,
    #     queue_request: false,
    #     dependencies: ["String"],
    #     user_provided_edge_ids: false
    #   }
    #   options = {}
    #   response = client.start_loader_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "String", # required
    #     payload: { # required
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::StartLoaderJobOutput]
    def start_loader_job(params = {}, options = {})
      request = build_request(:start_loader_job, params)
      request.send_request(options)
    end

    # <p>Creates a new Neptune ML data processing job for processing the graph data exported from Neptune for training. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html">The <code>dataprocessing</code> command</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeldataprocessingjob">neptune-db:StartMLModelDataProcessingJob</a> IAM action in that cluster.</p>
    # @param [Hash, Types::StartMLDataProcessingJobInput] params
    # @option params [String] :id
    #   <p>A unique identifier for the new job. The default is an autogenerated UUID.</p>
    # @option params [String] :previous_data_processing_job_id
    #   <p>The job ID of a completed data processing job run on an earlier version of the data.</p>
    # @option params [String] :input_data_s3_location
    #   <p>The URI of the Amazon S3 location where you want SageMaker to download the data needed to run the data processing job.</p>
    # @option params [String] :processed_data_s3_location
    #   <p>The URI of the Amazon S3 location where you want SageMaker to save the results of a data processing job.</p>
    # @option params [String] :sagemaker_iam_role_arn
    #   <p>The ARN of an IAM role for SageMaker execution. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that SageMaker can assume to perform tasks on your behalf. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @option params [String] :processing_instance_type
    #   <p>The type of ML instance used during data processing. Its memory should be large enough to hold the processed dataset. The default is the smallest ml.r5 type whose memory is ten times larger than the size of the exported graph data on disk.</p>
    # @option params [Integer] :processing_instance_volume_size_in_gb
    #   <p>The disk volume size of the processing instance. Both input data and processed data are stored on disk, so the volume size must be large enough to hold both data sets. The default is 0. If not specified or 0, Neptune ML chooses the volume size automatically based on the data size.</p>
    # @option params [Integer] :processing_time_out_in_seconds
    #   <p>Timeout in seconds for the data processing job. The default is 86,400 (1 day).</p>
    # @option params [String] :model_type
    #   <p>One of the two model types that Neptune ML currently supports: heterogeneous graph models (<code>heterogeneous</code>), and knowledge graph (<code>kge</code>). The default is none. If not specified, Neptune ML chooses the model type automatically based on the data.</p>
    # @option params [String] :config_file_name
    #   <p>A data specification file that describes how to load the exported graph data for training. The file is automatically generated by the Neptune export toolkit. The default is <code>training-data-configuration.json</code>.</p>
    # @option params [Array<String>] :subnets
    #   <p>The IDs of the subnets in the Neptune VPC. The default is None.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The VPC security group IDs. The default is None.</p>
    # @option params [String] :volume_encryption_kms_key
    #   <p>The Amazon Key Management Service (Amazon KMS) key that SageMaker uses to encrypt data on the storage volume attached to the ML compute instances that run the training job. The default is None.</p>
    # @option params [String] :s3_output_encryption_kms_key
    #   <p>The Amazon Key Management Service (Amazon KMS) key that SageMaker uses to encrypt the output of the processing job. The default is none.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String",
    #     previous_data_processing_job_id: "String",
    #     input_data_s3_location: "String", # required
    #     processed_data_s3_location: "String", # required
    #     sagemaker_iam_role_arn: "String",
    #     neptune_iam_role_arn: "String",
    #     processing_instance_type: "String",
    #     processing_instance_volume_size_in_gb: 1,
    #     processing_time_out_in_seconds: 1,
    #     model_type: "String",
    #     config_file_name: "String",
    #     subnets: ["String"],
    #     security_group_ids: ["String"],
    #     volume_encryption_kms_key: "String",
    #     s3_output_encryption_kms_key: "String"
    #   }
    #   options = {}
    #   response = client.start_ml_data_processing_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     arn: "String",
    #     creation_time_in_millis: 1
    #   }
    # @return [Types::StartMLDataProcessingJobOutput]
    def start_ml_data_processing_job(params = {}, options = {})
      request = build_request(:start_ml_data_processing_job, params)
      request.send_request(options)
    end

    # <p>Creates a new Neptune ML model training job. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html">Model training using the <code>modeltraining</code> command</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeltrainingjob">neptune-db:StartMLModelTrainingJob</a> IAM action in that cluster.</p>
    # @param [Hash, Types::StartMLModelTrainingJobInput] params
    # @option params [String] :id
    #   <p>A unique identifier for the new job. The default is An autogenerated UUID.</p>
    # @option params [String] :previous_model_training_job_id
    #   <p>The job ID of a completed model-training job that you want to update incrementally based on updated data.</p>
    # @option params [String] :data_processing_job_id
    #   <p>The job ID of the completed data-processing job that has created the data that the training will work with.</p>
    # @option params [String] :train_model_s3_location
    #   <p>The location in Amazon S3 where the model artifacts are to be stored.</p>
    # @option params [String] :sagemaker_iam_role_arn
    #   <p>The ARN of an IAM role for SageMaker execution.This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @option params [String] :base_processing_instance_type
    #   <p>The type of ML instance used in preparing and managing training of ML models. This is a CPU instance chosen based on memory requirements for processing the training data and model.</p>
    # @option params [String] :training_instance_type
    #   <p>The type of ML instance used for model training. All Neptune ML models support CPU, GPU, and multiGPU training. The default is <code>ml.p3.2xlarge</code>. Choosing the right instance type for training depends on the task type, graph size, and your budget.</p>
    # @option params [Integer] :training_instance_volume_size_in_gb
    #   <p>The disk volume size of the training instance. Both input data and the output model are stored on disk, so the volume size must be large enough to hold both data sets. The default is 0. If not specified or 0, Neptune ML selects a disk volume size based on the recommendation generated in the data processing step.</p>
    # @option params [Integer] :training_time_out_in_seconds
    #   <p>Timeout in seconds for the training job. The default is 86,400 (1 day).</p>
    # @option params [Integer] :max_hpo_number_of_training_jobs
    #   <p>Maximum total number of training jobs to start for the hyperparameter tuning job. The default is 2. Neptune ML automatically tunes the hyperparameters of the machine learning model. To obtain a model that performs well, use at least 10 jobs (in other words, set <code>maxHPONumberOfTrainingJobs</code> to 10). In general, the more tuning runs, the better the results.</p>
    # @option params [Integer] :max_hpo_parallel_training_jobs
    #   <p>Maximum number of parallel training jobs to start for the hyperparameter tuning job. The default is 2. The number of parallel jobs you can run is limited by the available resources on your training instance.</p>
    # @option params [Array<String>] :subnets
    #   <p>The IDs of the subnets in the Neptune VPC. The default is None.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The VPC security group IDs. The default is None.</p>
    # @option params [String] :volume_encryption_kms_key
    #   <p>The Amazon Key Management Service (KMS) key that SageMaker uses to encrypt data on the storage volume attached to the ML compute instances that run the training job. The default is None.</p>
    # @option params [String] :s3_output_encryption_kms_key
    #   <p>The Amazon Key Management Service (KMS) key that SageMaker uses to encrypt the output of the processing job. The default is none.</p>
    # @option params [Boolean] :enable_managed_spot_training
    #   <p>Optimizes the cost of training machine-learning models by using Amazon Elastic Compute Cloud spot instances. The default is <code>False</code>.</p>
    # @option params [Types::CustomModelTrainingParameters] :custom_model_training_parameters
    #   <p>The configuration for custom model training. This is a JSON object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String",
    #     previous_model_training_job_id: "String",
    #     data_processing_job_id: "String", # required
    #     train_model_s3_location: "String", # required
    #     sagemaker_iam_role_arn: "String",
    #     neptune_iam_role_arn: "String",
    #     base_processing_instance_type: "String",
    #     training_instance_type: "String",
    #     training_instance_volume_size_in_gb: 1,
    #     training_time_out_in_seconds: 1,
    #     max_hpo_number_of_training_jobs: 1,
    #     max_hpo_parallel_training_jobs: 1,
    #     subnets: ["String"],
    #     security_group_ids: ["String"],
    #     volume_encryption_kms_key: "String",
    #     s3_output_encryption_kms_key: "String",
    #     enable_managed_spot_training: false,
    #     custom_model_training_parameters: {
    #       source_s3_directory_path: "String", # required
    #       training_entry_point_script: "String",
    #       transform_entry_point_script: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.start_ml_model_training_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     arn: "String",
    #     creation_time_in_millis: 1
    #   }
    # @return [Types::StartMLModelTrainingJobOutput]
    def start_ml_model_training_job(params = {}, options = {})
      request = build_request(:start_ml_model_training_job, params)
      request.send_request(options)
    end

    # <p>Creates a new model transform job. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html">Use a trained model to generate new model artifacts</a>.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeltransformjob">neptune-db:StartMLModelTransformJob</a> IAM action in that cluster.</p>
    # @param [Hash, Types::StartMLModelTransformJobInput] params
    # @option params [String] :id
    #   <p>A unique identifier for the new job. The default is an autogenerated UUID.</p>
    # @option params [String] :data_processing_job_id
    #   <p>The job ID of a completed data-processing job. You must include either <code>dataProcessingJobId</code> and a <code>mlModelTrainingJobId</code>, or a <code>trainingJobName</code>.</p>
    # @option params [String] :ml_model_training_job_id
    #   <p>The job ID of a completed model-training job. You must include either <code>dataProcessingJobId</code> and a <code>mlModelTrainingJobId</code>, or a <code>trainingJobName</code>.</p>
    # @option params [String] :training_job_name
    #   <p>The name of a completed SageMaker training job. You must include either <code>dataProcessingJobId</code> and a <code>mlModelTrainingJobId</code>, or a <code>trainingJobName</code>.</p>
    # @option params [String] :model_transform_output_s3_location
    #   <p>The location in Amazon S3 where the model artifacts are to be stored.</p>
    # @option params [String] :sagemaker_iam_role_arn
    #   <p>The ARN of an IAM role for SageMaker execution. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @option params [String] :neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    # @option params [Types::CustomModelTransformParameters] :custom_model_transform_parameters
    #   <p>Configuration information for a model transform using a custom model. The <code>customModelTransformParameters</code> object contains the following fields, which must have values compatible with the saved model parameters from the training job:</p>
    # @option params [String] :base_processing_instance_type
    #   <p>The type of ML instance used in preparing and managing training of ML models. This is an ML compute instance chosen based on memory requirements for processing the training data and model.</p>
    # @option params [Integer] :base_processing_instance_volume_size_in_gb
    #   <p>The disk volume size of the training instance in gigabytes. The default is 0. Both input data and the output model are stored on disk, so the volume size must be large enough to hold both data sets. If not specified or 0, Neptune ML selects a disk volume size based on the recommendation generated in the data processing step.</p>
    # @option params [Array<String>] :subnets
    #   <p>The IDs of the subnets in the Neptune VPC. The default is None.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The VPC security group IDs. The default is None.</p>
    # @option params [String] :volume_encryption_kms_key
    #   <p>The Amazon Key Management Service (KMS) key that SageMaker uses to encrypt data on the storage volume attached to the ML compute instances that run the training job. The default is None.</p>
    # @option params [String] :s3_output_encryption_kms_key
    #   <p>The Amazon Key Management Service (KMS) key that SageMaker uses to encrypt the output of the processing job. The default is none.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "String",
    #     data_processing_job_id: "String",
    #     ml_model_training_job_id: "String",
    #     training_job_name: "String",
    #     model_transform_output_s3_location: "String", # required
    #     sagemaker_iam_role_arn: "String",
    #     neptune_iam_role_arn: "String",
    #     custom_model_transform_parameters: {
    #       source_s3_directory_path: "String", # required
    #       transform_entry_point_script: "String"
    #     },
    #     base_processing_instance_type: "String",
    #     base_processing_instance_volume_size_in_gb: 1,
    #     subnets: ["String"],
    #     security_group_ids: ["String"],
    #     volume_encryption_kms_key: "String",
    #     s3_output_encryption_kms_key: "String"
    #   }
    #   options = {}
    #   response = client.start_ml_model_transform_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "String",
    #     arn: "String",
    #     creation_time_in_millis: 1
    #   }
    # @return [Types::StartMLModelTransformJobOutput]
    def start_ml_model_transform_job(params = {}, options = {})
      request = build_request(:start_ml_model_transform_job, params)
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
      context[:gem_name] = 'aws-sdk-neptunedata'
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
