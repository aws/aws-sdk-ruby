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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc'

module Aws::FraudDetector
  # An API client for Aws::FraudDetector.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSHawksNestServiceFacade

    add_plugin(::Aws::FraudDetector::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpc)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::FraudDetector::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates a batch of variables.</p>
    # @param [Hash, Types::BatchCreateVariableRequest] params
    # @option params [Array<Types::VariableEntry>] :variable_entries
    #   <p>The list of variables for the batch create variable request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     variable_entries: [ # required
    #       {
    #         name: "string",
    #         data_type: "string",
    #         data_source: "string",
    #         default_value: "string",
    #         description: "string",
    #         variable_type: "string"
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_create_variable(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     errors: [
    #       {
    #         name: "string",
    #         code: 1,
    #         message: "string"
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateVariableResult]
    def batch_create_variable(params = {}, options = {})
      request = build_request(:batch_create_variable, params)
      request.send_request(options)
    end

    # <p>Gets a batch of variables.</p>
    # @param [Hash, Types::BatchGetVariableRequest] params
    # @option params [Array<String>] :names
    #   <p>The list of variable names to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     names: ["string"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_variable(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     variables: [
    #       {
    #         name: "string",
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "FLOAT", "BOOLEAN", "DATETIME"],
    #         data_source: "EVENT" # One of: ["EVENT", "MODEL_SCORE", "EXTERNAL_MODEL_SCORE"],
    #         default_value: "string",
    #         description: "string",
    #         variable_type: "string",
    #         last_updated_time: "time",
    #         created_time: "time",
    #         arn: "fraudDetectorArn"
    #       }
    #     ],
    #     errors: [
    #       {
    #         name: "string",
    #         code: 1,
    #         message: "string"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetVariableResult]
    def batch_get_variable(params = {}, options = {})
      request = build_request(:batch_get_variable, params)
      request.send_request(options)
    end

    # <p> Cancels an in-progress batch import job.</p>
    # @param [Hash, Types::CancelBatchImportJobRequest] params
    # @option params [String] :job_id
    #   <p> The ID of an in-progress batch import job to cancel. </p>
    #            <p>Amazon Fraud Detector will throw an error if the batch import job is in <code>FAILED</code>, <code>CANCELED</code>, or  <code>COMPLETED</code> state.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "identifier", # required
    #   }
    #   options = {}
    #   response = client.cancel_batch_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelBatchImportJobResult]
    def cancel_batch_import_job(params = {}, options = {})
      request = build_request(:cancel_batch_import_job, params)
      request.send_request(options)
    end

    # <p>Cancels the specified batch prediction job.</p>
    # @param [Hash, Types::CancelBatchPredictionJobRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the batch prediction job to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "identifier", # required
    #   }
    #   options = {}
    #   response = client.cancel_batch_prediction_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelBatchPredictionJobResult]
    def cancel_batch_prediction_job(params = {}, options = {})
      request = build_request(:cancel_batch_prediction_job, params)
      request.send_request(options)
    end

    # <p>Creates a batch import job. </p>
    # @param [Hash, Types::CreateBatchImportJobRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the batch import job. The ID cannot be of a past job, unless the job exists in <code>CREATE_FAILED</code> state.</p>
    # @option params [String] :input_path
    #   <p>The URI that points to the Amazon S3 location of your data file.</p>
    # @option params [String] :output_path
    #   <p>The URI that points to the Amazon S3 location for storing your results. </p>
    # @option params [String] :event_type_name
    #   <p>The name of the event type.</p>
    # @option params [String] :iam_role_arn
    #   <p>The ARN of the IAM role created for Amazon S3 bucket that holds your data file.</p>
    #            <p>The IAM role must have read permissions to your input S3 bucket and write permissions to your output S3 bucket.
    #            For more information about bucket permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-policies-s3.html">User policy examples</a> in the 
    #            <i>Amazon S3 User Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key-value pairs associated with this request.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "identifier", # required
    #     input_path: "s3BucketLocation", # required
    #     output_path: "s3BucketLocation", # required
    #     event_type_name: "identifier", # required
    #     iam_role_arn: "iamRoleArn", # required
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_batch_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateBatchImportJobResult]
    def create_batch_import_job(params = {}, options = {})
      request = build_request(:create_batch_import_job, params)
      request.send_request(options)
    end

    # <p>Creates a batch prediction job.</p>
    # @param [Hash, Types::CreateBatchPredictionJobRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the batch prediction job.</p>
    # @option params [String] :input_path
    #   <p>The Amazon S3 location of your training file.</p>
    # @option params [String] :output_path
    #   <p>The Amazon S3 location of your output file.</p>
    # @option params [String] :event_type_name
    #   <p>The name of the event type.</p>
    # @option params [String] :detector_name
    #   <p>The name of the detector.</p>
    # @option params [String] :detector_version
    #   <p>The detector version.</p>
    # @option params [String] :iam_role_arn
    #   <p>The ARN of the IAM role to use for this job request.</p>
    #            <p>The IAM Role must have read permissions to your input S3 bucket and write permissions to your output S3 bucket.
    #            For more information about bucket permissions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-policies-s3.html">User policy examples</a> in the 
    #            <i>Amazon S3 User Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "identifier", # required
    #     input_path: "s3BucketLocation", # required
    #     output_path: "s3BucketLocation", # required
    #     event_type_name: "identifier", # required
    #     detector_name: "identifier", # required
    #     detector_version: "wholeNumberVersionString",
    #     iam_role_arn: "iamRoleArn", # required
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_batch_prediction_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateBatchPredictionJobResult]
    def create_batch_prediction_job(params = {}, options = {})
      request = build_request(:create_batch_prediction_job, params)
      request.send_request(options)
    end

    # <p>Creates a detector version. The detector version starts in a <code>DRAFT</code> status.</p>
    # @param [Hash, Types::CreateDetectorVersionRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the detector under which you want to create a new version.</p>
    # @option params [String] :description
    #   <p>The description of the detector version.</p>
    # @option params [Array<String>] :external_model_endpoints
    #   <p>The Amazon Sagemaker model endpoints to include in the detector version.</p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>The rules to include in the detector version.</p>
    # @option params [Array<Types::ModelVersion>] :model_versions
    #   <p>The model versions to include in the detector version.</p>
    # @option params [String] :rule_execution_mode
    #   <p>The rule execution mode for the rules included in the detector version.</p>
    #            <p>You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
    #            <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
    #            <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. </p>
    #            <p>The default behavior is <code>FIRST_MATCHED</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "identifier", # required
    #     description: "description",
    #     external_model_endpoints: ["string"],
    #     rules: [ # required
    #       {
    #         detector_id: "identifier", # required
    #         rule_id: "identifier", # required
    #         rule_version: "wholeNumberVersionString", # required
    #       }
    #     ],
    #     model_versions: [
    #       {
    #         model_id: "modelIdentifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"], # required
    #         model_version_number: "floatVersionString", # required
    #         arn: "fraudDetectorArn"
    #       }
    #     ],
    #     rule_execution_mode: "ALL_MATCHED" # One of: ["ALL_MATCHED", "FIRST_MATCHED"],
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_detector_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector_id: "identifier",
    #     detector_version_id: "wholeNumberVersionString",
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "INACTIVE"]
    #   }
    # @return [Types::CreateDetectorVersionResult]
    def create_detector_version(params = {}, options = {})
      request = build_request(:create_detector_version, params)
      request.send_request(options)
    end

    # <p>
    #             Creates a list. 
    #         </p>
    #          <p>List is a set of input data for a variable in your event dataset. You use the input data in a rule that's associated with your detector. 
    #             For more information, see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/lists.html">Lists</a>.</p>
    # @param [Hash, Types::CreateListRequest] params
    # @option params [String] :name
    #   <p>
    #               The name of the list.
    #           </p>
    # @option params [Array<String>] :elements
    #   <p>
    #               The names of the elements, if providing.  You can also create an empty list and add elements later using the <a href="https://docs.aws.amazon.com/frauddetector/latest/api/API_Updatelist.html">UpdateList</a> API.
    #           </p>
    # @option params [String] :variable_type
    #   <p>
    #               The variable type of the list. You can only assign the variable type with String data type.  For more information, see 
    #               <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable types</a>.
    #           </p>
    # @option params [String] :description
    #   <p>
    #               The description of the list.
    #           </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>
    #               A collection of the key and value pairs.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "noDashIdentifier", # required
    #     elements: ["Elements"],
    #     variable_type: "variableType",
    #     description: "description",
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateListResult]
    def create_list(params = {}, options = {})
      request = build_request(:create_list, params)
      request.send_request(options)
    end

    # <p>Creates a model using the specified model type.</p>
    # @param [Hash, Types::CreateModelRequest] params
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    # @option params [String] :model_type
    #   <p>The model type. </p>
    # @option params [String] :description
    #   <p>The model description. </p>
    # @option params [String] :event_type_name
    #   <p>The name of the event type.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"], # required
    #     description: "description",
    #     event_type_name: "string", # required
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateModelResult]
    def create_model(params = {}, options = {})
      request = build_request(:create_model, params)
      request.send_request(options)
    end

    # <p>Creates a version of the model using the specified model type and model id.
    #         </p>
    # @param [Hash, Types::CreateModelVersionRequest] params
    # @option params [String] :model_id
    #   <p>The model ID. </p>
    # @option params [String] :model_type
    #   <p>The model type.</p>
    # @option params [String] :training_data_source
    #   <p>The training data source location in Amazon S3. </p>
    # @option params [Types::TrainingDataSchema] :training_data_schema
    #   <p>The training data schema.</p>
    # @option params [Types::ExternalEventsDetail] :external_events_detail
    #   <p>Details of the external events data used for model version training. Required if <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>.</p>
    # @option params [Types::IngestedEventsDetail] :ingested_events_detail
    #   <p>Details of the ingested events data used for model version training. Required if <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"], # required
    #     training_data_source: "EXTERNAL_EVENTS" # One of: ["EXTERNAL_EVENTS", "INGESTED_EVENTS"], # required
    #     training_data_schema: { # required
    #       model_variables: ["string"], # required
    #       label_schema: {
    #         label_mapper: {
    #           "string" => ["string"]
    #         },
    #         unlabeled_events_treatment: "IGNORE" # One of: ["IGNORE", "FRAUD", "LEGIT", "AUTO"]
    #       }
    #     },
    #     external_events_detail: {
    #       data_location: "s3BucketLocation", # required
    #       data_access_role_arn: "iamRoleArn", # required
    #     },
    #     ingested_events_detail: {
    #       ingested_events_time_window: { # required
    #         start_time: "time", # required
    #         end_time: "time", # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_model_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_id: "modelIdentifier",
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"],
    #     model_version_number: "floatVersionString",
    #     status: "string"
    #   }
    # @return [Types::CreateModelVersionResult]
    def create_model_version(params = {}, options = {})
      request = build_request(:create_model_version, params)
      request.send_request(options)
    end

    # <p>Creates a rule for use with the specified detector. </p>
    # @param [Hash, Types::CreateRuleRequest] params
    # @option params [String] :rule_id
    #   <p>The rule ID.</p>
    # @option params [String] :detector_id
    #   <p>The detector ID for the rule's parent detector.</p>
    # @option params [String] :description
    #   <p>The rule description.</p>
    # @option params [String] :expression
    #   <p>The rule expression.</p>
    # @option params [String] :language
    #   <p>The language of the rule.</p>
    # @option params [Array<String>] :outcomes
    #   <p>The outcome or outcomes returned when the rule expression matches.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "identifier", # required
    #     detector_id: "identifier", # required
    #     description: "description",
    #     expression: "ruleExpression", # required
    #     language: "DETECTORPL" # One of: ["DETECTORPL"], # required
    #     outcomes: ["string"], # required
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule: {
    #       detector_id: "identifier", # required
    #       rule_id: "identifier", # required
    #       rule_version: "wholeNumberVersionString", # required
    #     }
    #   }
    # @return [Types::CreateRuleResult]
    def create_rule(params = {}, options = {})
      request = build_request(:create_rule, params)
      request.send_request(options)
    end

    # <p>Creates a variable.</p>
    # @param [Hash, Types::CreateVariableRequest] params
    # @option params [String] :name
    #   <p>The name of the variable.</p>
    # @option params [String] :data_type
    #   <p>The data type of the variable.</p>
    # @option params [String] :data_source
    #   <p>The source of the data.</p>
    # @option params [String] :default_value
    #   <p>The default value for the variable when no value is received.</p>
    # @option params [String] :description
    #   <p>The description.</p>
    # @option params [String] :variable_type
    #   <p>The variable type. For more information see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable types</a>.
    #   				</p>
    #            <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT</code>
    #            </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "string", # required
    #     data_type: "STRING" # One of: ["STRING", "INTEGER", "FLOAT", "BOOLEAN", "DATETIME"], # required
    #     data_source: "EVENT" # One of: ["EVENT", "MODEL_SCORE", "EXTERNAL_MODEL_SCORE"], # required
    #     default_value: "string", # required
    #     description: "string",
    #     variable_type: "string",
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_variable(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateVariableResult]
    def create_variable(params = {}, options = {})
      request = build_request(:create_variable, params)
      request.send_request(options)
    end

    # <p>Deletes the specified batch import job ID record. This action does not delete the data that was batch imported.  </p>
    # @param [Hash, Types::DeleteBatchImportJobRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the batch import job to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_batch_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteBatchImportJobResult]
    def delete_batch_import_job(params = {}, options = {})
      request = build_request(:delete_batch_import_job, params)
      request.send_request(options)
    end

    # <p>Deletes a batch prediction job.</p>
    # @param [Hash, Types::DeleteBatchPredictionJobRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the batch prediction job to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_batch_prediction_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteBatchPredictionJobResult]
    def delete_batch_prediction_job(params = {}, options = {})
      request = build_request(:delete_batch_prediction_job, params)
      request.send_request(options)
    end

    # <p>Deletes the detector. Before deleting a detector, you must first delete all detector versions and rule versions associated with the detector.</p>
    #          <p>When you delete a detector, Amazon Fraud Detector permanently deletes the detector and the data is no longer stored in Amazon Fraud Detector.</p>
    # @param [Hash, Types::DeleteDetectorRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the detector to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDetectorResult]
    def delete_detector(params = {}, options = {})
      request = build_request(:delete_detector, params)
      request.send_request(options)
    end

    # <p>Deletes the detector version. You cannot delete detector versions that are in <code>ACTIVE</code> status.</p>
    #          <p>When you delete a detector version, Amazon Fraud Detector permanently deletes the detector and the data is no longer stored in Amazon Fraud Detector.</p>
    # @param [Hash, Types::DeleteDetectorVersionRequest] params
    # @option params [String] :detector_id
    #   <p>The ID of the parent detector for the detector version to delete.</p>
    # @option params [String] :detector_version_id
    #   <p>The ID of the detector version to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "identifier", # required
    #     detector_version_id: "wholeNumberVersionString", # required
    #   }
    #   options = {}
    #   response = client.delete_detector_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDetectorVersionResult]
    def delete_detector_version(params = {}, options = {})
      request = build_request(:delete_detector_version, params)
      request.send_request(options)
    end

    # <p>Deletes an entity type.</p>
    #          <p>You cannot delete an entity type that is included in an event type.</p>
    #          <p>When you delete an entity type, Amazon Fraud Detector permanently deletes that entity type and the data is no longer stored in Amazon Fraud Detector.</p>
    # @param [Hash, Types::DeleteEntityTypeRequest] params
    # @option params [String] :name
    #   <p>The name of the entity type to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_entity_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEntityTypeResult]
    def delete_entity_type(params = {}, options = {})
      request = build_request(:delete_entity_type, params)
      request.send_request(options)
    end

    # <p>Deletes the specified event.</p>
    #          <p>When you delete an event, Amazon Fraud Detector permanently deletes that event and the event data is no longer stored in Amazon Fraud Detector.
    # 	  If <code>deleteAuditHistory</code> is <code>True</code>, event data is available through search for up to 30 seconds after the delete operation is completed.</p>
    # @param [Hash, Types::DeleteEventRequest] params
    # @option params [String] :event_id
    #   <p>The ID of the event to delete.</p>
    # @option params [String] :event_type_name
    #   <p>The name of the event type.</p>
    # @option params [Boolean] :delete_audit_history
    #   <p>Specifies whether or not to delete any predictions associated with the event. If set to <code>True</code>, </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_id: "identifier", # required
    #     event_type_name: "identifier", # required
    #     delete_audit_history: false
    #   }
    #   options = {}
    #   response = client.delete_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEventResult]
    def delete_event(params = {}, options = {})
      request = build_request(:delete_event, params)
      request.send_request(options)
    end

    # <p>Deletes an event type.</p>
    #          <p>You cannot delete an event type that is used in a detector or a model.</p>
    #          <p>When you delete an event type, Amazon Fraud Detector permanently deletes that event type and the data is no longer stored in Amazon Fraud Detector.</p>
    # @param [Hash, Types::DeleteEventTypeRequest] params
    # @option params [String] :name
    #   <p>The name of the event type to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_event_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEventTypeResult]
    def delete_event_type(params = {}, options = {})
      request = build_request(:delete_event_type, params)
      request.send_request(options)
    end

    # <p>Deletes all events of a particular event type.</p>
    # @param [Hash, Types::DeleteEventsByEventTypeRequest] params
    # @option params [String] :event_type_name
    #   <p>The name of the event type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_type_name: "identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_events_by_event_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_type_name: "identifier",
    #     events_deletion_status: "string"
    #   }
    # @return [Types::DeleteEventsByEventTypeResult]
    def delete_events_by_event_type(params = {}, options = {})
      request = build_request(:delete_events_by_event_type, params)
      request.send_request(options)
    end

    # <p>Removes a SageMaker model from Amazon Fraud Detector.</p>
    #          <p>You can remove an Amazon SageMaker model if it is not associated with a detector version. Removing a SageMaker model disconnects it from Amazon Fraud Detector, but the model remains available in SageMaker.</p>
    # @param [Hash, Types::DeleteExternalModelRequest] params
    # @option params [String] :model_endpoint
    #   <p>The endpoint of the Amazon Sagemaker model to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_endpoint: "sageMakerEndpointIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_external_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteExternalModelResult]
    def delete_external_model(params = {}, options = {})
      request = build_request(:delete_external_model, params)
      request.send_request(options)
    end

    # <p>Deletes a label.</p>
    #          <p>You cannot delete labels that are included in an event type in Amazon Fraud Detector.</p>
    #          <p>You cannot delete a label assigned to an event ID. You must first delete the relevant event ID.</p>
    #          <p>When you delete a label, Amazon Fraud Detector permanently deletes that label and the data is no longer stored in Amazon Fraud Detector.</p>
    # @param [Hash, Types::DeleteLabelRequest] params
    # @option params [String] :name
    #   <p>The name of the label to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_label(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLabelResult]
    def delete_label(params = {}, options = {})
      request = build_request(:delete_label, params)
      request.send_request(options)
    end

    # <p>
    #             Deletes the list, provided it is not used in a rule.
    #         </p>
    #          <p> When you delete a list, Amazon Fraud Detector permanently deletes that list and the elements in the list.</p>
    # @param [Hash, Types::DeleteListRequest] params
    # @option params [String] :name
    #   <p>
    #               The name of the list to delete.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "noDashIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteListResult]
    def delete_list(params = {}, options = {})
      request = build_request(:delete_list, params)
      request.send_request(options)
    end

    # <p>Deletes a model.</p>
    #          <p>You can delete models and model versions in Amazon Fraud Detector, provided that they are not associated with a detector version.</p>
    #          <p> When you delete a model, Amazon Fraud Detector permanently deletes that model and the data is no longer stored in Amazon Fraud Detector.</p>
    # @param [Hash, Types::DeleteModelRequest] params
    # @option params [String] :model_id
    #   <p>The model ID of the model to delete.</p>
    # @option params [String] :model_type
    #   <p>The model type of the model to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"], # required
    #   }
    #   options = {}
    #   response = client.delete_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteModelResult]
    def delete_model(params = {}, options = {})
      request = build_request(:delete_model, params)
      request.send_request(options)
    end

    # <p>Deletes a model version.</p>
    #          <p>You can delete models and model versions in Amazon Fraud Detector, provided that they are not associated with a detector version.</p>
    #          <p> When you delete a model version, Amazon Fraud Detector permanently deletes that model version and the data is no longer stored in Amazon Fraud Detector.</p>
    # @param [Hash, Types::DeleteModelVersionRequest] params
    # @option params [String] :model_id
    #   <p>The model ID of the model version to delete.</p>
    # @option params [String] :model_type
    #   <p>The model type of the model version to delete.</p>
    # @option params [String] :model_version_number
    #   <p>The model version number of the model version to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"], # required
    #     model_version_number: "floatVersionString", # required
    #   }
    #   options = {}
    #   response = client.delete_model_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteModelVersionResult]
    def delete_model_version(params = {}, options = {})
      request = build_request(:delete_model_version, params)
      request.send_request(options)
    end

    # <p>Deletes an outcome.</p>
    #          <p>You cannot delete an outcome that is used in a rule version.</p>
    #          <p>When you delete an outcome, Amazon Fraud Detector permanently deletes that outcome and the data is no longer stored in Amazon Fraud Detector.</p>
    # @param [Hash, Types::DeleteOutcomeRequest] params
    # @option params [String] :name
    #   <p>The name of the outcome to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_outcome(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteOutcomeResult]
    def delete_outcome(params = {}, options = {})
      request = build_request(:delete_outcome, params)
      request.send_request(options)
    end

    # <p>Deletes the rule. You cannot delete a rule if it is used by an <code>ACTIVE</code> or <code>INACTIVE</code> detector version.</p>
    #          <p>When you delete a rule, Amazon Fraud Detector permanently deletes that rule and the data is no longer stored in Amazon Fraud Detector.</p>
    # @param [Hash, Types::DeleteRuleRequest] params
    # @option params [Types::Rule] :rule
    #   <p>A rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule: { # required
    #       detector_id: "identifier", # required
    #       rule_id: "identifier", # required
    #       rule_version: "wholeNumberVersionString", # required
    #     }
    #   }
    #   options = {}
    #   response = client.delete_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRuleResult]
    def delete_rule(params = {}, options = {})
      request = build_request(:delete_rule, params)
      request.send_request(options)
    end

    # <p>Deletes a variable.</p>
    #          <p>You can't delete variables that are included in an event type in Amazon Fraud Detector.</p>
    #          <p>Amazon Fraud Detector automatically deletes model output variables and SageMaker model output variables when you delete the model. You can't delete these variables manually.</p>
    #          <p>When you delete a variable, Amazon Fraud Detector permanently deletes that variable and the data is no longer stored in Amazon Fraud Detector.</p>
    # @param [Hash, Types::DeleteVariableRequest] params
    # @option params [String] :name
    #   <p>The name of the variable to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "string", # required
    #   }
    #   options = {}
    #   response = client.delete_variable(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteVariableResult]
    def delete_variable(params = {}, options = {})
      request = build_request(:delete_variable, params)
      request.send_request(options)
    end

    # <p>Gets all versions for a specified detector.</p>
    # @param [Hash, Types::DescribeDetectorRequest] params
    # @option params [String] :detector_id
    #   <p>The detector ID.</p>
    # @option params [String] :next_token
    #   <p>The next token from the previous response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "identifier", # required
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector_id: "identifier",
    #     detector_version_summaries: [
    #       {
    #         detector_version_id: "wholeNumberVersionString",
    #         status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "INACTIVE"],
    #         description: "description",
    #         last_updated_time: "time"
    #       }
    #     ],
    #     next_token: "string",
    #     arn: "fraudDetectorArn"
    #   }
    # @return [Types::DescribeDetectorResult]
    def describe_detector(params = {}, options = {})
      request = build_request(:describe_detector, params)
      request.send_request(options)
    end

    # <p>Gets all of the model versions for the specified model type or for the specified model type and model ID. You can also get details for a single, specified model version. </p>
    # @param [Hash, Types::DescribeModelVersionsRequest] params
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    # @option params [String] :model_version_number
    #   <p>The model version number.</p>
    # @option params [String] :model_type
    #   <p>The model type.</p>
    # @option params [String] :next_token
    #   <p>The next token from the previous results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "modelIdentifier",
    #     model_version_number: "floatVersionString",
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"],
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_model_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_version_details: [
    #       {
    #         model_id: "modelIdentifier",
    #         model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"],
    #         model_version_number: "floatVersionString",
    #         status: "string",
    #         training_data_source: "EXTERNAL_EVENTS" # One of: ["EXTERNAL_EVENTS", "INGESTED_EVENTS"],
    #         training_data_schema: {
    #           model_variables: ["string"], # required
    #           label_schema: {
    #             label_mapper: {
    #               "string" => ["string"]
    #             },
    #             unlabeled_events_treatment: "IGNORE" # One of: ["IGNORE", "FRAUD", "LEGIT", "AUTO"]
    #           }
    #         },
    #         external_events_detail: {
    #           data_location: "s3BucketLocation", # required
    #           data_access_role_arn: "iamRoleArn", # required
    #         },
    #         ingested_events_detail: {
    #           ingested_events_time_window: { # required
    #             start_time: "time", # required
    #             end_time: "time", # required
    #           }
    #         },
    #         training_result: {
    #           data_validation_metrics: {
    #             file_level_messages: [
    #               {
    #                 title: "string",
    #                 content: "string",
    #                 type: "string"
    #               }
    #             ],
    #             field_level_messages: [
    #               {
    #                 field_name: "string",
    #                 identifier: "string",
    #                 title: "string",
    #                 content: "string",
    #                 type: "string"
    #               }
    #             ]
    #           },
    #           training_metrics: {
    #             auc: 1.0,
    #             metric_data_points: [
    #               {
    #                 fpr: 1.0,
    #                 precision: 1.0,
    #                 tpr: 1.0,
    #                 threshold: 1.0
    #               }
    #             ]
    #           },
    #           variable_importance_metrics: {
    #             log_odds_metrics: [
    #               {
    #                 variable_name: "string", # required
    #                 variable_type: "string", # required
    #                 variable_importance: 1.0, # required
    #               }
    #             ]
    #           }
    #         },
    #         last_updated_time: "time",
    #         created_time: "time",
    #         arn: "fraudDetectorArn",
    #         training_result_v2: {
    #           data_validation_metrics: {
    #             file_level_messages: [
    #               {
    #                 title: "string",
    #                 content: "string",
    #                 type: "string"
    #               }
    #             ],
    #             field_level_messages: [
    #               {
    #                 field_name: "string",
    #                 identifier: "string",
    #                 title: "string",
    #                 content: "string",
    #                 type: "string"
    #               }
    #             ]
    #           },
    #           training_metrics_v2: {
    #             ofi: {
    #               metric_data_points: [
    #                 {
    #                   fpr: 1.0,
    #                   precision: 1.0,
    #                   tpr: 1.0,
    #                   threshold: 1.0
    #                 }
    #               ],
    #               model_performance: {
    #                 auc: 1.0,
    #                 uncertainty_range: {
    #                   lower_bound_value: 1.0, # required
    #                   upper_bound_value: 1.0, # required
    #                 }
    #               }
    #             },
    #             tfi: {
    #               metric_data_points: [
    #                 {
    #                   fpr: 1.0,
    #                   precision: 1.0,
    #                   tpr: 1.0,
    #                   threshold: 1.0
    #                 }
    #               ],
    #               model_performance: {
    #                 auc: 1.0,
    #                 uncertainty_range: {
    #                   lower_bound_value: 1.0, # required
    #                   upper_bound_value: 1.0, # required
    #                 }
    #               }
    #             },
    #             ati: {
    #               metric_data_points: [
    #                 {
    #                   cr: 1.0,
    #                   adr: 1.0,
    #                   threshold: 1.0,
    #                   atodr: 1.0
    #                 }
    #               ],
    #               model_performance: {
    #                 asi: 1.0
    #               }
    #             }
    #           },
    #           variable_importance_metrics: {
    #             log_odds_metrics: [
    #               {
    #                 variable_name: "string", # required
    #                 variable_type: "string", # required
    #                 variable_importance: 1.0, # required
    #               }
    #             ]
    #           },
    #           aggregated_variables_importance_metrics: {
    #             log_odds_metrics: [
    #               {
    #                 variable_names: ["string"], # required
    #                 aggregated_variables_importance: 1.0, # required
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::DescribeModelVersionsResult]
    def describe_model_versions(params = {}, options = {})
      request = build_request(:describe_model_versions, params)
      request.send_request(options)
    end

    # <p>Gets all batch import jobs or a specific job of the specified ID. This is a paginated API. If you provide a null <code>maxResults</code>, 
    #          this action retrieves a maximum of 50 records per page. If you provide a <code>maxResults</code>, the value must be between 1 and 50. 
    #          To get the next page results, provide the pagination token from the <code>GetBatchImportJobsResponse</code> as part of your request. 
    #          A null pagination token fetches the records from the beginning.</p>
    # @param [Hash, Types::GetBatchImportJobsRequest] params
    # @option params [String] :job_id
    #   <p>The ID of the batch import job to get.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for request.</p>
    # @option params [String] :next_token
    #   <p>The next token from the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "identifier",
    #     max_results: 1,
    #     next_token: "string"
    #   }
    #   options = {}
    #   response = client.get_batch_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_imports: [
    #       {
    #         job_id: "identifier",
    #         status: "IN_PROGRESS_INITIALIZING" # One of: ["IN_PROGRESS_INITIALIZING", "IN_PROGRESS", "CANCEL_IN_PROGRESS", "CANCELED", "COMPLETE", "FAILED"],
    #         failure_reason: "string",
    #         start_time: "time",
    #         completion_time: "time",
    #         input_path: "s3BucketLocation",
    #         output_path: "s3BucketLocation",
    #         event_type_name: "identifier",
    #         iam_role_arn: "iamRoleArn",
    #         arn: "fraudDetectorArn",
    #         processed_records_count: 1,
    #         failed_records_count: 1,
    #         total_records_count: 1
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::GetBatchImportJobsResult]
    def get_batch_import_jobs(params = {}, options = {})
      request = build_request(:get_batch_import_jobs, params)
      request.send_request(options)
    end

    # <p>Gets all batch prediction jobs or a specific job if you specify a job ID. This is a paginated API. If you provide a null maxResults, this action retrieves a maximum of 50 records per page. If you provide a maxResults, the value must be between 1 and 50. To get the next page results, provide the pagination token from the GetBatchPredictionJobsResponse as part of your request. A null pagination token fetches the records from the beginning.</p>
    # @param [Hash, Types::GetBatchPredictionJobsRequest] params
    # @option params [String] :job_id
    #   <p>The batch prediction job for which to get the details.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request.</p>
    # @option params [String] :next_token
    #   <p>The next token from the previous request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "identifier",
    #     max_results: 1,
    #     next_token: "string"
    #   }
    #   options = {}
    #   response = client.get_batch_prediction_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_predictions: [
    #       {
    #         job_id: "identifier",
    #         status: "IN_PROGRESS_INITIALIZING" # One of: ["IN_PROGRESS_INITIALIZING", "IN_PROGRESS", "CANCEL_IN_PROGRESS", "CANCELED", "COMPLETE", "FAILED"],
    #         failure_reason: "string",
    #         start_time: "time",
    #         completion_time: "time",
    #         last_heartbeat_time: "time",
    #         input_path: "s3BucketLocation",
    #         output_path: "s3BucketLocation",
    #         event_type_name: "identifier",
    #         detector_name: "identifier",
    #         detector_version: "floatVersionString",
    #         iam_role_arn: "iamRoleArn",
    #         arn: "fraudDetectorArn",
    #         processed_records_count: 1,
    #         total_records_count: 1
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::GetBatchPredictionJobsResult]
    def get_batch_prediction_jobs(params = {}, options = {})
      request = build_request(:get_batch_prediction_jobs, params)
      request.send_request(options)
    end

    # <p>Retrieves the status of a <code>DeleteEventsByEventType</code> action.</p>
    # @param [Hash, Types::GetDeleteEventsByEventTypeStatusRequest] params
    # @option params [String] :event_type_name
    #   <p>Name of event type for which to get the deletion status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_type_name: "identifier", # required
    #   }
    #   options = {}
    #   response = client.get_delete_events_by_event_type_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_type_name: "identifier",
    #     events_deletion_status: "IN_PROGRESS_INITIALIZING" # One of: ["IN_PROGRESS_INITIALIZING", "IN_PROGRESS", "CANCEL_IN_PROGRESS", "CANCELED", "COMPLETE", "FAILED"]
    #   }
    # @return [Types::GetDeleteEventsByEventTypeStatusResult]
    def get_delete_events_by_event_type_status(params = {}, options = {})
      request = build_request(:get_delete_events_by_event_type_status, params)
      request.send_request(options)
    end

    # <p>Gets a particular detector version. </p>
    # @param [Hash, Types::GetDetectorVersionRequest] params
    # @option params [String] :detector_id
    #   <p>The detector ID.</p>
    # @option params [String] :detector_version_id
    #   <p>The detector version ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "identifier", # required
    #     detector_version_id: "wholeNumberVersionString", # required
    #   }
    #   options = {}
    #   response = client.get_detector_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector_id: "identifier",
    #     detector_version_id: "wholeNumberVersionString",
    #     description: "description",
    #     external_model_endpoints: ["string"],
    #     model_versions: [
    #       {
    #         model_id: "modelIdentifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"], # required
    #         model_version_number: "floatVersionString", # required
    #         arn: "fraudDetectorArn"
    #       }
    #     ],
    #     rules: [
    #       {
    #         detector_id: "identifier", # required
    #         rule_id: "identifier", # required
    #         rule_version: "wholeNumberVersionString", # required
    #       }
    #     ],
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "INACTIVE"],
    #     last_updated_time: "time",
    #     created_time: "time",
    #     rule_execution_mode: "ALL_MATCHED" # One of: ["ALL_MATCHED", "FIRST_MATCHED"],
    #     arn: "fraudDetectorArn"
    #   }
    # @return [Types::GetDetectorVersionResult]
    def get_detector_version(params = {}, options = {})
      request = build_request(:get_detector_version, params)
      request.send_request(options)
    end

    # <p>Gets all detectors or a single detector if a <code>detectorId</code> is specified. This is a paginated API. If you
    #          provide a null <code>maxResults</code>, this action retrieves a maximum of 10 records
    #          per page. If you provide a <code>maxResults</code>, the value must be between 5 and 10.
    #          To get the next page results, provide the pagination token from the
    #             <code>GetDetectorsResponse</code> as part of your request. A null pagination token
    #          fetches the records from the beginning. </p>
    # @param [Hash, Types::GetDetectorsRequest] params
    # @option params [String] :detector_id
    #   <p>The detector ID.</p>
    # @option params [String] :next_token
    #   <p>The next token for the subsequent request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "identifier",
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_detectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detectors: [
    #       {
    #         detector_id: "identifier",
    #         description: "description",
    #         event_type_name: "identifier",
    #         last_updated_time: "time",
    #         created_time: "time",
    #         arn: "fraudDetectorArn"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::GetDetectorsResult]
    def get_detectors(params = {}, options = {})
      request = build_request(:get_detectors, params)
      request.send_request(options)
    end

    # <p>Gets all entity types or a specific entity type if a name is specified. This is a paginated API. If you
    #          provide a null <code>maxResults</code>, this action retrieves a maximum of 10 records
    #          per page. If you provide a <code>maxResults</code>, the value must be between 5 and 10.
    #          To get the next page results, provide the pagination token from the
    #          <code>GetEntityTypesResponse</code> as part of your request. A null pagination token
    #          fetches the records from the beginning. </p>
    # @param [Hash, Types::GetEntityTypesRequest] params
    # @option params [String] :name
    #   <p>The name.</p>
    # @option params [String] :next_token
    #   <p>The next token for the subsequent request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "identifier",
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_entity_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     entity_types: [
    #       {
    #         name: "string",
    #         description: "description",
    #         last_updated_time: "time",
    #         created_time: "time",
    #         arn: "fraudDetectorArn"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::GetEntityTypesResult]
    def get_entity_types(params = {}, options = {})
      request = build_request(:get_entity_types, params)
      request.send_request(options)
    end

    # <p>Retrieves details of events stored with Amazon Fraud Detector. This action does not retrieve prediction results.</p>
    # @param [Hash, Types::GetEventRequest] params
    # @option params [String] :event_id
    #   <p>The ID of the event to retrieve.</p>
    # @option params [String] :event_type_name
    #   <p>The event type of the event to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_id: "string", # required
    #     event_type_name: "string", # required
    #   }
    #   options = {}
    #   response = client.get_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event: {
    #       event_id: "string",
    #       event_type_name: "string",
    #       event_timestamp: "string",
    #       event_variables: {
    #         "attributeKey" => "attributeValue"
    #       },
    #       current_label: "string",
    #       label_timestamp: "string",
    #       entities: [
    #         {
    #           entity_type: "string", # required
    #           entity_id: "entityRestrictedString", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetEventResult]
    def get_event(params = {}, options = {})
      request = build_request(:get_event, params)
      request.send_request(options)
    end

    # <p>Evaluates an event against a detector version. If a version ID is not provided, the detector’s (<code>ACTIVE</code>) version is used.</p>
    # @param [Hash, Types::GetEventPredictionRequest] params
    # @option params [String] :detector_id
    #   <p>The detector ID.</p>
    # @option params [String] :detector_version_id
    #   <p>The detector version ID.</p>
    # @option params [String] :event_id
    #   <p>The unique ID used to identify the event.</p>
    # @option params [String] :event_type_name
    #   <p>The event type associated with the detector specified for the prediction.</p>
    # @option params [Array<Types::Entity>] :entities
    #   <p>The entity type (associated with the detector's event type) and specific entity ID representing who performed the event. If an entity id is not available, use "UNKNOWN."</p>
    # @option params [String] :event_timestamp
    #   <p>Timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    # @option params [Hash<String, String>] :event_variables
    #   <p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and 
    #            their corresponding values for the event you are sending for evaluation.</p>
    #            <important>
    #               <p>You must provide at least one eventVariable</p>
    #            </important>
    #            <p>To ensure most accurate fraud prediction and to simplify your data preparation, Amazon Fraud Detector will replace all missing variables or values as follows:</p>
    #            <p>
    #               <b>For Amazon Fraud Detector trained models:</b>
    #            </p>
    #            <p>If a null value is provided explicitly for a variable or if a variable is missing, model will replace the null value or the missing variable (no variable name in the eventVariables map) 
    #            with calculated default mean/medians for numeric variables and with special values for categorical variables.</p>
    #            <p>
    #               <b>For imported SageMaker models:</b>
    #            </p>
    #            <p>If a null value is provided explicitly for a variable, the model and rules will use “null” as the value. If a variable is not provided (no variable name in the eventVariables map), model and rules 
    #            will use the default value that is provided for the variable. </p>
    # @option params [Hash<String, Types::ModelEndpointDataBlob>] :external_model_endpoint_data_blobs
    #   <p>The Amazon SageMaker model endpoint input data blobs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "string", # required
    #     detector_version_id: "wholeNumberVersionString",
    #     event_id: "string", # required
    #     event_type_name: "string", # required
    #     entities: [ # required
    #       {
    #         entity_type: "string", # required
    #         entity_id: "entityRestrictedString", # required
    #       }
    #     ],
    #     event_timestamp: "utcTimestampISO8601", # required
    #     event_variables: { # required
    #       "variableName" => "variableValue"
    #     },
    #     external_model_endpoint_data_blobs: {
    #       "sageMakerEndpointIdentifier" => {
    #         byte_buffer: "data",
    #         content_type: "contentType"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_event_prediction(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_scores: [
    #       {
    #         model_version: {
    #           model_id: "modelIdentifier", # required
    #           model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"], # required
    #           model_version_number: "floatVersionString", # required
    #           arn: "fraudDetectorArn"
    #         },
    #         scores: {
    #           "string" => 1.0
    #         }
    #       }
    #     ],
    #     rule_results: [
    #       {
    #         rule_id: "string",
    #         outcomes: ["string"]
    #       }
    #     ],
    #     external_model_outputs: [
    #       {
    #         external_model: {
    #           model_endpoint: "string",
    #           model_source: "SAGEMAKER" # One of: ["SAGEMAKER"]
    #         },
    #         outputs: {
    #           "string" => "string"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetEventPredictionResult]
    def get_event_prediction(params = {}, options = {})
      request = build_request(:get_event_prediction, params)
      request.send_request(options)
    end

    # <p>
    # Gets details of the past fraud predictions for the specified event ID, event type, detector ID, and detector version ID that was generated in the specified time period.
    # </p>
    # @param [Hash, Types::GetEventPredictionMetadataRequest] params
    # @option params [String] :event_id
    #   <p>
    #   The event ID.
    #   </p>
    # @option params [String] :event_type_name
    #   <p>
    #   The event type associated with the detector specified for the prediction.
    #   </p>
    # @option params [String] :detector_id
    #   <p>
    #   The detector ID.
    #   </p>
    # @option params [String] :detector_version_id
    #   <p>
    #   The detector version ID.
    #   </p>
    # @option params [String] :prediction_timestamp
    #   <p>
    #       The timestamp that defines when the prediction was generated. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    #            <p>We recommend calling <a href="https://docs.aws.amazon.com/frauddetector/latest/api/API_ListEventPredictions.html">ListEventPredictions</a>
    #           first, and using the <code>predictionTimestamp</code> value in the response to provide an accurate prediction timestamp value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_id: "identifier", # required
    #     event_type_name: "identifier", # required
    #     detector_id: "identifier", # required
    #     detector_version_id: "wholeNumberVersionString", # required
    #     prediction_timestamp: "time", # required
    #   }
    #   options = {}
    #   response = client.get_event_prediction_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_id: "identifier",
    #     event_type_name: "identifier",
    #     entity_id: "string",
    #     entity_type: "string",
    #     event_timestamp: "time",
    #     detector_id: "identifier",
    #     detector_version_id: "wholeNumberVersionString",
    #     detector_version_status: "string",
    #     event_variables: [
    #       {
    #         name: "sensitiveString",
    #         value: "sensitiveString",
    #         source: "sensitiveString"
    #       }
    #     ],
    #     rules: [
    #       {
    #         rule_id: "identifier",
    #         rule_version: "wholeNumberVersionString",
    #         expression: "sensitiveString",
    #         expression_with_values: "sensitiveString",
    #         outcomes: ["string"],
    #         evaluated: false,
    #         matched: false
    #       }
    #     ],
    #     rule_execution_mode: "ALL_MATCHED" # One of: ["ALL_MATCHED", "FIRST_MATCHED"],
    #     outcomes: ["string"],
    #     evaluated_model_versions: [
    #       {
    #         model_id: "string",
    #         model_version: "string",
    #         model_type: "string",
    #         evaluations: [
    #           {
    #             output_variable_name: "string",
    #             evaluation_score: "string",
    #             prediction_explanations: {
    #               variable_impact_explanations: [
    #                 {
    #                   event_variable_name: "string",
    #                   relative_impact: "string",
    #                   log_odds_impact: 1.0
    #                 }
    #               ],
    #               aggregated_variables_impact_explanations: [
    #                 {
    #                   event_variable_names: ["string"],
    #                   relative_impact: "string",
    #                   log_odds_impact: 1.0
    #                 }
    #               ]
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     evaluated_external_models: [
    #       {
    #         model_endpoint: "string",
    #         use_event_variables: false,
    #         input_variables: {
    #           "string" => "string"
    #         },
    #         output_variables: {
    #           "string" => "string"
    #         }
    #       }
    #     ],
    #     prediction_timestamp: "time"
    #   }
    # @return [Types::GetEventPredictionMetadataResult]
    def get_event_prediction_metadata(params = {}, options = {})
      request = build_request(:get_event_prediction_metadata, params)
      request.send_request(options)
    end

    # <p>Gets all event types or a specific event type if name is provided. This is a paginated API. If you
    #          provide a null <code>maxResults</code>, this action retrieves a maximum of 10 records
    #          per page. If you provide a <code>maxResults</code>, the value must be between 5 and 10.
    #          To get the next page results, provide the pagination token from the
    #             <code>GetEventTypesResponse</code> as part of your request. A null pagination token
    #          fetches the records from the beginning. </p>
    # @param [Hash, Types::GetEventTypesRequest] params
    # @option params [String] :name
    #   <p>The name.</p>
    # @option params [String] :next_token
    #   <p>The next token for the subsequent request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "identifier",
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_event_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_types: [
    #       {
    #         name: "string",
    #         description: "description",
    #         event_variables: ["string"],
    #         labels: ["string"],
    #         entity_types: ["string"],
    #         event_ingestion: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         ingested_event_statistics: {
    #           number_of_events: 1,
    #           event_data_size_in_bytes: 1,
    #           least_recent_event: "time",
    #           most_recent_event: "time",
    #           last_updated_time: "time"
    #         },
    #         last_updated_time: "time",
    #         created_time: "time",
    #         arn: "fraudDetectorArn",
    #         event_orchestration: {
    #           event_bridge_enabled: false, # required
    #         }
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::GetEventTypesResult]
    def get_event_types(params = {}, options = {})
      request = build_request(:get_event_types, params)
      request.send_request(options)
    end

    # <p>Gets the details for one or more Amazon SageMaker models that have been imported into the
    #          service. This is a paginated API. If you provide a null <code>maxResults</code>, this
    #          actions retrieves a maximum of 10 records per page. If you provide a
    #             <code>maxResults</code>, the value must be between 5 and 10. To get the next page
    #          results, provide the pagination token from the <code>GetExternalModelsResult</code> as part
    #          of your request. A null pagination token fetches the records from the beginning. </p>
    # @param [Hash, Types::GetExternalModelsRequest] params
    # @option params [String] :model_endpoint
    #   <p>The Amazon SageMaker model endpoint.</p>
    # @option params [String] :next_token
    #   <p>The next page token for the request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_endpoint: "string",
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_external_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     external_models: [
    #       {
    #         model_endpoint: "string",
    #         model_source: "SAGEMAKER" # One of: ["SAGEMAKER"],
    #         invoke_model_endpoint_role_arn: "string",
    #         input_configuration: {
    #           event_type_name: "identifier",
    #           format: "TEXT_CSV" # One of: ["TEXT_CSV", "APPLICATION_JSON"],
    #           use_event_variables: false, # required
    #           json_input_template: "modelInputTemplate",
    #           csv_input_template: "modelInputTemplate"
    #         },
    #         output_configuration: {
    #           format: "TEXT_CSV" # One of: ["TEXT_CSV", "APPLICATION_JSONLINES"], # required
    #           json_key_to_variable_map: {
    #             "string" => "string"
    #           },
    #           csv_index_to_variable_map: {
    #             "string" => "string"
    #           }
    #         },
    #         model_endpoint_status: "ASSOCIATED" # One of: ["ASSOCIATED", "DISSOCIATED"],
    #         last_updated_time: "time",
    #         created_time: "time",
    #         arn: "fraudDetectorArn"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::GetExternalModelsResult]
    def get_external_models(params = {}, options = {})
      request = build_request(:get_external_models, params)
      request.send_request(options)
    end

    # <p>Gets the encryption key if a KMS key has been specified to be used to encrypt content in Amazon Fraud Detector.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_kms_encryption_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     kms_key: {
    #       kms_encryption_key_arn: "KmsEncryptionKeyArn"
    #     }
    #   }
    # @return [Types::GetKMSEncryptionKeyResult]
    def get_kms_encryption_key(params = {}, options = {})
      request = build_request(:get_kms_encryption_key, params)
      request.send_request(options)
    end

    # <p>Gets all labels or a specific label if name is provided. This is a paginated API. If you
    #          provide a null <code>maxResults</code>, this action retrieves a maximum of 50 records
    #          per page. If you provide a <code>maxResults</code>, the value must be between 10 and 50.
    #          To get the next page results, provide the pagination token from the
    #          <code>GetGetLabelsResponse</code> as part of your request. A null pagination token
    #          fetches the records from the beginning. </p>
    # @param [Hash, Types::GetLabelsRequest] params
    # @option params [String] :name
    #   <p>The name of the label or labels to get.</p>
    # @option params [String] :next_token
    #   <p>The next token for the subsequent request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "identifier",
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_labels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     labels: [
    #       {
    #         name: "string",
    #         description: "description",
    #         last_updated_time: "time",
    #         created_time: "time",
    #         arn: "fraudDetectorArn"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::GetLabelsResult]
    def get_labels(params = {}, options = {})
      request = build_request(:get_labels, params)
      request.send_request(options)
    end

    # <p>
    #             Gets all the elements in the specified list.
    #         </p>
    # @param [Hash, Types::GetListElementsRequest] params
    # @option params [String] :name
    #   <p>
    #               The name of the list.
    #           </p>
    # @option params [String] :next_token
    #   <p>
    #               The next token for the subsequent request.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>
    #               The maximum number of objects to return for the request.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "noDashIdentifier", # required
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_list_elements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     elements: ["Elements"],
    #     next_token: "nextToken"
    #   }
    # @return [Types::GetListElementsResult]
    def get_list_elements(params = {}, options = {})
      request = build_request(:get_list_elements, params)
      request.send_request(options)
    end

    # <p>
    #            Gets the metadata of either all the lists under the account or the specified list. 
    #         </p>
    # @param [Hash, Types::GetListsMetadataRequest] params
    # @option params [String] :name
    #   <p>
    #               The name of the list.
    #           </p>
    # @option params [String] :next_token
    #   <p>
    #               The next token for the subsequent request.
    #           </p>
    # @option params [Integer] :max_results
    #   <p>
    #               The maximum number of objects to return for the request.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "noDashIdentifier",
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_lists_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lists: [
    #       {
    #         name: "noDashIdentifier", # required
    #         description: "description",
    #         variable_type: "variableType",
    #         created_time: "time",
    #         updated_time: "time",
    #         arn: "fraudDetectorArn"
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::GetListsMetadataResult]
    def get_lists_metadata(params = {}, options = {})
      request = build_request(:get_lists_metadata, params)
      request.send_request(options)
    end

    # <p>Gets the details of the specified model version.</p>
    # @param [Hash, Types::GetModelVersionRequest] params
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    # @option params [String] :model_type
    #   <p>The model type.</p>
    # @option params [String] :model_version_number
    #   <p>The model version number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"], # required
    #     model_version_number: "floatVersionString", # required
    #   }
    #   options = {}
    #   response = client.get_model_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_id: "modelIdentifier",
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"],
    #     model_version_number: "floatVersionString",
    #     training_data_source: "EXTERNAL_EVENTS" # One of: ["EXTERNAL_EVENTS", "INGESTED_EVENTS"],
    #     training_data_schema: {
    #       model_variables: ["string"], # required
    #       label_schema: {
    #         label_mapper: {
    #           "string" => ["string"]
    #         },
    #         unlabeled_events_treatment: "IGNORE" # One of: ["IGNORE", "FRAUD", "LEGIT", "AUTO"]
    #       }
    #     },
    #     external_events_detail: {
    #       data_location: "s3BucketLocation", # required
    #       data_access_role_arn: "iamRoleArn", # required
    #     },
    #     ingested_events_detail: {
    #       ingested_events_time_window: { # required
    #         start_time: "time", # required
    #         end_time: "time", # required
    #       }
    #     },
    #     status: "string",
    #     arn: "fraudDetectorArn"
    #   }
    # @return [Types::GetModelVersionResult]
    def get_model_version(params = {}, options = {})
      request = build_request(:get_model_version, params)
      request.send_request(options)
    end

    # <p>Gets one or more models. Gets all models for the Amazon Web Services account if no model type and no model id provided. Gets all models for the Amazon Web Services account and model type, if the model type is specified but model id is not provided. Gets a specific model if (model type, model id) tuple is specified. </p>
    #          <p>This is a paginated API. If you
    #          provide a null <code>maxResults</code>, this action retrieves a maximum of 10 records
    #          per page. If you provide a <code>maxResults</code>, the value must be between 1 and 10.
    #          To get the next page results, provide the pagination token from the
    #             response as part of your request. A null pagination token
    #          fetches the records from the beginning.</p>
    # @param [Hash, Types::GetModelsRequest] params
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    # @option params [String] :model_type
    #   <p>The model type.</p>
    # @option params [String] :next_token
    #   <p>The next token for the subsequent request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "modelIdentifier",
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"],
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "string",
    #     models: [
    #       {
    #         model_id: "modelIdentifier",
    #         model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"],
    #         description: "description",
    #         event_type_name: "string",
    #         created_time: "time",
    #         last_updated_time: "time",
    #         arn: "fraudDetectorArn"
    #       }
    #     ]
    #   }
    # @return [Types::GetModelsResult]
    def get_models(params = {}, options = {})
      request = build_request(:get_models, params)
      request.send_request(options)
    end

    # <p>Gets one or more outcomes. This is a paginated
    #          API. If you provide a null <code>maxResults</code>, this actions retrieves a maximum of
    #          100 records per page. If you provide a <code>maxResults</code>, the value must be
    #          between 50 and 100. To get the next page results, provide the pagination token from the
    #         <code>GetOutcomesResult</code> as part of your request. A null pagination token
    #          fetches the records from the beginning. </p>
    # @param [Hash, Types::GetOutcomesRequest] params
    # @option params [String] :name
    #   <p>The name of the outcome or outcomes to get.</p>
    # @option params [String] :next_token
    #   <p>The next page token for the request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "identifier",
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_outcomes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     outcomes: [
    #       {
    #         name: "identifier",
    #         description: "description",
    #         last_updated_time: "time",
    #         created_time: "time",
    #         arn: "fraudDetectorArn"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::GetOutcomesResult]
    def get_outcomes(params = {}, options = {})
      request = build_request(:get_outcomes, params)
      request.send_request(options)
    end

    # <p>Get all rules for a detector (paginated) if <code>ruleId</code> and <code>ruleVersion</code> are not specified. Gets all rules for the detector and the <code>ruleId</code> if present (paginated). Gets a specific rule if both the <code>ruleId</code> and the <code>ruleVersion</code> are specified.</p>
    #          <p>This is a paginated API. Providing null maxResults results in retrieving maximum of 100 records per page. If you provide maxResults the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetRulesResult as part of your request. Null pagination token fetches the records from the beginning.</p>
    # @param [Hash, Types::GetRulesRequest] params
    # @option params [String] :rule_id
    #   <p>The rule ID.</p>
    # @option params [String] :detector_id
    #   <p>The detector ID.</p>
    # @option params [String] :rule_version
    #   <p>The rule version.</p>
    # @option params [String] :next_token
    #   <p>The next page token.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of rules to return for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule_id: "identifier",
    #     detector_id: "identifier", # required
    #     rule_version: "wholeNumberVersionString",
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_details: [
    #       {
    #         rule_id: "identifier",
    #         description: "description",
    #         detector_id: "identifier",
    #         rule_version: "wholeNumberVersionString",
    #         expression: "ruleExpression",
    #         language: "DETECTORPL" # One of: ["DETECTORPL"],
    #         outcomes: ["string"],
    #         last_updated_time: "time",
    #         created_time: "time",
    #         arn: "fraudDetectorArn"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::GetRulesResult]
    def get_rules(params = {}, options = {})
      request = build_request(:get_rules, params)
      request.send_request(options)
    end

    # <p>Gets all of the variables or the specific variable. This is a
    #          paginated API. Providing null <code>maxSizePerPage</code> results in retrieving maximum of
    #          100 records per page. If you provide <code>maxSizePerPage</code> the value must be between
    #          50 and 100. To get the next page result, a provide a pagination token from
    #         <code>GetVariablesResult</code> as part of your request. Null pagination token
    #          fetches the records from the beginning. </p>
    # @param [Hash, Types::GetVariablesRequest] params
    # @option params [String] :name
    #   <p>The name of the variable. </p>
    # @option params [String] :next_token
    #   <p>The next page token of the get variable request. </p>
    # @option params [Integer] :max_results
    #   <p>The max size per page determined for the get variable request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "string",
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_variables(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     variables: [
    #       {
    #         name: "string",
    #         data_type: "STRING" # One of: ["STRING", "INTEGER", "FLOAT", "BOOLEAN", "DATETIME"],
    #         data_source: "EVENT" # One of: ["EVENT", "MODEL_SCORE", "EXTERNAL_MODEL_SCORE"],
    #         default_value: "string",
    #         description: "string",
    #         variable_type: "string",
    #         last_updated_time: "time",
    #         created_time: "time",
    #         arn: "fraudDetectorArn"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::GetVariablesResult]
    def get_variables(params = {}, options = {})
      request = build_request(:get_variables, params)
      request.send_request(options)
    end

    # <p>Gets a list of past predictions. The list can be filtered by detector ID, detector version ID, event ID, event type, or by specifying a time period. 
    #     If filter is not specified, the most recent prediction is returned.</p>
    #          <p>For example, the following filter lists all past predictions for <code>xyz</code> event type -
    #     <code>{ 
    #         "eventType":{
    #         "value": "xyz" }” 
    #         }  </code>
    #          </p>
    #          <p>This is a paginated API. If you provide a null <code>maxResults</code>, this action will retrieve a maximum of 10 records per page. 
    #   If you provide a <code>maxResults</code>, the value must be between 50 and 100. To get the next page results, provide 
    #   the <code>nextToken</code> from the response as part of your request. A null <code>nextToken</code> fetches the records from the beginning.    
    # </p>
    # @param [Hash, Types::ListEventPredictionsRequest] params
    # @option params [Types::FilterCondition] :event_id
    #   <p>
    #   The event ID.
    #   </p>
    # @option params [Types::FilterCondition] :event_type
    #   <p>
    #   The event type associated with the detector.
    #   </p>
    # @option params [Types::FilterCondition] :detector_id
    #   <p>
    #   The detector ID.
    #   </p>
    # @option params [Types::FilterCondition] :detector_version_id
    #   <p>
    #   The detector version ID.
    #   </p>
    # @option params [Types::PredictionTimeRange] :prediction_time_range
    #   <p>
    #   The time period for when the predictions were generated.
    #   </p>
    # @option params [String] :next_token
    #   <p>
    #   Identifies the next page of results to return. Use the token to make the call again to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours.
    #   </p>
    # @option params [Integer] :max_results
    #   <p>
    #   The maximum number of predictions to return for the request.
    #   </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_id: {
    #       value: "filterString"
    #     },
    #     event_type: {
    #       value: "filterString"
    #     },
    #     detector_id: {
    #       value: "filterString"
    #     },
    #     detector_version_id: {
    #       value: "filterString"
    #     },
    #     prediction_time_range: {
    #       start_time: "time", # required
    #       end_time: "time", # required
    #     },
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_predictions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_prediction_summaries: [
    #       {
    #         event_id: "identifier",
    #         event_type_name: "identifier",
    #         event_timestamp: "time",
    #         prediction_timestamp: "time",
    #         detector_id: "identifier",
    #         detector_version_id: "wholeNumberVersionString"
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListEventPredictionsResult]
    def list_event_predictions(params = {}, options = {})
      request = build_request(:list_event_predictions, params)
      request.send_request(options)
    end

    # <p>Lists all tags associated with the resource. This is a paginated API. To get the next page results, provide the pagination token from the
    #             response as part of your request. A null pagination token
    #          fetches the records from the beginning. </p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN that specifies the resource whose tags you want to list.</p>
    # @option params [String] :next_token
    #   <p>The next token from the previous results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return for the request. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "fraudDetectorArn", # required
    #     next_token: "string",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ],
    #     next_token: "string"
    #   }
    # @return [Types::ListTagsForResourceResult]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates or updates a detector. </p>
    # @param [Hash, Types::PutDetectorRequest] params
    # @option params [String] :detector_id
    #   <p>The detector ID. </p>
    # @option params [String] :description
    #   <p>The description of the detector.</p>
    # @option params [String] :event_type_name
    #   <p>The name of the event type.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "identifier", # required
    #     description: "description",
    #     event_type_name: "identifier", # required
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutDetectorResult]
    def put_detector(params = {}, options = {})
      request = build_request(:put_detector, params)
      request.send_request(options)
    end

    # <p>Creates or updates an entity type. An entity represents who is performing the event. As part of a fraud prediction, you pass the entity ID to indicate the specific entity who performed the event. An entity type classifies the entity. Example classifications include customer, merchant, or account.</p>
    # @param [Hash, Types::PutEntityTypeRequest] params
    # @option params [String] :name
    #   <p>The name of the entity type.</p>
    # @option params [String] :description
    #   <p>The description.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "identifier", # required
    #     description: "description",
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_entity_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutEntityTypeResult]
    def put_entity_type(params = {}, options = {})
      request = build_request(:put_entity_type, params)
      request.send_request(options)
    end

    # <p>Creates or updates an event type. An event is a business activity that is evaluated for fraud risk. With Amazon Fraud Detector, you generate fraud predictions for events. An event type defines the structure for an event sent to Amazon Fraud Detector. This includes the variables sent as part of the event, the entity performing the event (such as a customer), and the labels that classify the event. Example event types include online payment transactions, account registrations, and authentications.</p>
    # @param [Hash, Types::PutEventTypeRequest] params
    # @option params [String] :name
    #   <p>The name.</p>
    # @option params [String] :description
    #   <p>The description of the event type.</p>
    # @option params [Array<String>] :event_variables
    #   <p>The event type variables.</p>
    # @option params [Array<String>] :labels
    #   <p>The event type labels.</p>
    # @option params [Array<String>] :entity_types
    #   <p>The entity type for the event type. Example entity types: customer, merchant, account.</p>
    # @option params [String] :event_ingestion
    #   <p>Specifies if ingestion is enabled or disabled.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @option params [Types::EventOrchestration] :event_orchestration
    #   <p>Enables or disables event orchestration. If enabled, you can send event predictions to select AWS services for downstream processing of the events.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "identifier", # required
    #     description: "description",
    #     event_variables: ["string"], # required
    #     labels: ["string"],
    #     entity_types: ["string"], # required
    #     event_ingestion: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ],
    #     event_orchestration: {
    #       event_bridge_enabled: false, # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_event_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutEventTypeResult]
    def put_event_type(params = {}, options = {})
      request = build_request(:put_event_type, params)
      request.send_request(options)
    end

    # <p>Creates or updates an Amazon SageMaker model endpoint. You can also use this action to update the configuration of the model endpoint, including the IAM role and/or the mapped variables.  </p>
    # @param [Hash, Types::PutExternalModelRequest] params
    # @option params [String] :model_endpoint
    #   <p>The model endpoints name.</p>
    # @option params [String] :model_source
    #   <p>The source of the model.</p>
    # @option params [String] :invoke_model_endpoint_role_arn
    #   <p>The IAM role used to invoke the model endpoint.</p>
    # @option params [Types::ModelInputConfiguration] :input_configuration
    #   <p>The model endpoint input configuration.</p>
    # @option params [Types::ModelOutputConfiguration] :output_configuration
    #   <p>The model endpoint output configuration.</p>
    # @option params [String] :model_endpoint_status
    #   <p>The model endpoint’s status in Amazon Fraud Detector.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_endpoint: "sageMakerEndpointIdentifier", # required
    #     model_source: "SAGEMAKER" # One of: ["SAGEMAKER"], # required
    #     invoke_model_endpoint_role_arn: "string", # required
    #     input_configuration: { # required
    #       event_type_name: "identifier",
    #       format: "TEXT_CSV" # One of: ["TEXT_CSV", "APPLICATION_JSON"],
    #       use_event_variables: false, # required
    #       json_input_template: "modelInputTemplate",
    #       csv_input_template: "modelInputTemplate"
    #     },
    #     output_configuration: { # required
    #       format: "TEXT_CSV" # One of: ["TEXT_CSV", "APPLICATION_JSONLINES"], # required
    #       json_key_to_variable_map: {
    #         "string" => "string"
    #       },
    #       csv_index_to_variable_map: {
    #         "string" => "string"
    #       }
    #     },
    #     model_endpoint_status: "ASSOCIATED" # One of: ["ASSOCIATED", "DISSOCIATED"], # required
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_external_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutExternalModelResult]
    def put_external_model(params = {}, options = {})
      request = build_request(:put_external_model, params)
      request.send_request(options)
    end

    # <p>Specifies the KMS key to be used to encrypt content in Amazon Fraud Detector.</p>
    # @param [Hash, Types::PutKMSEncryptionKeyRequest] params
    # @option params [String] :kms_encryption_key_arn
    #   <p>The KMS encryption key ARN.</p>
    #            <p>The KMS key must be single-Region key. Amazon Fraud Detector does not support multi-Region KMS key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     kms_encryption_key_arn: "KmsEncryptionKeyArn", # required
    #   }
    #   options = {}
    #   response = client.put_kms_encryption_key(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutKMSEncryptionKeyResult]
    def put_kms_encryption_key(params = {}, options = {})
      request = build_request(:put_kms_encryption_key, params)
      request.send_request(options)
    end

    # <p>Creates or updates label. A label classifies an event as fraudulent or legitimate. Labels are associated with event types and used to train supervised machine learning models in Amazon Fraud Detector. </p>
    # @param [Hash, Types::PutLabelRequest] params
    # @option params [String] :name
    #   <p>The label name.</p>
    # @option params [String] :description
    #   <p>The label description.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "identifier", # required
    #     description: "description",
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_label(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutLabelResult]
    def put_label(params = {}, options = {})
      request = build_request(:put_label, params)
      request.send_request(options)
    end

    # <p>Creates or updates an outcome. </p>
    # @param [Hash, Types::PutOutcomeRequest] params
    # @option params [String] :name
    #   <p>The name of the outcome.</p>
    # @option params [String] :description
    #   <p>The outcome description.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "identifier", # required
    #     description: "description",
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_outcome(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutOutcomeResult]
    def put_outcome(params = {}, options = {})
      request = build_request(:put_outcome, params)
      request.send_request(options)
    end

    # <p>Stores events in Amazon Fraud Detector without generating fraud predictions for those events. For example, you can use <code>SendEvent</code> to upload a historical dataset, which you can then later use to train a model.</p>
    # @param [Hash, Types::SendEventRequest] params
    # @option params [String] :event_id
    #   <p>The event ID to upload.</p>
    # @option params [String] :event_type_name
    #   <p>The event type name of the event.</p>
    # @option params [String] :event_timestamp
    #   <p>The timestamp that defines when the event under evaluation occurred. The timestamp must be specified using ISO 8601 standard in UTC.</p>
    # @option params [Hash<String, String>] :event_variables
    #   <p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and their corresponding values for the event you are sending for evaluation.</p>
    # @option params [String] :assigned_label
    #   <p>The label to associate with the event. Required if specifying <code>labelTimestamp</code>.</p>
    # @option params [String] :label_timestamp
    #   <p>The timestamp associated with the label. Required if specifying <code>assignedLabel</code>.</p>
    # @option params [Array<Types::Entity>] :entities
    #   <p>An array of entities.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_id: "identifier", # required
    #     event_type_name: "identifier", # required
    #     event_timestamp: "utcTimestampISO8601", # required
    #     event_variables: { # required
    #       "variableName" => "variableValue"
    #     },
    #     assigned_label: "identifier",
    #     label_timestamp: "utcTimestampISO8601",
    #     entities: [ # required
    #       {
    #         entity_type: "string", # required
    #         entity_id: "entityRestrictedString", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.send_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendEventResult]
    def send_event(params = {}, options = {})
      request = build_request(:send_event, params)
      request.send_request(options)
    end

    # <p>Assigns tags to a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to assign to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "fraudDetectorArn", # required
    #     tags: [ # required
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResult]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource from which to remove the tag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The resource ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "fraudDetectorArn", # required
    #     tag_keys: ["tagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResult]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p> Updates a detector version. The detector version attributes that you can update include models, external model endpoints, rules, rule execution mode, and description. You can only update a <code>DRAFT</code> detector version.</p>
    # @param [Hash, Types::UpdateDetectorVersionRequest] params
    # @option params [String] :detector_id
    #   <p>The parent detector ID for the detector version you want to update.</p>
    # @option params [String] :detector_version_id
    #   <p>The detector version ID. </p>
    # @option params [Array<String>] :external_model_endpoints
    #   <p>The Amazon SageMaker model endpoints to include in the detector version.</p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>The rules to include in the detector version.</p>
    # @option params [String] :description
    #   <p>The detector version description. </p>
    # @option params [Array<Types::ModelVersion>] :model_versions
    #   <p>The model versions to include in the detector version.</p>
    # @option params [String] :rule_execution_mode
    #   <p>The rule execution mode to add to the detector.</p>
    #            <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p>
    #            <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. You can define and edit the rule mode at the detector version level, when it is in draft status.</p>
    #            <p>The default behavior is <code>FIRST_MATCHED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "identifier", # required
    #     detector_version_id: "wholeNumberVersionString", # required
    #     external_model_endpoints: ["string"], # required
    #     rules: [ # required
    #       {
    #         detector_id: "identifier", # required
    #         rule_id: "identifier", # required
    #         rule_version: "wholeNumberVersionString", # required
    #       }
    #     ],
    #     description: "description",
    #     model_versions: [
    #       {
    #         model_id: "modelIdentifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"], # required
    #         model_version_number: "floatVersionString", # required
    #         arn: "fraudDetectorArn"
    #       }
    #     ],
    #     rule_execution_mode: "ALL_MATCHED" # One of: ["ALL_MATCHED", "FIRST_MATCHED"]
    #   }
    #   options = {}
    #   response = client.update_detector_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDetectorVersionResult]
    def update_detector_version(params = {}, options = {})
      request = build_request(:update_detector_version, params)
      request.send_request(options)
    end

    # <p>Updates the detector version's description. You can update the metadata for any detector version (<code>DRAFT, ACTIVE,</code> or
    #                 <code>INACTIVE</code>). </p>
    # @param [Hash, Types::UpdateDetectorVersionMetadataRequest] params
    # @option params [String] :detector_id
    #   <p>The detector ID.</p>
    # @option params [String] :detector_version_id
    #   <p>The detector version ID. </p>
    # @option params [String] :description
    #   <p>The description.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "identifier", # required
    #     detector_version_id: "wholeNumberVersionString", # required
    #     description: "description", # required
    #   }
    #   options = {}
    #   response = client.update_detector_version_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDetectorVersionMetadataResult]
    def update_detector_version_metadata(params = {}, options = {})
      request = build_request(:update_detector_version_metadata, params)
      request.send_request(options)
    end

    # <p>Updates the detector version’s status. You can perform the following promotions or
    #             demotions using <code>UpdateDetectorVersionStatus</code>: <code>DRAFT</code> to <code>ACTIVE</code>, <code>ACTIVE</code> to <code>INACTIVE</code>, and <code>INACTIVE</code> to <code>ACTIVE</code>.</p>
    # @param [Hash, Types::UpdateDetectorVersionStatusRequest] params
    # @option params [String] :detector_id
    #   <p>The detector ID. </p>
    # @option params [String] :detector_version_id
    #   <p>The detector version ID. </p>
    # @option params [String] :status
    #   <p>The new status.</p>
    #            <p>The only supported values are <code>ACTIVE</code> and <code>INACTIVE</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_id: "identifier", # required
    #     detector_version_id: "wholeNumberVersionString", # required
    #     status: "DRAFT" # One of: ["DRAFT", "ACTIVE", "INACTIVE"], # required
    #   }
    #   options = {}
    #   response = client.update_detector_version_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDetectorVersionStatusResult]
    def update_detector_version_status(params = {}, options = {})
      request = build_request(:update_detector_version_status, params)
      request.send_request(options)
    end

    # <p>Updates the specified event with a new label.</p>
    # @param [Hash, Types::UpdateEventLabelRequest] params
    # @option params [String] :event_id
    #   <p>The ID of the event associated with the label to update.</p>
    # @option params [String] :event_type_name
    #   <p>The event type of the event associated with the label to update.</p>
    # @option params [String] :assigned_label
    #   <p>The new label to assign to the event.</p>
    # @option params [String] :label_timestamp
    #   <p>The timestamp associated with the label. The timestamp must be specified using ISO 8601 standard in UTC. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_id: "identifier", # required
    #     event_type_name: "identifier", # required
    #     assigned_label: "identifier", # required
    #     label_timestamp: "utcTimestampISO8601", # required
    #   }
    #   options = {}
    #   response = client.update_event_label(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateEventLabelResult]
    def update_event_label(params = {}, options = {})
      request = build_request(:update_event_label, params)
      request.send_request(options)
    end

    # <p>
    #             Updates a list.
    #         </p>
    # @param [Hash, Types::UpdateListRequest] params
    # @option params [String] :name
    #   <p>
    #               The name of the list to update.
    #           </p>
    # @option params [Array<String>] :elements
    #   <p>
    #               One or more list elements to add or replace. If you are providing the elements, make sure to specify the <code>updateMode</code> to use.
    #           </p>
    #            <p>If you are deleting all elements from the list, use <code>REPLACE</code> for the <code>updateMode</code> and provide an empty list (0 elements).</p>
    # @option params [String] :description
    #   <p>
    #               The new description.
    #           </p>
    # @option params [String] :update_mode
    #   <p>
    #               The update mode (type).
    #           </p>
    #            <ul>
    #               <li>
    #                  <p>Use <code>APPEND</code> if you are adding elements to the list.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>REPLACE</code> if you replacing existing elements in the list.</p>
    #               </li>
    #               <li>
    #                  <p>Use <code>REMOVE</code> if you are removing elements from the list.</p>
    #               </li>
    #            </ul>
    # @option params [String] :variable_type
    #   <p>
    #               The variable type you want to assign to the list.
    #           </p>
    #            <note>
    #               <p>You cannot update a variable type of a list that already has a variable type assigned to it. You can assign a variable type to a list only if the list does not already have a variable type.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "noDashIdentifier", # required
    #     elements: ["Elements"],
    #     description: "description",
    #     update_mode: "REPLACE" # One of: ["REPLACE", "APPEND", "REMOVE"],
    #     variable_type: "variableType"
    #   }
    #   options = {}
    #   response = client.update_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateListResult]
    def update_list(params = {}, options = {})
      request = build_request(:update_list, params)
      request.send_request(options)
    end

    # <p>Updates model description.</p>
    # @param [Hash, Types::UpdateModelRequest] params
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    # @option params [String] :model_type
    #   <p>The model type.</p>
    # @option params [String] :description
    #   <p>The new model description.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"], # required
    #     description: "description"
    #   }
    #   options = {}
    #   response = client.update_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateModelResult]
    def update_model(params = {}, options = {})
      request = build_request(:update_model, params)
      request.send_request(options)
    end

    # <p>Updates a model version. Updating a model version retrains an existing model version using updated training data and produces a new minor version of the model. You can update the training data set location and data access role attributes using this action. This action creates and trains a new minor version of the model, for example version 1.01, 1.02, 1.03.</p>
    # @param [Hash, Types::UpdateModelVersionRequest] params
    # @option params [String] :model_id
    #   <p>The model ID.</p>
    # @option params [String] :model_type
    #   <p>The model type.</p>
    # @option params [String] :major_version_number
    #   <p>The major version number.</p>
    # @option params [Types::ExternalEventsDetail] :external_events_detail
    #   <p>The details of the external events data used for training the model version. Required if <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>.</p>
    # @option params [Types::IngestedEventsDetail] :ingested_events_detail
    #   <p>The details of the ingested event used for training the model version. Required if your <code>trainingDataSource</code> is <code>INGESTED_EVENTS</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A collection of key and value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"], # required
    #     major_version_number: "wholeNumberVersionString", # required
    #     external_events_detail: {
    #       data_location: "s3BucketLocation", # required
    #       data_access_role_arn: "iamRoleArn", # required
    #     },
    #     ingested_events_detail: {
    #       ingested_events_time_window: { # required
    #         start_time: "time", # required
    #         end_time: "time", # required
    #       }
    #     },
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_model_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     model_id: "modelIdentifier",
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"],
    #     model_version_number: "floatVersionString",
    #     status: "string"
    #   }
    # @return [Types::UpdateModelVersionResult]
    def update_model_version(params = {}, options = {})
      request = build_request(:update_model_version, params)
      request.send_request(options)
    end

    # <p>Updates the status of a model version.</p>
    #          <p>You can perform the following status updates:</p>
    #          <ol>
    #             <li>
    #                <p>Change the <code>TRAINING_IN_PROGRESS</code> status to <code>TRAINING_CANCELLED</code>.</p>
    #             </li>
    #             <li>
    #                <p>Change the <code>TRAINING_COMPLETE</code> status to <code>ACTIVE</code>.</p>
    #             </li>
    #             <li>
    #                <p>Change <code>ACTIVE</code> to <code>INACTIVE</code>.</p>
    #             </li>
    #          </ol>
    # @param [Hash, Types::UpdateModelVersionStatusRequest] params
    # @option params [String] :model_id
    #   <p>The model ID of the model version to update.</p>
    # @option params [String] :model_type
    #   <p>The model type.</p>
    # @option params [String] :model_version_number
    #   <p>The model version number.</p>
    # @option params [String] :status
    #   <p>The model version status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     model_id: "modelIdentifier", # required
    #     model_type: "ONLINE_FRAUD_INSIGHTS" # One of: ["ONLINE_FRAUD_INSIGHTS", "TRANSACTION_FRAUD_INSIGHTS", "ACCOUNT_TAKEOVER_INSIGHTS"], # required
    #     model_version_number: "floatVersionString", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "TRAINING_CANCELLED"], # required
    #   }
    #   options = {}
    #   response = client.update_model_version_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateModelVersionStatusResult]
    def update_model_version_status(params = {}, options = {})
      request = build_request(:update_model_version_status, params)
      request.send_request(options)
    end

    # <p>Updates a rule's metadata. The description attribute can be updated.</p>
    # @param [Hash, Types::UpdateRuleMetadataRequest] params
    # @option params [Types::Rule] :rule
    #   <p>The rule to update.</p>
    # @option params [String] :description
    #   <p>The rule description.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule: { # required
    #       detector_id: "identifier", # required
    #       rule_id: "identifier", # required
    #       rule_version: "wholeNumberVersionString", # required
    #     },
    #     description: "description", # required
    #   }
    #   options = {}
    #   response = client.update_rule_metadata(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateRuleMetadataResult]
    def update_rule_metadata(params = {}, options = {})
      request = build_request(:update_rule_metadata, params)
      request.send_request(options)
    end

    # <p>Updates a rule version resulting in a new rule version. Updates a rule version resulting in a new rule version (version 1, 2, 3 ...). </p>
    # @param [Hash, Types::UpdateRuleVersionRequest] params
    # @option params [Types::Rule] :rule
    #   <p>The rule to update.</p>
    # @option params [String] :description
    #   <p>The description.</p>
    # @option params [String] :expression
    #   <p>The rule expression.</p>
    # @option params [String] :language
    #   <p>The language.</p>
    # @option params [Array<String>] :outcomes
    #   <p>The outcomes.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to assign to the rule version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule: { # required
    #       detector_id: "identifier", # required
    #       rule_id: "identifier", # required
    #       rule_version: "wholeNumberVersionString", # required
    #     },
    #     description: "description",
    #     expression: "ruleExpression", # required
    #     language: "DETECTORPL" # One of: ["DETECTORPL"], # required
    #     outcomes: ["string"], # required
    #     tags: [
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_rule_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule: {
    #       detector_id: "identifier", # required
    #       rule_id: "identifier", # required
    #       rule_version: "wholeNumberVersionString", # required
    #     }
    #   }
    # @return [Types::UpdateRuleVersionResult]
    def update_rule_version(params = {}, options = {})
      request = build_request(:update_rule_version, params)
      request.send_request(options)
    end

    # <p>Updates a variable.</p>
    # @param [Hash, Types::UpdateVariableRequest] params
    # @option params [String] :name
    #   <p>The name of the variable.</p>
    # @option params [String] :default_value
    #   <p>The new default value of the variable.</p>
    # @option params [String] :description
    #   <p>The new description.</p>
    # @option params [String] :variable_type
    #   <p>The variable type. For more information see <a href="https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types">Variable types</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "string", # required
    #     default_value: "string",
    #     description: "string",
    #     variable_type: "string"
    #   }
    #   options = {}
    #   response = client.update_variable(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateVariableResult]
    def update_variable(params = {}, options = {})
      request = build_request(:update_variable, params)
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
      context[:gem_name] = 'aws-sdk-frauddetector'
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
