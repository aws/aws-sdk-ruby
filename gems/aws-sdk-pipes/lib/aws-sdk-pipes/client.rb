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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:pipes)

module Aws::Pipes
  # An API client for Aws::Pipes.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Pipes
    @identifier = :pipes

    add_plugin(::Aws::Pipes::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Pipes::EndpointProvider)
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

    # <p>Create a pipe. Amazon EventBridge Pipes connect event sources to targets and reduces
    #          the need for specialized knowledge and integration code.</p>
    # @param [Hash, Types::CreatePipeRequest] params
    # @option params [String] :name
    #   <p>The name of the pipe.</p>
    # @option params [String] :description
    #   <p>A description of the pipe.</p>
    # @option params [String] :desired_state
    #   <p>The state the pipe should be in.</p>
    # @option params [String] :source
    #   <p>The ARN of the source resource.</p>
    # @option params [Types::PipeSourceParameters] :source_parameters
    #   <p>The parameters required to set up a source for your pipe.</p>
    # @option params [String] :enrichment
    #   <p>The ARN of the enrichment resource.</p>
    # @option params [Types::PipeEnrichmentParameters] :enrichment_parameters
    #   <p>The parameters required to set up enrichment on your pipe.</p>
    # @option params [String] :target
    #   <p>The ARN of the target resource.</p>
    # @option params [Types::PipeTargetParameters] :target_parameters
    #   <p>The parameters required to set up a target for your pipe.</p>
    #            <p>For more information about pipe target parameters, including how to use dynamic path parameters, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-target.html">Target parameters</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the role that allows the pipe to send data to the target.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs to associate with the pipe.</p>
    # @option params [Types::PipeLogConfigurationParameters] :log_configuration
    #   <p>The logging configuration settings for the pipe.</p>
    # @option params [String] :kms_key_identifier
    #   <p>The identifier of the KMS
    #         customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt pipe data. The identifier can be the key 
    #         Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>
    #            <p>If you do not specify a customer managed key identifier, EventBridge uses an
    #           Amazon Web Services owned key to encrypt pipe data.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/getting-started.html">Managing keys</a> in the <i>Key Management Service
    #                                   Developer Guide</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PipeName", # required
    #     description: "PipeDescription",
    #     desired_state: "RequestedPipeState",
    #     source: "ArnOrUrl", # required
    #     source_parameters: {
    #       filter_criteria: {
    #         filters: [
    #           {
    #             pattern: "EventPattern"
    #           }
    #         ]
    #       },
    #       kinesis_stream_parameters: {
    #         batch_size: 1,
    #         dead_letter_config: {
    #           arn: "Arn"
    #         },
    #         on_partial_batch_item_failure: "OnPartialBatchItemFailureStreams",
    #         maximum_batching_window_in_seconds: 1,
    #         maximum_record_age_in_seconds: 1,
    #         maximum_retry_attempts: 1,
    #         parallelization_factor: 1,
    #         starting_position: "KinesisStreamStartPosition", # required
    #         starting_position_timestamp: Time.now
    #       },
    #       dynamo_db_stream_parameters: {
    #         batch_size: 1,
    #         dead_letter_config: {
    #           arn: "Arn"
    #         },
    #         on_partial_batch_item_failure: "OnPartialBatchItemFailureStreams",
    #         maximum_batching_window_in_seconds: 1,
    #         maximum_record_age_in_seconds: 1,
    #         maximum_retry_attempts: 1,
    #         parallelization_factor: 1,
    #         starting_position: "DynamoDBStreamStartPosition", # required
    #       },
    #       sqs_queue_parameters: {
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1
    #       },
    #       active_mq_broker_parameters: {
    #         credentials: { # required
    #           # One of:
    #           basic_auth: "SecretManagerArn"
    #         },
    #         queue_name: "MQBrokerQueueName", # required
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1
    #       },
    #       rabbit_mq_broker_parameters: {
    #         credentials: { # required
    #           # One of:
    #           basic_auth: "SecretManagerArn"
    #         },
    #         queue_name: "MQBrokerQueueName", # required
    #         virtual_host: "URI",
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1
    #       },
    #       managed_streaming_kafka_parameters: {
    #         topic_name: "KafkaTopicName", # required
    #         starting_position: "MSKStartPosition",
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #         consumer_group_id: "URI",
    #         credentials: {
    #           # One of:
    #           sasl_scram512_auth: "SecretManagerArn",
    #           client_certificate_tls_auth: "SecretManagerArn"
    #         }
    #       },
    #       self_managed_kafka_parameters: {
    #         topic_name: "KafkaTopicName", # required
    #         starting_position: "SelfManagedKafkaStartPosition",
    #         additional_bootstrap_servers: ["EndpointString"],
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #         consumer_group_id: "URI",
    #         credentials: {
    #           # One of:
    #           basic_auth: "SecretManagerArn",
    #           sasl_scram512_auth: "SecretManagerArn",
    #           sasl_scram256_auth: "SecretManagerArn",
    #           client_certificate_tls_auth: "SecretManagerArn"
    #         },
    #         server_root_ca_certificate: "SecretManagerArn",
    #         vpc: {
    #           subnets: ["SubnetId"],
    #           security_group: ["SecurityGroupId"]
    #         }
    #       }
    #     },
    #     enrichment: "OptionalArn",
    #     enrichment_parameters: {
    #       input_template: "InputTemplate",
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue"
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue"
    #         }
    #       }
    #     },
    #     target: "Arn", # required
    #     target_parameters: {
    #       input_template: "InputTemplate",
    #       lambda_function_parameters: {
    #         invocation_type: "PipeTargetInvocationType"
    #       },
    #       step_function_state_machine_parameters: {
    #         invocation_type: "PipeTargetInvocationType"
    #       },
    #       kinesis_stream_parameters: {
    #         partition_key: "KinesisPartitionKey", # required
    #       },
    #       ecs_task_parameters: {
    #         task_definition_arn: "ArnOrJsonPath", # required
    #         task_count: 1,
    #         launch_type: "LaunchType",
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["Subnet"], # required
    #             security_groups: ["SecurityGroup"],
    #             assign_public_ip: "AssignPublicIp"
    #           }
    #         },
    #         platform_version: "String",
    #         group: "String",
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "CapacityProvider", # required
    #             weight: 1,
    #             base: 1
    #           }
    #         ],
    #         enable_ecs_managed_tags: false,
    #         enable_execute_command: false,
    #         placement_constraints: [
    #           {
    #             type: "PlacementConstraintType",
    #             expression: "PlacementConstraintExpression"
    #           }
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "PlacementStrategyType",
    #             field: "PlacementStrategyField"
    #           }
    #         ],
    #         propagate_tags: "PropagateTags",
    #         reference_id: "ReferenceId",
    #         overrides: {
    #           container_overrides: [
    #             {
    #               command: ["String"],
    #               cpu: 1,
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String"
    #                 }
    #               ],
    #               environment_files: [
    #                 {
    #                   type: "EcsEnvironmentFileType", # required
    #                   value: "String", # required
    #                 }
    #               ],
    #               memory: 1,
    #               memory_reservation: 1,
    #               name: "String",
    #               resource_requirements: [
    #                 {
    #                   type: "EcsResourceRequirementType", # required
    #                   value: "String", # required
    #                 }
    #               ]
    #             }
    #           ],
    #           cpu: "String",
    #           ephemeral_storage: {
    #             size_in_gi_b: 1, # required
    #           },
    #           execution_role_arn: "ArnOrJsonPath",
    #           inference_accelerator_overrides: [
    #             {
    #               device_name: "String",
    #               device_type: "String"
    #             }
    #           ],
    #           memory: "String",
    #           task_role_arn: "ArnOrJsonPath"
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       },
    #       batch_job_parameters: {
    #         job_definition: "String", # required
    #         job_name: "String", # required
    #         array_properties: {
    #           size: 1
    #         },
    #         retry_strategy: {
    #           attempts: 1
    #         },
    #         container_overrides: {
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ],
    #           instance_type: "String",
    #           resource_requirements: [
    #             {
    #               type: "BatchResourceRequirementType", # required
    #               value: "String", # required
    #             }
    #           ]
    #         },
    #         depends_on: [
    #           {
    #             job_id: "String",
    #             type: "BatchJobDependencyType"
    #           }
    #         ],
    #         parameters: {
    #           "String" => "String"
    #         }
    #       },
    #       sqs_queue_parameters: {
    #         message_group_id: "MessageGroupId",
    #         message_deduplication_id: "MessageDeduplicationId"
    #       },
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue"
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue"
    #         }
    #       },
    #       redshift_data_parameters: {
    #         secret_manager_arn: "SecretManagerArnOrJsonPath",
    #         database: "Database", # required
    #         db_user: "DbUser",
    #         statement_name: "StatementName",
    #         with_event: false,
    #         sqls: ["Sql"], # required
    #       },
    #       sage_maker_pipeline_parameters: {
    #         pipeline_parameter_list: [
    #           {
    #             name: "SageMakerPipelineParameterName", # required
    #             value: "SageMakerPipelineParameterValue", # required
    #           }
    #         ]
    #       },
    #       event_bridge_event_bus_parameters: {
    #         endpoint_id: "EventBridgeEndpointId",
    #         detail_type: "EventBridgeDetailType",
    #         source: "EventBridgeEventSource",
    #         resources: ["ArnOrJsonPath"],
    #         time: "JsonPath"
    #       },
    #       cloud_watch_logs_parameters: {
    #         log_stream_name: "LogStreamName",
    #         timestamp: "JsonPath"
    #       },
    #       timestream_parameters: {
    #         time_value: "TimeValue", # required
    #         epoch_time_unit: "EpochTimeUnit",
    #         time_field_type: "TimeFieldType",
    #         timestamp_format: "TimestampFormat",
    #         version_value: "VersionValue", # required
    #         dimension_mappings: [ # required
    #           {
    #             dimension_value: "DimensionValue", # required
    #             dimension_value_type: "DimensionValueType", # required
    #             dimension_name: "DimensionName", # required
    #           }
    #         ],
    #         single_measure_mappings: [
    #           {
    #             measure_value: "MeasureValue", # required
    #             measure_value_type: "MeasureValueType", # required
    #             measure_name: "MeasureName", # required
    #           }
    #         ],
    #         multi_measure_mappings: [
    #           {
    #             multi_measure_name: "MultiMeasureName", # required
    #             multi_measure_attribute_mappings: [ # required
    #               {
    #                 measure_value: "MeasureValue", # required
    #                 measure_value_type: "MeasureValueType", # required
    #                 multi_measure_attribute_name: "MultiMeasureAttributeName", # required
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     log_configuration: {
    #       s3_log_destination: {
    #         bucket_name: "String", # required
    #         bucket_owner: "String", # required
    #         output_format: "S3OutputFormat",
    #         prefix: "String"
    #       },
    #       firehose_log_destination: {
    #         delivery_stream_arn: "FirehoseArn", # required
    #       },
    #       cloudwatch_logs_log_destination: {
    #         log_group_arn: "CloudwatchLogGroupArn", # required
    #       },
    #       level: "LogLevel", # required
    #       include_execution_data: ["IncludeExecutionDataOption"]
    #     },
    #     kms_key_identifier: "KmsKeyIdentifier"
    #   }
    #   options = {}
    #   response = client.create_pipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PipeArn",
    #     name: "PipeName",
    #     desired_state: "RequestedPipeState",
    #     current_state: "PipeState",
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::CreatePipeResponse]
    def create_pipe(params = {}, options = {})
      request = build_request(:create_pipe, params)
      request.send_request(options)
    end

    # <p>Delete an existing pipe. For more information about pipes, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html">Amazon EventBridge Pipes</a> in the Amazon EventBridge User Guide.</p>
    # @param [Hash, Types::DeletePipeRequest] params
    # @option params [String] :name
    #   <p>The name of the pipe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PipeName", # required
    #   }
    #   options = {}
    #   response = client.delete_pipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PipeArn",
    #     name: "PipeName",
    #     desired_state: "RequestedPipeStateDescribeResponse",
    #     current_state: "PipeState",
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::DeletePipeResponse]
    def delete_pipe(params = {}, options = {})
      request = build_request(:delete_pipe, params)
      request.send_request(options)
    end

    # <p>Get the information about an existing pipe. For more information about pipes, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html">Amazon EventBridge Pipes</a> in the Amazon EventBridge User Guide.</p>
    # @param [Hash, Types::DescribePipeRequest] params
    # @option params [String] :name
    #   <p>The name of the pipe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PipeName", # required
    #   }
    #   options = {}
    #   response = client.describe_pipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PipeArn",
    #     name: "PipeName",
    #     description: "PipeDescription",
    #     desired_state: "RequestedPipeStateDescribeResponse",
    #     current_state: "PipeState",
    #     state_reason: "PipeStateReason",
    #     source: "ArnOrUrl",
    #     source_parameters: {
    #       filter_criteria: {
    #         filters: [
    #           {
    #             pattern: "EventPattern"
    #           }
    #         ]
    #       },
    #       kinesis_stream_parameters: {
    #         batch_size: 1,
    #         dead_letter_config: {
    #           arn: "Arn"
    #         },
    #         on_partial_batch_item_failure: "OnPartialBatchItemFailureStreams",
    #         maximum_batching_window_in_seconds: 1,
    #         maximum_record_age_in_seconds: 1,
    #         maximum_retry_attempts: 1,
    #         parallelization_factor: 1,
    #         starting_position: "KinesisStreamStartPosition", # required
    #         starting_position_timestamp: Time.now
    #       },
    #       dynamo_db_stream_parameters: {
    #         batch_size: 1,
    #         dead_letter_config: {
    #           arn: "Arn"
    #         },
    #         on_partial_batch_item_failure: "OnPartialBatchItemFailureStreams",
    #         maximum_batching_window_in_seconds: 1,
    #         maximum_record_age_in_seconds: 1,
    #         maximum_retry_attempts: 1,
    #         parallelization_factor: 1,
    #         starting_position: "DynamoDBStreamStartPosition", # required
    #       },
    #       sqs_queue_parameters: {
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1
    #       },
    #       active_mq_broker_parameters: {
    #         credentials: { # required
    #           # One of:
    #           basic_auth: "SecretManagerArn"
    #         },
    #         queue_name: "MQBrokerQueueName", # required
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1
    #       },
    #       rabbit_mq_broker_parameters: {
    #         credentials: { # required
    #           # One of:
    #           basic_auth: "SecretManagerArn"
    #         },
    #         queue_name: "MQBrokerQueueName", # required
    #         virtual_host: "URI",
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1
    #       },
    #       managed_streaming_kafka_parameters: {
    #         topic_name: "KafkaTopicName", # required
    #         starting_position: "MSKStartPosition",
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #         consumer_group_id: "URI",
    #         credentials: {
    #           # One of:
    #           sasl_scram512_auth: "SecretManagerArn",
    #           client_certificate_tls_auth: "SecretManagerArn"
    #         }
    #       },
    #       self_managed_kafka_parameters: {
    #         topic_name: "KafkaTopicName", # required
    #         starting_position: "SelfManagedKafkaStartPosition",
    #         additional_bootstrap_servers: ["EndpointString"],
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #         consumer_group_id: "URI",
    #         credentials: {
    #           # One of:
    #           basic_auth: "SecretManagerArn",
    #           sasl_scram512_auth: "SecretManagerArn",
    #           sasl_scram256_auth: "SecretManagerArn",
    #           client_certificate_tls_auth: "SecretManagerArn"
    #         },
    #         server_root_ca_certificate: "SecretManagerArn",
    #         vpc: {
    #           subnets: ["SubnetId"],
    #           security_group: ["SecurityGroupId"]
    #         }
    #       }
    #     },
    #     enrichment: "OptionalArn",
    #     enrichment_parameters: {
    #       input_template: "InputTemplate",
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue"
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue"
    #         }
    #       }
    #     },
    #     target: "Arn",
    #     target_parameters: {
    #       input_template: "InputTemplate",
    #       lambda_function_parameters: {
    #         invocation_type: "PipeTargetInvocationType"
    #       },
    #       step_function_state_machine_parameters: {
    #         invocation_type: "PipeTargetInvocationType"
    #       },
    #       kinesis_stream_parameters: {
    #         partition_key: "KinesisPartitionKey", # required
    #       },
    #       ecs_task_parameters: {
    #         task_definition_arn: "ArnOrJsonPath", # required
    #         task_count: 1,
    #         launch_type: "LaunchType",
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["Subnet"], # required
    #             security_groups: ["SecurityGroup"],
    #             assign_public_ip: "AssignPublicIp"
    #           }
    #         },
    #         platform_version: "String",
    #         group: "String",
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "CapacityProvider", # required
    #             weight: 1,
    #             base: 1
    #           }
    #         ],
    #         enable_ecs_managed_tags: false,
    #         enable_execute_command: false,
    #         placement_constraints: [
    #           {
    #             type: "PlacementConstraintType",
    #             expression: "PlacementConstraintExpression"
    #           }
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "PlacementStrategyType",
    #             field: "PlacementStrategyField"
    #           }
    #         ],
    #         propagate_tags: "PropagateTags",
    #         reference_id: "ReferenceId",
    #         overrides: {
    #           container_overrides: [
    #             {
    #               command: ["String"],
    #               cpu: 1,
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String"
    #                 }
    #               ],
    #               environment_files: [
    #                 {
    #                   type: "EcsEnvironmentFileType", # required
    #                   value: "String", # required
    #                 }
    #               ],
    #               memory: 1,
    #               memory_reservation: 1,
    #               name: "String",
    #               resource_requirements: [
    #                 {
    #                   type: "EcsResourceRequirementType", # required
    #                   value: "String", # required
    #                 }
    #               ]
    #             }
    #           ],
    #           cpu: "String",
    #           ephemeral_storage: {
    #             size_in_gi_b: 1, # required
    #           },
    #           execution_role_arn: "ArnOrJsonPath",
    #           inference_accelerator_overrides: [
    #             {
    #               device_name: "String",
    #               device_type: "String"
    #             }
    #           ],
    #           memory: "String",
    #           task_role_arn: "ArnOrJsonPath"
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       },
    #       batch_job_parameters: {
    #         job_definition: "String", # required
    #         job_name: "String", # required
    #         array_properties: {
    #           size: 1
    #         },
    #         retry_strategy: {
    #           attempts: 1
    #         },
    #         container_overrides: {
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ],
    #           instance_type: "String",
    #           resource_requirements: [
    #             {
    #               type: "BatchResourceRequirementType", # required
    #               value: "String", # required
    #             }
    #           ]
    #         },
    #         depends_on: [
    #           {
    #             job_id: "String",
    #             type: "BatchJobDependencyType"
    #           }
    #         ],
    #         parameters: {
    #           "String" => "String"
    #         }
    #       },
    #       sqs_queue_parameters: {
    #         message_group_id: "MessageGroupId",
    #         message_deduplication_id: "MessageDeduplicationId"
    #       },
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue"
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue"
    #         }
    #       },
    #       redshift_data_parameters: {
    #         secret_manager_arn: "SecretManagerArnOrJsonPath",
    #         database: "Database", # required
    #         db_user: "DbUser",
    #         statement_name: "StatementName",
    #         with_event: false,
    #         sqls: ["Sql"], # required
    #       },
    #       sage_maker_pipeline_parameters: {
    #         pipeline_parameter_list: [
    #           {
    #             name: "SageMakerPipelineParameterName", # required
    #             value: "SageMakerPipelineParameterValue", # required
    #           }
    #         ]
    #       },
    #       event_bridge_event_bus_parameters: {
    #         endpoint_id: "EventBridgeEndpointId",
    #         detail_type: "EventBridgeDetailType",
    #         source: "EventBridgeEventSource",
    #         resources: ["ArnOrJsonPath"],
    #         time: "JsonPath"
    #       },
    #       cloud_watch_logs_parameters: {
    #         log_stream_name: "LogStreamName",
    #         timestamp: "JsonPath"
    #       },
    #       timestream_parameters: {
    #         time_value: "TimeValue", # required
    #         epoch_time_unit: "EpochTimeUnit",
    #         time_field_type: "TimeFieldType",
    #         timestamp_format: "TimestampFormat",
    #         version_value: "VersionValue", # required
    #         dimension_mappings: [ # required
    #           {
    #             dimension_value: "DimensionValue", # required
    #             dimension_value_type: "DimensionValueType", # required
    #             dimension_name: "DimensionName", # required
    #           }
    #         ],
    #         single_measure_mappings: [
    #           {
    #             measure_value: "MeasureValue", # required
    #             measure_value_type: "MeasureValueType", # required
    #             measure_name: "MeasureName", # required
    #           }
    #         ],
    #         multi_measure_mappings: [
    #           {
    #             multi_measure_name: "MultiMeasureName", # required
    #             multi_measure_attribute_mappings: [ # required
    #               {
    #                 measure_value: "MeasureValue", # required
    #                 measure_value_type: "MeasureValueType", # required
    #                 multi_measure_attribute_name: "MultiMeasureAttributeName", # required
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     },
    #     role_arn: "RoleArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     creation_time: Time.now,
    #     last_modified_time: Time.now,
    #     log_configuration: {
    #       s3_log_destination: {
    #         bucket_name: "String",
    #         prefix: "String",
    #         bucket_owner: "String",
    #         output_format: "S3OutputFormat"
    #       },
    #       firehose_log_destination: {
    #         delivery_stream_arn: "FirehoseArn"
    #       },
    #       cloudwatch_logs_log_destination: {
    #         log_group_arn: "CloudwatchLogGroupArn"
    #       },
    #       level: "LogLevel",
    #       include_execution_data: ["IncludeExecutionDataOption"]
    #     },
    #     kms_key_identifier: "KmsKeyIdentifier"
    #   }
    # @return [Types::DescribePipeResponse]
    def describe_pipe(params = {}, options = {})
      request = build_request(:describe_pipe, params)
      request.send_request(options)
    end

    # <p>Get the pipes associated with this account. For more information about pipes, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html">Amazon EventBridge Pipes</a> in the Amazon EventBridge User Guide.</p>
    # @param [Hash, Types::ListPipesRequest] params
    # @option params [String] :name_prefix
    #   <p>A value that will return a subset of the pipes associated with this account. For
    #            example, <code>"NamePrefix": "ABC"</code> will return all endpoints with "ABC" in the
    #            name.</p>
    # @option params [String] :desired_state
    #   <p>The state the pipe should be in.</p>
    # @option params [String] :current_state
    #   <p>The state the pipe is in.</p>
    # @option params [String] :source_prefix
    #   <p>The prefix matching the pipe source.</p>
    # @option params [String] :target_prefix
    #   <p>The prefix matching the pipe target.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. 
    #            Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination 
    #            token will return an HTTP 400 InvalidToken error.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of pipes to include in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "PipeName",
    #     desired_state: "RequestedPipeState",
    #     current_state: "PipeState",
    #     source_prefix: "ResourceArn",
    #     target_prefix: "ResourceArn",
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_pipes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipes: [
    #       {
    #         name: "PipeName",
    #         arn: "PipeArn",
    #         desired_state: "RequestedPipeState",
    #         current_state: "PipeState",
    #         state_reason: "PipeStateReason",
    #         creation_time: Time.now,
    #         last_modified_time: Time.now,
    #         source: "ArnOrUrl",
    #         target: "Arn",
    #         enrichment: "OptionalArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPipesResponse]
    def list_pipes(params = {}, options = {})
      request = build_request(:list_pipes, params)
      request.send_request(options)
    end

    # <p>Displays the tags associated with a pipe.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the pipe for which you want to view tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "PipeArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Start an existing pipe.</p>
    # @param [Hash, Types::StartPipeRequest] params
    # @option params [String] :name
    #   <p>The name of the pipe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PipeName", # required
    #   }
    #   options = {}
    #   response = client.start_pipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PipeArn",
    #     name: "PipeName",
    #     desired_state: "RequestedPipeState",
    #     current_state: "PipeState",
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::StartPipeResponse]
    def start_pipe(params = {}, options = {})
      request = build_request(:start_pipe, params)
      request.send_request(options)
    end

    # <p>Stop an existing pipe.</p>
    # @param [Hash, Types::StopPipeRequest] params
    # @option params [String] :name
    #   <p>The name of the pipe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PipeName", # required
    #   }
    #   options = {}
    #   response = client.stop_pipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PipeArn",
    #     name: "PipeName",
    #     desired_state: "RequestedPipeState",
    #     current_state: "PipeState",
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::StopPipeResponse]
    def stop_pipe(params = {}, options = {})
      request = build_request(:stop_pipe, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified pipe. Tags can help you
    #          organize and categorize your resources. You can also use them to scope user permissions by
    #          granting a user permission to access or change only resources with certain tag
    #          values.</p>
    #          <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly
    #          as strings of characters.</p>
    #          <p>You can use the <code>TagResource</code> action with a pipe that already has tags. If
    #          you specify a new tag key, this tag is appended to the list of tags associated with the
    #          pipe. If you specify a tag key that is already associated with the pipe, the new tag value
    #          that you specify replaces the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a pipe.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the pipe.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs associated with the pipe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "PipeArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
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

    # <p>Removes one or more tags from the specified pipes.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the pipe.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the pipe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "PipeArn", # required
    #     tag_keys: ["TagKey"], # required
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

    # <p>Update an existing pipe. When you call <code>UpdatePipe</code>, EventBridge only the
    #          updates fields you have specified in the request; the rest remain unchanged. The exception
    #          to this is if you modify any Amazon Web Services-service specific fields in the
    #             <code>SourceParameters</code>, <code>EnrichmentParameters</code>, or
    #             <code>TargetParameters</code> objects. For example,
    #             <code>DynamoDBStreamParameters</code> or <code>EventBridgeEventBusParameters</code>.
    #          EventBridge updates the fields in these objects atomically as one and overrides existing
    #          values. This is by design, and means that if you don't specify an optional field in one of
    #          these <code>Parameters</code> objects, EventBridge sets that field to its system-default
    #          value during the update.</p>
    #          <p>For more information about pipes, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html">
    #             Amazon EventBridge Pipes</a> in the Amazon EventBridge User Guide.</p>
    # @param [Hash, Types::UpdatePipeRequest] params
    # @option params [String] :name
    #   <p>The name of the pipe.</p>
    # @option params [String] :description
    #   <p>A description of the pipe.</p>
    # @option params [String] :desired_state
    #   <p>The state the pipe should be in.</p>
    # @option params [Types::UpdatePipeSourceParameters] :source_parameters
    #   <p>The parameters required to set up a source for your pipe.</p>
    # @option params [String] :enrichment
    #   <p>The ARN of the enrichment resource.</p>
    # @option params [Types::PipeEnrichmentParameters] :enrichment_parameters
    #   <p>The parameters required to set up enrichment on your pipe.</p>
    # @option params [String] :target
    #   <p>The ARN of the target resource.</p>
    # @option params [Types::PipeTargetParameters] :target_parameters
    #   <p>The parameters required to set up a target for your pipe.</p>
    #            <p>For more information about pipe target parameters, including how to use dynamic path parameters, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-event-target.html">Target parameters</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the role that allows the pipe to send data to the target.</p>
    # @option params [Types::PipeLogConfigurationParameters] :log_configuration
    #   <p>The logging configuration settings for the pipe.</p>
    # @option params [String] :kms_key_identifier
    #   <p>The identifier of the KMS
    #            customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt pipe data. The identifier can be the key 
    #            Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>
    #            <p>To update a pipe that is using the default Amazon Web Services owned key to use a customer managed key instead, or update a pipe that is using a customer managed key to use a
    #            different customer managed key, specify a customer managed key identifier.</p>
    #            <p>To update a pipe that is using a customer managed key to use the default Amazon Web Services owned key, specify an empty string.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/getting-started.html">Managing keys</a> in the <i>Key Management Service
    #               Developer Guide</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "PipeName", # required
    #     description: "PipeDescription",
    #     desired_state: "RequestedPipeState",
    #     source_parameters: {
    #       filter_criteria: {
    #         filters: [
    #           {
    #             pattern: "EventPattern"
    #           }
    #         ]
    #       },
    #       kinesis_stream_parameters: {
    #         batch_size: 1,
    #         dead_letter_config: {
    #           arn: "Arn"
    #         },
    #         on_partial_batch_item_failure: "OnPartialBatchItemFailureStreams",
    #         maximum_batching_window_in_seconds: 1,
    #         maximum_record_age_in_seconds: 1,
    #         maximum_retry_attempts: 1,
    #         parallelization_factor: 1
    #       },
    #       dynamo_db_stream_parameters: {
    #         batch_size: 1,
    #         dead_letter_config: {
    #           arn: "Arn"
    #         },
    #         on_partial_batch_item_failure: "OnPartialBatchItemFailureStreams",
    #         maximum_batching_window_in_seconds: 1,
    #         maximum_record_age_in_seconds: 1,
    #         maximum_retry_attempts: 1,
    #         parallelization_factor: 1
    #       },
    #       sqs_queue_parameters: {
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1
    #       },
    #       active_mq_broker_parameters: {
    #         credentials: { # required
    #           # One of:
    #           basic_auth: "SecretManagerArn"
    #         },
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1
    #       },
    #       rabbit_mq_broker_parameters: {
    #         credentials: { # required
    #           # One of:
    #           basic_auth: "SecretManagerArn"
    #         },
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1
    #       },
    #       managed_streaming_kafka_parameters: {
    #         batch_size: 1,
    #         credentials: {
    #           # One of:
    #           sasl_scram512_auth: "SecretManagerArn",
    #           client_certificate_tls_auth: "SecretManagerArn"
    #         },
    #         maximum_batching_window_in_seconds: 1
    #       },
    #       self_managed_kafka_parameters: {
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #         credentials: {
    #           # One of:
    #           basic_auth: "SecretManagerArn",
    #           sasl_scram512_auth: "SecretManagerArn",
    #           sasl_scram256_auth: "SecretManagerArn",
    #           client_certificate_tls_auth: "SecretManagerArn"
    #         },
    #         server_root_ca_certificate: "SecretManagerArn",
    #         vpc: {
    #           subnets: ["SubnetId"],
    #           security_group: ["SecurityGroupId"]
    #         }
    #       }
    #     },
    #     enrichment: "OptionalArn",
    #     enrichment_parameters: {
    #       input_template: "InputTemplate",
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue"
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue"
    #         }
    #       }
    #     },
    #     target: "Arn",
    #     target_parameters: {
    #       input_template: "InputTemplate",
    #       lambda_function_parameters: {
    #         invocation_type: "PipeTargetInvocationType"
    #       },
    #       step_function_state_machine_parameters: {
    #         invocation_type: "PipeTargetInvocationType"
    #       },
    #       kinesis_stream_parameters: {
    #         partition_key: "KinesisPartitionKey", # required
    #       },
    #       ecs_task_parameters: {
    #         task_definition_arn: "ArnOrJsonPath", # required
    #         task_count: 1,
    #         launch_type: "LaunchType",
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["Subnet"], # required
    #             security_groups: ["SecurityGroup"],
    #             assign_public_ip: "AssignPublicIp"
    #           }
    #         },
    #         platform_version: "String",
    #         group: "String",
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "CapacityProvider", # required
    #             weight: 1,
    #             base: 1
    #           }
    #         ],
    #         enable_ecs_managed_tags: false,
    #         enable_execute_command: false,
    #         placement_constraints: [
    #           {
    #             type: "PlacementConstraintType",
    #             expression: "PlacementConstraintExpression"
    #           }
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "PlacementStrategyType",
    #             field: "PlacementStrategyField"
    #           }
    #         ],
    #         propagate_tags: "PropagateTags",
    #         reference_id: "ReferenceId",
    #         overrides: {
    #           container_overrides: [
    #             {
    #               command: ["String"],
    #               cpu: 1,
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String"
    #                 }
    #               ],
    #               environment_files: [
    #                 {
    #                   type: "EcsEnvironmentFileType", # required
    #                   value: "String", # required
    #                 }
    #               ],
    #               memory: 1,
    #               memory_reservation: 1,
    #               name: "String",
    #               resource_requirements: [
    #                 {
    #                   type: "EcsResourceRequirementType", # required
    #                   value: "String", # required
    #                 }
    #               ]
    #             }
    #           ],
    #           cpu: "String",
    #           ephemeral_storage: {
    #             size_in_gi_b: 1, # required
    #           },
    #           execution_role_arn: "ArnOrJsonPath",
    #           inference_accelerator_overrides: [
    #             {
    #               device_name: "String",
    #               device_type: "String"
    #             }
    #           ],
    #           memory: "String",
    #           task_role_arn: "ArnOrJsonPath"
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       },
    #       batch_job_parameters: {
    #         job_definition: "String", # required
    #         job_name: "String", # required
    #         array_properties: {
    #           size: 1
    #         },
    #         retry_strategy: {
    #           attempts: 1
    #         },
    #         container_overrides: {
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ],
    #           instance_type: "String",
    #           resource_requirements: [
    #             {
    #               type: "BatchResourceRequirementType", # required
    #               value: "String", # required
    #             }
    #           ]
    #         },
    #         depends_on: [
    #           {
    #             job_id: "String",
    #             type: "BatchJobDependencyType"
    #           }
    #         ],
    #         parameters: {
    #           "String" => "String"
    #         }
    #       },
    #       sqs_queue_parameters: {
    #         message_group_id: "MessageGroupId",
    #         message_deduplication_id: "MessageDeduplicationId"
    #       },
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue"
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue"
    #         }
    #       },
    #       redshift_data_parameters: {
    #         secret_manager_arn: "SecretManagerArnOrJsonPath",
    #         database: "Database", # required
    #         db_user: "DbUser",
    #         statement_name: "StatementName",
    #         with_event: false,
    #         sqls: ["Sql"], # required
    #       },
    #       sage_maker_pipeline_parameters: {
    #         pipeline_parameter_list: [
    #           {
    #             name: "SageMakerPipelineParameterName", # required
    #             value: "SageMakerPipelineParameterValue", # required
    #           }
    #         ]
    #       },
    #       event_bridge_event_bus_parameters: {
    #         endpoint_id: "EventBridgeEndpointId",
    #         detail_type: "EventBridgeDetailType",
    #         source: "EventBridgeEventSource",
    #         resources: ["ArnOrJsonPath"],
    #         time: "JsonPath"
    #       },
    #       cloud_watch_logs_parameters: {
    #         log_stream_name: "LogStreamName",
    #         timestamp: "JsonPath"
    #       },
    #       timestream_parameters: {
    #         time_value: "TimeValue", # required
    #         epoch_time_unit: "EpochTimeUnit",
    #         time_field_type: "TimeFieldType",
    #         timestamp_format: "TimestampFormat",
    #         version_value: "VersionValue", # required
    #         dimension_mappings: [ # required
    #           {
    #             dimension_value: "DimensionValue", # required
    #             dimension_value_type: "DimensionValueType", # required
    #             dimension_name: "DimensionName", # required
    #           }
    #         ],
    #         single_measure_mappings: [
    #           {
    #             measure_value: "MeasureValue", # required
    #             measure_value_type: "MeasureValueType", # required
    #             measure_name: "MeasureName", # required
    #           }
    #         ],
    #         multi_measure_mappings: [
    #           {
    #             multi_measure_name: "MultiMeasureName", # required
    #             multi_measure_attribute_mappings: [ # required
    #               {
    #                 measure_value: "MeasureValue", # required
    #                 measure_value_type: "MeasureValueType", # required
    #                 multi_measure_attribute_name: "MultiMeasureAttributeName", # required
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     },
    #     role_arn: "RoleArn", # required
    #     log_configuration: {
    #       s3_log_destination: {
    #         bucket_name: "String", # required
    #         bucket_owner: "String", # required
    #         output_format: "S3OutputFormat",
    #         prefix: "String"
    #       },
    #       firehose_log_destination: {
    #         delivery_stream_arn: "FirehoseArn", # required
    #       },
    #       cloudwatch_logs_log_destination: {
    #         log_group_arn: "CloudwatchLogGroupArn", # required
    #       },
    #       level: "LogLevel", # required
    #       include_execution_data: ["IncludeExecutionDataOption"]
    #     },
    #     kms_key_identifier: "KmsKeyIdentifier"
    #   }
    #   options = {}
    #   response = client.update_pipe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "PipeArn",
    #     name: "PipeName",
    #     desired_state: "RequestedPipeState",
    #     current_state: "PipeState",
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::UpdatePipeResponse]
    def update_pipe(params = {}, options = {})
      request = build_request(:update_pipe, params)
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
      context[:gem_name] = 'aws-sdk-pipes'
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
