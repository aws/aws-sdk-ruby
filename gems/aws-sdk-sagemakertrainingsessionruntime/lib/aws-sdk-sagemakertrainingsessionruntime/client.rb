# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:sagemakertrainingsessionruntime)

module Aws::SageMakerTrainingSessionRuntime
  # An API client for Aws::SageMakerTrainingSessionRuntime.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::LegoRouterService
    @identifier = :sagemakertrainingsessionruntime

    add_plugin(::Aws::SageMakerTrainingSessionRuntime::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
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
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SageMakerTrainingSessionRuntime::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
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
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
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
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
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

    # <p>Submits an asynchronous sampling operation to generate text or compute log-probabilities from the model associated with the specified training session. The session must be in <code>Running</code> or <code>Blocked</code> state. Use <code>GetSamplingOperationResult</code> to poll for the result.</p>
    # @param [Hash, Types::ExecuteSamplingOperationInput] params
    # @option params [String] :training_session_name
    #   <p>The name of the training session to sample from.</p>
    # @option params [Types::SampleOperationConfig] :operation_config
    #   <p>The configuration for the sample operation. Specify either a sample configuration to generate text or a computeLogprobs configuration to compute token log-probabilities.</p>
    # @example Generate samples from a prompt
    #   # Generates completions for a tokenized prompt using the session's current weights. Generation behavior is controlled by `samplingParams`, and the operation is dispatched asynchronously.
    #   params = {
    #     training_session_name: "my-training-session",
    #     operation_config: {
    #     "sample" => {
    #       "prompt" => {
    #         "chunks" => [{
    #           "tokens" => [
    #             791,
    #             6864,
    #             315,
    #             9822,
    #             374
    #           ],
    #           "type" => encoded_text
    #         }]
    #       },
    #       "numSamples" => 4,
    #       "samplingParams" => {
    #         "maxTokens" => 1024,
    #         "temperature" => 0.7,
    #         "topP" => 0.9
    #       }
    #     }
    #   }
    #   }
    #   options = {}
    #   response = client.execute_sampling_operation(params, options)
    #   response.to_h #=>
    #   {
    #     operation_id: "b2c3d4e5-6789-01bc-def0-234567890abc"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     training_session_name: "TrainingSessionName", # required
    #     operation_config: { # required
    #       # One of:
    #       sample: {
    #         prompt: { # required
    #           chunks: [ # required
    #             {
    #               tokens: [1], # required
    #               type: "encoded_text" # One of: ["encoded_text"], # required
    #             }
    #           ]
    #         },
    #         num_samples: 1, # required
    #         sampling_params: { # required
    #           max_tokens: 1, # required
    #           temperature: 1.0,
    #           top_k: 1,
    #           top_p: 1.0,
    #           seed: 1,
    #           stop: ["String"]
    #         },
    #         include_prompt_logprobs: false,
    #         topk_prompt_logprobs: 1,
    #         model_package_arn: "String"
    #       },
    #       compute_logprobs: {
    #         prompt: { # required
    #           chunks: [ # required
    #             {
    #               tokens: [1], # required
    #               type: "encoded_text" # One of: ["encoded_text"], # required
    #             }
    #           ]
    #         },
    #         model_package_arn: "String"
    #       },
    #       load_weights_for_sampling: {
    #         model_package_arn: "String", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.execute_sampling_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId", # required
    #   }
    # @return [Types::ExecuteSamplingOperationOutput]
    def execute_sampling_operation(params = {}, options = {})
      request = build_request(:execute_sampling_operation, params)
      request.send_request(options)
    end

    # <p>Submits an asynchronous training operation to the specified training session. The service executes operations in sequence number order. The session must be in <code>Running</code> or <code>Blocked</code> state. Use <code>GetTrainingOperationResult</code> to poll for the result. Supported operation types: <code>forward</code>, <code>forwardBackward</code>, <code>optimizerStep</code>, <code>saveWeights</code>, <code>saveState</code>, and <code>loadState</code>.</p>
    # @param [Hash, Types::ExecuteTrainingOperationInput] params
    # @option params [String] :training_session_name
    #   <p>The name of the training session to submit the operation to.</p>
    # @option params [Integer] :sequence_number
    #   <p>The monotonically increasing sequence number that determines execution order. The training session processes operations strictly in sequence number order. If a gap exists, the session blocks until the missing operation arrives or times out. Must be at least 1.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service ignores the request but does not return an error.</p>
    # @option params [Types::OperationConfig] :operation_config
    #   <p>The configuration that specifies the type and parameters of the training operation. Exactly one member of the union must be set.</p>
    # @example Run a forward and backward pass
    #   # Computes gradients for a batch of tokenized prompts and accumulates them into the session. Operations are applied in `sequenceNumber` order, so each call must supply the next number in the sequence.
    #   params = {
    #     training_session_name: "my-training-session",
    #     sequence_number: 1,
    #     operation_config: {
    #     "forwardBackward" => {
    #       "lossFnName" => cross_entropy,
    #       "datumList" => [{
    #         "modelInput" => {
    #           "chunks" => [{
    #             "tokens" => [
    #               791,
    #               6864,
    #               315,
    #               9822,
    #               374,
    #               12366
    #             ],
    #             "type" => encoded_text
    #           }]
    #         }
    #       }]
    #     }
    #   }
    #   }
    #   options = {}
    #   response = client.execute_training_operation(params, options)
    #   response.to_h #=>
    #   {
    #     operation_id: "a1b2c3d4-5678-90ab-cdef-1234567890ab"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     training_session_name: "TrainingSessionName", # required
    #     sequence_number: 1, # required
    #     client_token: "ClientToken",
    #     operation_config: { # required
    #       # One of:
    #       forward: {
    #         loss_fn_name: "cross_entropy" # One of: ["cross_entropy", "importance_sampling", "ppo", "cispo"], # required
    #         datum_list: [ # required
    #           {
    #             model_input: { # required
    #               chunks: [ # required
    #                 {
    #                   tokens: [1], # required
    #                   type: "encoded_text" # One of: ["encoded_text"], # required
    #                 }
    #               ]
    #             },
    #             loss_fn_inputs: {
    #               "String" => {
    #                 data: ""null"", # required
    #                 dtype: "String", # required
    #                 shape: [1]
    #               }
    #             }
    #           }
    #         ],
    #         loss_fn_config: ""null""
    #       },
    #       forward_backward: {
    #         loss_fn_name: "cross_entropy" # One of: ["cross_entropy", "importance_sampling", "ppo", "cispo"], # required
    #         datum_list: [ # required
    #           {
    #             model_input: { # required
    #               chunks: [ # required
    #                 {
    #                   tokens: [1], # required
    #                   type: "encoded_text" # One of: ["encoded_text"], # required
    #                 }
    #               ]
    #             },
    #             loss_fn_inputs: {
    #               "String" => {
    #                 data: ""null"", # required
    #                 dtype: "String", # required
    #                 shape: [1]
    #               }
    #             }
    #           }
    #         ],
    #         loss_fn_config: ""null""
    #       },
    #       optimizer_step: {
    #         adam_params_config: { # required
    #           learning_rate: 1.0, # required
    #           beta1: 1.0,
    #           beta2: 1.0,
    #           eps: 1.0,
    #           weight_decay: 1.0,
    #           grad_clip_norm: 1.0,
    #           lora_plus_lr_ratio: 1.0
    #         }
    #       },
    #       save_weights: {
    #         merge_weights: false,
    #         description: "String"
    #       },
    #       save_state: {
    #         description: "String"
    #       },
    #       load_state: {
    #         model_package_arn: "String", # required
    #         load_optimizer: false, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.execute_training_operation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     operation_id: "OperationId", # required
    #   }
    # @return [Types::ExecuteTrainingOperationOutput]
    def execute_training_operation(params = {}, options = {})
      request = build_request(:execute_training_operation, params)
      request.send_request(options)
    end

    # <p>Retrieves the current status and result of a previously submitted sampling operation. Poll this operation until the status reaches a terminal state (Completed or Failed).</p>
    # @param [Hash, Types::GetSamplingOperationResultInput] params
    # @option params [String] :training_session_name
    #   <p>The name of the training session that owns the sample operation.</p>
    # @option params [String] :operation_id
    #   <p>The unique identifier of the sample operation to retrieve, returned by <code>ExecuteSamplingOperation</code>.</p>
    # @example Get the result of a sampling operation
    #   # Retrieves the status and generated sequences for a sampling operation submitted with ExecuteSamplingOperation.
    #   params = {
    #     training_session_name: "my-training-session",
    #     operation_id: "a1b2c3d4-5678-90ab-cdef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.get_sampling_operation_result(params, options)
    #   response.to_h #=>
    #   {
    #     status: Completed,
    #     operation_result: {
    #     "sample" => {
    #       "sequences" => [{
    #         "stopReason" => stop,
    #         "tokens" => [
    #           791,
    #           6864,
    #           315,
    #           9822,
    #           374,
    #           12366,
    #           13
    #         ],
    #         "tokenUsage" => {
    #           "prefill" => 5,
    #           "decode" => 7
    #         }
    #       }]
    #     }
    #   }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     training_session_name: "TrainingSessionName", # required
    #     operation_id: "OperationId", # required
    #   }
    #   options = {}
    #   response = client.get_sampling_operation_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Pending" # One of: ["Pending", "InProgress", "Completed", "Failed", "Skipped"], # required
    #     operation_result: {
    #       # One of:
    #       sample: {
    #         sequences: [ # required
    #           {
    #             stop_reason: "stop" # One of: ["stop", "length"], # required
    #             tokens: [1], # required
    #             logprobs: [1.0],
    #             token_usage: {
    #               prefill: 1, # required
    #               decode: 1, # required
    #             }
    #           }
    #         ],
    #         prompt_logprobs: [1.0],
    #         topk_prompt_logprobs: [
    #           [
    #             {
    #               token_id: 1, # required
    #               logprob: 1.0, # required
    #             }
    #           ]
    #         ]
    #       },
    #       compute_logprobs: {
    #         logprobs: [1.0], # required
    #       },
    #       load_weights_for_sampling: {
    #       }
    #     },
    #     error_details: "String"
    #   }
    # @return [Types::GetSamplingOperationResultOutput]
    def get_sampling_operation_result(params = {}, options = {})
      request = build_request(:get_sampling_operation_result, params)
      request.send_request(options)
    end

    # <p>Retrieves the current status and result of a previously submitted training operation. Poll this operation until the status reaches a terminal state (Completed, Failed, or Skipped).</p>
    # @param [Hash, Types::GetTrainingOperationResultInput] params
    # @option params [String] :training_session_name
    #   <p>The name of the training session that owns the operation.</p>
    # @option params [String] :operation_id
    #   <p>The unique identifier of the operation to retrieve, returned by <code>ExecuteTrainingOperation</code>.</p>
    # @example Get the result of a training operation
    #   # Retrieves the status and result of a training operation submitted with ExecuteTrainingOperation.
    #   params = {
    #     training_session_name: "my-training-session",
    #     operation_id: "a1b2c3d4-5678-90ab-cdef-1234567890ab"
    #   }
    #   options = {}
    #   response = client.get_training_operation_result(params, options)
    #   response.to_h #=>
    #   {
    #     status: Completed,
    #     operation_result: {
    #     "forwardBackward" => {
    #       "lossFnOutputType" => logprobs,
    #       "metrics" => {
    #         "loss" => 1.8342
    #       }
    #     }
    #   },
    #     token_usage: {
    #       training_tokens: 4096
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     training_session_name: "TrainingSessionName", # required
    #     operation_id: "OperationId", # required
    #   }
    #   options = {}
    #   response = client.get_training_operation_result(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Pending" # One of: ["Pending", "InProgress", "Completed", "Failed", "Skipped"], # required
    #     operation_result: {
    #       # One of:
    #       forward: {
    #         loss_fn_output_type: "String",
    #         loss_fn_outputs: [
    #           {
    #             "String" => {
    #               data: ""null"", # required
    #               dtype: "String", # required
    #               shape: [1]
    #             }
    #           }
    #         ],
    #         metrics: {
    #           "String" => 1.0
    #         },
    #         token_usage: {
    #           training_tokens: 1
    #         }
    #       },
    #       forward_backward: {
    #         loss_fn_output_type: "String",
    #         loss_fn_outputs: [
    #           {
    #             "String" => {
    #               data: ""null"", # required
    #               dtype: "String", # required
    #               shape: [1]
    #             }
    #           }
    #         ],
    #         metrics: {
    #           "String" => 1.0
    #         },
    #         token_usage: {
    #           training_tokens: 1
    #         }
    #       },
    #       optimizer_step: {
    #         metrics: {
    #           "String" => 1.0
    #         }
    #       },
    #       save_weights: {
    #         model_package_arn: "String"
    #       },
    #       save_state: {
    #         model_package_arn: "String", # required
    #       },
    #       load_state: {
    #       }
    #     },
    #     error_details: "String",
    #     token_usage: {
    #       training_tokens: 1
    #     }
    #   }
    # @return [Types::GetTrainingOperationResultOutput]
    def get_training_operation_result(params = {}, options = {})
      request = build_request(:get_training_operation_result, params)
      request.send_request(options)
    end

    # <p>Sends an inference request to the model associated with the specified training session and returns the response synchronously. The service passes the request and response bodies to and from the model without modification.</p>
    # @param [Hash, Types::SampleTrainingSessionInput] params
    # @option params [String] :training_session_name
    #   <p>The name of the training session whose model to invoke.</p>
    # @option params [String] :content_type
    #   <p>The MIME type of the input data in the request body.</p>
    # @option params [String] :accept
    #   <p>The desired MIME type of the inference body in the response.</p>
    # @option params [String] :model_package_arn
    #   <p>The ARN of the model package whose checkpoint to invoke.</p>
    # @option params [String] :body
    #   <p>The raw inference request body.</p>
    # @example Sample from a training session
    #   # Sends a chat completion request to the session's current weights and receives the complete response in a single payload.
    #   params = {
    #     training_session_name: "my-training-session",
    #     content_type: "application/json",
    #     accept: "application/json",
    #     body: "eyJtZXNzYWdlcyI6W3sicm9sZSI6InVzZXIiLCJjb250ZW50IjoiV2hhdCBpcyB0aGUgY2FwaXRhbCBvZiBGcmFuY2U/In1dLCJtYXhfdG9rZW5zIjoxMjh9"
    #   }
    #   options = {}
    #   response = client.sample_training_session(params, options)
    #   response.to_h #=>
    #   {
    #     content_type: "application/json",
    #     body: "eyJjaG9pY2VzIjpbeyJtZXNzYWdlIjp7InJvbGUiOiJhc3Npc3RhbnQiLCJjb250ZW50IjoiUGFyaXMifSwiZmluaXNoX3JlYXNvbiI6InN0b3AifV19"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     training_session_name: "TrainingSessionName", # required
    #     content_type: "String",
    #     accept: "String",
    #     model_package_arn: "String",
    #     body: "data"
    #   }
    #   options = {}
    #   response = client.sample_training_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "String",
    #     body: "data", # required
    #   }
    # @return [Types::SampleTrainingSessionOutput]
    def sample_training_session(params = {}, options = {})
      request = build_request(:sample_training_session, params)
      request.send_request(options)
    end

    # <p>Streams inference responses from the model associated with the specified training session. Use this operation for real-time token-by-token generation. The service passes the request body to the model without modification.</p>
    # @param [Hash, Types::SampleTrainingSessionWithResponseStreamInput] params
    # @option params [String] :training_session_name
    #   <p>The name of the training session whose model to invoke.</p>
    # @option params [String] :content_type
    #   <p>The MIME type of the input data in the request body.</p>
    # @option params [String] :accept
    #   <p>The desired MIME type of the inference body in the response.</p>
    # @option params [String] :model_package_arn
    #   <p>The ARN of the model package whose checkpoint to invoke.</p>
    # @option params [String] :body
    #   <p>The raw inference request body.</p>
    # @example Stream samples from a training session
    #   # Sends a chat completion request to the session's current weights and receives the response as a stream of payload chunks.
    #   params = {
    #     training_session_name: "my-training-session",
    #     content_type: "application/json",
    #     accept: "application/json",
    #     body: "eyJtZXNzYWdlcyI6W3sicm9sZSI6InVzZXIiLCJjb250ZW50IjoiV2hhdCBpcyB0aGUgY2FwaXRhbCBvZiBGcmFuY2U/In1dLCJtYXhfdG9rZW5zIjoxMjgsInN0cmVhbSI6dHJ1ZX0="
    #   }
    #   options = {}
    #   response = client.sample_training_session_with_response_stream(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     training_session_name: "TrainingSessionName", # required
    #     content_type: "String",
    #     accept: "String",
    #     model_package_arn: "String",
    #     body: "data"
    #   }
    #   options = {}
    #   response = client.sample_training_session_with_response_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "String",
    #     body: File.read("source_file"), # required
    #   }
    # @return [Types::SampleTrainingSessionWithResponseStreamOutput]
    def sample_training_session_with_response_stream(params = {}, options = {})
      request = build_request(:sample_training_session_with_response_stream, params)
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
      context[:gem_name] = 'aws-sdk-sagemakertrainingsessionruntime'
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
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
