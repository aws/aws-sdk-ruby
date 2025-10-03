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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::Braket
  # An API client for Aws::Braket.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Braket

    add_plugin(::Aws::Braket::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Braket::EndpointProvider)
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

    # <p>Cancels an Amazon Braket hybrid job.</p>
    # @param [Hash, Types::CancelJobInput] params
    # @option params [String] :job_arn
    #   <p>The ARN of the Amazon Braket hybrid job to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_arn: "JobArn", # required
    #   }
    #   options = {}
    #   response = client.cancel_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "JobArn", # required
    #     cancellation_status: "CancellationStatus", # required
    #   }
    # @return [Types::CancelJobOutput]
    def cancel_job(params = {}, options = {})
      request = build_request(:cancel_job, params)
      request.send_request(options)
    end

    # <p>Cancels the specified task.</p>
    # @param [Hash, Types::CancelQuantumTaskInput] params
    # @option params [String] :quantum_task_arn
    #   <p>The ARN of the quantum task to cancel.</p>
    # @option params [String] :client_token
    #   <p>The client token associated with the cancellation request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     quantum_task_arn: "QuantumTaskArn", # required
    #     client_token: "String64", # required
    #   }
    #   options = {}
    #   response = client.cancel_quantum_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quantum_task_arn: "QuantumTaskArn", # required
    #     cancellation_status: "CancellationStatus", # required
    #   }
    # @return [Types::CancelQuantumTaskOutput]
    def cancel_quantum_task(params = {}, options = {})
      request = build_request(:cancel_quantum_task, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Braket hybrid job.</p>
    # @param [Hash, Types::CreateJobInput] params
    # @option params [String] :client_token
    #   <p>The client token associated with this request that guarantees that the request is idempotent.</p>
    # @option params [Types::AlgorithmSpecification] :algorithm_specification
    #   <p>Definition of the Amazon Braket job to be created. Specifies the container image the job uses and information about the Python scripts used for entry and training.</p>
    # @option params [Array<Types::InputFileConfig>] :input_data_config
    #   <p>A list of parameters that specify the name and type of input data and where it is located.</p>
    # @option params [Types::JobOutputDataConfig] :output_data_config
    #   <p>The path to the S3 location where you want to store hybrid job artifacts and the encryption key used to store them.</p>
    # @option params [Types::JobCheckpointConfig] :checkpoint_config
    #   <p>Information about the output locations for hybrid job checkpoint data.</p>
    # @option params [String] :job_name
    #   <p>The name of the Amazon Braket hybrid job.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can assume to perform tasks on behalf of a user. It can access user resources, run an Amazon Braket job container on behalf of user, and output results and hybrid job details to the users' s3 buckets.</p>
    # @option params [Types::JobStoppingCondition] :stopping_condition
    #   <p> The user-defined criteria that specifies when a hybrid job stops running.</p>
    # @option params [Types::InstanceConfig] :instance_config
    #   <p>Configuration of the resource instances to use while running the hybrid job on Amazon Braket.</p>
    # @option params [Hash<String, String>] :hyper_parameters
    #   <p>Algorithm-specific parameters used by an Amazon Braket hybrid job that influence the quality of the training job. The values are set with a map of JSON key:value pairs, where the key is the name of the hyperparameter and the value is the value of the hyperparameter.</p> <important> <p>Do not include any security-sensitive information including account access IDs, secrets, or tokens in any hyperparameter fields. As part of the shared responsibility model, you are responsible for any potential exposure, unauthorized access, or compromise of your sensitive data if caused by security-sensitive information included in the request hyperparameter variable or plain text fields.</p> </important>
    # @option params [Types::DeviceConfig] :device_config
    #   <p>The quantum processing unit (QPU) or simulator used to create an Amazon Braket hybrid job.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to be added to the hybrid job you're creating.</p>
    # @option params [Array<Types::Association>] :associations
    #   <p>The list of Amazon Braket resources associated with the hybrid job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "String64", # required
    #     algorithm_specification: { # required
    #       script_mode_config: {
    #         entry_point: "String", # required
    #         s3_uri: "S3Path", # required
    #         compression_type: "CompressionType"
    #       },
    #       container_image: {
    #         uri: "Uri", # required
    #       }
    #     },
    #     input_data_config: [
    #       {
    #         channel_name: "String64", # required
    #         content_type: "String256",
    #         data_source: { # required
    #           s3_data_source: { # required
    #             s3_uri: "S3Path", # required
    #           }
    #         }
    #       }
    #     ],
    #     output_data_config: { # required
    #       kms_key_id: "String2048",
    #       s3_path: "S3Path", # required
    #     },
    #     checkpoint_config: {
    #       local_path: "String4096",
    #       s3_uri: "S3Path", # required
    #     },
    #     job_name: "String", # required
    #     role_arn: "RoleArn", # required
    #     stopping_condition: {
    #       max_runtime_in_seconds: 1
    #     },
    #     instance_config: { # required
    #       instance_type: "InstanceType", # required
    #       volume_size_in_gb: 1, # required
    #       instance_count: 1
    #     },
    #     hyper_parameters: {
    #       "String256" => "String"
    #     },
    #     device_config: { # required
    #       device: "String256", # required
    #     },
    #     tags: {
    #       "String" => "String"
    #     },
    #     associations: [
    #       {
    #         arn: "BraketResourceArn", # required
    #         type: "AssociationType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_arn: "JobArn", # required
    #   }
    # @return [Types::CreateJobOutput]
    def create_job(params = {}, options = {})
      request = build_request(:create_job, params)
      request.send_request(options)
    end

    # <p>Creates a quantum task.</p>
    # @param [Hash, Types::CreateQuantumTaskInput] params
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    # @option params [String] :device_arn
    #   <p>The ARN of the device to run the quantum task on.</p>
    # @option params [String] :device_parameters
    #   <p>The parameters for the device to run the quantum task on.</p>
    # @option params [Integer] :shots
    #   <p>The number of shots to use for the quantum task.</p>
    # @option params [String] :output_s3_bucket
    #   <p>The S3 bucket to store quantum task result files in.</p>
    # @option params [String] :output_s3_key_prefix
    #   <p>The key prefix for the location in the S3 bucket to store quantum task results in.</p>
    # @option params [String] :action
    #   <p>The action associated with the quantum task.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to be added to the quantum task you're creating.</p>
    # @option params [String] :job_token
    #   <p>The token for an Amazon Braket hybrid job that associates it with the quantum task.</p>
    # @option params [Array<Types::Association>] :associations
    #   <p>The list of Amazon Braket resources associated with the quantum task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "String64", # required
    #     device_arn: "DeviceArn", # required
    #     device_parameters: "JsonValue",
    #     shots: 1, # required
    #     output_s3_bucket: "String", # required
    #     output_s3_key_prefix: "String", # required
    #     action: "JsonValue", # required
    #     tags: {
    #       "String" => "String"
    #     },
    #     job_token: "JobToken",
    #     associations: [
    #       {
    #         arn: "BraketResourceArn", # required
    #         type: "AssociationType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_quantum_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quantum_task_arn: "QuantumTaskArn", # required
    #   }
    # @return [Types::CreateQuantumTaskOutput]
    def create_quantum_task(params = {}, options = {})
      request = build_request(:create_quantum_task, params)
      request.send_request(options)
    end

    # <p>Retrieves the devices available in Amazon Braket.</p> <note> <p>For backwards compatibility with older versions of BraketSchemas, OpenQASM information is omitted from GetDevice API calls. To get this information the user-agent needs to present a recent version of the BraketSchemas (1.8.0 or later). The Braket SDK automatically reports this for you. If you do not see OpenQASM results in the GetDevice response when using a Braket SDK, you may need to set AWS_EXECUTION_ENV environment variable to configure user-agent. See the code examples provided below for how to do this for the AWS CLI, Boto3, and the Go, Java, and JavaScript/TypeScript SDKs.</p> </note>
    # @param [Hash, Types::GetDeviceInput] params
    # @option params [String] :device_arn
    #   <p>The ARN of the device to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     device_arn: "DeviceArn", # required
    #   }
    #   options = {}
    #   response = client.get_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_arn: "DeviceArn", # required
    #     device_name: "String", # required
    #     provider_name: "String", # required
    #     device_type: "DeviceType", # required
    #     device_status: "DeviceStatus", # required
    #     device_capabilities: "JsonValue", # required
    #     device_queue_info: [
    #       {
    #         queue: "QueueName", # required
    #         queue_size: "String", # required
    #         queue_priority: "QueuePriority"
    #       }
    #     ]
    #   }
    # @return [Types::GetDeviceOutput]
    def get_device(params = {}, options = {})
      request = build_request(:get_device, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified Amazon Braket hybrid job.</p>
    # @param [Hash, Types::GetJobInput] params
    # @option params [String] :job_arn
    #   <p>The ARN of the hybrid job to retrieve.</p>
    # @option params [Array<String>] :additional_attribute_names
    #   <p>A list of attributes to return additional information for. Only the QueueInfo additional attribute name is currently supported. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_arn: "JobArn", # required
    #     additional_attribute_names: ["HybridJobAdditionalAttributeName"]
    #   }
    #   options = {}
    #   response = client.get_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "JobPrimaryStatus", # required
    #     job_arn: "JobArn", # required
    #     role_arn: "RoleArn", # required
    #     failure_reason: "String1024",
    #     job_name: "String", # required
    #     hyper_parameters: {
    #       "String256" => "String"
    #     },
    #     input_data_config: [
    #       {
    #         channel_name: "String64", # required
    #         content_type: "String256",
    #         data_source: { # required
    #           s3_data_source: { # required
    #             s3_uri: "S3Path", # required
    #           }
    #         }
    #       }
    #     ],
    #     output_data_config: { # required
    #       kms_key_id: "String2048",
    #       s3_path: "S3Path", # required
    #     },
    #     stopping_condition: {
    #       max_runtime_in_seconds: 1
    #     },
    #     checkpoint_config: {
    #       local_path: "String4096",
    #       s3_uri: "S3Path", # required
    #     },
    #     algorithm_specification: { # required
    #       script_mode_config: {
    #         entry_point: "String", # required
    #         s3_uri: "S3Path", # required
    #         compression_type: "CompressionType"
    #       },
    #       container_image: {
    #         uri: "Uri", # required
    #       }
    #     },
    #     instance_config: { # required
    #       instance_type: "InstanceType", # required
    #       volume_size_in_gb: 1, # required
    #       instance_count: 1
    #     },
    #     created_at: Time.now, # required
    #     started_at: Time.now,
    #     ended_at: Time.now,
    #     billable_duration: 1,
    #     device_config: {
    #       device: "String256", # required
    #     },
    #     events: [
    #       {
    #         event_type: "JobEventType",
    #         time_of_event: Time.now,
    #         message: "String"
    #       }
    #     ],
    #     tags: {
    #       "String" => "String"
    #     },
    #     queue_info: {
    #       queue: "QueueName", # required
    #       position: "String", # required
    #       message: "String"
    #     },
    #     associations: [
    #       {
    #         arn: "BraketResourceArn", # required
    #         type: "AssociationType", # required
    #       }
    #     ]
    #   }
    # @return [Types::GetJobOutput]
    def get_job(params = {}, options = {})
      request = build_request(:get_job, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified quantum task.</p>
    # @param [Hash, Types::GetQuantumTaskInput] params
    # @option params [String] :quantum_task_arn
    #   <p>The ARN of the quantum task to retrieve.</p>
    # @option params [Array<String>] :additional_attribute_names
    #   <p>A list of attributes to return additional information for. Only the QueueInfo additional attribute name is currently supported.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     quantum_task_arn: "QuantumTaskArn", # required
    #     additional_attribute_names: ["QuantumTaskAdditionalAttributeName"]
    #   }
    #   options = {}
    #   response = client.get_quantum_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quantum_task_arn: "QuantumTaskArn", # required
    #     status: "QuantumTaskStatus", # required
    #     failure_reason: "String",
    #     device_arn: "DeviceArn", # required
    #     device_parameters: "JsonValue", # required
    #     shots: 1, # required
    #     output_s3_bucket: "String", # required
    #     output_s3_directory: "String", # required
    #     created_at: Time.now, # required
    #     ended_at: Time.now,
    #     tags: {
    #       "String" => "String"
    #     },
    #     job_arn: "JobArn",
    #     queue_info: {
    #       queue: "QueueName", # required
    #       position: "String", # required
    #       queue_priority: "QueuePriority",
    #       message: "String"
    #     },
    #     associations: [
    #       {
    #         arn: "BraketResourceArn", # required
    #         type: "AssociationType", # required
    #       }
    #     ],
    #     num_successful_shots: 1,
    #     action_metadata: {
    #       action_type: "String", # required
    #       program_count: 1,
    #       executable_count: 1
    #     }
    #   }
    # @return [Types::GetQuantumTaskOutput]
    def get_quantum_task(params = {}, options = {})
      request = build_request(:get_quantum_task, params)
      request.send_request(options)
    end

    # <p>Shows the tags associated with this resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Specify the <code>resourceArn</code> for the resource whose tags to display.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Searches for devices using the specified filters.</p>
    # @param [Hash, Types::SearchDevicesInput] params
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned in the response. Use the token returned from the previous request to continue search where the previous request ended.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [Array<Types::SearchDevicesFilter>] :filters
    #   <p>Array of SearchDevicesFilter objects to use when searching for devices.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     filters: [ # required
    #       {
    #         name: "String", # required
    #         values: ["String256"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.search_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     devices: [ # required
    #       {
    #         device_arn: "DeviceArn", # required
    #         device_name: "String", # required
    #         provider_name: "String", # required
    #         device_type: "DeviceType", # required
    #         device_status: "DeviceStatus", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::SearchDevicesOutput]
    def search_devices(params = {}, options = {})
      request = build_request(:search_devices, params)
      request.send_request(options)
    end

    # <p>Searches for Amazon Braket hybrid jobs that match the specified filter values.</p>
    # @param [Hash, Types::SearchJobsInput] params
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned in the response. Use the token returned from the previous request to continue search where the previous request ended.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [Array<Types::SearchJobsFilter>] :filters
    #   <p>Array of SearchJobsFilter objects to use when searching for hybrid jobs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     filters: [ # required
    #       {
    #         name: "String64", # required
    #         values: ["String256"], # required
    #         operator: "SearchJobsFilterOperator", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.search_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [ # required
    #       {
    #         status: "JobPrimaryStatus", # required
    #         job_arn: "JobArn", # required
    #         job_name: "String", # required
    #         device: "String256", # required
    #         created_at: Time.now, # required
    #         started_at: Time.now,
    #         ended_at: Time.now,
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::SearchJobsOutput]
    def search_jobs(params = {}, options = {})
      request = build_request(:search_jobs, params)
      request.send_request(options)
    end

    # <p>Searches for tasks that match the specified filter values.</p>
    # @param [Hash, Types::SearchQuantumTasksInput] params
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned in the response. Use the token returned from the previous request to continue search where the previous request ended.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in the response.</p>
    # @option params [Array<Types::SearchQuantumTasksFilter>] :filters
    #   <p>Array of <code>SearchQuantumTasksFilter</code> objects to use when searching for quantum tasks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1,
    #     filters: [ # required
    #       {
    #         name: "String64", # required
    #         values: ["String256"], # required
    #         operator: "SearchQuantumTasksFilterOperator", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.search_quantum_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     quantum_tasks: [ # required
    #       {
    #         quantum_task_arn: "QuantumTaskArn", # required
    #         status: "QuantumTaskStatus", # required
    #         device_arn: "DeviceArn", # required
    #         shots: 1, # required
    #         output_s3_bucket: "String", # required
    #         output_s3_directory: "String", # required
    #         created_at: Time.now, # required
    #         ended_at: Time.now,
    #         tags: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::SearchQuantumTasksOutput]
    def search_quantum_tasks(params = {}, options = {})
      request = build_request(:search_quantum_tasks, params)
      request.send_request(options)
    end

    # <p>Add a tag to the specified resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Specify the <code>resourceArn</code> of the resource to which a tag will be added.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Specify the tags to add to the resource. Tags can be specified as a key-value map.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Remove tags from a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>Specify the <code>resourceArn</code> for the resource from which to remove the tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Specify the keys for the tags to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
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
      context[:gem_name] = 'aws-sdk-braket'
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
