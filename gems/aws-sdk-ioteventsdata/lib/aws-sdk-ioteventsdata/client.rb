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
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::IoTEventsData
  # An API client for Aws::IoTEventsData.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::IotColumboDataService

    add_plugin(::Aws::IoTEventsData::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

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
    # @option options [Aws::IoTEventsData::EndpointProvider] :endpoint_provider
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

    # <p>Acknowledges one or more alarms. The alarms change to the <code>ACKNOWLEDGED</code> state
    #       after you acknowledge them.</p>
    # @param [Hash, Types::BatchAcknowledgeAlarmRequest] params
    # @option params [Array<Types::AcknowledgeAlarmActionRequest>] :acknowledge_action_requests
    #   <p>The list of acknowledge action requests. You can specify up to 10 requests per operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acknowledge_action_requests: [ # required
    #       {
    #         request_id: "RequestId", # required
    #         alarm_model_name: "AlarmModelName", # required
    #         key_value: "KeyValue",
    #         note: "Note"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_acknowledge_alarm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [
    #       {
    #         request_id: "RequestId",
    #         error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"],
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchAcknowledgeAlarmResponse]
    def batch_acknowledge_alarm(params = {}, options = {})
      request = build_request(:batch_acknowledge_alarm, params)
      request.send_request(options)
    end

    # <p>Deletes one or more detectors that were created. When a detector is deleted, its state will be cleared and the detector will be removed from the list of detectors. The deleted detector will no longer appear if referenced in the <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_ListDetectors.html">ListDetectors</a> API call.</p>
    # @param [Hash, Types::BatchDeleteDetectorRequest] params
    # @option params [Array<Types::DeleteDetectorRequest>] :detectors
    #   <p>The list of one or more detectors to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detectors: [ # required
    #       {
    #         message_id: "MessageId", # required
    #         detector_model_name: "DetectorModelName", # required
    #         key_value: "KeyValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_delete_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_delete_detector_error_entries: [
    #       {
    #         message_id: "MessageId",
    #         error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"],
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeleteDetectorResponse]
    def batch_delete_detector(params = {}, options = {})
      request = build_request(:batch_delete_detector, params)
      request.send_request(options)
    end

    # <p>Disables one or more alarms. The alarms change to the <code>DISABLED</code> state after
    #       you disable them.</p>
    # @param [Hash, Types::BatchDisableAlarmRequest] params
    # @option params [Array<Types::DisableAlarmActionRequest>] :disable_action_requests
    #   <p>The list of disable action requests. You can specify up to 10 requests per operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     disable_action_requests: [ # required
    #       {
    #         request_id: "RequestId", # required
    #         alarm_model_name: "AlarmModelName", # required
    #         key_value: "KeyValue",
    #         note: "Note"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_disable_alarm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [
    #       {
    #         request_id: "RequestId",
    #         error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"],
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDisableAlarmResponse]
    def batch_disable_alarm(params = {}, options = {})
      request = build_request(:batch_disable_alarm, params)
      request.send_request(options)
    end

    # <p>Enables one or more alarms. The alarms change to the <code>NORMAL</code> state after you
    #       enable them.</p>
    # @param [Hash, Types::BatchEnableAlarmRequest] params
    # @option params [Array<Types::EnableAlarmActionRequest>] :enable_action_requests
    #   <p>The list of enable action requests. You can specify up to 10 requests per operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     enable_action_requests: [ # required
    #       {
    #         request_id: "RequestId", # required
    #         alarm_model_name: "AlarmModelName", # required
    #         key_value: "KeyValue",
    #         note: "Note"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_enable_alarm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [
    #       {
    #         request_id: "RequestId",
    #         error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"],
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchEnableAlarmResponse]
    def batch_enable_alarm(params = {}, options = {})
      request = build_request(:batch_enable_alarm, params)
      request.send_request(options)
    end

    # <p>Sends a set of messages to the IoT Events system. Each message payload is transformed into
    #       the input you specify (<code>"inputName"</code>) and ingested into any detectors that monitor
    #       that input. If multiple messages are sent, the order in which the messages are processed isn't
    #       guaranteed. To guarantee ordering, you must send messages one at a time and wait for a
    #       successful response.</p>
    # @param [Hash, Types::BatchPutMessageRequest] params
    # @option params [Array<Types::Message>] :messages
    #   <p>The list of messages to send. Each message has the following format: <code>'{ "messageId":
    #           "string", "inputName": "string", "payload": "string"}'</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     messages: [ # required
    #       {
    #         message_id: "MessageId", # required
    #         input_name: "EphemeralInputName", # required
    #         payload: "data", # required
    #         timestamp: {
    #           time_in_millis: 1
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_put_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_put_message_error_entries: [
    #       {
    #         message_id: "MessageId",
    #         error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"],
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchPutMessageResponse]
    def batch_put_message(params = {}, options = {})
      request = build_request(:batch_put_message, params)
      request.send_request(options)
    end

    # <p>Resets one or more alarms. The alarms return to the <code>NORMAL</code> state after you
    #       reset them.</p>
    # @param [Hash, Types::BatchResetAlarmRequest] params
    # @option params [Array<Types::ResetAlarmActionRequest>] :reset_action_requests
    #   <p>The list of reset action requests. You can specify up to 10 requests per operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reset_action_requests: [ # required
    #       {
    #         request_id: "RequestId", # required
    #         alarm_model_name: "AlarmModelName", # required
    #         key_value: "KeyValue",
    #         note: "Note"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_reset_alarm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [
    #       {
    #         request_id: "RequestId",
    #         error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"],
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchResetAlarmResponse]
    def batch_reset_alarm(params = {}, options = {})
      request = build_request(:batch_reset_alarm, params)
      request.send_request(options)
    end

    # <p>Changes one or more alarms to the snooze mode. The alarms change to the
    #         <code>SNOOZE_DISABLED</code> state after you set them to the snooze mode.</p>
    # @param [Hash, Types::BatchSnoozeAlarmRequest] params
    # @option params [Array<Types::SnoozeAlarmActionRequest>] :snooze_action_requests
    #   <p>The list of snooze action requests. You can specify up to 10 requests per operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snooze_action_requests: [ # required
    #       {
    #         request_id: "RequestId", # required
    #         alarm_model_name: "AlarmModelName", # required
    #         key_value: "KeyValue",
    #         note: "Note",
    #         snooze_duration: 1, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_snooze_alarm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error_entries: [
    #       {
    #         request_id: "RequestId",
    #         error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"],
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchSnoozeAlarmResponse]
    def batch_snooze_alarm(params = {}, options = {})
      request = build_request(:batch_snooze_alarm, params)
      request.send_request(options)
    end

    # <p>Updates the state, variable values, and timer settings of one or more detectors
    #       (instances) of a specified detector model.</p>
    # @param [Hash, Types::BatchUpdateDetectorRequest] params
    # @option params [Array<Types::UpdateDetectorRequest>] :detectors
    #   <p>The list of detectors (instances) to update, along with the values to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detectors: [ # required
    #       {
    #         message_id: "MessageId", # required
    #         detector_model_name: "DetectorModelName", # required
    #         key_value: "KeyValue",
    #         state: { # required
    #           state_name: "StateName", # required
    #           variables: [ # required
    #             {
    #               name: "VariableName", # required
    #               value: "VariableValue", # required
    #             }
    #           ],
    #           timers: [ # required
    #             {
    #               name: "TimerName", # required
    #               seconds: 1, # required
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_update_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_update_detector_error_entries: [
    #       {
    #         message_id: "MessageId",
    #         error_code: "ResourceNotFoundException" # One of: ["ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException"],
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateDetectorResponse]
    def batch_update_detector(params = {}, options = {})
      request = build_request(:batch_update_detector, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an alarm.</p>
    # @param [Hash, Types::DescribeAlarmRequest] params
    # @option params [String] :alarm_model_name
    #   <p>The name of the alarm model.</p>
    # @option params [String] :key_value
    #   <p>The value of the key used as a filter to select only the alarms associated with the 
    #   <a href="https://docs.aws.amazon.com/iotevents/latest/apireference/API_CreateAlarmModel.html#iotevents-CreateAlarmModel-request-key">key</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alarm_model_name: "AlarmModelName", # required
    #     key_value: "KeyValue"
    #   }
    #   options = {}
    #   response = client.describe_alarm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alarm: {
    #       alarm_model_name: "AlarmModelName",
    #       alarm_model_version: "AlarmModelVersion",
    #       key_value: "KeyValue",
    #       alarm_state: {
    #         state_name: "DISABLED" # One of: ["DISABLED", "NORMAL", "ACTIVE", "ACKNOWLEDGED", "SNOOZE_DISABLED", "LATCHED"],
    #         rule_evaluation: {
    #           simple_rule_evaluation: {
    #             input_property_value: "InputPropertyValue",
    #             operator: "GREATER" # One of: ["GREATER", "GREATER_OR_EQUAL", "LESS", "LESS_OR_EQUAL", "EQUAL", "NOT_EQUAL"],
    #             threshold_value: "ThresholdValue"
    #           }
    #         },
    #         customer_action: {
    #           action_name: "SNOOZE" # One of: ["SNOOZE", "ENABLE", "DISABLE", "ACKNOWLEDGE", "RESET"],
    #           snooze_action_configuration: {
    #             snooze_duration: 1,
    #             note: "Note"
    #           },
    #           enable_action_configuration: {
    #             note: "Note"
    #           },
    #           disable_action_configuration: {
    #             note: "Note"
    #           },
    #           acknowledge_action_configuration: {
    #             note: "Note"
    #           },
    #           reset_action_configuration: {
    #             note: "Note"
    #           }
    #         },
    #         system_event: {
    #           event_type: "STATE_CHANGE" # One of: ["STATE_CHANGE"],
    #           state_change_configuration: {
    #             trigger_type: "SNOOZE_TIMEOUT" # One of: ["SNOOZE_TIMEOUT"]
    #           }
    #         }
    #       },
    #       severity: 1,
    #       creation_time: Time.now,
    #       last_update_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeAlarmResponse]
    def describe_alarm(params = {}, options = {})
      request = build_request(:describe_alarm, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified detector (instance).</p>
    # @param [Hash, Types::DescribeDetectorRequest] params
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model whose detectors (instances) you want information
    #         about.</p>
    # @option params [String] :key_value
    #   <p>A filter used to limit results to detectors (instances) created because of the given key
    #         ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_model_name: "DetectorModelName", # required
    #     key_value: "KeyValue"
    #   }
    #   options = {}
    #   response = client.describe_detector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector: {
    #       detector_model_name: "DetectorModelName",
    #       key_value: "KeyValue",
    #       detector_model_version: "DetectorModelVersion",
    #       state: {
    #         state_name: "StateName", # required
    #         variables: [ # required
    #           {
    #             name: "VariableName", # required
    #             value: "VariableValue", # required
    #           }
    #         ],
    #         timers: [ # required
    #           {
    #             name: "TimerName", # required
    #             timestamp: Time.now, # required
    #           }
    #         ]
    #       },
    #       creation_time: Time.now,
    #       last_update_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeDetectorResponse]
    def describe_detector(params = {}, options = {})
      request = build_request(:describe_detector, params)
      request.send_request(options)
    end

    # <p>Lists one or more alarms. The operation returns only the metadata associated with each
    #       alarm.</p>
    # @param [Hash, Types::ListAlarmsRequest] params
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
    #   response = client.list_alarms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     alarm_summaries: [
    #       {
    #         alarm_model_name: "AlarmModelName",
    #         alarm_model_version: "AlarmModelVersion",
    #         key_value: "KeyValue",
    #         state_name: "DISABLED" # One of: ["DISABLED", "NORMAL", "ACTIVE", "ACKNOWLEDGED", "SNOOZE_DISABLED", "LATCHED"],
    #         creation_time: Time.now,
    #         last_update_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAlarmsResponse]
    def list_alarms(params = {}, options = {})
      request = build_request(:list_alarms, params)
      request.send_request(options)
    end

    # <p>Lists detectors (the instances of a detector model).</p>
    # @param [Hash, Types::ListDetectorsRequest] params
    # @option params [String] :detector_model_name
    #   <p>The name of the detector model whose detectors (instances) are listed.</p>
    # @option params [String] :state_name
    #   <p>A filter that limits results to those detectors (instances) in the given state.</p>
    # @option params [String] :next_token
    #   <p>The token that you can use to return the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     detector_model_name: "DetectorModelName", # required
    #     state_name: "StateName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_detectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     detector_summaries: [
    #       {
    #         detector_model_name: "DetectorModelName",
    #         key_value: "KeyValue",
    #         detector_model_version: "DetectorModelVersion",
    #         state: {
    #           state_name: "StateName"
    #         },
    #         creation_time: Time.now,
    #         last_update_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDetectorsResponse]
    def list_detectors(params = {}, options = {})
      request = build_request(:list_detectors, params)
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
      context[:gem_name] = 'aws-sdk-ioteventsdata'
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
