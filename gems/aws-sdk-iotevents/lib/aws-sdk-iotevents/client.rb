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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:iotevents)

module Aws::IoTEvents
  # An API client for Aws::IoTEvents.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::IotColumboService
    @identifier = :iotevents

    add_plugin(::Aws::IoTEvents::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::IoTEvents::EndpointProvider)
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

    # <p>Creates an alarm model to monitor an AWS IoT Events input attribute. You can use the alarm to get
    #       notified when the value is outside a specified range. For more information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/create-alarms.html">Create an
    #         alarm model</a> in the <i>AWS IoT Events Developer Guide</i>.</p>
    # @param [Hash, Types::CreateAlarmModelRequest] params
    # @option params [String] :alarm_model_name
    #   <p>A unique name that helps you identify the alarm model. You can't change this name after
    #         you create the alarm model.</p>
    # @option params [String] :alarm_model_description
    #   <p>A description that tells you what the alarm model detects.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of key-value pairs that contain metadata for the alarm model. The tags help you
    #         manage the alarm model. For more information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/tagging-iotevents.html">Tagging your AWS IoT Events
    #           resources</a> in the <i>AWS IoT Events Developer Guide</i>.</p>
    #            <p>You can create up to 50 tags for one alarm model.</p>
    # @option params [String] :key
    #   <p>An input attribute used as a key to create an alarm. 
    #   AWS IoT Events routes <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html">inputs</a> 
    #   associated with this key to the alarm.</p>
    # @option params [Integer] :severity
    #   <p>A non-negative integer that reflects the severity level of the alarm.</p>
    # @option params [Types::AlarmRule] :alarm_rule
    #   <p>Defines when your alarm is invoked.</p>
    # @option params [Types::AlarmNotification] :alarm_notification
    #   <p>Contains information about one or more notification actions.</p>
    # @option params [Types::AlarmEventActions] :alarm_event_actions
    #   <p>Contains information about one or more alarm actions.</p>
    # @option params [Types::AlarmCapabilities] :alarm_capabilities
    #   <p>Contains the configuration information of alarm state changes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_model_name: "AlarmModelName", # required
    #     alarm_model_description: "AlarmModelDescription",
    #     role_arn: "AmazonResourceName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     key: "AttributeJsonPath",
    #     severity: 1,
    #     alarm_rule: { # required
    #       simple_rule: {
    #         input_property: "InputProperty", # required
    #         comparison_operator: "GREATER" # One of: ["GREATER", "GREATER_OR_EQUAL", "LESS", "LESS_OR_EQUAL", "EQUAL", "NOT_EQUAL"], # required
    #         threshold: "Threshold", # required
    #       }
    #     },
    #     alarm_notification: {
    #       notification_actions: [
    #         {
    #           action: { # required
    #             lambda_action: {
    #               function_arn: "AmazonResourceName", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING" # One of: ["STRING", "JSON"], # required
    #               }
    #             }
    #           },
    #           sms_configurations: [
    #             {
    #               sender_id: "SMSSenderId",
    #               additional_message: "NotificationAdditionalMessage",
    #               recipients: [ # required
    #                 {
    #                   sso_identity: {
    #                     identity_store_id: "IdentityStoreId", # required
    #                     user_id: "SSOReferenceId"
    #                   }
    #                 }
    #               ]
    #             }
    #           ],
    #           email_configurations: [
    #             {
    #               from: "FromEmail", # required
    #               content: {
    #                 subject: "EmailSubject",
    #                 additional_message: "NotificationAdditionalMessage"
    #               },
    #               recipients: { # required
    #                 to: [
    #                   {
    #                     sso_identity: {
    #                       identity_store_id: "IdentityStoreId", # required
    #                       user_id: "SSOReferenceId"
    #                     }
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     alarm_event_actions: {
    #       alarm_actions: [
    #         {
    #           sns: {
    #             target_arn: "AmazonResourceName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           iot_topic_publish: {
    #             mqtt_topic: "MQTTTopic", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           lambda: {
    #             function_arn: "AmazonResourceName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           iot_events: {
    #             input_name: "InputName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           sqs: {
    #             queue_url: "QueueUrl", # required
    #             use_base64: false,
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           firehose: {
    #             delivery_stream_name: "DeliveryStreamName", # required
    #             separator: "FirehoseSeparator",
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           dynamo_db: {
    #             hash_key_type: "DynamoKeyType",
    #             hash_key_field: "DynamoKeyField", # required
    #             hash_key_value: "DynamoKeyValue", # required
    #             range_key_type: "DynamoKeyType",
    #             range_key_field: "DynamoKeyField",
    #             range_key_value: "DynamoKeyValue",
    #             operation: "DynamoOperation",
    #             payload_field: "DynamoKeyField",
    #             table_name: "DynamoTableName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           dynamo_d_bv2: {
    #             table_name: "DynamoTableName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           iot_site_wise: {
    #             entry_id: "AssetPropertyEntryId",
    #             asset_id: "AssetId",
    #             property_id: "AssetPropertyId",
    #             property_alias: "AssetPropertyAlias",
    #             property_value: {
    #               value: {
    #                 string_value: "AssetPropertyStringValue",
    #                 integer_value: "AssetPropertyIntegerValue",
    #                 double_value: "AssetPropertyDoubleValue",
    #                 boolean_value: "AssetPropertyBooleanValue"
    #               },
    #               timestamp: {
    #                 time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                 offset_in_nanos: "AssetPropertyOffsetInNanos"
    #               },
    #               quality: "AssetPropertyQuality"
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     alarm_capabilities: {
    #       initialization_configuration: {
    #         disabled_on_initialization: false, # required
    #       },
    #       acknowledge_flow: {
    #         enabled: false, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_alarm_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now,
    #     alarm_model_arn: "AlarmModelArn",
    #     alarm_model_version: "AlarmModelVersion",
    #     last_update_time: Time.now,
    #     status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "INACTIVE", "FAILED"]
    #   }
    # @return [Types::CreateAlarmModelResponse]
    def create_alarm_model(params = {}, options = {})
      request = build_request(:create_alarm_model, params)
      request.send_request(options)
    end

    # <p>Creates a detector model.</p>
    # @param [Hash, Types::CreateDetectorModelRequest] params
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model.</p>
    # @option params [Types::DetectorModelDefinition] :detector_model_definition
    #   <p>Information that defines how the detectors operate.</p>
    # @option params [String] :detector_model_description
    #   <p>A brief description of the detector model.</p>
    # @option params [String] :key
    #   <p>The input attribute key used to identify a device or system to create a detector (an
    #         instance of the detector model) and then to route each input received to the appropriate
    #         detector (instance). This parameter uses a JSON-path expression in the message payload of each
    #         input to specify the attribute-value pair that is used to identify the device associated with
    #         the input.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the detector model.</p>
    # @option params [String] :evaluation_method
    #   <p>Information about the order in which events are evaluated and how actions are executed.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_model_name: "DetectorModelName", # required
    #     detector_model_definition: { # required
    #       states: [ # required
    #         {
    #           state_name: "StateName", # required
    #           on_input: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1,
    #                       duration_expression: "VariableValue"
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     lambda: {
    #                       function_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_events: {
    #                       input_name: "InputName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     sqs: {
    #                       queue_url: "QueueUrl", # required
    #                       use_base64: false,
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: "DeliveryStreamName", # required
    #                       separator: "FirehoseSeparator",
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: "DynamoKeyType",
    #                       hash_key_field: "DynamoKeyField", # required
    #                       hash_key_value: "DynamoKeyValue", # required
    #                       range_key_type: "DynamoKeyType",
    #                       range_key_field: "DynamoKeyField",
    #                       range_key_value: "DynamoKeyValue",
    #                       operation: "DynamoOperation",
    #                       payload_field: "DynamoKeyField",
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: "AssetPropertyEntryId",
    #                       asset_id: "AssetId",
    #                       property_id: "AssetPropertyId",
    #                       property_alias: "AssetPropertyAlias",
    #                       property_value: {
    #                         value: {
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue"
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                         },
    #                         quality: "AssetPropertyQuality"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             transition_events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition", # required
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1,
    #                       duration_expression: "VariableValue"
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     lambda: {
    #                       function_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_events: {
    #                       input_name: "InputName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     sqs: {
    #                       queue_url: "QueueUrl", # required
    #                       use_base64: false,
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: "DeliveryStreamName", # required
    #                       separator: "FirehoseSeparator",
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: "DynamoKeyType",
    #                       hash_key_field: "DynamoKeyField", # required
    #                       hash_key_value: "DynamoKeyValue", # required
    #                       range_key_type: "DynamoKeyType",
    #                       range_key_field: "DynamoKeyField",
    #                       range_key_value: "DynamoKeyValue",
    #                       operation: "DynamoOperation",
    #                       payload_field: "DynamoKeyField",
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: "AssetPropertyEntryId",
    #                       asset_id: "AssetId",
    #                       property_id: "AssetPropertyId",
    #                       property_alias: "AssetPropertyAlias",
    #                       property_value: {
    #                         value: {
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue"
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                         },
    #                         quality: "AssetPropertyQuality"
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 next_state: "StateName", # required
    #               }
    #             ]
    #           },
    #           on_enter: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1,
    #                       duration_expression: "VariableValue"
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     lambda: {
    #                       function_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_events: {
    #                       input_name: "InputName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     sqs: {
    #                       queue_url: "QueueUrl", # required
    #                       use_base64: false,
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: "DeliveryStreamName", # required
    #                       separator: "FirehoseSeparator",
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: "DynamoKeyType",
    #                       hash_key_field: "DynamoKeyField", # required
    #                       hash_key_value: "DynamoKeyValue", # required
    #                       range_key_type: "DynamoKeyType",
    #                       range_key_field: "DynamoKeyField",
    #                       range_key_value: "DynamoKeyValue",
    #                       operation: "DynamoOperation",
    #                       payload_field: "DynamoKeyField",
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: "AssetPropertyEntryId",
    #                       asset_id: "AssetId",
    #                       property_id: "AssetPropertyId",
    #                       property_alias: "AssetPropertyAlias",
    #                       property_value: {
    #                         value: {
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue"
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                         },
    #                         quality: "AssetPropertyQuality"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           on_exit: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1,
    #                       duration_expression: "VariableValue"
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     lambda: {
    #                       function_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_events: {
    #                       input_name: "InputName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     sqs: {
    #                       queue_url: "QueueUrl", # required
    #                       use_base64: false,
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: "DeliveryStreamName", # required
    #                       separator: "FirehoseSeparator",
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: "DynamoKeyType",
    #                       hash_key_field: "DynamoKeyField", # required
    #                       hash_key_value: "DynamoKeyValue", # required
    #                       range_key_type: "DynamoKeyType",
    #                       range_key_field: "DynamoKeyField",
    #                       range_key_value: "DynamoKeyValue",
    #                       operation: "DynamoOperation",
    #                       payload_field: "DynamoKeyField",
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: "AssetPropertyEntryId",
    #                       asset_id: "AssetId",
    #                       property_id: "AssetPropertyId",
    #                       property_alias: "AssetPropertyAlias",
    #                       property_value: {
    #                         value: {
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue"
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                         },
    #                         quality: "AssetPropertyQuality"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       initial_state_name: "StateName", # required
    #     },
    #     detector_model_description: "DetectorModelDescription",
    #     key: "AttributeJsonPath",
    #     role_arn: "AmazonResourceName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     evaluation_method: "BATCH" # One of: ["BATCH", "SERIAL"]
    #   }
    #   options = {}
    #   response = client.create_detector_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector_model_configuration: {
    #       detector_model_name: "DetectorModelName",
    #       detector_model_version: "DetectorModelVersion",
    #       detector_model_description: "DetectorModelDescription",
    #       detector_model_arn: "DetectorModelArn",
    #       role_arn: "AmazonResourceName",
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "INACTIVE", "DEPRECATED", "DRAFT", "PAUSED", "FAILED"],
    #       key: "AttributeJsonPath",
    #       evaluation_method: "BATCH" # One of: ["BATCH", "SERIAL"]
    #     }
    #   }
    # @return [Types::CreateDetectorModelResponse]
    def create_detector_model(params = {}, options = {})
      request = build_request(:create_detector_model, params)
      request.send_request(options)
    end

    # <p>Creates an input.</p>
    # @param [Hash, Types::CreateInputRequest] params
    # @option params [String] :input_name
    #   <p>The name you want to give to the input.</p>
    # @option params [String] :input_description
    #   <p>A brief description of the input.</p>
    # @option params [Types::InputDefinition] :input_definition
    #   <p>The definition of the input.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Metadata that can be used to manage the input.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_name: "InputName", # required
    #     input_description: "InputDescription",
    #     input_definition: { # required
    #       attributes: [ # required
    #         {
    #           json_path: "AttributeJsonPath", # required
    #         }
    #       ]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     input_configuration: {
    #       input_name: "InputName", # required
    #       input_description: "InputDescription",
    #       input_arn: "InputArn", # required
    #       creation_time: Time.now, # required
    #       last_update_time: Time.now, # required
    #       status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING"], # required
    #     }
    #   }
    # @return [Types::CreateInputResponse]
    def create_input(params = {}, options = {})
      request = build_request(:create_input, params)
      request.send_request(options)
    end

    # <p>Deletes an alarm model. Any alarm instances that were created based on this alarm model
    #       are also deleted. This action can't be undone.</p>
    # @param [Hash, Types::DeleteAlarmModelRequest] params
    # @option params [String] :alarm_model_name
    #   <p>The name of the alarm model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_model_name: "AlarmModelName", # required
    #   }
    #   options = {}
    #   response = client.delete_alarm_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAlarmModelResponse]
    def delete_alarm_model(params = {}, options = {})
      request = build_request(:delete_alarm_model, params)
      request.send_request(options)
    end

    # <p>Deletes a detector model. Any active instances of the detector model are also
    #       deleted.</p>
    # @param [Hash, Types::DeleteDetectorModelRequest] params
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_model_name: "DetectorModelName", # required
    #   }
    #   options = {}
    #   response = client.delete_detector_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDetectorModelResponse]
    def delete_detector_model(params = {}, options = {})
      request = build_request(:delete_detector_model, params)
      request.send_request(options)
    end

    # <p>Deletes an input.</p>
    # @param [Hash, Types::DeleteInputRequest] params
    # @option params [String] :input_name
    #   <p>The name of the input to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_name: "InputName", # required
    #   }
    #   options = {}
    #   response = client.delete_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteInputResponse]
    def delete_input(params = {}, options = {})
      request = build_request(:delete_input, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an alarm model. If you don't specify a value for the
    #         <code>alarmModelVersion</code> parameter, the latest version is returned.</p>
    # @param [Hash, Types::DescribeAlarmModelRequest] params
    # @option params [String] :alarm_model_name
    #   <p>The name of the alarm model.</p>
    # @option params [String] :alarm_model_version
    #   <p>The version of the alarm model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_model_name: "AlarmModelName", # required
    #     alarm_model_version: "AlarmModelVersion"
    #   }
    #   options = {}
    #   response = client.describe_alarm_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now,
    #     alarm_model_arn: "AlarmModelArn",
    #     alarm_model_version: "AlarmModelVersion",
    #     last_update_time: Time.now,
    #     status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "INACTIVE", "FAILED"],
    #     status_message: "StatusMessage",
    #     alarm_model_name: "AlarmModelName",
    #     alarm_model_description: "AlarmModelDescription",
    #     role_arn: "AmazonResourceName",
    #     key: "AttributeJsonPath",
    #     severity: 1,
    #     alarm_rule: {
    #       simple_rule: {
    #         input_property: "InputProperty", # required
    #         comparison_operator: "GREATER" # One of: ["GREATER", "GREATER_OR_EQUAL", "LESS", "LESS_OR_EQUAL", "EQUAL", "NOT_EQUAL"], # required
    #         threshold: "Threshold", # required
    #       }
    #     },
    #     alarm_notification: {
    #       notification_actions: [
    #         {
    #           action: { # required
    #             lambda_action: {
    #               function_arn: "AmazonResourceName", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING" # One of: ["STRING", "JSON"], # required
    #               }
    #             }
    #           },
    #           sms_configurations: [
    #             {
    #               sender_id: "SMSSenderId",
    #               additional_message: "NotificationAdditionalMessage",
    #               recipients: [ # required
    #                 {
    #                   sso_identity: {
    #                     identity_store_id: "IdentityStoreId", # required
    #                     user_id: "SSOReferenceId"
    #                   }
    #                 }
    #               ]
    #             }
    #           ],
    #           email_configurations: [
    #             {
    #               from: "FromEmail", # required
    #               content: {
    #                 subject: "EmailSubject",
    #                 additional_message: "NotificationAdditionalMessage"
    #               },
    #               recipients: { # required
    #                 to: [
    #                   {
    #                     sso_identity: {
    #                       identity_store_id: "IdentityStoreId", # required
    #                       user_id: "SSOReferenceId"
    #                     }
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     alarm_event_actions: {
    #       alarm_actions: [
    #         {
    #           sns: {
    #             target_arn: "AmazonResourceName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           iot_topic_publish: {
    #             mqtt_topic: "MQTTTopic", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           lambda: {
    #             function_arn: "AmazonResourceName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           iot_events: {
    #             input_name: "InputName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           sqs: {
    #             queue_url: "QueueUrl", # required
    #             use_base64: false,
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           firehose: {
    #             delivery_stream_name: "DeliveryStreamName", # required
    #             separator: "FirehoseSeparator",
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           dynamo_db: {
    #             hash_key_type: "DynamoKeyType",
    #             hash_key_field: "DynamoKeyField", # required
    #             hash_key_value: "DynamoKeyValue", # required
    #             range_key_type: "DynamoKeyType",
    #             range_key_field: "DynamoKeyField",
    #             range_key_value: "DynamoKeyValue",
    #             operation: "DynamoOperation",
    #             payload_field: "DynamoKeyField",
    #             table_name: "DynamoTableName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           dynamo_d_bv2: {
    #             table_name: "DynamoTableName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           iot_site_wise: {
    #             entry_id: "AssetPropertyEntryId",
    #             asset_id: "AssetId",
    #             property_id: "AssetPropertyId",
    #             property_alias: "AssetPropertyAlias",
    #             property_value: {
    #               value: {
    #                 string_value: "AssetPropertyStringValue",
    #                 integer_value: "AssetPropertyIntegerValue",
    #                 double_value: "AssetPropertyDoubleValue",
    #                 boolean_value: "AssetPropertyBooleanValue"
    #               },
    #               timestamp: {
    #                 time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                 offset_in_nanos: "AssetPropertyOffsetInNanos"
    #               },
    #               quality: "AssetPropertyQuality"
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     alarm_capabilities: {
    #       initialization_configuration: {
    #         disabled_on_initialization: false, # required
    #       },
    #       acknowledge_flow: {
    #         enabled: false, # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeAlarmModelResponse]
    def describe_alarm_model(params = {}, options = {})
      request = build_request(:describe_alarm_model, params)
      request.send_request(options)
    end

    # <p>Describes a detector model. If the <code>version</code> parameter is not specified,
    #       information about the latest version is returned.</p>
    # @param [Hash, Types::DescribeDetectorModelRequest] params
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model.</p>
    # @option params [String] :detector_model_version
    #   <p>The version of the detector model.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_model_name: "DetectorModelName", # required
    #     detector_model_version: "DetectorModelVersion"
    #   }
    #   options = {}
    #   response = client.describe_detector_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector_model: {
    #       detector_model_definition: {
    #         states: [ # required
    #           {
    #             state_name: "StateName", # required
    #             on_input: {
    #               events: [
    #                 {
    #                   event_name: "EventName", # required
    #                   condition: "Condition",
    #                   actions: [
    #                     {
    #                       set_variable: {
    #                         variable_name: "VariableName", # required
    #                         value: "VariableValue", # required
    #                       },
    #                       sns: {
    #                         target_arn: "AmazonResourceName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       iot_topic_publish: {
    #                         mqtt_topic: "MQTTTopic", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       set_timer: {
    #                         timer_name: "TimerName", # required
    #                         seconds: 1,
    #                         duration_expression: "VariableValue"
    #                       },
    #                       clear_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       reset_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       lambda: {
    #                         function_arn: "AmazonResourceName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       iot_events: {
    #                         input_name: "InputName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       sqs: {
    #                         queue_url: "QueueUrl", # required
    #                         use_base64: false,
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       firehose: {
    #                         delivery_stream_name: "DeliveryStreamName", # required
    #                         separator: "FirehoseSeparator",
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       dynamo_db: {
    #                         hash_key_type: "DynamoKeyType",
    #                         hash_key_field: "DynamoKeyField", # required
    #                         hash_key_value: "DynamoKeyValue", # required
    #                         range_key_type: "DynamoKeyType",
    #                         range_key_field: "DynamoKeyField",
    #                         range_key_value: "DynamoKeyValue",
    #                         operation: "DynamoOperation",
    #                         payload_field: "DynamoKeyField",
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       dynamo_d_bv2: {
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       iot_site_wise: {
    #                         entry_id: "AssetPropertyEntryId",
    #                         asset_id: "AssetId",
    #                         property_id: "AssetPropertyId",
    #                         property_alias: "AssetPropertyAlias",
    #                         property_value: {
    #                           value: {
    #                             string_value: "AssetPropertyStringValue",
    #                             integer_value: "AssetPropertyIntegerValue",
    #                             double_value: "AssetPropertyDoubleValue",
    #                             boolean_value: "AssetPropertyBooleanValue"
    #                           },
    #                           timestamp: {
    #                             time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                             offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                           },
    #                           quality: "AssetPropertyQuality"
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 }
    #               ],
    #               transition_events: [
    #                 {
    #                   event_name: "EventName", # required
    #                   condition: "Condition", # required
    #                   actions: [
    #                     {
    #                       set_variable: {
    #                         variable_name: "VariableName", # required
    #                         value: "VariableValue", # required
    #                       },
    #                       sns: {
    #                         target_arn: "AmazonResourceName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       iot_topic_publish: {
    #                         mqtt_topic: "MQTTTopic", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       set_timer: {
    #                         timer_name: "TimerName", # required
    #                         seconds: 1,
    #                         duration_expression: "VariableValue"
    #                       },
    #                       clear_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       reset_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       lambda: {
    #                         function_arn: "AmazonResourceName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       iot_events: {
    #                         input_name: "InputName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       sqs: {
    #                         queue_url: "QueueUrl", # required
    #                         use_base64: false,
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       firehose: {
    #                         delivery_stream_name: "DeliveryStreamName", # required
    #                         separator: "FirehoseSeparator",
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       dynamo_db: {
    #                         hash_key_type: "DynamoKeyType",
    #                         hash_key_field: "DynamoKeyField", # required
    #                         hash_key_value: "DynamoKeyValue", # required
    #                         range_key_type: "DynamoKeyType",
    #                         range_key_field: "DynamoKeyField",
    #                         range_key_value: "DynamoKeyValue",
    #                         operation: "DynamoOperation",
    #                         payload_field: "DynamoKeyField",
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       dynamo_d_bv2: {
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       iot_site_wise: {
    #                         entry_id: "AssetPropertyEntryId",
    #                         asset_id: "AssetId",
    #                         property_id: "AssetPropertyId",
    #                         property_alias: "AssetPropertyAlias",
    #                         property_value: {
    #                           value: {
    #                             string_value: "AssetPropertyStringValue",
    #                             integer_value: "AssetPropertyIntegerValue",
    #                             double_value: "AssetPropertyDoubleValue",
    #                             boolean_value: "AssetPropertyBooleanValue"
    #                           },
    #                           timestamp: {
    #                             time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                             offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                           },
    #                           quality: "AssetPropertyQuality"
    #                         }
    #                       }
    #                     }
    #                   ],
    #                   next_state: "StateName", # required
    #                 }
    #               ]
    #             },
    #             on_enter: {
    #               events: [
    #                 {
    #                   event_name: "EventName", # required
    #                   condition: "Condition",
    #                   actions: [
    #                     {
    #                       set_variable: {
    #                         variable_name: "VariableName", # required
    #                         value: "VariableValue", # required
    #                       },
    #                       sns: {
    #                         target_arn: "AmazonResourceName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       iot_topic_publish: {
    #                         mqtt_topic: "MQTTTopic", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       set_timer: {
    #                         timer_name: "TimerName", # required
    #                         seconds: 1,
    #                         duration_expression: "VariableValue"
    #                       },
    #                       clear_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       reset_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       lambda: {
    #                         function_arn: "AmazonResourceName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       iot_events: {
    #                         input_name: "InputName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       sqs: {
    #                         queue_url: "QueueUrl", # required
    #                         use_base64: false,
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       firehose: {
    #                         delivery_stream_name: "DeliveryStreamName", # required
    #                         separator: "FirehoseSeparator",
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       dynamo_db: {
    #                         hash_key_type: "DynamoKeyType",
    #                         hash_key_field: "DynamoKeyField", # required
    #                         hash_key_value: "DynamoKeyValue", # required
    #                         range_key_type: "DynamoKeyType",
    #                         range_key_field: "DynamoKeyField",
    #                         range_key_value: "DynamoKeyValue",
    #                         operation: "DynamoOperation",
    #                         payload_field: "DynamoKeyField",
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       dynamo_d_bv2: {
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       iot_site_wise: {
    #                         entry_id: "AssetPropertyEntryId",
    #                         asset_id: "AssetId",
    #                         property_id: "AssetPropertyId",
    #                         property_alias: "AssetPropertyAlias",
    #                         property_value: {
    #                           value: {
    #                             string_value: "AssetPropertyStringValue",
    #                             integer_value: "AssetPropertyIntegerValue",
    #                             double_value: "AssetPropertyDoubleValue",
    #                             boolean_value: "AssetPropertyBooleanValue"
    #                           },
    #                           timestamp: {
    #                             time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                             offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                           },
    #                           quality: "AssetPropertyQuality"
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 }
    #               ]
    #             },
    #             on_exit: {
    #               events: [
    #                 {
    #                   event_name: "EventName", # required
    #                   condition: "Condition",
    #                   actions: [
    #                     {
    #                       set_variable: {
    #                         variable_name: "VariableName", # required
    #                         value: "VariableValue", # required
    #                       },
    #                       sns: {
    #                         target_arn: "AmazonResourceName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       iot_topic_publish: {
    #                         mqtt_topic: "MQTTTopic", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       set_timer: {
    #                         timer_name: "TimerName", # required
    #                         seconds: 1,
    #                         duration_expression: "VariableValue"
    #                       },
    #                       clear_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       reset_timer: {
    #                         timer_name: "TimerName", # required
    #                       },
    #                       lambda: {
    #                         function_arn: "AmazonResourceName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       iot_events: {
    #                         input_name: "InputName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       sqs: {
    #                         queue_url: "QueueUrl", # required
    #                         use_base64: false,
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       firehose: {
    #                         delivery_stream_name: "DeliveryStreamName", # required
    #                         separator: "FirehoseSeparator",
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       dynamo_db: {
    #                         hash_key_type: "DynamoKeyType",
    #                         hash_key_field: "DynamoKeyField", # required
    #                         hash_key_value: "DynamoKeyValue", # required
    #                         range_key_type: "DynamoKeyType",
    #                         range_key_field: "DynamoKeyField",
    #                         range_key_value: "DynamoKeyValue",
    #                         operation: "DynamoOperation",
    #                         payload_field: "DynamoKeyField",
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       dynamo_d_bv2: {
    #                         table_name: "DynamoTableName", # required
    #                         payload: {
    #                           content_expression: "ContentExpression", # required
    #                           type: "STRING" # One of: ["STRING", "JSON"], # required
    #                         }
    #                       },
    #                       iot_site_wise: {
    #                         entry_id: "AssetPropertyEntryId",
    #                         asset_id: "AssetId",
    #                         property_id: "AssetPropertyId",
    #                         property_alias: "AssetPropertyAlias",
    #                         property_value: {
    #                           value: {
    #                             string_value: "AssetPropertyStringValue",
    #                             integer_value: "AssetPropertyIntegerValue",
    #                             double_value: "AssetPropertyDoubleValue",
    #                             boolean_value: "AssetPropertyBooleanValue"
    #                           },
    #                           timestamp: {
    #                             time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                             offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                           },
    #                           quality: "AssetPropertyQuality"
    #                         }
    #                       }
    #                     }
    #                   ]
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         initial_state_name: "StateName", # required
    #       },
    #       detector_model_configuration: {
    #         detector_model_name: "DetectorModelName",
    #         detector_model_version: "DetectorModelVersion",
    #         detector_model_description: "DetectorModelDescription",
    #         detector_model_arn: "DetectorModelArn",
    #         role_arn: "AmazonResourceName",
    #         creation_time: Time.now,
    #         last_update_time: Time.now,
    #         status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "INACTIVE", "DEPRECATED", "DRAFT", "PAUSED", "FAILED"],
    #         key: "AttributeJsonPath",
    #         evaluation_method: "BATCH" # One of: ["BATCH", "SERIAL"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeDetectorModelResponse]
    def describe_detector_model(params = {}, options = {})
      request = build_request(:describe_detector_model, params)
      request.send_request(options)
    end

    # <p>Retrieves runtime information about a detector model analysis.</p>
    #          <note>
    #             <p>After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.</p>
    #          </note>
    # @param [Hash, Types::DescribeDetectorModelAnalysisRequest] params
    # @option params [String] :analysis_id
    #   <p>The ID of the analysis result that you want to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analysis_id: "AnalysisId", # required
    #   }
    #   options = {}
    #   response = client.describe_detector_model_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "RUNNING" # One of: ["RUNNING", "COMPLETE", "FAILED"]
    #   }
    # @return [Types::DescribeDetectorModelAnalysisResponse]
    def describe_detector_model_analysis(params = {}, options = {})
      request = build_request(:describe_detector_model_analysis, params)
      request.send_request(options)
    end

    # <p>Describes an input.</p>
    # @param [Hash, Types::DescribeInputRequest] params
    # @option params [String] :input_name
    #   <p>The name of the input.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_name: "InputName", # required
    #   }
    #   options = {}
    #   response = client.describe_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     input: {
    #       input_configuration: {
    #         input_name: "InputName", # required
    #         input_description: "InputDescription",
    #         input_arn: "InputArn", # required
    #         creation_time: Time.now, # required
    #         last_update_time: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING"], # required
    #       },
    #       input_definition: {
    #         attributes: [ # required
    #           {
    #             json_path: "AttributeJsonPath", # required
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DescribeInputResponse]
    def describe_input(params = {}, options = {})
      request = build_request(:describe_input, params)
      request.send_request(options)
    end

    # <p>Retrieves the current settings of the AWS IoT Events logging options.</p>
    # @param [Hash, Types::DescribeLoggingOptionsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_logging_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_options: {
    #       role_arn: "AmazonResourceName", # required
    #       level: "ERROR" # One of: ["ERROR", "INFO", "DEBUG"], # required
    #       enabled: false, # required
    #       detector_debug_options: [
    #         {
    #           detector_model_name: "DetectorModelName", # required
    #           key_value: "KeyValue"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeLoggingOptionsResponse]
    def describe_logging_options(params = {}, options = {})
      request = build_request(:describe_logging_options, params)
      request.send_request(options)
    end

    # <p>Retrieves one or more analysis results of the detector model.</p>
    #          <note>
    #             <p>After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.</p>
    #          </note>
    # @param [Hash, Types::GetDetectorModelAnalysisResultsRequest] params
    # @option params [String] :analysis_id
    #   <p>The ID of the analysis result that you want to retrieve.</p>
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analysis_id: "AnalysisId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_detector_model_analysis_results(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_results: [
    #       {
    #         type: "AnalysisType",
    #         level: "INFO" # One of: ["INFO", "WARNING", "ERROR"],
    #         message: "AnalysisMessage",
    #         locations: [
    #           {
    #             path: "AnalysisResultLocationPath"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetDetectorModelAnalysisResultsResponse]
    def get_detector_model_analysis_results(params = {}, options = {})
      request = build_request(:get_detector_model_analysis_results, params)
      request.send_request(options)
    end

    # <p>Lists all the versions of an alarm model. The operation returns only the metadata
    #       associated with each alarm model version.</p>
    # @param [Hash, Types::ListAlarmModelVersionsRequest] params
    # @option params [String] :alarm_model_name
    #   <p>The name of the alarm model.</p>
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_model_name: "AlarmModelName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_alarm_model_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alarm_model_version_summaries: [
    #       {
    #         alarm_model_name: "AlarmModelName",
    #         alarm_model_arn: "AlarmModelArn",
    #         alarm_model_version: "AlarmModelVersion",
    #         role_arn: "AmazonResourceName",
    #         creation_time: Time.now,
    #         last_update_time: Time.now,
    #         status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "INACTIVE", "FAILED"],
    #         status_message: "StatusMessage"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAlarmModelVersionsResponse]
    def list_alarm_model_versions(params = {}, options = {})
      request = build_request(:list_alarm_model_versions, params)
      request.send_request(options)
    end

    # <p>Lists the alarm models that you created. The operation returns only the metadata
    #       associated with each alarm model.</p>
    # @param [Hash, Types::ListAlarmModelsRequest] params
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_alarm_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alarm_model_summaries: [
    #       {
    #         creation_time: Time.now,
    #         alarm_model_description: "AlarmModelDescription",
    #         alarm_model_name: "AlarmModelName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAlarmModelsResponse]
    def list_alarm_models(params = {}, options = {})
      request = build_request(:list_alarm_models, params)
      request.send_request(options)
    end

    # <p>Lists all the versions of a detector model. Only the metadata associated with each
    #       detector model version is returned.</p>
    # @param [Hash, Types::ListDetectorModelVersionsRequest] params
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model whose versions are returned.</p>
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_model_name: "DetectorModelName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_detector_model_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector_model_version_summaries: [
    #       {
    #         detector_model_name: "DetectorModelName",
    #         detector_model_version: "DetectorModelVersion",
    #         detector_model_arn: "DetectorModelArn",
    #         role_arn: "AmazonResourceName",
    #         creation_time: Time.now,
    #         last_update_time: Time.now,
    #         status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "INACTIVE", "DEPRECATED", "DRAFT", "PAUSED", "FAILED"],
    #         evaluation_method: "BATCH" # One of: ["BATCH", "SERIAL"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDetectorModelVersionsResponse]
    def list_detector_model_versions(params = {}, options = {})
      request = build_request(:list_detector_model_versions, params)
      request.send_request(options)
    end

    # <p>Lists the detector models you have created. Only the metadata associated with each
    #       detector model is returned.</p>
    # @param [Hash, Types::ListDetectorModelsRequest] params
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_detector_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector_model_summaries: [
    #       {
    #         detector_model_name: "DetectorModelName",
    #         detector_model_description: "DetectorModelDescription",
    #         creation_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDetectorModelsResponse]
    def list_detector_models(params = {}, options = {})
      request = build_request(:list_detector_models, params)
      request.send_request(options)
    end

    # <p>
    #       Lists one or more input routings. 
    #     </p>
    # @param [Hash, Types::ListInputRoutingsRequest] params
    # @option params [Types::InputIdentifier] :input_identifier
    #   <p>
    #         The identifer of the routed input.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of results to be returned per request.
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #         The token that you can use to return the next set of results.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_identifier: { # required
    #       iot_events_input_identifier: {
    #         input_name: "InputName", # required
    #       },
    #       iot_site_wise_input_identifier: {
    #         iot_site_wise_asset_model_property_identifier: {
    #           asset_model_id: "AssetModelId", # required
    #           property_id: "AssetPropertyId", # required
    #         }
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_input_routings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     routed_resources: [
    #       {
    #         name: "ResourceName",
    #         arn: "AmazonResourceName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInputRoutingsResponse]
    def list_input_routings(params = {}, options = {})
      request = build_request(:list_input_routings, params)
      request.send_request(options)
    end

    # <p>Lists the inputs you have created.</p>
    # @param [Hash, Types::ListInputsRequest] params
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_inputs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     input_summaries: [
    #       {
    #         input_name: "InputName",
    #         input_description: "InputDescription",
    #         input_arn: "InputArn",
    #         creation_time: Time.now,
    #         last_update_time: Time.now,
    #         status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListInputsResponse]
    def list_inputs(params = {}, options = {})
      request = build_request(:list_inputs, params)
      request.send_request(options)
    end

    # <p>Lists the tags (metadata) you have assigned to the resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Sets or updates the AWS IoT Events logging options.</p>
    #          <p>If you update the value of any <code>loggingOptions</code> field, it takes up to one
    #       minute for the change to take effect. If you change the policy attached to the role you
    #       specified in the <code>roleArn</code> field (for example, to correct an invalid policy), it
    #       takes up to five minutes for that change to take effect.</p>
    # @param [Hash, Types::PutLoggingOptionsRequest] params
    # @option params [Types::LoggingOptions] :logging_options
    #   <p>The new values of the AWS IoT Events logging options.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     logging_options: { # required
    #       role_arn: "AmazonResourceName", # required
    #       level: "ERROR" # One of: ["ERROR", "INFO", "DEBUG"], # required
    #       enabled: false, # required
    #       detector_debug_options: [
    #         {
    #           detector_model_name: "DetectorModelName", # required
    #           key_value: "KeyValue"
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.put_logging_options(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_logging_options(params = {}, options = {})
      request = build_request(:put_logging_options, params)
      request.send_request(options)
    end

    # <p>Performs an analysis of your detector model. For more information, 
    #       see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html">Troubleshooting a detector model</a> 
    #       in the <i>AWS IoT Events Developer Guide</i>.</p>
    # @param [Hash, Types::StartDetectorModelAnalysisRequest] params
    # @option params [Types::DetectorModelDefinition] :detector_model_definition
    #   <p>Information that defines how a detector operates.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_model_definition: { # required
    #       states: [ # required
    #         {
    #           state_name: "StateName", # required
    #           on_input: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1,
    #                       duration_expression: "VariableValue"
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     lambda: {
    #                       function_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_events: {
    #                       input_name: "InputName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     sqs: {
    #                       queue_url: "QueueUrl", # required
    #                       use_base64: false,
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: "DeliveryStreamName", # required
    #                       separator: "FirehoseSeparator",
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: "DynamoKeyType",
    #                       hash_key_field: "DynamoKeyField", # required
    #                       hash_key_value: "DynamoKeyValue", # required
    #                       range_key_type: "DynamoKeyType",
    #                       range_key_field: "DynamoKeyField",
    #                       range_key_value: "DynamoKeyValue",
    #                       operation: "DynamoOperation",
    #                       payload_field: "DynamoKeyField",
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: "AssetPropertyEntryId",
    #                       asset_id: "AssetId",
    #                       property_id: "AssetPropertyId",
    #                       property_alias: "AssetPropertyAlias",
    #                       property_value: {
    #                         value: {
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue"
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                         },
    #                         quality: "AssetPropertyQuality"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             transition_events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition", # required
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1,
    #                       duration_expression: "VariableValue"
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     lambda: {
    #                       function_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_events: {
    #                       input_name: "InputName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     sqs: {
    #                       queue_url: "QueueUrl", # required
    #                       use_base64: false,
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: "DeliveryStreamName", # required
    #                       separator: "FirehoseSeparator",
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: "DynamoKeyType",
    #                       hash_key_field: "DynamoKeyField", # required
    #                       hash_key_value: "DynamoKeyValue", # required
    #                       range_key_type: "DynamoKeyType",
    #                       range_key_field: "DynamoKeyField",
    #                       range_key_value: "DynamoKeyValue",
    #                       operation: "DynamoOperation",
    #                       payload_field: "DynamoKeyField",
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: "AssetPropertyEntryId",
    #                       asset_id: "AssetId",
    #                       property_id: "AssetPropertyId",
    #                       property_alias: "AssetPropertyAlias",
    #                       property_value: {
    #                         value: {
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue"
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                         },
    #                         quality: "AssetPropertyQuality"
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 next_state: "StateName", # required
    #               }
    #             ]
    #           },
    #           on_enter: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1,
    #                       duration_expression: "VariableValue"
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     lambda: {
    #                       function_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_events: {
    #                       input_name: "InputName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     sqs: {
    #                       queue_url: "QueueUrl", # required
    #                       use_base64: false,
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: "DeliveryStreamName", # required
    #                       separator: "FirehoseSeparator",
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: "DynamoKeyType",
    #                       hash_key_field: "DynamoKeyField", # required
    #                       hash_key_value: "DynamoKeyValue", # required
    #                       range_key_type: "DynamoKeyType",
    #                       range_key_field: "DynamoKeyField",
    #                       range_key_value: "DynamoKeyValue",
    #                       operation: "DynamoOperation",
    #                       payload_field: "DynamoKeyField",
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: "AssetPropertyEntryId",
    #                       asset_id: "AssetId",
    #                       property_id: "AssetPropertyId",
    #                       property_alias: "AssetPropertyAlias",
    #                       property_value: {
    #                         value: {
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue"
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                         },
    #                         quality: "AssetPropertyQuality"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           on_exit: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1,
    #                       duration_expression: "VariableValue"
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     lambda: {
    #                       function_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_events: {
    #                       input_name: "InputName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     sqs: {
    #                       queue_url: "QueueUrl", # required
    #                       use_base64: false,
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: "DeliveryStreamName", # required
    #                       separator: "FirehoseSeparator",
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: "DynamoKeyType",
    #                       hash_key_field: "DynamoKeyField", # required
    #                       hash_key_value: "DynamoKeyValue", # required
    #                       range_key_type: "DynamoKeyType",
    #                       range_key_field: "DynamoKeyField",
    #                       range_key_value: "DynamoKeyValue",
    #                       operation: "DynamoOperation",
    #                       payload_field: "DynamoKeyField",
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: "AssetPropertyEntryId",
    #                       asset_id: "AssetId",
    #                       property_id: "AssetPropertyId",
    #                       property_alias: "AssetPropertyAlias",
    #                       property_value: {
    #                         value: {
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue"
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                         },
    #                         quality: "AssetPropertyQuality"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       initial_state_name: "StateName", # required
    #     }
    #   }
    #   options = {}
    #   response = client.start_detector_model_analysis(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analysis_id: "AnalysisId"
    #   }
    # @return [Types::StartDetectorModelAnalysisResponse]
    def start_detector_model_analysis(params = {}, options = {})
      request = build_request(:start_detector_model_analysis, params)
      request.send_request(options)
    end

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata that can be used to
    #       manage a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The new or modified tags for the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Removes the given tags (metadata) from the resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys of the tags to be removed from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Updates an alarm model. Any alarms that were created based on the previous version are
    #       deleted and then created again as new data arrives.</p>
    # @param [Hash, Types::UpdateAlarmModelRequest] params
    # @option params [String] :alarm_model_name
    #   <p>The name of the alarm model.</p>
    # @option params [String] :alarm_model_description
    #   <p>The description of the alarm model.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that allows the alarm to perform actions and access AWS resources. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>AWS General Reference</i>.</p>
    # @option params [Integer] :severity
    #   <p>A non-negative integer that reflects the severity level of the alarm.</p>
    # @option params [Types::AlarmRule] :alarm_rule
    #   <p>Defines when your alarm is invoked.</p>
    # @option params [Types::AlarmNotification] :alarm_notification
    #   <p>Contains information about one or more notification actions.</p>
    # @option params [Types::AlarmEventActions] :alarm_event_actions
    #   <p>Contains information about one or more alarm actions.</p>
    # @option params [Types::AlarmCapabilities] :alarm_capabilities
    #   <p>Contains the configuration information of alarm state changes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_model_name: "AlarmModelName", # required
    #     alarm_model_description: "AlarmModelDescription",
    #     role_arn: "AmazonResourceName", # required
    #     severity: 1,
    #     alarm_rule: { # required
    #       simple_rule: {
    #         input_property: "InputProperty", # required
    #         comparison_operator: "GREATER" # One of: ["GREATER", "GREATER_OR_EQUAL", "LESS", "LESS_OR_EQUAL", "EQUAL", "NOT_EQUAL"], # required
    #         threshold: "Threshold", # required
    #       }
    #     },
    #     alarm_notification: {
    #       notification_actions: [
    #         {
    #           action: { # required
    #             lambda_action: {
    #               function_arn: "AmazonResourceName", # required
    #               payload: {
    #                 content_expression: "ContentExpression", # required
    #                 type: "STRING" # One of: ["STRING", "JSON"], # required
    #               }
    #             }
    #           },
    #           sms_configurations: [
    #             {
    #               sender_id: "SMSSenderId",
    #               additional_message: "NotificationAdditionalMessage",
    #               recipients: [ # required
    #                 {
    #                   sso_identity: {
    #                     identity_store_id: "IdentityStoreId", # required
    #                     user_id: "SSOReferenceId"
    #                   }
    #                 }
    #               ]
    #             }
    #           ],
    #           email_configurations: [
    #             {
    #               from: "FromEmail", # required
    #               content: {
    #                 subject: "EmailSubject",
    #                 additional_message: "NotificationAdditionalMessage"
    #               },
    #               recipients: { # required
    #                 to: [
    #                   {
    #                     sso_identity: {
    #                       identity_store_id: "IdentityStoreId", # required
    #                       user_id: "SSOReferenceId"
    #                     }
    #                   }
    #                 ]
    #               }
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     alarm_event_actions: {
    #       alarm_actions: [
    #         {
    #           sns: {
    #             target_arn: "AmazonResourceName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           iot_topic_publish: {
    #             mqtt_topic: "MQTTTopic", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           lambda: {
    #             function_arn: "AmazonResourceName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           iot_events: {
    #             input_name: "InputName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           sqs: {
    #             queue_url: "QueueUrl", # required
    #             use_base64: false,
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           firehose: {
    #             delivery_stream_name: "DeliveryStreamName", # required
    #             separator: "FirehoseSeparator",
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           dynamo_db: {
    #             hash_key_type: "DynamoKeyType",
    #             hash_key_field: "DynamoKeyField", # required
    #             hash_key_value: "DynamoKeyValue", # required
    #             range_key_type: "DynamoKeyType",
    #             range_key_field: "DynamoKeyField",
    #             range_key_value: "DynamoKeyValue",
    #             operation: "DynamoOperation",
    #             payload_field: "DynamoKeyField",
    #             table_name: "DynamoTableName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           dynamo_d_bv2: {
    #             table_name: "DynamoTableName", # required
    #             payload: {
    #               content_expression: "ContentExpression", # required
    #               type: "STRING" # One of: ["STRING", "JSON"], # required
    #             }
    #           },
    #           iot_site_wise: {
    #             entry_id: "AssetPropertyEntryId",
    #             asset_id: "AssetId",
    #             property_id: "AssetPropertyId",
    #             property_alias: "AssetPropertyAlias",
    #             property_value: {
    #               value: {
    #                 string_value: "AssetPropertyStringValue",
    #                 integer_value: "AssetPropertyIntegerValue",
    #                 double_value: "AssetPropertyDoubleValue",
    #                 boolean_value: "AssetPropertyBooleanValue"
    #               },
    #               timestamp: {
    #                 time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                 offset_in_nanos: "AssetPropertyOffsetInNanos"
    #               },
    #               quality: "AssetPropertyQuality"
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     alarm_capabilities: {
    #       initialization_configuration: {
    #         disabled_on_initialization: false, # required
    #       },
    #       acknowledge_flow: {
    #         enabled: false, # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_alarm_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     creation_time: Time.now,
    #     alarm_model_arn: "AlarmModelArn",
    #     alarm_model_version: "AlarmModelVersion",
    #     last_update_time: Time.now,
    #     status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "INACTIVE", "FAILED"]
    #   }
    # @return [Types::UpdateAlarmModelResponse]
    def update_alarm_model(params = {}, options = {})
      request = build_request(:update_alarm_model, params)
      request.send_request(options)
    end

    # <p>Updates a detector model. Detectors (instances) spawned by the previous version are
    #       deleted and then re-created as new inputs arrive.</p>
    # @param [Hash, Types::UpdateDetectorModelRequest] params
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model that is updated.</p>
    # @option params [Types::DetectorModelDefinition] :detector_model_definition
    #   <p>Information that defines how a detector operates.</p>
    # @option params [String] :detector_model_description
    #   <p>A brief description of the detector model.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>
    # @option params [String] :evaluation_method
    #   <p>Information about the order in which events are evaluated and how actions are executed.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_model_name: "DetectorModelName", # required
    #     detector_model_definition: { # required
    #       states: [ # required
    #         {
    #           state_name: "StateName", # required
    #           on_input: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1,
    #                       duration_expression: "VariableValue"
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     lambda: {
    #                       function_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_events: {
    #                       input_name: "InputName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     sqs: {
    #                       queue_url: "QueueUrl", # required
    #                       use_base64: false,
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: "DeliveryStreamName", # required
    #                       separator: "FirehoseSeparator",
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: "DynamoKeyType",
    #                       hash_key_field: "DynamoKeyField", # required
    #                       hash_key_value: "DynamoKeyValue", # required
    #                       range_key_type: "DynamoKeyType",
    #                       range_key_field: "DynamoKeyField",
    #                       range_key_value: "DynamoKeyValue",
    #                       operation: "DynamoOperation",
    #                       payload_field: "DynamoKeyField",
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: "AssetPropertyEntryId",
    #                       asset_id: "AssetId",
    #                       property_id: "AssetPropertyId",
    #                       property_alias: "AssetPropertyAlias",
    #                       property_value: {
    #                         value: {
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue"
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                         },
    #                         quality: "AssetPropertyQuality"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             ],
    #             transition_events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition", # required
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1,
    #                       duration_expression: "VariableValue"
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     lambda: {
    #                       function_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_events: {
    #                       input_name: "InputName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     sqs: {
    #                       queue_url: "QueueUrl", # required
    #                       use_base64: false,
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: "DeliveryStreamName", # required
    #                       separator: "FirehoseSeparator",
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: "DynamoKeyType",
    #                       hash_key_field: "DynamoKeyField", # required
    #                       hash_key_value: "DynamoKeyValue", # required
    #                       range_key_type: "DynamoKeyType",
    #                       range_key_field: "DynamoKeyField",
    #                       range_key_value: "DynamoKeyValue",
    #                       operation: "DynamoOperation",
    #                       payload_field: "DynamoKeyField",
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: "AssetPropertyEntryId",
    #                       asset_id: "AssetId",
    #                       property_id: "AssetPropertyId",
    #                       property_alias: "AssetPropertyAlias",
    #                       property_value: {
    #                         value: {
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue"
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                         },
    #                         quality: "AssetPropertyQuality"
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 next_state: "StateName", # required
    #               }
    #             ]
    #           },
    #           on_enter: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1,
    #                       duration_expression: "VariableValue"
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     lambda: {
    #                       function_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_events: {
    #                       input_name: "InputName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     sqs: {
    #                       queue_url: "QueueUrl", # required
    #                       use_base64: false,
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: "DeliveryStreamName", # required
    #                       separator: "FirehoseSeparator",
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: "DynamoKeyType",
    #                       hash_key_field: "DynamoKeyField", # required
    #                       hash_key_value: "DynamoKeyValue", # required
    #                       range_key_type: "DynamoKeyType",
    #                       range_key_field: "DynamoKeyField",
    #                       range_key_value: "DynamoKeyValue",
    #                       operation: "DynamoOperation",
    #                       payload_field: "DynamoKeyField",
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: "AssetPropertyEntryId",
    #                       asset_id: "AssetId",
    #                       property_id: "AssetPropertyId",
    #                       property_alias: "AssetPropertyAlias",
    #                       property_value: {
    #                         value: {
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue"
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                         },
    #                         quality: "AssetPropertyQuality"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             ]
    #           },
    #           on_exit: {
    #             events: [
    #               {
    #                 event_name: "EventName", # required
    #                 condition: "Condition",
    #                 actions: [
    #                   {
    #                     set_variable: {
    #                       variable_name: "VariableName", # required
    #                       value: "VariableValue", # required
    #                     },
    #                     sns: {
    #                       target_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_topic_publish: {
    #                       mqtt_topic: "MQTTTopic", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     set_timer: {
    #                       timer_name: "TimerName", # required
    #                       seconds: 1,
    #                       duration_expression: "VariableValue"
    #                     },
    #                     clear_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     reset_timer: {
    #                       timer_name: "TimerName", # required
    #                     },
    #                     lambda: {
    #                       function_arn: "AmazonResourceName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_events: {
    #                       input_name: "InputName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     sqs: {
    #                       queue_url: "QueueUrl", # required
    #                       use_base64: false,
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     firehose: {
    #                       delivery_stream_name: "DeliveryStreamName", # required
    #                       separator: "FirehoseSeparator",
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_db: {
    #                       hash_key_type: "DynamoKeyType",
    #                       hash_key_field: "DynamoKeyField", # required
    #                       hash_key_value: "DynamoKeyValue", # required
    #                       range_key_type: "DynamoKeyType",
    #                       range_key_field: "DynamoKeyField",
    #                       range_key_value: "DynamoKeyValue",
    #                       operation: "DynamoOperation",
    #                       payload_field: "DynamoKeyField",
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     dynamo_d_bv2: {
    #                       table_name: "DynamoTableName", # required
    #                       payload: {
    #                         content_expression: "ContentExpression", # required
    #                         type: "STRING" # One of: ["STRING", "JSON"], # required
    #                       }
    #                     },
    #                     iot_site_wise: {
    #                       entry_id: "AssetPropertyEntryId",
    #                       asset_id: "AssetId",
    #                       property_id: "AssetPropertyId",
    #                       property_alias: "AssetPropertyAlias",
    #                       property_value: {
    #                         value: {
    #                           string_value: "AssetPropertyStringValue",
    #                           integer_value: "AssetPropertyIntegerValue",
    #                           double_value: "AssetPropertyDoubleValue",
    #                           boolean_value: "AssetPropertyBooleanValue"
    #                         },
    #                         timestamp: {
    #                           time_in_seconds: "AssetPropertyTimeInSeconds", # required
    #                           offset_in_nanos: "AssetPropertyOffsetInNanos"
    #                         },
    #                         quality: "AssetPropertyQuality"
    #                       }
    #                     }
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         }
    #       ],
    #       initial_state_name: "StateName", # required
    #     },
    #     detector_model_description: "DetectorModelDescription",
    #     role_arn: "AmazonResourceName", # required
    #     evaluation_method: "BATCH" # One of: ["BATCH", "SERIAL"]
    #   }
    #   options = {}
    #   response = client.update_detector_model(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector_model_configuration: {
    #       detector_model_name: "DetectorModelName",
    #       detector_model_version: "DetectorModelVersion",
    #       detector_model_description: "DetectorModelDescription",
    #       detector_model_arn: "DetectorModelArn",
    #       role_arn: "AmazonResourceName",
    #       creation_time: Time.now,
    #       last_update_time: Time.now,
    #       status: "ACTIVE" # One of: ["ACTIVE", "ACTIVATING", "INACTIVE", "DEPRECATED", "DRAFT", "PAUSED", "FAILED"],
    #       key: "AttributeJsonPath",
    #       evaluation_method: "BATCH" # One of: ["BATCH", "SERIAL"]
    #     }
    #   }
    # @return [Types::UpdateDetectorModelResponse]
    def update_detector_model(params = {}, options = {})
      request = build_request(:update_detector_model, params)
      request.send_request(options)
    end

    # <p>Updates an input.</p>
    # @param [Hash, Types::UpdateInputRequest] params
    # @option params [String] :input_name
    #   <p>The name of the input you want to update.</p>
    # @option params [String] :input_description
    #   <p>A brief description of the input.</p>
    # @option params [Types::InputDefinition] :input_definition
    #   <p>The definition of the input.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     input_name: "InputName", # required
    #     input_description: "InputDescription",
    #     input_definition: { # required
    #       attributes: [ # required
    #         {
    #           json_path: "AttributeJsonPath", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.update_input(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     input_configuration: {
    #       input_name: "InputName", # required
    #       input_description: "InputDescription",
    #       input_arn: "InputArn", # required
    #       creation_time: Time.now, # required
    #       last_update_time: Time.now, # required
    #       status: "CREATING" # One of: ["CREATING", "UPDATING", "ACTIVE", "DELETING"], # required
    #     }
    #   }
    # @return [Types::UpdateInputResponse]
    def update_input(params = {}, options = {})
      request = build_request(:update_input, params)
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
      context[:gem_name] = 'aws-sdk-iotevents'
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
