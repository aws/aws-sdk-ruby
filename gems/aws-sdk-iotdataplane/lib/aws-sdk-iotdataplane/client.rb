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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:iotdataplane)

module Aws::IoTDataPlane
  # An API client for Aws::IoTDataPlane.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::IotMoonrakerService
    @identifier = :iotdataplane

    add_plugin(::Aws::IoTDataPlane::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::IoTDataPlane::EndpointProvider)
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

    # <p>Disconnects a connected MQTT client from Amazon Web Services IoT Core. When you disconnect a client, Amazon Web Services IoT Core closes the client's network connection and optionally cleans the session state.</p>
    # @param [Hash, Types::DeleteConnectionRequest] params
    # @option params [String] :client_id
    #   <p>The unique identifier of the MQTT client to disconnect. The client ID can't start with a dollar sign ($).</p>
    # @option params [Boolean] :clean_session
    #   <p>Specifies whether to remove the client's session state when disconnecting. Set to <code>TRUE</code> to delete all session information, including subscriptions and queued messages. Set to <code>FALSE</code> to preserve the session state. By default, this is set to <code>FALSE</code> (preserves the session state).</p>
    # @option params [Boolean] :prevent_will_message
    #   <p>Controls if Amazon Web Services IoT Core publishes the client's Last Will and Testament (LWT) message upon disconnection. Set to <code>TRUE</code> to prevent publishing the LWT message. Set to <code>FALSE</code> to allow publishing. By default, this is set to <code>FALSE</code> (allows publishing the LWT message).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_id: "ClientId", # required
    #     clean_session: false,
    #     prevent_will_message: false
    #   }
    #   options = {}
    #   response = client.delete_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_connection(params = {}, options = {})
      request = build_request(:delete_connection, params)
      request.send_request(options)
    end

    # <p>Deletes the shadow for the specified thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteThingShadow</a> action.</p>
    #          <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html">DeleteThingShadow</a> in the IoT Developer Guide.</p>
    # @param [Hash, Types::DeleteThingShadowRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    # @option params [String] :shadow_name
    #   <p>The name of the shadow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     shadow_name: "ShadowName"
    #   }
    #   options = {}
    #   response = client.delete_thing_shadow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payload: "data", # required
    #   }
    # @return [Types::DeleteThingShadowResponse]
    def delete_thing_shadow(params = {}, options = {})
      request = build_request(:delete_thing_shadow, params)
      request.send_request(options)
    end

    # <p>Gets the details of a single retained message for the specified topic.</p>
    #          <p>This action returns the message payload of the retained message, which can 
    #       incur messaging costs. To list only the topic names of the retained messages, call
    #       <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_ListRetainedMessages.html">ListRetainedMessages</a>.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html">GetRetainedMessage</a> action.</p>
    #          <p>For more information about messaging costs, see <a href="http://aws.amazon.com/iot-core/pricing/#Messaging">Amazon Web Services IoT Core
    #       pricing - Messaging</a>.</p>
    # @param [Hash, Types::GetRetainedMessageRequest] params
    # @option params [String] :topic
    #   <p>The topic name of the retained message to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic: "Topic", # required
    #   }
    #   options = {}
    #   response = client.get_retained_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     topic: "Topic",
    #     payload: "data",
    #     qos: 1,
    #     last_modified_time: 1,
    #     user_properties: "data"
    #   }
    # @return [Types::GetRetainedMessageResponse]
    def get_retained_message(params = {}, options = {})
      request = build_request(:get_retained_message, params)
      request.send_request(options)
    end

    # <p>Gets the shadow for the specified thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetThingShadow</a> action.</p>
    #          <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html">GetThingShadow</a> in the
    #         IoT Developer Guide.</p>
    # @param [Hash, Types::GetThingShadowRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    # @option params [String] :shadow_name
    #   <p>The name of the shadow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     shadow_name: "ShadowName"
    #   }
    #   options = {}
    #   response = client.get_thing_shadow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payload: "data"
    #   }
    # @return [Types::GetThingShadowResponse]
    def get_thing_shadow(params = {}, options = {})
      request = build_request(:get_thing_shadow, params)
      request.send_request(options)
    end

    # <p>Lists the shadows for the specified thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListNamedShadowsForThing</a> action.</p>
    # @param [Hash, Types::ListNamedShadowsForThingRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     next_token: "NextToken",
    #     page_size: 1
    #   }
    #   options = {}
    #   response = client.list_named_shadows_for_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     results: ["ShadowName"],
    #     next_token: "NextToken",
    #     timestamp: 1
    #   }
    # @return [Types::ListNamedShadowsForThingResponse]
    def list_named_shadows_for_thing(params = {}, options = {})
      request = build_request(:list_named_shadows_for_thing, params)
      request.send_request(options)
    end

    # <p>Lists summary information about the retained messages stored for the account.</p>
    #          <p>This action returns only the topic names of the retained messages. It doesn't 
    #       return any message payloads. Although this action doesn't return a message payload,
    #       it can still incur messaging costs.</p>
    #          <p>To get the message payload of a retained message, call
    #       <a href="https://docs.aws.amazon.com/iot/latest/apireference/API_iotdata_GetRetainedMessage.html">GetRetainedMessage</a>
    #       with the topic name of the retained message.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html">ListRetainedMessages</a> action.</p>
    #          <p>For more information about messaging costs, see <a href="http://aws.amazon.com/iot-core/pricing/#Messaging">Amazon Web Services IoT Core
    #       pricing - Messaging</a>.</p>
    # @param [Hash, Types::ListRetainedMessagesRequest] params
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #         value from a previous response; otherwise <b>null</b> to receive
    #         the first set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_retained_messages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     retained_topics: [
    #       {
    #         topic: "Topic",
    #         payload_size: 1,
    #         qos: 1,
    #         last_modified_time: 1
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRetainedMessagesResponse]
    def list_retained_messages(params = {}, options = {})
      request = build_request(:list_retained_messages, params)
      request.send_request(options)
    end

    # <p>Publishes an MQTT message.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">Publish</a> action.</p>
    #          <p>For more information about MQTT messages, see 
    #       <a href="http://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html">MQTT Protocol</a> in the
    #        IoT Developer Guide.</p>
    #          <p>For more information about messaging costs, see <a href="http://aws.amazon.com/iot-core/pricing/#Messaging">Amazon Web Services IoT Core
    #       pricing - Messaging</a>.</p>
    # @param [Hash, Types::PublishRequest] params
    # @option params [String] :topic
    #   <p>The name of the MQTT topic.</p>
    # @option params [Integer] :qos
    #   <p>The Quality of Service (QoS) level. The default QoS level is 0.</p>
    # @option params [Boolean] :retain
    #   <p>A Boolean value that determines whether to set the RETAIN flag when the message is published.</p>
    #            <p>Setting the RETAIN flag causes the message to be retained and sent to new subscribers to the topic.</p>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #            <p>Default value: <code>false</code>
    #            </p>
    # @option params [String] :payload
    #   <p>The message body. MQTT accepts text, binary, and empty (null) message payloads.</p>
    #            <p>Publishing an empty (null) payload with <b>retain</b> =
    #           <code>true</code> deletes the retained message identified by <b>topic</b> from Amazon Web Services IoT Core.</p>
    # @option params [String] :user_properties
    #   <p>A JSON string that contains an array of JSON objects. If you don’t use Amazon Web Services SDK or CLI,
    #         you must encode the JSON string to base64 format before adding it to the HTTP header.
    #           <code>userProperties</code> is an HTTP header value in the API.</p>
    #            <p>The following example <code>userProperties</code> parameter is a JSON string which
    #         represents two User Properties. Note that it needs to be base64-encoded:</p>
    #            <p>
    #               <code>[{"deviceName": "alpha"}, {"deviceCnt": "45"}]</code>
    #            </p>
    # @option params [String] :payload_format_indicator
    #   <p>An <code>Enum</code> string value that indicates whether the payload is formatted as
    #         UTF-8. <code>payloadFormatIndicator</code> is an HTTP header value in the API.</p>
    # @option params [String] :content_type
    #   <p>A UTF-8 encoded string that describes the content of the publishing message.</p>
    # @option params [String] :response_topic
    #   <p>A UTF-8 encoded string that's used as the topic name for a response message. The response
    #         topic is used to describe the topic which the receiver should publish to as part of the
    #         request-response flow. The topic must not contain wildcard characters.</p>
    # @option params [String] :correlation_data
    #   <p>The base64-encoded binary data used by the sender of the request message to identify which
    #         request the response message is for when it's received. <code>correlationData</code> is an
    #         HTTP header value in the API.</p>
    # @option params [Integer] :message_expiry
    #   <p>A user-defined integer value that represents the message expiry interval in seconds. If
    #         absent, the message doesn't expire. For more information about the limits of
    #           <code>messageExpiry</code>, see <a href="https://docs.aws.amazon.com/general/latest/gr/iot-core.html#message-broker-limits">Amazon Web Services IoT Core message broker and
    #           protocol limits and quotas </a> from the Amazon Web Services Reference Guide.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic: "Topic", # required
    #     qos: 1,
    #     retain: false,
    #     payload: "data",
    #     user_properties: "SynthesizedJsonUserProperties",
    #     payload_format_indicator: "UNSPECIFIED_BYTES" # One of: ["UNSPECIFIED_BYTES", "UTF8_DATA"],
    #     content_type: "ContentType",
    #     response_topic: "ResponseTopic",
    #     correlation_data: "CorrelationData",
    #     message_expiry: 1
    #   }
    #   options = {}
    #   response = client.publish(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def publish(params = {}, options = {})
      request = build_request(:publish, params)
      request.send_request(options)
    end

    # <p>Updates the shadow for the specified thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateThingShadow</a> action.</p>
    #          <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html">UpdateThingShadow</a> in the
    #         IoT Developer Guide.</p>
    # @param [Hash, Types::UpdateThingShadowRequest] params
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    # @option params [String] :shadow_name
    #   <p>The name of the shadow.</p>
    # @option params [String] :payload
    #   <p>The state information, in JSON format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "ThingName", # required
    #     shadow_name: "ShadowName",
    #     payload: "data", # required
    #   }
    #   options = {}
    #   response = client.update_thing_shadow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     payload: "data"
    #   }
    # @return [Types::UpdateThingShadowResponse]
    def update_thing_shadow(params = {}, options = {})
      request = build_request(:update_thing_shadow, params)
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
      context[:gem_name] = 'aws-sdk-iotdataplane'
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
