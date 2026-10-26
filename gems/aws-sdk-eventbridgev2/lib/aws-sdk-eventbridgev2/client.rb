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
require 'smithy-client/rpc_v2_cbor'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:eventbridgev2)

module Aws::EventBridgeV2
  # An API client for Aws::EventBridgeV2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSEventsV2
    @identifier = :eventbridgev2

    add_plugin(::Aws::EventBridgeV2::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::EventBridgeV2::EndpointProvider)
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
    #  Supported protocols: +:rpc_v2_cbor+ (defaults to +:rpc_v2_cbor+).
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

    # Creates an event bus. Provisioning is asynchronous: the bus is returned in the
    # CREATING state and transitions to ACTIVE when ready (see the EventBusActive
    # waiter). Retries carrying the same ClientToken are idempotent.
    # @param [Hash, Types::CreateEventBusRequest] params
    # @option params [String] :name
    #   Name of an event bus. The first character must be alphanumeric; the remaining characters
    #   may also include '.', '-', and '_'. The grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in the bus's ARN. The same
    #   type is used everywhere a bus name appears.
    # @option params [String] :description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   Encryption configuration for an event bus.
    # @option params [Types::StorageConfiguration] :storage_configuration
    #   Event storage configuration for an event bus.
    # @option params [Hash<String, String>] :tags
    #   Tags attached to a resource, as key-value pairs.
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of the
    #   request. The SDK generates one automatically when the field is omitted.
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventBusName", # required
    #     description: "Description",
    #     encryption_configuration: {
    #       kms_key_identifier: "KmsKeyIdentifier"
    #     },
    #     storage_configuration: {
    #       retention_period_in_days: 1
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_event_bus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_bus_arn: "EventBusArn",
    #     name: "EventBusName",
    #     description: "Description",
    #     encryption_configuration: {
    #       kms_key_identifier: "KmsKeyIdentifier"
    #     },
    #     storage_configuration: {
    #       retention_period_in_days: 1,
    #       retention_window_start_time: Time.now
    #     },
    #     state: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ACTIVE", "DELETE_FAILED"],
    #     state_reason: "StateReason",
    #     creation_time: Time.now
    #   }
    # @return [Types::CreateEventBusResponse]
    def create_event_bus(params = {}, options = {})
      request = build_request(:create_event_bus, params)
      request.send_request(options)
    end

    # Creates an EventSource, which forwards events from an origin (an AWS service
    # or another account) onto an event bus. The bus must be ACTIVE. Retries
    # carrying the same ClientToken are idempotent.
    # @param [Hash, Types::CreateEventSourceRequest] params
    # @option params [String] :name
    #   EventSource name. First character alphanumeric; the rest may add '.', '-', '_'. Names may not
    #   begin with the reserved "aws." prefix. The grammar
    #   matches the ARN local-name segment in EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be created.
    # @option params [String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @option params [Types::EventSourceConfiguration] :configuration
    #   Discriminated EventSource configuration. Exactly one variant must be set.
    # @option params [String] :description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    # @option params [Hash<String, String>] :tags
    #   Tags attached to a resource, as key-value pairs.
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of the
    #   request. The SDK generates one automatically when the field is omitted.
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventSourceName", # required
    #     event_bus_arn: "EventBusArn", # required
    #     configuration: { # required
    #       # One of:
    #       aws_service_events_configuration: {
    #         aws_service: "AwsServiceSource", # required
    #         pattern: "EventPattern",
    #         on_failure_configuration: {
    #           arn: "DeadLetterQueueArn"
    #         }
    #       },
    #       partner_events_configuration: {
    #         partner_event_source_arn: "PartnerEventSourceArn", # required
    #         pattern: "EventPattern",
    #         partner_bus_kms_key_identifier: "KmsKeyIdentifier",
    #         on_failure_configuration: {
    #           arn: "DeadLetterQueueArn"
    #         }
    #       }
    #     },
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_event_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_source_arn: "EventSourceArn",
    #     name: "EventSourceName",
    #     event_bus_arn: "EventBusArn",
    #     state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"],
    #     creation_time: Time.now
    #   }
    # @return [Types::CreateEventSourceResponse]
    def create_event_source(params = {}, options = {})
      request = build_request(:create_event_source, params)
      request.send_request(options)
    end

    # Creates a subscriber on an event bus, which delivers matching events to the
    # configured target. The bus must be ACTIVE. Retries carrying the same
    # ClientToken are idempotent.
    # @param [Hash, Types::CreateSubscriberRequest] params
    # @option params [String] :name
    #   Name of a subscriber. The first character must be alphanumeric; the remaining
    #   characters may also include '.', '-', and '_'.
    # @option params [String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @option params [Types::InvokeConfiguration] :invoke_configuration
    #   Configuration for how the subscriber invokes its target.
    # @option params [String] :description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    # @option params [Types::FilterConfiguration] :filter_configuration
    #   Configuration for filtering events delivered to a subscriber.
    #   On CreateSubscriber, Filters is required and must contain at least one Filter with a non-empty Pattern.
    #   On UpdateSubscriber, an empty `FilterConfiguration:{}` clears the existing filter.
    #   Any non-empty shape (including `{Language:X}` without Filters) must contain a valid Filters list
    #   — same contract as CreateSubscriber. A non-empty Filters list overwrites; an omitted
    #   FilterConfiguration preserves existing state.
    #   All Filters are implicitly ANDed — an event must match every Filter to be delivered.
    # @option params [String] :type
    #   Delivery ordering mode of a subscriber: FIFO delivers events in order within
    #   an event group; UNORDERED delivers without an ordering guarantee.
    # @option params [String] :starting_position
    #   Starting position for a subscriber.
    # @option params [Types::PointInTimeConfiguration] :point_in_time_configuration
    #   Point-in-time configuration for a subscriber.
    #   Only applicable when StartingPosition is POINT_IN_TIME.
    # @option params [Types::BatchConfiguration] :batch_configuration
    #   Batching configuration for a subscriber.
    # @option params [Types::Transformer] :transformer
    #   Not applicable to universal (aws-sdk) targets, whose input transformation is UniversalTargetParameters.Input; a Transformer on such a target is rejected.
    # @option params [Types::RetryPolicy] :retry_policy
    #   Retry policy for a subscriber.
    # @option params [Types::OnFailureConfiguration] :on_failure_configuration
    #   On-failure configuration: where a failed delivery is sent. Shared by the subscriber and the
    #   EventSource.
    # @option params [Types::LogConfiguration] :log_configuration
    #   Log configuration for a subscriber.
    # @option params [String] :state
    #   Customer-controlled run state of a subscriber, set on create or update. Distinct
    #   from the bus lifecycle vocabulary, where ACTIVE means "provisioned and healthy".
    #   Delivery requires State RUNNING on a subscriber that is not revoked.
    # @option params [Hash<String, String>] :tags
    #   Tags attached to a resource, as key-value pairs.
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that ensures the idempotency of the
    #   request. The SDK generates one automatically when the field is omitted.
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SubscriberName", # required
    #     event_bus_arn: "EventBusArn", # required
    #     invoke_configuration: { # required
    #       role_arn: "RoleArn", # required
    #       lambda_parameters: {
    #         invocation_type: "EVENT" # One of: ["EVENT", "REQUEST_RESPONSE"],
    #         qualifier: "String",
    #         durable_execution_name: "String",
    #         tenant_id: "String",
    #         invocation_timeout_seconds: "String"
    #       },
    #       sqs_parameters: {
    #         message_group_id: "String",
    #         message_deduplication_id: "String",
    #         delay_seconds: "String",
    #         message_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "String",
    #             string_value: "String",
    #             binary_value: "String"
    #           }
    #         },
    #         message_system_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "String",
    #             string_value: "String",
    #             binary_value: "String"
    #           }
    #         }
    #       },
    #       sns_parameters: {
    #         message_group_id: "String",
    #         message_deduplication_id: "String",
    #         subject: "String",
    #         message_structure: "String",
    #         message_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "String",
    #             string_value: "String",
    #             binary_value: "String"
    #           }
    #         }
    #       },
    #       kinesis_parameters: {
    #         partition_key: "String",
    #         explicit_hash_key: "String"
    #       },
    #       step_functions_parameters: {
    #         invocation_type: "EVENT" # One of: ["EVENT", "REQUEST_RESPONSE"],
    #         name: "String",
    #         trace_header: "String",
    #         invocation_timeout_seconds: "String"
    #       },
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue"
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue"
    #         },
    #         invocation_timeout_seconds: "String"
    #       },
    #       universal_target_parameters: {
    #         input: "UniversalTargetInput", # required
    #         invocation_timeout_seconds: "String"
    #       },
    #       event_bus_v2_parameters: {
    #         metadata: {
    #           "String" => "String"
    #         },
    #         system_metadata: {
    #           event_group_id: "String",
    #           deduplication_id: "String"
    #         },
    #         deduplication_configuration: {
    #           deduplication_type: "CONTENT_BASED" # One of: ["CONTENT_BASED"], # required
    #         }
    #       },
    #       target_arn: "TargetResourceArn", # required
    #     },
    #     description: "Description",
    #     filter_configuration: {
    #       language: "EVENT_BRIDGE_PATTERN" # One of: ["EVENT_BRIDGE_PATTERN"],
    #       filters: [
    #         {
    #           pattern: "EventPattern", # required
    #           scope: "DATA" # One of: ["DATA", "METADATA", "SYSTEM_METADATA"], # required
    #         }
    #       ]
    #     },
    #     type: "FIFO" # One of: ["FIFO", "UNORDERED"],
    #     starting_position: "LATEST" # One of: ["LATEST", "POINT_IN_TIME"],
    #     point_in_time_configuration: {
    #       point_type: "HORIZON" # One of: ["HORIZON", "TIMESTAMP"], # required
    #       starting_point: Time.now,
    #       end_point: Time.now
    #     },
    #     batch_configuration: {
    #       max_batch_size: 1,
    #       max_batch_window_in_seconds: 1
    #     },
    #     transformer: {
    #       type: "RAW" # One of: ["RAW", "WITH_METADATA", "JSONATA"],
    #       jsonata_configuration: {
    #         expression: "String", # required
    #       }
    #     },
    #     retry_policy: {
    #       max_retry_attempts: 1,
    #       max_event_age_in_seconds: 1,
    #       retry_strategy: "ALL" # One of: ["ALL"]
    #     },
    #     on_failure_configuration: {
    #       arn: "DeadLetterQueueArn"
    #     },
    #     log_configuration: {
    #       level: "OFF" # One of: ["OFF", "ERROR", "INFO"],
    #       include_payload: "FULL" # One of: ["FULL", "ON_ERROR_ONLY"]
    #     },
    #     state: "RUNNING" # One of: ["RUNNING", "STOPPED"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_subscriber(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriber_arn: "SubscriberArn",
    #     name: "SubscriberName",
    #     event_bus_arn: "EventBusArn",
    #     type: "FIFO" # One of: ["FIFO", "UNORDERED"],
    #     starting_position: "LATEST" # One of: ["LATEST", "POINT_IN_TIME"],
    #     point_in_time_configuration: {
    #       point_type: "HORIZON" # One of: ["HORIZON", "TIMESTAMP"], # required
    #       starting_point: Time.now,
    #       end_point: Time.now
    #     },
    #     state: "RUNNING" # One of: ["RUNNING", "STOPPED"],
    #     creation_time: Time.now
    #   }
    # @return [Types::CreateSubscriberResponse]
    def create_subscriber(params = {}, options = {})
      request = build_request(:create_subscriber, params)
      request.send_request(options)
    end

    # Deletes an event bus. Deletion is asynchronous: the bus moves to DELETING and
    # disappears when complete (see the EventBusDeleted waiter). A bus with
    # subscribers or event sources cannot be deleted.
    # @param [Hash, Types::DeleteEventBusRequest] params
    # @option params [String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @example Request syntax with placeholder values
    #   params = {
    #     event_bus_arn: "EventBusArn", # required
    #   }
    #   options = {}
    #   response = client.delete_event_bus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEventBusResponse]
    def delete_event_bus(params = {}, options = {})
      request = build_request(:delete_event_bus, params)
      request.send_request(options)
    end

    # Deletes an EventSource. Forwarding from its origin stops.
    # @param [Hash, Types::DeleteEventSourceRequest] params
    # @option params [String] :event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment is set by the service
    #   (aws.service for AWS service events, aws.partner for partner events) and is not part of the
    #   resource's name. The id segment is a 25-character identifier generated by the service.
    # @example Request syntax with placeholder values
    #   params = {
    #     event_source_arn: "EventSourceArn", # required
    #   }
    #   options = {}
    #   response = client.delete_event_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEventSourceResponse]
    def delete_event_source(params = {}, options = {})
      request = build_request(:delete_event_source, params)
      request.send_request(options)
    end

    # Deletes the named resource policy attached to an event bus.
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @option params [String] :policy_name
    #   Which named policy to delete. Defaults to "default" when omitted (a delete AWS
    #   Resource Access Manager makes on the owner's behalf resolves to "AWS_RAM" instead).
    #   The two writers are exclusive in both directions — only Resource Access Manager can
    #   delete "AWS_RAM", and only the bus owner can delete "default" — so naming the other
    #   party's policy fails with AccessDeniedException. A well-formed name that is neither
    #   of the two fails with InvalidInputException.
    # @option params [String] :expected_revision_id
    #   The delete succeeds only if the named policy's current revision ID matches
    #   this value; if it differs or the policy does not exist, the operation fails
    #   with ConflictException. The "NO_POLICY" sentinel is not valid here. When
    #   omitted, deleting an absent policy is an idempotent success. Supplying this
    #   value makes the delete non-idempotent: once it succeeds the expected
    #   revision no longer exists, so retrying an unanswered request fails with
    #   ConflictException even though the policy was deleted. To establish the
    #   outcome, read the policy back: ResourceNotFoundException means the delete
    #   took effect.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "EventBusArn", # required
    #     policy_name: "PolicyName",
    #     expected_revision_id: "PolicyRevisionId"
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revision_id: "PolicyRevisionId"
    #   }
    # @return [Types::DeleteResourcePolicyResponse]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # Deletes a subscriber. Events are no longer delivered to its target.
    # @param [Hash, Types::DeleteSubscriberRequest] params
    # @option params [String] :subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    # @example Request syntax with placeholder values
    #   params = {
    #     subscriber_arn: "SubscriberArn", # required
    #   }
    #   options = {}
    #   response = client.delete_subscriber(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSubscriberResponse]
    def delete_subscriber(params = {}, options = {})
      request = build_request(:delete_subscriber, params)
      request.send_request(options)
    end

    # Returns the full configuration and lifecycle state of an event bus.
    # @param [Hash, Types::DescribeEventBusRequest] params
    # @option params [String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @example Request syntax with placeholder values
    #   params = {
    #     event_bus_arn: "EventBusArn", # required
    #   }
    #   options = {}
    #   response = client.describe_event_bus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_bus_arn: "EventBusArn",
    #     name: "EventBusName",
    #     description: "Description",
    #     encryption_configuration: {
    #       kms_key_identifier: "KmsKeyIdentifier"
    #     },
    #     storage_configuration: {
    #       retention_period_in_days: 1,
    #       retention_window_start_time: Time.now
    #     },
    #     creation_time: Time.now,
    #     last_modified_time: Time.now,
    #     state: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ACTIVE", "DELETE_FAILED"],
    #     state_reason: "StateReason"
    #   }
    # @return [Types::DescribeEventBusResponse]
    def describe_event_bus(params = {}, options = {})
      request = build_request(:describe_event_bus, params)
      request.send_request(options)
    end

    # Returns the full configuration and lifecycle state of an EventSource.
    # @param [Hash, Types::DescribeEventSourceRequest] params
    # @option params [String] :event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment is set by the service
    #   (aws.service for AWS service events, aws.partner for partner events) and is not part of the
    #   resource's name. The id segment is a 25-character identifier generated by the service.
    # @example Request syntax with placeholder values
    #   params = {
    #     event_source_arn: "EventSourceArn", # required
    #   }
    #   options = {}
    #   response = client.describe_event_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_source_arn: "EventSourceArn",
    #     name: "EventSourceName",
    #     event_bus_arn: "EventBusArn",
    #     configuration: {
    #       # One of:
    #       aws_service_events_configuration: {
    #         aws_service: "AwsServiceSource", # required
    #         pattern: "EventPattern",
    #         on_failure_configuration: {
    #           arn: "DeadLetterQueueArn"
    #         }
    #       },
    #       partner_events_configuration: {
    #         partner_event_source_arn: "PartnerEventSourceArn", # required
    #         pattern: "EventPattern",
    #         partner_bus_kms_key_identifier: "KmsKeyIdentifier",
    #         on_failure_configuration: {
    #           arn: "DeadLetterQueueArn"
    #         }
    #       }
    #     },
    #     description: "Description",
    #     state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"],
    #     revoked: false,
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::DescribeEventSourceResponse]
    def describe_event_source(params = {}, options = {})
      request = build_request(:describe_event_source, params)
      request.send_request(options)
    end

    # Returns the full configuration and state of a subscriber.
    # @param [Hash, Types::DescribeSubscriberRequest] params
    # @option params [String] :subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    # @example Request syntax with placeholder values
    #   params = {
    #     subscriber_arn: "SubscriberArn", # required
    #   }
    #   options = {}
    #   response = client.describe_subscriber(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriber_arn: "SubscriberArn",
    #     name: "SubscriberName",
    #     event_bus_arn: "EventBusArn",
    #     invoke_configuration: {
    #       role_arn: "RoleArn", # required
    #       lambda_parameters: {
    #         invocation_type: "EVENT" # One of: ["EVENT", "REQUEST_RESPONSE"],
    #         qualifier: "String",
    #         durable_execution_name: "String",
    #         tenant_id: "String",
    #         invocation_timeout_seconds: "String"
    #       },
    #       sqs_parameters: {
    #         message_group_id: "String",
    #         message_deduplication_id: "String",
    #         delay_seconds: "String",
    #         message_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "String",
    #             string_value: "String",
    #             binary_value: "String"
    #           }
    #         },
    #         message_system_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "String",
    #             string_value: "String",
    #             binary_value: "String"
    #           }
    #         }
    #       },
    #       sns_parameters: {
    #         message_group_id: "String",
    #         message_deduplication_id: "String",
    #         subject: "String",
    #         message_structure: "String",
    #         message_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "String",
    #             string_value: "String",
    #             binary_value: "String"
    #           }
    #         }
    #       },
    #       kinesis_parameters: {
    #         partition_key: "String",
    #         explicit_hash_key: "String"
    #       },
    #       step_functions_parameters: {
    #         invocation_type: "EVENT" # One of: ["EVENT", "REQUEST_RESPONSE"],
    #         name: "String",
    #         trace_header: "String",
    #         invocation_timeout_seconds: "String"
    #       },
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue"
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue"
    #         },
    #         invocation_timeout_seconds: "String"
    #       },
    #       universal_target_parameters: {
    #         input: "UniversalTargetInput", # required
    #         invocation_timeout_seconds: "String"
    #       },
    #       event_bus_v2_parameters: {
    #         metadata: {
    #           "String" => "String"
    #         },
    #         system_metadata: {
    #           event_group_id: "String",
    #           deduplication_id: "String"
    #         },
    #         deduplication_configuration: {
    #           deduplication_type: "CONTENT_BASED" # One of: ["CONTENT_BASED"], # required
    #         }
    #       },
    #       target_arn: "TargetResourceArn", # required
    #     },
    #     description: "Description",
    #     filter_configuration: {
    #       language: "EVENT_BRIDGE_PATTERN" # One of: ["EVENT_BRIDGE_PATTERN"],
    #       filters: [
    #         {
    #           pattern: "EventPattern", # required
    #           scope: "DATA" # One of: ["DATA", "METADATA", "SYSTEM_METADATA"], # required
    #         }
    #       ]
    #     },
    #     type: "FIFO" # One of: ["FIFO", "UNORDERED"],
    #     starting_position: "LATEST" # One of: ["LATEST", "POINT_IN_TIME"],
    #     point_in_time_configuration: {
    #       point_type: "HORIZON" # One of: ["HORIZON", "TIMESTAMP"], # required
    #       starting_point: Time.now,
    #       end_point: Time.now
    #     },
    #     batch_configuration: {
    #       max_batch_size: 1,
    #       max_batch_window_in_seconds: 1
    #     },
    #     transformer: {
    #       type: "RAW" # One of: ["RAW", "WITH_METADATA", "JSONATA"],
    #       jsonata_configuration: {
    #         expression: "String", # required
    #       }
    #     },
    #     retry_policy: {
    #       max_retry_attempts: 1,
    #       max_event_age_in_seconds: 1,
    #       retry_strategy: "ALL" # One of: ["ALL"]
    #     },
    #     on_failure_configuration: {
    #       arn: "DeadLetterQueueArn"
    #     },
    #     log_configuration: {
    #       level: "OFF" # One of: ["OFF", "ERROR", "INFO"],
    #       include_payload: "FULL" # One of: ["FULL", "ON_ERROR_ONLY"]
    #     },
    #     state: "RUNNING" # One of: ["RUNNING", "STOPPED"],
    #     revoked: false,
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::DescribeSubscriberResponse]
    def describe_subscriber(params = {}, options = {})
      request = build_request(:describe_subscriber, params)
      request.send_request(options)
    end

    # Returns the named resource policy attached to an event bus. Fails with
    # ResourceNotFoundException when the event bus or the named policy does not
    # exist.
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @option params [String] :policy_name
    #   Which named policy to read. Defaults to "default" when omitted (a read AWS Resource Access
    #   Manager makes on the owner's behalf resolves to "AWS_RAM" instead). Unlike writing, neither
    #   name is reserved on a read: the bus owner can read both. There is no fallback between the
    #   two, so a bus shared only through Resource Access Manager fails with
    #   ResourceNotFoundException until "AWS_RAM" is named explicitly. A well-formed name that is
    #   neither of the two fails with InvalidInputException.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "EventBusArn", # required
    #     policy_name: "PolicyName"
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "EventBusArn", # required
    #     policy_document: "PolicyDocument", # required
    #     policy_name: "PolicyName", # required
    #     revision_id: "PolicyRevisionId", # required
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # Lists the event buses visible to the caller: buses the account owns and buses
    # shared with it through AWS RAM. Shared entries carry identity fields only
    # (Name, EventBusArn, EventBusAccountId); owned entries carry every summary field.
    # Set EventBusAccountId to scope the list to one owner account.
    # @param [Hash, Types::ListEventBusesRequest] params
    # @option params [String] :name_prefix
    #   Name of an event bus. The first character must be alphanumeric; the remaining characters
    #   may also include '.', '-', and '_'. The grammar matches the name segment of EventBusArn
    #   (event-busv2/<name>/<id>), so every valid name can be represented in the bus's ARN. The same
    #   type is used everywhere a bus name appears.
    # @option params [String] :event_bus_account_id
    #   AWS Account Id.
    # @option params [String] :next_token
    #   Opaque pagination token returned by a List operation. Pass it back in the
    #   next request to retrieve the next page of results.
    # @option params [Integer] :max_results
    #   Maximum number of results to return in one page of a List operation.
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "EventBusName",
    #     event_bus_account_id: "AccountId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_buses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_buses: [
    #       {
    #         name: "EventBusName",
    #         event_bus_arn: "EventBusArn",
    #         description: "Description",
    #         creation_time: Time.now,
    #         last_modified_time: Time.now,
    #         state: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ACTIVE", "DELETE_FAILED"],
    #         state_reason: "StateReason",
    #         event_bus_account_id: "AccountId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEventBusesResponse]
    def list_event_buses(params = {}, options = {})
      request = build_request(:list_event_buses, params)
      request.send_request(options)
    end

    # Lists EventSources as summaries. By default the list spans the EventSources
    # the caller account owns; set EventBusArn to scope it to one bus. Use
    # DescribeEventSource to retrieve full configuration.
    # @param [Hash, Types::ListEventSourcesRequest] params
    # @option params [String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @option params [String] :name_prefix
    #   EventSource name. First character alphanumeric; the rest may add '.', '-', '_'. Names may not
    #   begin with the reserved "aws." prefix. The grammar
    #   matches the ARN local-name segment in EventSourceArn (event-sourcev2/<type>/<name>/<id>), mirroring
    #   EventBusName, so a name the ARN cannot represent cannot be created.
    # @option params [String] :next_token
    #   Opaque pagination token returned by a List operation. Pass it back in the
    #   next request to retrieve the next page of results.
    # @option params [Integer] :max_results
    #   Maximum number of results to return in one page of a List operation.
    # @example Request syntax with placeholder values
    #   params = {
    #     event_bus_arn: "EventBusArn",
    #     name_prefix: "EventSourceName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_sources: [
    #       {
    #         event_source_arn: "EventSourceArn",
    #         name: "EventSourceName",
    #         event_bus_arn: "EventBusArn",
    #         type: "AWS_SERVICE_EVENTS" # One of: ["AWS_SERVICE_EVENTS", "PARTNER_EVENTS"],
    #         state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"],
    #         revoked: false,
    #         creation_time: Time.now,
    #         last_modified_time: Time.now,
    #         event_source_account_id: "AccountId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEventSourcesResponse]
    def list_event_sources(params = {}, options = {})
      request = build_request(:list_event_sources, params)
      request.send_request(options)
    end

    # Lists the resource policies attached to an event bus as summaries (policy
    # name and revision ID). Use GetResourcePolicy to retrieve a policy document.
    # @param [Hash, Types::ListResourcePoliciesRequest] params
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @option params [String] :next_token
    #   Opaque pagination token returned by a List operation. Pass it back in the
    #   next request to retrieve the next page of results.
    # @option params [Integer] :max_results
    #   Maximum number of results to return in one page of a List operation.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "EventBusArn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_resource_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_summaries: [
    #       {
    #         policy_name: "PolicyName", # required
    #         revision_id: "PolicyRevisionId", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListResourcePoliciesResponse]
    def list_resource_policies(params = {}, options = {})
      request = build_request(:list_resource_policies, params)
      request.send_request(options)
    end

    # Lists subscribers as summaries. By default the list spans the subscribers the
    # caller account owns across all buses; set EventBusArn to scope it to one bus.
    # Use DescribeSubscriber to retrieve full configuration.
    # @param [Hash, Types::ListSubscribersRequest] params
    # @option params [String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @option params [String] :name_prefix
    #   Name of a subscriber. The first character must be alphanumeric; the remaining
    #   characters may also include '.', '-', and '_'.
    # @option params [String] :next_token
    #   Opaque pagination token returned by a List operation. Pass it back in the
    #   next request to retrieve the next page of results.
    # @option params [Integer] :max_results
    #   Maximum number of results to return in one page of a List operation.
    # @example Request syntax with placeholder values
    #   params = {
    #     event_bus_arn: "EventBusArn",
    #     name_prefix: "SubscriberName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_subscribers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscribers: [
    #       {
    #         subscriber_arn: "SubscriberArn",
    #         name: "SubscriberName",
    #         event_bus_arn: "EventBusArn",
    #         target_arn: "TargetResourceArn",
    #         type: "FIFO" # One of: ["FIFO", "UNORDERED"],
    #         revoked: false,
    #         state: "RUNNING" # One of: ["RUNNING", "STOPPED"],
    #         creation_time: Time.now,
    #         last_modified_time: Time.now,
    #         subscriber_account_id: "AccountId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSubscribersResponse]
    def list_subscribers(params = {}, options = {})
      request = build_request(:list_subscribers, params)
      request.send_request(options)
    end

    # Lists the tags on an event bus, subscriber, or event source.
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   ARN for an EventBridge resource that supports tagging: event buses,
    #   subscribers, and event sources.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
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
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # Publishes events to an event bus.
    # @param [Hash, Types::PutEventsRequest] params
    # @option params [String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @option params [Array<Types::PutEventsRequestEntry>] :entries
    #   List of event entries to publish. Must contain at least one entry.
    # @option params [Types::DeduplicationConfiguration] :deduplication_configuration
    #   Request-level deduplication settings, applied to every entry in the batch.
    # @example Request syntax with placeholder values
    #   params = {
    #     event_bus_arn: "EventBusArn", # required
    #     entries: [ # required
    #       {
    #         source: "Source", # required
    #         detail_type: "DetailType", # required
    #         detail: "EventDetail",
    #         resources: ["EventResource"],
    #         time: Time.now,
    #         system_metadata: {
    #           event_group_id: "EventGroupId",
    #           deduplication_id: "EventDeduplicationId"
    #         }
    #       }
    #     ],
    #     deduplication_configuration: {
    #       deduplication_type: "CONTENT_BASED" # One of: ["CONTENT_BASED"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_entry_count: 1,
    #     entries: [
    #       {
    #         event_id: "EventId",
    #         sequence_number: "SequenceNumber",
    #         success_code: "PUBLISHED" # One of: ["PUBLISHED", "DEDUPLICATED"],
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::PutEventsResponse]
    def put_events(params = {}, options = {})
      request = build_request(:put_events, params)
      request.send_request(options)
    end

    # Publishes pre-shaped events to an event bus.
    # @param [Hash, Types::PutRawEventsRequest] params
    # @option params [String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @option params [Array<Types::PutRawEventsRequestEntry>] :entries
    #   List of event entries to publish. Must contain at least one entry.
    # @option params [Types::SchemaRegistryConfiguration] :schema_registry_configuration
    #   Schema-registry settings for encoding open-format (Avro/Protobuf) events.
    #   Required for open-format entries; ignored for JSON entries. The registry
    #   is read with the caller's credentials, so the caller needs read
    #   access to the registry it references.
    # @option params [Types::DeduplicationConfiguration] :deduplication_configuration
    #   Request-level deduplication settings, applied to every entry in the batch.
    # @example Request syntax with placeholder values
    #   params = {
    #     event_bus_arn: "EventBusArn", # required
    #     entries: [ # required
    #       {
    #         data: "data", # required
    #         metadata: {
    #           "EventMetadataKey" => "EventMetadataValue"
    #         },
    #         system_metadata: { # required
    #           content_type: "ContentType", # required
    #           deduplication_id: "EventDeduplicationId",
    #           event_group_id: "EventGroupId"
    #         }
    #       }
    #     ],
    #     schema_registry_configuration: {
    #       registry_uri: "SchemaRegistryUri", # required
    #       confluent_public_registry_configuration: {
    #         connection_arn: "ConnectionArn", # required
    #       }
    #     },
    #     deduplication_configuration: {
    #       deduplication_type: "CONTENT_BASED" # One of: ["CONTENT_BASED"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_raw_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_entry_count: 1,
    #     entries: [
    #       {
    #         event_id: "EventId",
    #         sequence_number: "SequenceNumber",
    #         success_code: "PUBLISHED" # One of: ["PUBLISHED", "DEDUPLICATED"],
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::PutRawEventsResponse]
    def put_raw_events(params = {}, options = {})
      request = build_request(:put_raw_events, params)
      request.send_request(options)
    end

    # Attaches a named resource policy to an event bus — the only resource type that
    # supports policies; other resource ARNs are rejected. Each bus holds two named
    # policies: "default" (customer-managed, full IAM policy language including Deny)
    # and "AWS_RAM" (written exclusively by AWS Resource Access Manager to reflect
    # resource shares). Both policies are evaluated on cross-account authorization;
    # an explicit Deny in either overrides an Allow in the other. Operations that
    # omit PolicyName target "default". A "default" policy that would grant public
    # access is rejected with PublicPolicyException and is not attached; this check
    # is always on and cannot be disabled.
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @option params [String] :policy_document
    #   A resource policy document, as a JSON string. The "default" policy can be up to
    #   20 KB (20,480 bytes of UTF-8) by default. This quota is adjustable in Service
    #   Quotas. A "default" policy that exceeds the quota is rejected with
    #   PolicyLengthExceededException. No policy document can exceed 389,120 bytes of
    #   UTF-8, regardless of the quota.
    # @option params [String] :policy_name
    #   Which named policy to write. Defaults to "default", the customer-managed policy,
    #   when omitted (a write AWS Resource Access Manager makes on the owner's behalf
    #   resolves to "AWS_RAM" instead). The two writers are exclusive in both directions —
    #   only Resource Access Manager can write "AWS_RAM", and only the bus owner can write
    #   "default" — so naming the other party's policy fails with AccessDeniedException.
    #   A well-formed name that is neither of the two fails with InvalidInputException.
    # @option params [String] :expected_revision_id
    #   The write succeeds only if the named policy's current revision ID matches
    #   this value; a policy that does not exist yet matches only the sentinel
    #   "NO_POLICY" (create-only). On mismatch the operation fails with
    #   ConflictException. When omitted, the write is unconditional. Every attempt
    #   stores a newly generated revision ID, so retrying an unanswered request can
    #   conflict with the caller's own earlier attempt; read the policy back and
    #   compare it with the one you intended before treating a conflict as another
    #   writer's change.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "EventBusArn", # required
    #     policy_document: "PolicyDocument", # required
    #     policy_name: "PolicyName",
    #     expected_revision_id: "PolicyRevisionId"
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "EventBusArn", # required
    #     policy_name: "PolicyName", # required
    #     revision_id: "PolicyRevisionId"
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # Revokes a subscriber or an EventSource. The bus owner calls this to withdraw a
    # misbehaving resource attached to their bus. Revocation is terminal: there is no
    # operation that clears it. A revoked resource refuses mutating operations with
    # InvalidStateException; delete stays available for cleanup.
    # @param [Hash, Types::RevokeResourceRequest] params
    # @option params [String] :arn
    #   ARN of a resource a bus owner can revoke: a subscriber or an EventSource. The pattern is
    #   the revocable subset of TaggableResourceArn; buses are not revocable.
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "RevocableResourceArn", # required
    #   }
    #   options = {}
    #   response = client.revoke_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RevocableResourceArn"
    #   }
    # @return [Types::RevokeResourceResponse]
    def revoke_resource(params = {}, options = {})
      request = build_request(:revoke_resource, params)
      request.send_request(options)
    end

    # Adds or replaces tags on an event bus, subscriber, or event source.
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   ARN for an EventBridge resource that supports tagging: event buses,
    #   subscribers, and event sources.
    # @option params [Hash<String, String>] :tags
    #   Tags attached to a resource, as key-value pairs.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
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

    # Removes tags from an event bus, subscriber, or event source.
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   ARN for an EventBridge resource that supports tagging: event buses,
    #   subscribers, and event sources.
    # @option params [Array<String>] :tag_keys
    #   List of tag keys.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
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

    # Updates an event bus. The update is asynchronous: the bus moves to UPDATING
    # and returns to ACTIVE when the change is applied. Fields omitted from the
    # request are left unchanged.
    # @param [Hash, Types::UpdateEventBusRequest] params
    # @option params [String] :event_bus_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an event bus.
    # @option params [String] :description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   Encryption configuration for an event bus.
    # @option params [Types::StorageConfiguration] :storage_configuration
    #   Event storage configuration for an event bus.
    # @example Request syntax with placeholder values
    #   params = {
    #     event_bus_arn: "EventBusArn", # required
    #     description: "Description",
    #     encryption_configuration: {
    #       kms_key_identifier: "KmsKeyIdentifier"
    #     },
    #     storage_configuration: {
    #       retention_period_in_days: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_event_bus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_bus_arn: "EventBusArn",
    #     name: "EventBusName",
    #     description: "Description",
    #     encryption_configuration: {
    #       kms_key_identifier: "KmsKeyIdentifier"
    #     },
    #     storage_configuration: {
    #       retention_period_in_days: 1,
    #       retention_window_start_time: Time.now
    #     },
    #     state: "CREATING" # One of: ["CREATING", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "ACTIVE", "DELETE_FAILED"],
    #     state_reason: "StateReason",
    #     last_modified_time: Time.now
    #   }
    # @return [Types::UpdateEventBusResponse]
    def update_event_bus(params = {}, options = {})
      request = build_request(:update_event_bus, params)
      request.send_request(options)
    end

    # Updates an EventSource. Fields omitted from the request are left unchanged.
    # @param [Hash, Types::UpdateEventSourceRequest] params
    # @option params [String] :event_source_arn
    #   EventSource ARN: event-sourcev2/<type>/<name>/<id>. The type segment is set by the service
    #   (aws.service for AWS service events, aws.partner for partner events) and is not part of the
    #   resource's name. The id segment is a 25-character identifier generated by the service.
    # @option params [Types::EventSourceConfiguration] :configuration
    #   Discriminated EventSource configuration. Exactly one variant must be set.
    # @option params [String] :description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    # @example Request syntax with placeholder values
    #   params = {
    #     event_source_arn: "EventSourceArn", # required
    #     configuration: {
    #       # One of:
    #       aws_service_events_configuration: {
    #         aws_service: "AwsServiceSource", # required
    #         pattern: "EventPattern",
    #         on_failure_configuration: {
    #           arn: "DeadLetterQueueArn"
    #         }
    #       },
    #       partner_events_configuration: {
    #         partner_event_source_arn: "PartnerEventSourceArn", # required
    #         pattern: "EventPattern",
    #         partner_bus_kms_key_identifier: "KmsKeyIdentifier",
    #         on_failure_configuration: {
    #           arn: "DeadLetterQueueArn"
    #         }
    #       }
    #     },
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_event_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_source_arn: "EventSourceArn",
    #     name: "EventSourceName",
    #     event_bus_arn: "EventBusArn",
    #     state: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED"],
    #     last_modified_time: Time.now
    #   }
    # @return [Types::UpdateEventSourceResponse]
    def update_event_source(params = {}, options = {})
      request = build_request(:update_event_source, params)
      request.send_request(options)
    end

    # Updates a subscriber. Fields omitted from the request are left unchanged.
    # @param [Hash, Types::UpdateSubscriberRequest] params
    # @option params [String] :subscriber_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies a subscriber.
    # @option params [String] :description
    #   Free-text description. Used by every resource type that has one: event buses,
    #   subscribers, and event sources.
    # @option params [String] :state
    #   Customer-controlled run state of a subscriber, set on create or update. Distinct
    #   from the bus lifecycle vocabulary, where ACTIVE means "provisioned and healthy".
    #   Delivery requires State RUNNING on a subscriber that is not revoked.
    # @option params [String] :resume_position
    #   Position from which delivery resumes when a subscriber is unpaused.
    #   Honored only on an UpdateSubscriber call that transitions State
    #   from STOPPED to RUNNING (unpause); ignored on any other call and not accepted
    #   on Create. Defaults to LAST_PROCESSED when omitted.
    # @option params [Types::UpdateInvokeConfiguration] :invoke_configuration
    #   Update-able configuration for how the subscriber invokes its target.
    # @option params [Types::FilterConfiguration] :filter_configuration
    #   Configuration for filtering events delivered to a subscriber.
    #   On CreateSubscriber, Filters is required and must contain at least one Filter with a non-empty Pattern.
    #   On UpdateSubscriber, an empty `FilterConfiguration:{}` clears the existing filter.
    #   Any non-empty shape (including `{Language:X}` without Filters) must contain a valid Filters list
    #   — same contract as CreateSubscriber. A non-empty Filters list overwrites; an omitted
    #   FilterConfiguration preserves existing state.
    #   All Filters are implicitly ANDed — an event must match every Filter to be delivered.
    # @option params [Types::BatchConfiguration] :batch_configuration
    #   Batching configuration for a subscriber.
    # @option params [Types::Transformer] :transformer
    #   Not applicable to universal (aws-sdk) targets, whose input transformation is UniversalTargetParameters.Input; a Transformer on such a target is rejected.
    # @option params [Types::RetryPolicy] :retry_policy
    #   Retry policy for a subscriber.
    # @option params [Types::OnFailureConfiguration] :on_failure_configuration
    #   On-failure configuration: where a failed delivery is sent. Shared by the subscriber and the
    #   EventSource.
    # @option params [Types::LogConfiguration] :log_configuration
    #   Log configuration for a subscriber.
    # @example Request syntax with placeholder values
    #   params = {
    #     subscriber_arn: "SubscriberArn", # required
    #     description: "Description",
    #     state: "RUNNING" # One of: ["RUNNING", "STOPPED"],
    #     resume_position: "LAST_PROCESSED" # One of: ["LAST_PROCESSED", "LATEST"],
    #     invoke_configuration: {
    #       role_arn: "RoleArn", # required
    #       lambda_parameters: {
    #         invocation_type: "EVENT" # One of: ["EVENT", "REQUEST_RESPONSE"],
    #         qualifier: "String",
    #         durable_execution_name: "String",
    #         tenant_id: "String",
    #         invocation_timeout_seconds: "String"
    #       },
    #       sqs_parameters: {
    #         message_group_id: "String",
    #         message_deduplication_id: "String",
    #         delay_seconds: "String",
    #         message_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "String",
    #             string_value: "String",
    #             binary_value: "String"
    #           }
    #         },
    #         message_system_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "String",
    #             string_value: "String",
    #             binary_value: "String"
    #           }
    #         }
    #       },
    #       sns_parameters: {
    #         message_group_id: "String",
    #         message_deduplication_id: "String",
    #         subject: "String",
    #         message_structure: "String",
    #         message_attributes: {
    #           "MessageAttributeName" => {
    #             data_type: "String",
    #             string_value: "String",
    #             binary_value: "String"
    #           }
    #         }
    #       },
    #       kinesis_parameters: {
    #         partition_key: "String",
    #         explicit_hash_key: "String"
    #       },
    #       step_functions_parameters: {
    #         invocation_type: "EVENT" # One of: ["EVENT", "REQUEST_RESPONSE"],
    #         name: "String",
    #         trace_header: "String",
    #         invocation_timeout_seconds: "String"
    #       },
    #       http_parameters: {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue"
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue"
    #         },
    #         invocation_timeout_seconds: "String"
    #       },
    #       universal_target_parameters: {
    #         input: "UniversalTargetInput", # required
    #         invocation_timeout_seconds: "String"
    #       },
    #       event_bus_v2_parameters: {
    #         metadata: {
    #           "String" => "String"
    #         },
    #         system_metadata: {
    #           event_group_id: "String",
    #           deduplication_id: "String"
    #         },
    #         deduplication_configuration: {
    #           deduplication_type: "CONTENT_BASED" # One of: ["CONTENT_BASED"], # required
    #         }
    #       }
    #     },
    #     filter_configuration: {
    #       language: "EVENT_BRIDGE_PATTERN" # One of: ["EVENT_BRIDGE_PATTERN"],
    #       filters: [
    #         {
    #           pattern: "EventPattern", # required
    #           scope: "DATA" # One of: ["DATA", "METADATA", "SYSTEM_METADATA"], # required
    #         }
    #       ]
    #     },
    #     batch_configuration: {
    #       max_batch_size: 1,
    #       max_batch_window_in_seconds: 1
    #     },
    #     transformer: {
    #       type: "RAW" # One of: ["RAW", "WITH_METADATA", "JSONATA"],
    #       jsonata_configuration: {
    #         expression: "String", # required
    #       }
    #     },
    #     retry_policy: {
    #       max_retry_attempts: 1,
    #       max_event_age_in_seconds: 1,
    #       retry_strategy: "ALL" # One of: ["ALL"]
    #     },
    #     on_failure_configuration: {
    #       arn: "DeadLetterQueueArn"
    #     },
    #     log_configuration: {
    #       level: "OFF" # One of: ["OFF", "ERROR", "INFO"],
    #       include_payload: "FULL" # One of: ["FULL", "ON_ERROR_ONLY"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_subscriber(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriber_arn: "SubscriberArn",
    #     name: "SubscriberName",
    #     event_bus_arn: "EventBusArn",
    #     type: "FIFO" # One of: ["FIFO", "UNORDERED"],
    #     starting_position: "LATEST" # One of: ["LATEST", "POINT_IN_TIME"],
    #     point_in_time_configuration: {
    #       point_type: "HORIZON" # One of: ["HORIZON", "TIMESTAMP"], # required
    #       starting_point: Time.now,
    #       end_point: Time.now
    #     },
    #     state: "RUNNING" # One of: ["RUNNING", "STOPPED"],
    #     last_modified_time: Time.now
    #   }
    # @return [Types::UpdateSubscriberResponse]
    def update_subscriber(params = {}, options = {})
      request = build_request(:update_subscriber, params)
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
      context[:gem_name] = 'aws-sdk-eventbridgev2'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        event_bus_active: Waiters::EventBusActive,
        event_bus_deleted: Waiters::EventBusDeleted
      }
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
          rpc_v2_cbor: Smithy::Client::RpcV2Cbor
        }
      end
    end
  end
end
